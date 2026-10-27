.class public Lcom/android/server/alarm/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# static fields
.field public static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

.field public final mAlarmClockUpdater:Ljava/lang/Runnable;

.field public final mAlarmDispatchComparator:Ljava/util/Comparator;

.field public mAlarmStore:Lcom/android/server/alarm/AlarmStore;

.field public mAlarmsPerUid:Landroid/util/SparseIntArray;

.field public mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public final mAllowWhileIdleDispatches:Ljava/util/ArrayList;

.field public mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public mAppOps:Landroid/app/AppOpsManager;

.field mAppStandbyParole:Z

.field public mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field public mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public final mBackgroundIntent:Landroid/content/Intent;

.field public mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field public mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

.field public mBroadcastRefCount:I

.field public final mBroadcastStats:Landroid/util/SparseArray;

.field public mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

.field public mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

.field public mDateChangeSender:Landroid/app/PendingIntent;

.field public final mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

.field volatile mExactAlarmCandidates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

.field public mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

.field public final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

.field public mInFlight:Ljava/util/ArrayList;

.field public final mInFlightListeners:Ljava/util/ArrayList;

.field public final mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

.field public mInteractive:Z

.field public mLastAlarmDeliveryTime:J

.field mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

.field public final mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

.field public mLastTickReceived:J

.field public mLastTickSet:J

.field public mLastTimeChangeClockTime:J

.field public mLastTimeChangeRealtime:J

.field public mLastTrigger:J

.field public mLastWakeup:J

.field public mListenerCount:I

.field public mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mListenerFinishCount:I

.field public mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field public volatile mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mLog:Lcom/android/internal/util/LocalLog;

.field public mMaxDelayTime:J

.field public mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

.field public final mNextAlarmClockForUser:Landroid/util/SparseArray;

.field public mNextAlarmClockMayChange:Z

.field public mNextNonWakeUpSetAt:J

.field public mNextNonWakeup:J

.field public mNextNonWakeupDeliveryTime:J

.field public mNextTickHistory:I

.field public mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

.field public mNextWakeUpSetAt:J

.field public mNextWakeup:J

.field public mNonInteractiveStartTime:J

.field public mNonInteractiveTime:J

.field public mNumDelayedAlarms:I

.field public mNumTimeChanged:I

.field public mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

.field public mOptsWithFgs:Landroid/app/BroadcastOptions;

.field public mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

.field public mOptsWithoutFgs:Landroid/app/BroadcastOptions;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPendingBackgroundAlarms:Landroid/util/SparseArray;

.field public mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

.field public mPendingNonWakeupAlarms:Ljava/util/ArrayList;

.field public final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field public final mRemovalHistory:Landroid/util/SparseArray;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public mSendCount:I

.field public mSendFinishCount:I

.field public final mService:Landroid/os/IBinder;

.field public mStartCurrentDelayTime:J

.field public mStartUserBeforeScheduledAlarms:Z

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field public mSystemUiUid:I

.field public mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

.field public final mTickHistory:[J

.field public mTimeTickIntent:Landroid/content/Intent;

.field public mTimeTickOptions:Landroid/os/Bundle;

.field public mTimeTickTrigger:Landroid/app/IAlarmListener;

.field public final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

.field public mTotalDelayTime:J

.field public mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$3cblH7eOf-8k0i2H4hIA4DAIYbY(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$4pmnbsfPmlq7li_sX-YF8MBRnSs(Lcom/android/server/alarm/AlarmManagerService;ILcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeForStoppedLocked$19(ILcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ct09kLSBsw8yFCFj8quDlIWNG7k(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reevaluateRtcAlarms$3(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Cz2x8Gr-RoiqfJpDuNZEfBsi-Zk(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$setImplLocked$10(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FGaKilfo5wHxIMcbDNdy1Ruhrpg(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeAlarmsInternalLocked$15(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HZ9MHeHvzmwdrKhw5oBZt-U8er0(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->lambda$interactiveStateChangedLocked$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$L82siL18ro7TYb8gZPPKO1HL33E(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$new$1(Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MERpfNaCHJyDKltYJNz7MGK6mHg(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MXDdNWw9OpgP0hi7S7zvZJwZQ4I(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$triggerAlarmsLocked$22(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OC5GqY2hlZMiBRf8m9Db4bIdL_Q(ILcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 4037
    iget p1, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$PWZJeVAGbJJbJ2jrjucyiyPbD7Y(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$setImplLocked$12(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Q_bRrXlgc9swPPcdNRa7rIVQfiE(Lcom/android/server/alarm/AlarmManagerService;[I[I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$onStart$6([I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QgyF8PZON2kLE4tEaY61PTMen4Q(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reevaluateRtcAlarms$4(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VK0Sa8MOUCAMEGsVxaDJoO0qkwg(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 3994
    invoke-virtual {p2, p0, p1}, Lcom/android/server/alarm/Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WZFEMPWy81l-szSzhRJHOwNjF-M([ILcom/android/server/alarm/Alarm;)Z
    .registers 6

    .line 1917
    iget v0, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {p0, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_4c

    iget-object p0, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz p0, :cond_4c

    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_15

    goto :goto_4c

    .line 1921
    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Alarm "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " being removed for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/alarm/Alarm;->uid:I

    .line 1922
    invoke-static {v0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because the app got frozen"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1921
    const-string p1, "AlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_4c
    :goto_4c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$XLrIbS2bf-akyTTaCua-_4vntFc(ILcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 4003
    iget p1, p1, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$XXqljoa0_KcQujUWwiqvIoQmRac(Ljava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 4015
    invoke-virtual {p1, p0}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_BCHKjocSVhDv0gfpbWpLMrPJHs(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$onUserStarting$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bN-p56GdkwdB3Yk6RnyjKfw-OZA(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$setImplLocked$11(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fFF1Wf09nFoV5Ia8NUvmuac59jI(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeAlarmsInternalLocked$14(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fb3eUBahHCOZ5LgT4KvmXrDP9iU(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmStore;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->lambda$onBootPhase$9()Lcom/android/server/alarm/AlarmStore;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gTBrLqI8lRe-eLGhoAoKns8vULU(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reorderAlarmsBasedOnStandbyBuckets$5(Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lO7FlqYCXbhzV969DpFL5GaI-Ko(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reevaluateRtcAlarms$2(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xOVJiukLnAqCBEmoGpBLpPibzW8(ILjava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .registers 5

    .line 3905
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v0, p0, :cond_16

    iget-object p0, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    iget-wide p0, p2, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppStateTracker(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackgroundIntent(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/Intent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryStatsInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/BatteryStatsInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastPriorityAlarmDispatch(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseLongArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListenerCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemovalHistory(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSendCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/IBinder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStartUserBeforeScheduledAlarms(Lcom/android/server/alarm/AlarmManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTickHistory(Lcom/android/server/alarm/AlarmManagerService;)[J
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastTickReceived(Lcom/android/server/alarm/AlarmManagerService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastTickSet(Lcom/android/server/alarm/AlarmManagerService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastTrigger(Lcom/android/server/alarm/AlarmManagerService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastWakeup(Lcom/android/server/alarm/AlarmManagerService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmListenerCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSendCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$madjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdecrementAlarmCount(Lcom/android/server/alarm/AlarmManagerService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetAlarmOperationBundle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getAlarmOperationBundle(Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetStatsLocked(Lcom/android/server/alarm/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetStatsLocked(Lcom/android/server/alarm/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misIdlingImpl(Lcom/android/server/alarm/AlarmManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->isIdlingImpl()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misScheduleExactAlarmDeniedByDefault(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogAlarmBatchDelivered(Lcom/android/server/alarm/AlarmManagerService;IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService;->logAlarmBatchDelivered(IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyBroadcastAlarmCompleteLocked(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->notifyBroadcastAlarmCompleteLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyBroadcastAlarmPendingLocked(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->notifyBroadcastAlarmPendingLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveAlarmsInternalLocked(Lcom/android/server/alarm/AlarmManagerService;Ljava/util/function/Predicate;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveExactListenerAlarms(Lcom/android/server/alarm/AlarmManagerService;[I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeExactListenerAlarms([I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendNextAlarmClockChanged(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendScheduleExactAlarmPermissionStateChangedBroadcast(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smclose(J)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->close(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->getAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetNextAlarm(JI)J
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->getNextAlarm(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smincrement(Landroid/util/SparseIntArray;I)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->increment(Landroid/util/SparseIntArray;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sminit()J
    .registers 2

    .line 0
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smisAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisExactAlarmChangeEnabled(Ljava/lang/String;I)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smset(JIJJ)I
    .registers 7

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/android/server/alarm/AlarmManagerService;->set(JIJJ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smwaitForAlarm(J)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->waitForAlarm(J)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x21000000

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1324
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;-><init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V
    .registers 6

    .line 1319
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 233
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x4

    .line 234
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 241
    new-instance p1, Lcom/android/internal/util/LocalLog;

    const-string v0, "AlarmManager"

    invoke-direct {p1, v0}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 252
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 256
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 263
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 268
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    const/16 p1, 0xa

    .line 281
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    const/4 p1, 0x0

    .line 285
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 288
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    .line 298
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 299
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 301
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleDispatches:Ljava/util/ArrayList;

    .line 341
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    const-string v1, "REORDER_ALARMS_FOR_STANDBY"

    const-string v2, "HAS_SCHEDULE_EXACT_ALARM"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Alarm manager stats"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 346
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    .line 347
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    .line 348
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    .line 349
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 350
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    .line 351
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    .line 360
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 363
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 365
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 369
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    .line 373
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1239
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    const/4 v0, 0x0

    .line 1314
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 1315
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 1765
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 1768
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    const-wide/16 v0, 0x0

    .line 1769
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 1770
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 2683
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$4;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 5084
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$7;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 5172
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    .line 5174
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    .line 5176
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    .line 5178
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    .line 1320
    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    return-void
.end method

.method public static addClampPositive(JJ)J
    .registers 9

    .line 0
    add-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_9

    return-wide v0

    :cond_9
    cmp-long p0, p0, v2

    if-ltz p0, :cond_17

    cmp-long p0, p2, v2

    if-ltz p0, :cond_17

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_17
    return-wide v2
.end method

.method private static native close(J)V
.end method

.method public static final dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V
    .registers 9

    .line 4127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_6
    if-ltz v1, :cond_35

    .line 4129
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 4130
    iget v3, v2, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v3}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 4131
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4132
    const-string v3, " #"

    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-int v3, v0, v1

    .line 4133
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 4134
    const-string v3, ": "

    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4135
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4136
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4137
    invoke-virtual {v2, p0, p2, p3, p4}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 4138
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_35
    return-void
.end method

.method public static findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V
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

    .line 1509
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_38

    .line 1510
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1512
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_2c

    .line 1513
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1515
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_29

    .line 1519
    :cond_23
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 1523
    :cond_2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_35

    .line 1524
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_38
    return-void
.end method

.method public static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .registers 3

    .line 3848
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "EHm"

    goto :goto_b

    :cond_9
    const-string p0, "Ehma"

    .line 3849
    :goto_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_18

    .line 3850
    const-string p0, ""

    return-object p0

    .line 3851
    :cond_18
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I
    .registers 2

    .line 4671
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4672
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {p0}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result p0

    return p0

    .line 4675
    :cond_11
    iget p0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    return p0
.end method

.method private static native getNextAlarm(JI)J
.end method

.method public static increment(Landroid/util/SparseIntArray;I)V
    .registers 4

    .line 4619
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_10

    .line 4621
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    return-void

    .line 4623
    :cond_10
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private static native init()J
.end method

.method public static isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    .line 2401
    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p0, p0, 0x24

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isExactAlarmChangeEnabled(Ljava/lang/String;I)Z
    .registers 4

    const-wide/32 v0, 0xa35edc1

    .line 2971
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 2970
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 4330
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p0, p0, 0xc

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public static isExemptFromBatterySaver(Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 4143
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 4146
    :cond_6
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_19

    .line 4147
    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    return v1

    .line 4150
    :cond_19
    iget p0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    if-eqz p0, :cond_22

    return v1

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public static isRtc(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_8
    return v0
.end method

.method public static isTimeTickAlarm(Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 323
    iget v0, p0, Lcom/android/server/alarm/Alarm;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_12

    const-string v0, "TIME_TICK"

    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static isUseExactAlarmEnabled(Ljava/lang/String;I)Z
    .registers 4

    const-wide/32 v0, 0xd068d35

    .line 2976
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 2975
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return-void
.end method

.method public static makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;
    .registers 2

    .line 354
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 355
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setAlarmBroadcast(Z)V

    return-object v0
.end method

.method public static maxTriggerTime(JJJ)J
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_8

    sub-long p4, p2, p0

    :cond_8
    const-wide/16 p0, 0x2710

    cmp-long p0, p4, p0

    if-gez p0, :cond_f

    goto :goto_10

    :cond_f
    move-wide v0, p4

    :goto_10
    const-wide/high16 p0, 0x3fe8000000000000L    # 0.75

    long-to-double p4, v0

    mul-double/2addr p4, p0

    double-to-long p0, p4

    .line 1363
    invoke-static {p2, p3, p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    move-result-wide p0

    if-nez v2, :cond_26

    const-wide/32 p4, 0x36ee80

    .line 1369
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :cond_26
    return-wide p0
.end method

.method private static native set(JIJJ)I
.end method

.method private static native waitForAlarm(J)I
.end method


# virtual methods
.method public final adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z
    .registers 11

    .line 2344
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    .line 2345
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 p0, 0x0

    return p0

    .line 2349
    :cond_e
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    const/4 v3, 0x3

    if-eqz v2, :cond_7f

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget-object v5, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestrictedByBatterySaver(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_7f

    .line 2355
    :cond_1e
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_25

    goto :goto_7a

    .line 2358
    :cond_25
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 2360
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2364
    iget v4, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_40

    .line 2365
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 2366
    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 2367
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    goto :goto_48

    .line 2369
    :cond_40
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 2370
    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 2371
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2373
    :goto_48
    iget-object v4, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v4

    if-ge v4, v5, :cond_51

    goto :goto_7a

    .line 2379
    :cond_51
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v0

    add-long/2addr v0, v6

    goto :goto_7a

    .line 2382
    :cond_59
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_74

    .line 2383
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-nez v2, :cond_6e

    goto :goto_7a

    .line 2386
    :cond_6e
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    add-long/2addr v0, v7

    goto :goto_7a

    :cond_74
    const-wide v4, 0x757b12c00L

    add-long/2addr v0, v4

    .line 2391
    :goto_7a
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    .line 2351
    :cond_7f
    :goto_7f
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public final adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z
    .registers 12

    .line 2466
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    .line 2467
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_7c

    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    if-eqz v2, :cond_12

    goto :goto_7c

    .line 2471
    :cond_12
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 2472
    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2473
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v5, v2, v4, v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v5

    .line 2476
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x2d

    if-ne v5, v7, :cond_46

    if-lez v6, :cond_74

    .line 2483
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v6, v6, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    invoke-virtual {v5, v2, v4, v6}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v4

    sub-long v6, v0, v4

    .line 2485
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    cmp-long p0, v6, v8

    if-gez p0, :cond_74

    add-long/2addr v4, v8

    .line 2486
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    .line 2491
    :cond_46
    invoke-virtual {p0, v5}, Lcom/android/server/alarm/AlarmManagerService;->getQuotaForBucketLocked(I)I

    move-result v5

    if-lt v6, v5, :cond_74

    .line 2494
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v6, v2, v4, v0, v1}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->hasQuota(Ljava/lang/String;IJ)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 2497
    iput-boolean v3, p1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 2498
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    :cond_5b
    if-gtz v5, :cond_64

    const-wide v4, 0x757b12c00L

    :goto_62
    add-long/2addr v0, v4

    goto :goto_6f

    .line 2506
    :cond_64
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v0

    .line 2508
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    goto :goto_62

    .line 2510
    :goto_6f
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    :cond_74
    const/4 p0, 0x0

    .line 2514
    iput-boolean p0, p1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 2515
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    .line 2468
    :cond_7c
    :goto_7c
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public final adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z
    .registers 11

    .line 2411
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    .line 2412
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    const/4 v3, 0x2

    if-eqz v2, :cond_84

    if-ne v2, p1, :cond_f

    goto/16 :goto_84

    .line 2417
    :cond_f
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0xa

    if-eqz v2, :cond_16

    goto :goto_7f

    .line 2420
    :cond_16
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2422
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2426
    iget v4, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_31

    .line 2427
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 2428
    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 2429
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    goto :goto_39

    .line 2431
    :cond_31
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 2432
    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 2433
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2435
    :goto_39
    iget-object v8, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v4, v8, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v8

    if-ge v8, v5, :cond_42

    goto :goto_7f

    .line 2441
    :cond_42
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v4, v0, v2, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v0

    add-long/2addr v0, v6

    .line 2443
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_7f

    .line 2445
    :cond_54
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_79

    .line 2446
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-nez v2, :cond_69

    goto :goto_6e

    .line 2449
    :cond_69
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    add-long/2addr v0, v7

    .line 2450
    :goto_6e
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_7f

    .line 2453
    :cond_79
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    .line 2455
    :goto_7f
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    .line 2413
    :cond_84
    :goto_84
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public final adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z
    .registers 12

    .line 2307
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2310
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    .line 2311
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-nez v2, :cond_11

    goto :goto_23

    .line 2315
    :cond_11
    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    .line 2318
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v6, v6, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    sub-long v6, v2, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_24

    :goto_23
    return v0

    .line 2322
    :cond_24
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v4

    sub-long v6, v2, v4

    .line 2325
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_38

    .line 2327
    invoke-virtual {p1, v1, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    goto :goto_53

    .line 2329
    :cond_38
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    .line 2330
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 2331
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-virtual {v0, v6, v7, v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 2332
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    :goto_53
    const/4 p0, 0x1

    return p0
.end method

.method public calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .registers 8

    .line 1279
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 1283
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, p0, :cond_2a

    .line 1285
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1286
    iget-boolean v4, v3, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v4, :cond_27

    .line 1287
    iget v4, v3, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 1288
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v3, v3, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v3

    .line 1287
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2a
    move v2, v1

    :goto_2b
    if-ge v2, p0, :cond_62

    .line 1293
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1295
    iget v4, v3, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_46

    const-string v4, "android"

    iget-object v5, v3, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1296
    iput v1, v3, Lcom/android/server/alarm/Alarm;->priorityClass:I

    goto :goto_5f

    .line 1297
    :cond_46
    iget v4, v3, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 1298
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, v3, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v4

    .line 1297
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    const/4 v4, 0x1

    .line 1299
    iput v4, v3, Lcom/android/server/alarm/Alarm;->priorityClass:I

    goto :goto_5f

    :cond_5c
    const/4 v4, 0x2

    .line 1301
    iput v4, v3, Lcom/android/server/alarm/Alarm;->priorityClass:I

    :goto_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_62
    return-void
.end method

.method public checkAllowNonWakeupDelayLocked(J)Z
    .registers 9

    .line 4280
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 4283
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-eqz v0, :cond_d

    return v1

    .line 4286
    :cond_d
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_16

    return v1

    .line 4289
    :cond_16
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_25

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_25

    return v1

    .line 4295
    :cond_25
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, p1, v2

    .line 4296
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-gtz p0, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    return v1
.end method

.method public final convertToElapsed(JI)J
    .registers 8

    .line 1332
    invoke-static {p3}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 1333
    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    :cond_14
    return-wide p1
.end method

.method public currentNonWakeupFuzzLocked(J)J
    .registers 5

    .line 4265
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x493e0

    cmp-long p0, p1, v0

    if-gez p0, :cond_e

    const-wide/32 p0, 0x1d4c0

    return-wide p0

    :cond_e
    const-wide/32 v0, 0x1b7740

    cmp-long p0, p1, v0

    if-gez p0, :cond_19

    const-wide/32 p0, 0xdbba0

    return-wide p0

    :cond_19
    const-wide/32 p0, 0x36ee80

    return-wide p0
.end method

.method public final decrementAlarmCount(II)V
    .registers 6

    .line 5552
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1e

    .line 5554
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-le v1, p2, :cond_18

    .line 5556
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    sub-int v2, v1, p2

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_1f

    .line 5558
    :cond_18
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-ge v1, p2, :cond_47

    .line 5562
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempt to decrement existing alarm count "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " by "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void
.end method

.method public deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 13

    .line 4301
    iput-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const/4 v0, 0x0

    .line 4302
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6a

    .line 4303
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    .line 4304
    iget-boolean v2, v1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const-wide/32 v3, 0x20000

    if-eqz v2, :cond_2d

    .line 4305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatch wakeup alarm to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_43

    .line 4308
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatch non-wakeup alarm to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4316
    :goto_43
    :try_start_43
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, v1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v1, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget v7, v1, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v8, v1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/app/ActivityManagerInternal;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4319
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/alarm/Alarm;J)V
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_55} :catch_56

    goto :goto_5e

    :catch_56
    move-exception v2

    .line 4321
    const-string v5, "AlarmManager"

    const-string v6, "Failure sending alarm."

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4323
    :goto_5e
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4324
    iget v1, v1, Lcom/android/server/alarm/Alarm;->uid:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6a
    return-void
.end method

.method public final deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 29

    move-object/from16 v0, p1

    .line 1531
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v1, 0x0

    move v8, v1

    :goto_8
    if-ge v8, v7, :cond_8e

    .line 1534
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/alarm/Alarm;

    .line 1535
    iget-boolean v2, v9, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_19

    move/from16 v20, v3

    goto :goto_1b

    :cond_19
    move/from16 v20, v1

    .line 1538
    :goto_1b
    iput v3, v9, Lcom/android/server/alarm/Alarm;->count:I

    .line 1541
    iget-wide v1, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_7e

    int-to-long v1, v3

    .line 1542
    invoke-virtual {v9}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v3

    sub-long v3, p2, v3

    iget-wide v5, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v9, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v1, v1

    mul-long v10, v1, v5

    .line 1545
    invoke-virtual {v9}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v1

    add-long v3, v1, v10

    .line 1546
    iget-wide v5, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    move-wide/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v5

    .line 1548
    iget v1, v9, Lcom/android/server/alarm/Alarm;->type:I

    iget-wide v12, v9, Lcom/android/server/alarm/Alarm;->origWhen:J

    add-long/2addr v12, v10

    sub-long/2addr v5, v3

    iget-wide v10, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    move-wide v14, v10

    iget-object v10, v9, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    move v11, v7

    move-wide v6, v5

    move-wide v4, v3

    move-wide v2, v12

    iget v13, v9, Lcom/android/server/alarm/Alarm;->flags:I

    move-wide v15, v14

    iget-object v14, v9, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    move-wide/from16 v16, v15

    iget-object v15, v9, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    iget v12, v9, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v9, v9, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, -0x1

    move/from16 v21, v11

    const/4 v11, 0x0

    move-object/from16 v22, v9

    move-wide/from16 v23, v16

    move/from16 v17, v8

    move/from16 v16, v12

    move-wide/from16 v8, v23

    const/4 v12, 0x0

    move-object/from16 v0, v22

    move/from16 v22, v17

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_84

    :cond_7e
    move-object/from16 v0, p0

    move/from16 v21, v7

    move/from16 v22, v8

    :goto_84
    add-int/lit8 v8, v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v7, v21

    goto/16 :goto_8

    :cond_8e
    move-object/from16 v0, p0

    if-nez v1, :cond_c5

    move-wide/from16 v1, p2

    .line 1555
    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 1557
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_b1

    .line 1558
    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 1560
    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1562
    :cond_b1
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1563
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    return-void

    :cond_c2
    :goto_c2
    move-object/from16 v3, p1

    goto :goto_c8

    :cond_c5
    move-wide/from16 v1, p2

    goto :goto_c2

    .line 1569
    :goto_c8
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_eb

    .line 1570
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1571
    iget-wide v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v4, v1, v4

    .line 1572
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 1573
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_e6

    .line 1574
    iput-wide v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 1576
    :cond_e6
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1578
    :cond_eb
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 1579
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1580
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    return-void
.end method

.method public dumpImpl(Landroid/util/IndentingPrintWriter;)V
    .registers 23
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2986
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2987
    :try_start_7
    const-string v3, "Current Alarm Manager state:"

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2988
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2990
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v3, v1}, Lcom/android/server/alarm/AlarmManagerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2991
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2993
    const-string v3, "Feature Flags:"

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2994
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2995
    const-string v3, "com.android.server.alarm.acquire_wakelock_before_send"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2996
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2997
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2998
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App Standby Parole: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3001
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3003
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v3, :cond_56

    .line 3004
    invoke-virtual {v3, v1}, Lcom/android/server/AppStateTrackerImpl;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3005
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_56

    :catchall_53
    move-exception v0

    goto/16 :goto_7d9

    .line 3008
    :cond_56
    :goto_56
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v3

    .line 3009
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3010
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v7}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v7

    .line 3011
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3013
    const-string/jumbo v10, "nowRTC="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {v1, v7, v8}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3015
    const-string v10, "="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3016
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3017
    const-string v10, " nowELAPSED="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3018
    invoke-virtual {v1, v3, v4}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3019
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3021
    const-string/jumbo v10, "mLastTimeChangeClockTime="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3022
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-virtual {v1, v10, v11}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3023
    const-string v10, "="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3024
    new-instance v10, Ljava/util/Date;

    iget-wide v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    const-string/jumbo v10, "mLastTimeChangeRealtime="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3027
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v1, v10, v11}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3029
    const-string/jumbo v10, "mLastTickReceived="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3030
    new-instance v10, Ljava/util/Date;

    iget-wide v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3032
    const-string/jumbo v10, "mLastTickSet="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3033
    new-instance v10, Ljava/util/Date;

    iget-wide v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3037
    const-string v10, "Recent TIME_TICK history:"

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3038
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3039
    iget v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    :cond_f1
    add-int/lit8 v10, v10, -0x1

    if-gez v10, :cond_f7

    const/16 v10, 0x9

    .line 3043
    :cond_f7
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    aget-wide v11, v11, v10

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_10f

    .line 3045
    new-instance v15, Ljava/util/Date;

    sub-long v11, v3, v11

    sub-long v11, v7, v11

    invoke-direct {v15, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    goto :goto_111

    .line 3046
    :cond_10f
    const-string v11, "-"

    .line 3044
    :goto_111
    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    iget v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    if-ne v10, v11, :cond_f1

    .line 3048
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3051
    const-class v10, Lcom/android/server/SystemServiceManager;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/SystemServiceManager;

    if-eqz v10, :cond_170

    .line 3053
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3054
    const-string v11, "RuntimeStarted="

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3055
    new-instance v11, Ljava/util/Date;

    sub-long v15, v7, v3

    .line 3056
    invoke-virtual {v10}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v17

    move-wide/from16 v19, v13

    add-long v13, v15, v17

    invoke-direct {v11, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 3055
    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3057
    invoke-virtual {v10}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v11

    if-eqz v11, :cond_14e

    .line 3058
    const-string v11, "  (Runtime restarted)"

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3060
    :cond_14e
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3062
    const-string v11, "Runtime uptime (elapsed): "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3063
    invoke-virtual {v10}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3064
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3066
    const-string v11, "Runtime uptime (uptime): "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3067
    invoke-virtual {v10}, Lcom/android/server/SystemServiceManager;->getRuntimeStartUptime()J

    move-result-wide v10

    invoke-static {v5, v6, v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3068
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_172

    :cond_170
    move-wide/from16 v19, v13

    .line 3071
    :goto_172
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3072
    iget-boolean v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v5, :cond_188

    .line 3073
    const-string v5, "Time since non-interactive: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3074
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v5, v3, v5

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3075
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3077
    :cond_188
    const-string v5, "Max wakeup delay: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3078
    invoke-virtual {v0, v3, v4}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v5

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3079
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3081
    const-string v5, "Time since last dispatch: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3082
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v5, v3, v5

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3083
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3085
    const-string v5, "Next non-wakeup delivery time: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3086
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    invoke-static {v5, v6, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3087
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3089
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    sub-long v10, v7, v3

    add-long/2addr v5, v10

    .line 3090
    iget-wide v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    add-long/2addr v12, v10

    .line 3091
    const-string v10, "Next non-wakeup alarm: "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3092
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    invoke-static {v10, v11, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3093
    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3094
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    invoke-virtual {v1, v10, v11}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3095
    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3096
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3098
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3099
    const-string/jumbo v10, "set at "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3100
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    invoke-static {v10, v11, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3101
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3102
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3104
    const-string v10, "Next wakeup alarm: "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3105
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    invoke-static {v10, v11, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3106
    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3107
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    invoke-virtual {v1, v10, v11}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3108
    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3109
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3111
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3112
    const-string/jumbo v5, "set at "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3113
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    invoke-static {v5, v6, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3114
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3115
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3117
    const-string v5, "Next kernel non-wakeup alarm: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3118
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v5

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3119
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3120
    const-string v5, "Next kernel wakeup alarm: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3121
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v5

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3122
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3124
    const-string v5, "Last wakeup: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3125
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    invoke-static {v5, v6, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3126
    const-string v5, " = "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3127
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    invoke-virtual {v1, v5, v6}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3129
    const-string v5, "Last trigger: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3130
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    invoke-static {v5, v6, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3131
    const-string v5, " = "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3132
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    invoke-virtual {v1, v5, v6}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3134
    const-string v5, "Num time change events: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3135
    iget v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3137
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App ids requesting SCHEDULE_EXACT_ALARM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3140
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3141
    const-string v5, "Last OP_SCHEDULE_EXACT_ALARM: ["

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    move v6, v5

    .line 3142
    :goto_2a6
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v6, v10, :cond_2df

    if-lez v6, :cond_2b5

    .line 3144
    const-string v10, ", "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3146
    :cond_2b5
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    invoke-static {v1, v10}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3147
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a6

    .line 3149
    :cond_2df
    const-string v6, "]"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3151
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3152
    const-string v6, "Next alarm clock information: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3153
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3154
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    move v10, v5

    .line 3155
    :goto_2f5
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_30d

    .line 3156
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2f5

    :cond_30d
    move v10, v5

    .line 3158
    :goto_30e
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_326

    .line 3159
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_30e

    .line 3161
    :cond_326
    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_32a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_38b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3162
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v11, :cond_349

    .line 3163
    invoke-virtual {v11}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v11

    goto :goto_34b

    :cond_349
    move-wide/from16 v11, v19

    .line 3164
    :goto_34b
    iget-object v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v13, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    .line 3165
    const-string/jumbo v14, "user:"

    invoke-virtual {v1, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3166
    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3167
    const-string v10, " pendingSend:"

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3169
    const-string v10, " time:"

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3170
    invoke-virtual {v1, v11, v12}, Landroid/util/IndentingPrintWriter;->print(J)V

    cmp-long v10, v11, v19

    if-lez v10, :cond_387

    .line 3172
    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3173
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3174
    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3175
    invoke-static {v11, v12, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3177
    :cond_387
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_32a

    .line 3179
    :cond_38b
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3181
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v6}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v6

    if-lez v6, :cond_39e

    .line 3182
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3183
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v6, v1, v3, v4, v9}, Lcom/android/server/alarm/AlarmStore;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 3185
    :cond_39e
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3187
    const-string v6, "Pending user blocked background alarms: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3188
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v6, v5

    move v7, v6

    .line 3190
    :goto_3ab
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v10, 0x1

    if-ge v6, v8, :cond_3cb

    .line 3191
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-eqz v8, :cond_3c8

    .line 3192
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_3c8

    .line 3194
    invoke-static {v1, v8, v3, v4, v9}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    move v7, v10

    :cond_3c8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3ab

    :cond_3cb
    if-nez v7, :cond_3d3

    .line 3198
    const-string/jumbo v6, "none"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3200
    :cond_3d3
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3201
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3203
    const-string v6, "Pending alarms per uid: ["

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move v6, v5

    .line 3204
    :goto_3df
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_408

    if-lez v6, :cond_3ee

    .line 3206
    const-string v7, ", "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3208
    :cond_3ee
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-static {v1, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3209
    const-string v7, ":"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3210
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3df

    .line 3212
    :cond_408
    const-string v6, "]"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3213
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3215
    iget-boolean v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v6, :cond_421

    .line 3216
    const-string v6, "Scheduled user wakeups:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3217
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {v6, v1, v3, v4}, Lcom/android/server/alarm/UserWakeupStore;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3218
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3221
    :cond_421
    const-string v6, "App Alarm history:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3222
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v1, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3224
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3225
    const-string v6, "Temporary Quota Reserves:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3226
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v6, v1, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3228
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v6, :cond_462

    .line 3229
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3230
    const-string v6, "Idle mode state:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3232
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3233
    const-string v6, "Idling until: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3234
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v6, :cond_459

    .line 3235
    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3236
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v6, v1, v3, v4, v9}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    goto :goto_45f

    .line 3238
    :cond_459
    const-string/jumbo v6, "null"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3240
    :goto_45f
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3242
    :cond_462
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v6, :cond_47e

    .line 3243
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3244
    const-string v6, "Next wake from idle: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3245
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3247
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3248
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v6, v1, v3, v4, v9}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 3249
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3252
    :cond_47e
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3253
    const-string v6, "Past-due non-wakeup alarms: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3254
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4a3

    .line 3255
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3257
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3258
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-static {v1, v6, v3, v4, v9}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 3259
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_4a8

    .line 3261
    :cond_4a3
    const-string v6, "(none)"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3263
    :goto_4a8
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3264
    const-string v6, "Number of delayed alarms: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3265
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3266
    const-string v6, ", total delay time: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3267
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3268
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3270
    const-string v6, "Max delay time: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3271
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3272
    const-string v6, ", max non-interactive time: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3273
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3274
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3275
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3277
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3278
    const-string v6, "Broadcast ref count: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3279
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3280
    const-string v6, "PendingIntent send count: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3281
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3282
    const-string v6, "PendingIntent finish count: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3283
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3284
    const-string v6, "Listener send count: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3285
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3286
    const-string v6, "Listener finish count: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3287
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3288
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3290
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_54c

    .line 3291
    const-string v6, "Outstanding deliveries:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3292
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v6, v5

    .line 3293
    :goto_525
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_546

    .line 3294
    const-string v7, "#"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3295
    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3296
    const-string v7, ": "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3297
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_525

    .line 3299
    :cond_546
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3300
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3303
    :cond_54c
    const-string v6, "Allow while idle history:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3304
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v1, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3305
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3307
    const-string v6, "Allow while idle compat history:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3308
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v1, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3309
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3311
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v6

    if-lez v6, :cond_5a4

    .line 3312
    const-string v6, "Last priority alarm dispatches:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3313
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v6, v5

    .line 3314
    :goto_577
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_5a1

    .line 3315
    const-string v7, "UID: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3316
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v7

    invoke-static {v1, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3317
    const-string v7, ": "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3318
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    invoke-static {v7, v8, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3319
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_577

    .line 3321
    :cond_5a1
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3324
    :cond_5a4
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_60f

    .line 3325
    const-string v6, "Removal history:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3326
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v6, v5

    .line 3327
    :goto_5b5
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_609

    .line 3328
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v1, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3329
    const-string v7, ":"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3330
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3331
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    .line 3332
    array-length v8, v7

    sub-int/2addr v8, v10

    :goto_5de
    if-ltz v8, :cond_603

    .line 3333
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v7

    sub-int/2addr v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3334
    aget-object v11, v7, v8

    invoke-virtual {v11, v1, v3, v4, v9}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_5de

    .line 3336
    :cond_603
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5b5

    .line 3338
    :cond_609
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3339
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3342
    :cond_60f
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v7, "Recent problems:"

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/util/LocalLog;->dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_61c

    .line 3343
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_61c
    const/16 v6, 0xa

    .line 3346
    new-array v7, v6, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3347
    new-instance v8, Lcom/android/server/alarm/AlarmManagerService$5;

    invoke-direct {v8, v0}, Lcom/android/server/alarm/AlarmManagerService$5;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    move v9, v5

    move v11, v9

    .line 3360
    :goto_627
    iget-object v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v9, v12, :cond_699

    .line 3361
    iget-object v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    move v13, v5

    .line 3362
    :goto_638
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_690

    .line 3363
    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move v15, v5

    move/from16 v16, v10

    .line 3364
    :goto_647
    iget-object v10, v14, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v15, v10, :cond_687

    .line 3365
    iget-object v10, v14, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    if-lez v11, :cond_65f

    .line 3367
    invoke-static {v7, v5, v11, v10, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v17

    move/from16 v5, v17

    :cond_65f
    if-gez v5, :cond_664

    neg-int v5, v5

    add-int/lit8 v5, v5, -0x1

    :cond_664
    if-ge v5, v6, :cond_67d

    rsub-int/lit8 v6, v5, 0x9

    if-lez v6, :cond_672

    move/from16 v19, v9

    add-int/lit8 v9, v5, 0x1

    .line 3374
    invoke-static {v7, v5, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_674

    :cond_672
    move/from16 v19, v9

    .line 3376
    :goto_674
    aput-object v10, v7, v5

    const/16 v5, 0xa

    if-ge v11, v5, :cond_680

    add-int/lit8 v11, v11, 0x1

    goto :goto_680

    :cond_67d
    move v5, v6

    move/from16 v19, v9

    :cond_680
    :goto_680
    add-int/lit8 v15, v15, 0x1

    move v6, v5

    move/from16 v9, v19

    const/4 v5, 0x0

    goto :goto_647

    :cond_687
    move v5, v6

    move/from16 v19, v9

    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v16

    const/4 v5, 0x0

    goto :goto_638

    :cond_690
    move v5, v6

    move/from16 v19, v9

    move/from16 v16, v10

    add-int/lit8 v9, v19, 0x1

    const/4 v5, 0x0

    goto :goto_627

    :cond_699
    if-lez v11, :cond_6f9

    .line 3385
    const-string v5, "Top Alarms:"

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3386
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v5, 0x0

    :goto_6a4
    if-ge v5, v11, :cond_6f6

    .line 3388
    aget-object v6, v7, v5

    .line 3389
    iget v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-lez v9, :cond_6b1

    const-string v9, "*ACTIVE* "

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3390
    :cond_6b1
    iget-wide v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3391
    const-string v9, " running, "

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3392
    iget v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3393
    const-string v9, " wakeups, "

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3394
    iget v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3395
    const-string v9, " alarms: "

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3396
    iget-object v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v9, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v1, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3397
    const-string v9, ":"

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3398
    iget-object v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3399
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3401
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3402
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3403
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3404
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6a4

    .line 3406
    :cond_6f6
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3409
    :cond_6f9
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3410
    const-string v5, "Alarm Stats:"

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3411
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 3412
    :goto_707
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_7cf

    .line 3413
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    const/4 v9, 0x0

    .line 3414
    :goto_718
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_7cb

    .line 3415
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 3416
    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v11, :cond_72d

    const-string v11, "*ACTIVE* "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3417
    :cond_72d
    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v1, v11}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3418
    const-string v11, ":"

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3419
    iget-object v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3420
    const-string v11, " "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3421
    iget-wide v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {v11, v12, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3422
    const-string v11, " running, "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3423
    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3424
    const-string v11, " wakeups:"

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3426
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    .line 3427
    :goto_759
    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_76f

    .line 3428
    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_759

    .line 3430
    :cond_76f
    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3431
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v10, 0x0

    .line 3432
    :goto_776
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_7c4

    .line 3433
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3434
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-lez v12, :cond_78b

    const-string v12, "*ACTIVE* "

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3435
    :cond_78b
    iget-wide v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v12, v13, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3436
    const-string v12, " "

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3437
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3438
    const-string v12, " wakes "

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3439
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3440
    const-string v12, " alarms, last "

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3441
    iget-wide v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->lastTime:J

    invoke-static {v12, v13, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3442
    const-string v12, ":"

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3444
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3445
    iget-object v11, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3446
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3447
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v10, v10, 0x1

    goto :goto_776

    .line 3449
    :cond_7c4
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_718

    :cond_7cb
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_707

    .line 3452
    :cond_7cf
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3453
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3483
    monitor-exit v2

    return-void

    :goto_7d9
    monitor-exit v2
    :try_end_7da
    .catchall {:try_start_7 .. :try_end_7da} :catchall_53

    throw v0
.end method

.method public dumpProto(Ljava/io/FileDescriptor;)V
    .registers 19

    move-object/from16 v0, p0

    .line 3487
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v1, p1

    invoke-direct {v2, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3489
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3490
    :try_start_c
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    .line 3491
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v5

    const-wide v8, 0x10300000001L

    .line 3492
    invoke-virtual {v2, v8, v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000002L

    .line 3493
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3494
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    const-wide v8, 0x10300000003L

    invoke-virtual {v2, v8, v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3496
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    const-wide v10, 0x10300000004L

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3499
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3501
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v1, :cond_56

    const-wide v3, 0x10b00000006L

    .line 3502
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/AppStateTrackerImpl;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_56

    :catchall_53
    move-exception v0

    goto/16 :goto_35a

    .line 3505
    :cond_56
    :goto_56
    iget-boolean v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    const-wide v3, 0x10800000007L

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3506
    iget-boolean v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v1, :cond_94

    .line 3508
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v3, v5, v3

    const-wide v10, 0x10300000008L

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3511
    invoke-virtual {v0, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v3

    const-wide v10, 0x10300000009L

    .line 3510
    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3512
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v3, v5, v3

    const-wide v10, 0x1030000000aL

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3514
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v3, v5, v3

    const-wide v10, 0x1030000000bL

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3518
    :cond_94
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    sub-long/2addr v3, v5

    const-wide v10, 0x1030000000cL

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3520
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    sub-long/2addr v3, v5

    const-wide v10, 0x1030000000dL

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3522
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    sub-long v3, v5, v3

    const-wide v10, 0x1030000000eL

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3524
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    sub-long v3, v5, v3

    const-wide v10, 0x1030000000fL

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3526
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    const-wide v3, 0x10300000010L

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3528
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 3529
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v10, 0x0

    move v4, v10

    :goto_d9
    if-ge v4, v3, :cond_eb

    .line 3531
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_d9

    .line 3533
    :cond_eb
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 3534
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move v4, v10

    :goto_f2
    if-ge v4, v3, :cond_104

    .line 3536
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_f2

    .line 3538
    :cond_104
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_108
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide v11, 0x10500000001L

    if-eqz v3, :cond_155

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3539
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_12c

    .line 3540
    invoke-virtual {v4}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v13

    goto :goto_12e

    :cond_12c
    const-wide/16 v13, 0x0

    .line 3541
    :goto_12e
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    const-wide v8, 0x20b00000012L

    .line 3542
    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 3544
    invoke-virtual {v2, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10800000002L

    .line 3545
    invoke-virtual {v2, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10300000003L

    .line 3546
    invoke-virtual {v2, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3547
    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide v8, v3

    goto :goto_108

    .line 3549
    :cond_155
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1, v2, v5, v6}, Lcom/android/server/alarm/AlarmStore;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    move v8, v10

    .line 3551
    :goto_15b
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_18b

    .line 3552
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/ArrayList;

    if-eqz v9, :cond_188

    .line 3554
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v1, v10

    :goto_173
    if-ge v1, v13, :cond_188

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v14, v1, 0x1

    move-object v1, v3

    check-cast v1, Lcom/android/server/alarm/Alarm;

    const-wide v3, 0x20b00000014L

    .line 3555
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    move v1, v14

    goto :goto_173

    :cond_188
    add-int/lit8 v8, v8, 0x1

    goto :goto_15b

    .line 3561
    :cond_18b
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_197

    const-wide v3, 0x10b00000015L

    .line 3562
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3565
    :cond_197
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_1a3

    const-wide v3, 0x10b00000017L

    .line 3566
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3570
    :cond_1a3
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v10

    :goto_1aa
    if-ge v1, v9, :cond_1bf

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v13, v1, 0x1

    move-object v1, v3

    check-cast v1, Lcom/android/server/alarm/Alarm;

    const-wide v3, 0x20b00000018L

    .line 3571
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    move v1, v13

    goto :goto_1aa

    .line 3575
    :cond_1bf
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    const-wide v3, 0x10500000019L

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3576
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    const-wide v5, 0x1030000001aL

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3577
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    const-wide v5, 0x1030000001bL

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3578
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    const-wide v5, 0x1030000001cL

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3581
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    const-wide v3, 0x1050000001dL

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3582
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    const-wide v3, 0x1050000001eL

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3583
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    const-wide v3, 0x1050000001fL

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3584
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    const-wide v3, 0x10500000020L

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3585
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    const-wide v3, 0x10500000021L

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3587
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v10

    :goto_220
    if-ge v4, v3, :cond_233

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    const-wide v8, 0x20b00000022L

    .line 3588
    invoke-virtual {v5, v2, v8, v9}, Lcom/android/server/alarm/AlarmManagerService$InFlight;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_220

    .line 3591
    :cond_233
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-wide v3, 0x10b00000025L

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/LocalLog;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const/16 v1, 0xa

    .line 3593
    new-array v3, v1, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3594
    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$6;

    invoke-direct {v4, v0}, Lcom/android/server/alarm/AlarmManagerService$6;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    move v5, v10

    move v6, v5

    .line 3607
    :goto_248
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_2af

    .line 3608
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    move v9, v10

    .line 3609
    :goto_259
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v9, v13, :cond_2a6

    .line 3610
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move v14, v10

    .line 3611
    :goto_266
    iget-object v15, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v14, v15, :cond_29d

    .line 3612
    iget-object v15, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    if-lez v6, :cond_27e

    .line 3614
    invoke-static {v3, v10, v6, v15, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v16

    move/from16 v10, v16

    :cond_27e
    if-gez v10, :cond_283

    neg-int v10, v10

    add-int/lit8 v10, v10, -0x1

    :cond_283
    if-ge v10, v1, :cond_294

    rsub-int/lit8 v11, v10, 0x9

    if-lez v11, :cond_28e

    add-int/lit8 v12, v10, 0x1

    .line 3621
    invoke-static {v3, v10, v3, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3623
    :cond_28e
    aput-object v15, v3, v10

    if-ge v6, v1, :cond_294

    add-int/lit8 v6, v6, 0x1

    :cond_294
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    const-wide v11, 0x10500000001L

    goto :goto_266

    :cond_29d
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    const-wide v11, 0x10500000001L

    goto :goto_259

    :cond_2a6
    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x0

    const-wide v11, 0x10500000001L

    goto :goto_248

    :cond_2af
    const/4 v1, 0x0

    :goto_2b0
    if-ge v1, v6, :cond_2e3

    const-wide v8, 0x20b00000026L

    .line 3632
    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 3633
    aget-object v5, v3, v1

    .line 3635
    iget-object v10, v5, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v10, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    const-wide v11, 0x10500000001L

    invoke-virtual {v2, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3636
    iget-object v10, v5, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    const-wide v13, 0x10900000002L

    invoke-virtual {v2, v13, v14, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v13, 0x10b00000003L

    .line 3638
    invoke-virtual {v5, v2, v13, v14}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3640
    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b0

    .line 3643
    :cond_2e3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 3644
    :goto_2e9
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_355

    .line 3645
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    const/4 v6, 0x0

    .line 3646
    :goto_2fa
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v6, v8, :cond_352

    const-wide v8, 0x20b00000027L

    .line 3647
    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 3649
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    const-wide v11, 0x10b00000001L

    .line 3650
    invoke-virtual {v10, v2, v11, v12}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3653
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    .line 3654
    :goto_31b
    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_331

    .line 3655
    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_31b

    .line 3657
    :cond_331
    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3658
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_339
    if-ge v11, v10, :cond_34c

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    const-wide v13, 0x20b00000002L

    .line 3659
    invoke-virtual {v12, v2, v13, v14}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_339

    .line 3662
    :cond_34c
    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2fa

    :cond_352
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e9

    .line 3683
    :cond_355
    monitor-exit v7
    :try_end_356
    .catchall {:try_start_c .. :try_end_356} :catchall_53

    .line 3685
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    .line 3683
    :goto_35a
    :try_start_35a
    monitor-exit v7
    :try_end_35b
    .catchall {:try_start_35a .. :try_end_35b} :catchall_53

    throw v0
.end method

.method public finalize()V
    .registers 2

    .line 2085
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 2087
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2088
    throw v0
.end method

.method public final getAlarmOperationBundle(Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;
    .registers 3

    .line 4679
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    return-object v0

    .line 4682
    :cond_5
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 4683
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 4685
    :cond_14
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getMinimumAllowedWindow(JJ)J
    .registers 5

    sub-long/2addr p3, p1

    long-to-double p1, p3

    const-wide/high16 p3, 0x3fe8000000000000L    # 0.75

    mul-double/2addr p1, p3

    double-to-long p1, p1

    .line 1347
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 3

    .line 3701
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3702
    :try_start_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 3703
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getNextWakeFromIdleTimeImpl()J
    .registers 4

    .line 3689
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3690
    :try_start_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    goto :goto_13

    :catchall_c
    move-exception p0

    goto :goto_15

    :cond_e
    const-wide v1, 0x7fffffffffffffffL

    :goto_13
    monitor-exit v0

    return-wide v1

    .line 3691
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_c

    throw p0
.end method

.method public getQuotaForBucketLocked(I)I
    .registers 3

    const/16 v0, 0xa

    if-gt p1, v0, :cond_6

    const/4 p1, 0x0

    goto :goto_19

    :cond_6
    const/16 v0, 0x14

    if-gt p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_19

    :cond_c
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_12

    const/4 p1, 0x2

    goto :goto_19

    :cond_12
    const/16 v0, 0x32

    if-ge p1, v0, :cond_18

    const/4 p1, 0x3

    goto :goto_19

    :cond_18
    const/4 p1, 0x4

    .line 2295
    :goto_19
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget p0, p0, p1

    return p0
.end method

.method public final getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .registers 4

    .line 5154
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_14

    .line 5156
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 5157
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5159
    :cond_14
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    if-nez p0, :cond_24

    .line 5161
    new-instance p0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    .line 5162
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-object p0
.end method

.method public final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .registers 3

    .line 5148
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 5149
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result p1

    .line 5150
    invoke-virtual {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method public hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z
    .registers 10

    .line 2634
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 2639
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_19

    goto :goto_4b

    .line 2641
    :cond_19
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_4b

    .line 2643
    :cond_24
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 2644
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "android.permission.SCHEDULE_EXACT_ALARM"

    const/4 v6, -0x1

    invoke-static {v2, v5, v6, p2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4b

    :cond_3b
    :goto_3b
    move v4, v3

    goto :goto_4b

    .line 2649
    :cond_3d
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x6b

    invoke-virtual {v2, v5, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3b

    if-nez p1, :cond_4b

    goto :goto_3b

    .line 2654
    :cond_4b
    :goto_4b
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return v4
.end method

.method public hasUseExactAlarmInternal(Ljava/lang/String;I)Z
    .registers 5

    .line 2628
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->isUseExactAlarmEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2629
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.USE_EXACT_ALARM"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public final incrementAlarmCount(I)V
    .registers 2

    .line 5523
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->increment(Landroid/util/SparseIntArray;I)V

    return-void
.end method

.method public interactiveStateChangedLocked(Z)V
    .registers 8

    .line 4059
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_54

    .line 4060
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 4061
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_52

    .line 4063
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_36

    .line 4064
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v0, v2

    .line 4065
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 4066
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long p1, v4, v2

    if-gez p1, :cond_27

    .line 4067
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 4069
    :cond_27
    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4070
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 4071
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4073
    :cond_36
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_47

    sub-long/2addr v0, v2

    .line 4075
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_47

    .line 4076
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    .line 4080
    :cond_47
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4083
    :cond_52
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    :cond_54
    return-void
.end method

.method public final isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z
    .registers 5

    .line 4157
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 4161
    :cond_6
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 4165
    :cond_11
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 4166
    iget p1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 4167
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    .line 4170
    :cond_1c
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz p0, :cond_28

    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestricted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v1
.end method

.method public isExemptFromExactAlarmPermissionNoLock(I)Z
    .registers 4

    .line 2671
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2672
    const-string v0, "AlarmManager"

    const-string v1, "Alarm lock held while calling into DeviceIdleController"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    :cond_13
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    invoke-static {v0, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_32

    .line 2675
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz p0, :cond_32

    .line 2677
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/DeviceIdleInternal;->isAppOnWhitelist(I)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_32

    :cond_30
    const/4 p0, 0x0

    return p0

    :cond_32
    :goto_32
    const/4 p0, 0x1

    return p0
.end method

.method public isExemptFromMinWindowRestrictions(I)Z
    .registers 2

    .line 2662
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result p0

    return p0
.end method

.method public final isIdlingImpl()Z
    .registers 2

    .line 3695
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3696
    :try_start_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 3697
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z
    .registers 5

    const-wide/32 v0, 0xd7f327a

    .line 2981
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 2980
    invoke-static {v0, v1, p1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$interactiveStateChangedLocked$21()V
    .registers 5

    .line 4080
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic lambda$new$1(Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I
    .registers 12

    .line 1242
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 1243
    :goto_b
    iget v3, p2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_13

    move v3, v2

    goto :goto_14

    :cond_13
    move v3, v1

    :goto_14
    const/4 v4, -0x1

    if-eq v0, v3, :cond_1b

    if-eqz v0, :cond_1a

    return v4

    :cond_1a
    return v2

    .line 1249
    :cond_1b
    iget v0, p1, Lcom/android/server/alarm/Alarm;->priorityClass:I

    iget v3, p2, Lcom/android/server/alarm/Alarm;->priorityClass:I

    if-ge v0, v3, :cond_22

    return v4

    :cond_22
    if-le v0, v3, :cond_25

    return v2

    .line 1256
    :cond_25
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v0, p0, :cond_2d

    move v0, v2

    goto :goto_2e

    :cond_2d
    move v0, v1

    .line 1257
    :goto_2e
    iget-object v3, p2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-ne v3, p0, :cond_34

    move p0, v2

    goto :goto_35

    :cond_34
    move p0, v1

    :goto_35
    if-eq v0, p0, :cond_3b

    if-eqz v0, :cond_3a

    return v4

    :cond_3a
    return v2

    .line 1263
    :cond_3b
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v7

    cmp-long p0, v5, v7

    if-gez p0, :cond_48

    return v4

    .line 1265
    :cond_48
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v3

    cmp-long p0, p0, v3

    if-lez p0, :cond_55

    return v2

    :cond_55
    return v1
.end method

.method public final synthetic lambda$onBootPhase$9()Lcom/android/server/alarm/AlarmStore;
    .registers 1

    .line 2078
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    return-object p0
.end method

.method public final synthetic lambda$onStart$6([I[I)V
    .registers 9

    .line 1795
    array-length v0, p2

    .line 1796
    array-length v1, p1

    if-eq v1, v0, :cond_24

    .line 1797
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Got different length arrays in frozen state callback! uids.length: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " frozenStates.length: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1802
    :cond_24
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v0, :cond_46

    .line 1804
    aget v3, p2, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_32

    goto :goto_43

    :cond_32
    const-wide/32 v3, 0xfce9184

    .line 1807
    aget v5, p1, v2

    invoke-static {v3, v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    if-nez v3, :cond_3e

    goto :goto_43

    .line 1811
    :cond_3e
    aget v3, p1, v2

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 1813
    :cond_46
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result p1

    if-lez p1, :cond_53

    .line 1814
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeExactListenerAlarms([I)V

    :cond_53
    return-void
.end method

.method public final synthetic lambda$onUserStarting$8(I)V
    .registers 7

    .line 1955
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1956
    invoke-static {p1, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 1957
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1960
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x6b

    .line 1961
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1960
    invoke-virtual {v3, v4, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 1962
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1963
    :try_start_31
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1964
    monitor-exit v3

    goto :goto_6

    :catchall_38
    move-exception p0

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_38

    throw p0

    :cond_3b
    return-void
.end method

.method public final synthetic lambda$reevaluateRtcAlarms$2(Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 1378
    iget v0, p1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1381
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$reevaluateRtcAlarms$3(Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 1389
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$reevaluateRtcAlarms$4(Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 1392
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$removeAlarmsInternalLocked$14(Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 3973
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$removeAlarmsInternalLocked$15(Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 3978
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$removeForStoppedLocked$19(ILcom/android/server/alarm/Alarm;)Z
    .registers 4

    .line 4025
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v0, p1, :cond_10

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object p2, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 4026
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$reorderAlarmsBasedOnStandbyBuckets$5(Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z
    .registers 5

    .line 1415
    iget v0, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 1416
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v0

    if-eqz p1, :cond_16

    .line 1417
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p0, 0x0

    return p0

    .line 1420
    :cond_16
    invoke-virtual {p0, p2}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$setImplLocked$10(Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 2539
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$setImplLocked$11(Lcom/android/server/alarm/Alarm;)Z
    .registers 3

    .line 2551
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$setImplLocked$12(Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 2555
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$triggerAlarmsLocked$22(Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 4207
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final logAlarmBatchDelivered(IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .registers 10

    .line 4632
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 4633
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 4634
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    .line 4635
    :goto_14
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 4636
    invoke-virtual {p3, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    aput v4, p0, v3

    .line 4637
    invoke-virtual {p3, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    aput v4, v0, v3

    .line 4638
    aget v4, p0, v3

    invoke-virtual {p4, v4, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 4640
    :cond_31
    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/server/alarm/MetricsHelper;->pushAlarmBatchDelivered(II[I[I[I)V

    return-void
.end method

.method public lookForPackageLocked(Ljava/lang/String;I)Z
    .registers 10

    .line 4092
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v0}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_c
    const/4 v4, 0x1

    if-ge v3, v1, :cond_22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 4093
    invoke-virtual {v5, p1}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget v5, v5, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-ne v5, p2, :cond_c

    return v4

    .line 4097
    :cond_22
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_42

    .line 4099
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :cond_31
    if-ge v3, v1, :cond_42

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 4100
    invoke-virtual {v5, p1}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    return v4

    .line 4105
    :cond_42
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :cond_49
    if-ge v1, v0, :cond_5e

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 4106
    invoke-virtual {v3, p1}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    iget v3, v3, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-ne v3, p2, :cond_49

    return v4

    :cond_5e
    return v2
.end method

.method public final notifyBroadcastAlarmCompleteLocked(I)V
    .registers 2

    .line 1671
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_9

    return-void

    .line 1673
    :cond_9
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/HardwarePropertiesManagerService$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final notifyBroadcastAlarmPendingLocked(I)V
    .registers 2

    .line 1664
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_9

    return-void

    .line 1666
    :cond_9
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/HardwarePropertiesManagerService$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 5

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_ae

    .line 1973
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1974
    :try_start_7
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->start()V

    .line 1976
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1978
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    .line 1979
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 1980
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1981
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1983
    const-class v0, Lcom/android/server/AppStateTracker;

    .line 1984
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTrackerImpl;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 1985
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    .line 1987
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 1988
    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    .line 1990
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1991
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1992
    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_ab

    .line 1993
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object p1

    const/4 v0, 0x0

    .line 1995
    :try_start_61
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$3;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    const/16 v2, 0x6b

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_6b} :catch_6b

    .line 2066
    :catch_6b
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 2068
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->refreshExactAlarmCandidates()V

    .line 2070
    const-class p1, Lcom/android/server/usage/AppStandbyInternal;

    .line 2071
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppStandbyInternal;

    .line 2072
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;

    invoke-direct {v1, p0, v0}, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService-IA;)V

    invoke-interface {p1, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 2074
    const-class p1, Landroid/os/BatteryStatsInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStatsInternal;

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 2076
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 2078
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/alarm/MetricsHelper;->registerPuller(Ljava/util/function/Supplier;)V

    return-void

    :catchall_ab
    move-exception p0

    .line 1992
    :try_start_ac
    monitor-exit p1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw p0

    :cond_ae
    return-void
.end method

.method public onStart()V
    .registers 7

    .line 1774
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->init()V

    .line 1775
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 1777
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1778
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1779
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1780
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1781
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1782
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1784
    new-instance v0, Lcom/android/server/alarm/MetricsHelper;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/android/server/alarm/MetricsHelper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    .line 1785
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1787
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_58

    .line 1788
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110018

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_58

    move v0, v2

    goto :goto_59

    :cond_58
    move v0, v1

    :goto_59
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v0, :cond_67

    .line 1791
    new-instance v0, Lcom/android/server/alarm/UserWakeupStore;

    invoke-direct {v0}, Lcom/android/server/alarm/UserWakeupStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    .line 1792
    invoke-virtual {v0}, Lcom/android/server/alarm/UserWakeupStore;->init()V

    .line 1794
    :cond_67
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1817
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1818
    new-instance v4, Landroid/os/HandlerExecutor;

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v3, v4, v0}, Landroid/app/ActivityManager;->registerUidFrozenStateChangedCallback(Ljava/util/concurrent/Executor;Landroid/app/ActivityManager$UidFrozenStateChangedCallback;)V

    .line 1820
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$1;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1834
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1835
    :try_start_8c
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/alarm/AlarmManagerService$Constants;-><init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 1837
    new-instance v3, Lcom/android/server/alarm/LazyAlarmStore;

    invoke-direct {v3}, Lcom/android/server/alarm/LazyAlarmStore;-><init>()V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    .line 1838
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Lcom/android/server/alarm/AlarmStore;->setAlarmClockRemovalListener(Ljava/lang/Runnable;)V

    .line 1840
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    const-wide/32 v4, 0x36ee80

    invoke-direct {v3, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1841
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v3, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1842
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v3, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1844
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    const-wide/32 v4, 0x5265c00

    invoke-direct {v3, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;-><init>(J)V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    const-wide/16 v3, 0x0

    .line 1846
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 1849
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->initializeTimeIfRequired()V

    .line 1851
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1853
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4, v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getSystemUiUid(Landroid/content/pm/PackageManagerInternal;)I

    move-result v3

    iput v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    if-gtz v3, :cond_ed

    .line 1855
    const-string v3, "AlarmManager"

    const-string v4, "SysUI package not found!"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    :catchall_ea
    move-exception p0

    goto/16 :goto_17b

    .line 1857
    :cond_ed
    :goto_ed
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1859
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x50200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    .line 1863
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v3

    .line 1864
    invoke-virtual {v3, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v2

    const/4 v3, 0x2

    .line 1865
    invoke-virtual {v2, v3}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 1866
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickOptions:Landroid/os/Bundle;

    .line 1867
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$2;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    .line 1892
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x20200000

    .line 1893
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1895
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/high16 v5, 0x4000000

    invoke-static {v3, v1, v2, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 1898
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getClockReceiver(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    .line 1899
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1900
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1901
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1903
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v1

    if-eqz v1, :cond_160

    .line 1904
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1905
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_167

    .line 1907
    :cond_160
    const-string v1, "AlarmManager"

    const-string v2, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :goto_167
    monitor-exit v0
    :try_end_168
    .catchall {:try_start_8c .. :try_end_168} :catchall_ea

    .line 1910
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/alarm/AlarmManagerService$LocalService;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService-IA;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1911
    const-string v0, "alarm"

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    .line 1909
    :goto_17b
    :try_start_17b
    monitor-exit v0
    :try_end_17c
    .catchall {:try_start_17b .. :try_end_17c} :catchall_ea

    throw p0
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 1949
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 1950
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 1951
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v0, :cond_10

    .line 1952
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {v0, p1}, Lcom/android/server/alarm/UserWakeupStore;->onUserStarting(I)V

    .line 1954
    :cond_10
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reevaluateRtcAlarms()V
    .registers 5

    .line 1376
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1377
    :try_start_3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1384
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_3a

    .line 1385
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_3a

    iget v2, v2, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1388
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1391
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    goto :goto_3a

    :catchall_38
    move-exception p0

    goto :goto_41

    :cond_3a
    :goto_3a
    if-eqz v1, :cond_3f

    .line 1398
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1401
    :cond_3f
    monitor-exit v0

    return-void

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_38

    throw p0
.end method

.method public refreshExactAlarmCandidates()V
    .registers 10

    .line 1930
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v1, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1932
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1933
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_2e

    aget-object v5, v0, v4

    .line 1934
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v7, 0x400000

    invoke-virtual {v6, v5, v7, v8, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    if-lez v5, :cond_2b

    .line 1937
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 1944
    :cond_2e
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    return-void
.end method

.method public final removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3919
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v6

    .line 3920
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v8

    .line 3922
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2, v1}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3923
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    .line 3925
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    :goto_22
    if-ltz v3, :cond_59

    .line 3926
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3927
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v11

    :goto_31
    if-ltz v5, :cond_4b

    .line 3928
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/Alarm;

    .line 3929
    invoke-interface {v1, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_48

    .line 3930
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    add-int/lit8 v5, v5, -0x1

    goto :goto_31

    .line 3933
    :cond_4b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_56

    .line 3934
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_56
    add-int/lit8 v3, v3, -0x1

    goto :goto_22

    .line 3937
    :cond_59
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v11

    :goto_60
    if-ltz v3, :cond_7e

    .line 3938
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 3939
    invoke-interface {v1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 3940
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    add-int/lit8 v3, v3, -0x1

    goto :goto_60

    .line 3944
    :cond_7e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    move v3, v13

    :goto_84
    if-ge v3, v12, :cond_dd

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v14, v3, 0x1

    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 3945
    iget v3, v4, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v0, v3, v11}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3946
    iget-object v3, v4, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v3, :cond_a0

    .line 3947
    invoke-interface {v3}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v5, v13}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3949
    :cond_a0
    invoke-static/range {p2 .. p2}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->isLoggable(I)Z

    move-result v3

    if-nez v3, :cond_a8

    :goto_a6
    move v3, v14

    goto :goto_84

    .line 3952
    :cond_a8
    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->isTimeTickAlarm(Lcom/android/server/alarm/Alarm;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 3953
    const-string v3, "AlarmManager"

    const-string v5, "Removed TIME_TICK alarm"

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    :cond_b5
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    iget v5, v4, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/RingBuffer;

    if-nez v3, :cond_d1

    .line 3957
    new-instance v3, Lcom/android/internal/util/RingBuffer;

    const-class v5, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    const/16 v15, 0xa

    invoke-direct {v3, v5, v15}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 3958
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    iget v15, v4, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v5, v15, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_d1
    move-object v15, v3

    .line 3960
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    move/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;-><init>(Lcom/android/server/alarm/Alarm;IJJ)V

    invoke-virtual {v15, v3}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    goto :goto_a6

    :cond_dd
    if-nez v10, :cond_122

    .line 3965
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_ed

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    const/4 v2, 0x0

    .line 3966
    iput-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    goto :goto_ee

    :cond_ed
    move v11, v13

    .line 3969
    :goto_ee
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_110

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 3970
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1}, Lcom/android/server/alarm/AlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 3971
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_110

    .line 3972
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v2, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    or-int/2addr v11, v1

    :cond_110
    if-eqz v11, :cond_11c

    .line 3977
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v2, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 3980
    :cond_11c
    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3981
    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    :cond_122
    return-void
.end method

.method public removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V
    .registers 7

    .line 3898
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v0

    if-nez v0, :cond_55

    .line 3899
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_55

    .line 3902
    :cond_11
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lost permission to set exact alarms!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3905
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda15;-><init>(ILjava/lang/String;)V

    .line 3907
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x2

    .line 3908
    :try_start_3d
    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 3909
    monitor-exit p2
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_52

    if-eqz p3, :cond_55

    .line 3912
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-string/jumbo p2, "schedule_exact_alarm revoked"

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void

    :catchall_52
    move-exception p0

    .line 3909
    :try_start_53
    monitor-exit p2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0

    :cond_55
    :goto_55
    return-void
.end method

.method public final varargs removeExactListenerAlarms([I)V
    .registers 4

    .line 1915
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1916
    :try_start_3
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>([I)V

    const/4 p1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 1926
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public removeForStoppedLocked(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    return-void

    .line 4025
    :cond_5
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    const/4 p1, 0x0

    .line 4027
    invoke-virtual {p0, v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 5

    .line 2147
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2148
    :try_start_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 2149
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public removeLocked(II)V
    .registers 4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    return-void

    .line 4003
    :cond_5
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V
    .registers 5

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    return-void

    .line 3994
    :cond_5
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;-><init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public removeLocked(Ljava/lang/String;I)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 4015
    :cond_3
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public removeUserLocked(I)V
    .registers 4

    if-nez p1, :cond_a

    .line 4033
    const-string p0, "AlarmManager"

    const-string p1, "Ignoring attempt to remove system-user state!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4036
    :cond_a
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda17;-><init>(I)V

    const/4 v1, 0x0

    .line 4038
    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4040
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-ltz v0, :cond_31

    .line 4041
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_2e

    .line 4042
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 4045
    :cond_31
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_39
    if-ltz v0, :cond_4f

    .line 4046
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_4c

    .line 4047
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 4050
    :cond_4f
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_57
    if-ltz v0, :cond_6d

    .line 4051
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_6a

    .line 4052
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_6a
    add-int/lit8 v0, v0, -0x1

    goto :goto_57

    :cond_6d
    return-void
.end method

.method public reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z
    .registers 6

    .line 1412
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 1414
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result p1

    .line 1423
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return p1
.end method

.method public rescheduleKernelAlarmsLocked()V
    .registers 10

    .line 3858
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    .line 3860
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    if-lez v2, :cond_42

    .line 3861
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2}, Lcom/android/server/alarm/AlarmStore;->getNextWakeupDeliveryTime()J

    move-result-wide v5

    .line 3862
    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    if-eqz v2, :cond_2b

    .line 3863
    invoke-virtual {v2}, Lcom/android/server/alarm/UserWakeupStore;->getNextWakeupTime()J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-ltz v2, :cond_2b

    cmp-long v2, v7, v5

    if-gez v2, :cond_2b

    move-wide v5, v7

    .line 3868
    :cond_2b
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2}, Lcom/android/server/alarm/AlarmStore;->getNextDeliveryTime()J

    move-result-wide v7

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3d

    .line 3870
    iput-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 3871
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    const/4 v2, 0x2

    .line 3872
    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    :cond_3d
    cmp-long v2, v7, v5

    if-eqz v2, :cond_42

    goto :goto_43

    :cond_42
    move-wide v7, v3

    .line 3878
    :goto_43
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_57

    cmp-long v2, v7, v3

    if-eqz v2, :cond_55

    .line 3879
    iget-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v2, v5, v7

    if-gez v2, :cond_57

    .line 3880
    :cond_55
    iget-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    :cond_57
    cmp-long v2, v7, v3

    if-eqz v2, :cond_63

    .line 3884
    iput-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    .line 3885
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    const/4 v0, 0x3

    .line 3886
    invoke-virtual {p0, v0, v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    :cond_63
    return-void
.end method

.method public final restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z
    .registers 5

    .line 1428
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->origWhen:J

    iget v2, p1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public sendAllUnrestrictedPendingBackgroundAlarmsLocked()V
    .registers 4

    .line 1493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V

    .line 1498
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 1499
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 1500
    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v1

    .line 1499
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    :cond_1e
    return-void
.end method

.method public final sendNextAlarmClockChanged()V
    .registers 9

    .line 3817
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3818
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3820
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3821
    :try_start_8
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_28

    .line 3823
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 3824
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :catchall_26
    move-exception p0

    goto :goto_66

    .line 3826
    :cond_28
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3827
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_26

    .line 3829
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_32
    if-ge v3, v1, :cond_65

    .line 3831
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3832
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3833
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "next_alarm_formatted"

    .line 3835
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v2}, Lcom/android/server/alarm/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v4

    .line 3833
    invoke-static {v5, v6, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3838
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_65
    return-void

    .line 3827
    :goto_66
    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_26

    throw p0
.end method

.method public sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V
    .registers 7

    .line 1456
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_53

    .line 1457
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_53

    :cond_11
    if-eqz p2, :cond_45

    .line 1465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1466
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1e
    if-ltz v2, :cond_38

    .line 1467
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1468
    invoke-virtual {v3, p2}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1469
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 1472
    :cond_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_43

    .line 1473
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_43
    move-object v0, v1

    goto :goto_4a

    .line 1480
    :cond_45
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1482
    :goto_4a
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    :cond_53
    :goto_53
    return-void
.end method

.method public final sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V
    .registers 11

    .line 5532
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x34000000

    .line 5534
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5537
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5541
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 5542
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 5543
    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v3

    const/16 v6, 0xcf

    const-string v7, ""

    const/4 v5, 0x0

    .line 5542
    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 5546
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 p2, 0x0

    .line 5547
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 5546
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .registers 43

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p14

    move-object/from16 v9, p15

    if-nez p8, :cond_12

    if-eqz p9, :cond_16

    :cond_12
    if-eqz p8, :cond_1e

    if-eqz p9, :cond_1e

    .line 2158
    :cond_16
    const-string v0, "AlarmManager"

    const-string v1, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    const/4 v10, 0x0

    if-eqz p9, :cond_2a

    .line 2166
    :try_start_21
    invoke-interface/range {p9 .. p9}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v11, v12, v10}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2d

    :cond_2a
    move-object/from16 v12, p10

    goto :goto_46

    .line 2168
    :catch_2d
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping unreachable alarm listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p10

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2176
    :goto_46
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v13, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    const-wide/16 v15, 0x0

    cmp-long v17, v6, v15

    if-lez v17, :cond_80

    cmp-long v17, v6, v13

    if-gez v17, :cond_80

    .line 2178
    const-string v11, "AlarmManager"

    move-wide/from16 v17, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Suspiciously short interval "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " millis; expanding to "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v13, v6

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " seconds"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v23, v13

    goto :goto_a9

    :cond_80
    move-wide/from16 v17, v15

    .line 2182
    iget-wide v10, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    cmp-long v10, v6, v10

    if-lez v10, :cond_a7

    .line 2183
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Suspiciously long interval "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " millis; clamping"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v6, v6, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    :cond_a7
    move-wide/from16 v23, v6

    :goto_a9
    if-ltz v1, :cond_1fb

    const/4 v6, 0x3

    if-gt v1, v6, :cond_1fb

    cmp-long v6, v2, v17

    if-gez v6, :cond_df

    .line 2193
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    int-to-long v6, v6

    .line 2194
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid alarm trigger time! "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " from uid="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v2, v17

    .line 2199
    :cond_df
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v6}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v19

    .line 2200
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v6

    .line 2203
    invoke-static {v8}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v10

    if-eqz v10, :cond_f2

    move-wide/from16 v10, v17

    goto :goto_f6

    :cond_f2
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v10, v10, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    :goto_f6
    add-long v10, v19, v10

    .line 2204
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v21

    cmp-long v6, v4, v17

    if-nez v6, :cond_104

    move-wide/from16 v6, v21

    goto/16 :goto_17c

    :cond_104
    if-gez v6, :cond_10e

    .line 2210
    invoke-static/range {v19 .. v24}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v4

    move-wide/from16 v6, v21

    sub-long/2addr v4, v6

    goto :goto_17c

    :cond_10e
    move-wide/from16 v10, v19

    move-wide/from16 v6, v21

    .line 2215
    invoke-virtual {v0, v10, v11, v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->getMinimumAllowedWindow(JJ)J

    move-result-wide v10

    const-wide/32 v13, 0x5265c00

    cmp-long v15, v4, v13

    if-lez v15, :cond_13b

    .line 2217
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Window length "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms too long; limiting to 1 day"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v13

    goto :goto_17c

    :cond_13b
    and-int/lit8 v13, p11, 0x40

    if-nez v13, :cond_17c

    cmp-long v13, v4, v10

    if-gez v13, :cond_17c

    .line 2221
    invoke-virtual {v0, v8}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromMinWindowRestrictions(I)Z

    move-result v13

    if-nez v13, :cond_17c

    const-wide/32 v13, 0xb09e9e4

    .line 2223
    invoke-static {v8}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 2221
    invoke-static {v13, v14, v9, v15}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v13

    if-eqz v13, :cond_17c

    .line 2224
    const-string v13, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Window length "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms too short; expanding to "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms."

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v10

    .line 2231
    :cond_17c
    :goto_17c
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2238
    :try_start_17f
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    const/4 v13, 0x0

    invoke-virtual {v11, v8, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    iget-object v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v13, v13, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    if-lt v11, v13, :cond_1cf

    .line 2239
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Maximum limit of concurrent alarms "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v13, v13, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " reached for uid: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2241
    invoke-static {v8}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", callingPackage: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2243
    const-string v13, "AlarmManager"

    invoke-static {v13, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x3e8

    if-ne v8, v13, :cond_1ed

    .line 2247
    const-string v13, "234441463"

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v13, v14, v11}, [Ljava/lang/Object;

    move-result-object v11

    const v13, 0x534e4554

    invoke-static {v13, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1cf
    move-wide v13, v6

    move-wide v6, v4

    move-wide v4, v13

    move-object/from16 v11, p9

    move/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v18, p16

    move/from16 v19, p17

    move/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-wide/from16 v8, v23

    move-object/from16 v10, p8

    goto :goto_1f3

    :catchall_1e9
    move-exception v0

    move-object/from16 v20, v10

    goto :goto_1f9

    .line 2245
    :cond_1ed
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f3
    .catchall {:try_start_17f .. :try_end_1f3} :catchall_1e9

    .line 2250
    :goto_1f3
    :try_start_1f3
    invoke-virtual/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 2253
    monitor-exit v20

    return-void

    :catchall_1f8
    move-exception v0

    :goto_1f9
    monitor-exit v20
    :try_end_1fa
    .catchall {:try_start_1f3 .. :try_end_1fa} :catchall_1f8

    throw v0

    .line 2189
    :cond_1fb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid alarm type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .registers 41

    move-object/from16 v0, p0

    .line 2262
    new-instance v1, Lcom/android/server/alarm/Alarm;

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

    invoke-direct/range {v1 .. v20}, Lcom/android/server/alarm/Alarm;-><init>(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    move-object v2, v1

    move/from16 v1, v17

    .line 2265
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    move-object/from16 v4, p17

    invoke-virtual {v3, v1, v4}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not setting alarm from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- package not allowed to start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2270
    :cond_56
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v1

    const/4 v3, 0x0

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 2271
    invoke-virtual {v0, v11, v12, v3}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 2272
    iget v3, v2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v0, v3}, Lcom/android/server/alarm/AlarmManagerService;->incrementAlarmCount(I)V

    .line 2273
    invoke-virtual {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(Lcom/android/server/alarm/Alarm;)V

    .line 2274
    invoke-static {v2, v1}, Lcom/android/server/alarm/MetricsHelper;->pushAlarmScheduled(Lcom/android/server/alarm/Alarm;I)V

    return-void
.end method

.method public final setImplLocked(Lcom/android/server/alarm/Alarm;)V
    .registers 6

    .line 2520
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4c

    .line 2521
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    .line 2533
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eq v0, p1, :cond_3f

    if-eqz v0, :cond_3f

    .line 2534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImplLocked: idle until changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/alarm/Alarm;)V

    invoke-interface {v0, v2}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 2538
    :cond_3f
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 2539
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    goto :goto_53

    .line 2540
    :cond_4c
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_53

    .line 2541
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    .line 2543
    :cond_53
    :goto_53
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_86

    .line 2544
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    .line 2545
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_86

    .line 2546
    :cond_69
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 2549
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_86

    .line 2550
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 2554
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 2560
    :cond_86
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_8d

    const/4 v0, 0x1

    .line 2561
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 2563
    :cond_8d
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    .line 2564
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    .line 2565
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v0, p1}, Lcom/android/server/alarm/AlarmStore;->add(Lcom/android/server/alarm/Alarm;)V

    .line 2566
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2567
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method public final setLocked(IJ)V
    .registers 6

    .line 4114
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4115
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setAlarm(IJ)V

    return-void

    .line 4117
    :cond_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 4118
    iput v0, p1, Landroid/os/Message;->what:I

    .line 4120
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4121
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public setTimeImpl(JILjava/lang/String;)Z
    .registers 6

    .line 2094
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2095
    :try_start_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setCurrentTimeMillis(JILjava/lang/String;)V

    const/4 p0, 0x1

    .line 2100
    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 2101
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public setTimeZoneImpl(Ljava/lang/String;ILjava/lang/String;)V
    .registers 11

    .line 2105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_57

    .line 2109
    :cond_7
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 2113
    monitor-enter p0

    .line 2117
    :try_start_c
    invoke-static {p1, p2, p3}, Lcom/android/server/SystemTimeZone;->setTimeZoneId(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    .line 2118
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_58

    const/4 p2, 0x0

    .line 2122
    invoke-static {p2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    if-eqz p1, :cond_57

    .line 2126
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 2129
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x25200000

    .line 2130
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2134
    const-string/jumbo p3, "time-zone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2135
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2136
    invoke-virtual {p3}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v2

    const/16 v5, 0xcc

    const-string v6, ""

    const/4 v4, 0x0

    .line 2135
    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 2139
    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 2141
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 2142
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 2141
    invoke-virtual {p3, p1, v0, p2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_57
    :goto_57
    return-void

    :catchall_58
    move-exception v0

    move-object p1, v0

    .line 2118
    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_58

    throw p1
.end method

.method public setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .registers 7

    const/4 v0, 0x0

    .line 4652
    :try_start_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p4, :cond_6

    goto :goto_7

    :cond_6
    move-object p3, v0

    :goto_7
    invoke-virtual {v1, p3}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    if-eqz p1, :cond_12

    .line 4655
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void

    :cond_12
    if-ltz p2, :cond_1f

    .line 4660
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance p3, Landroid/os/WorkSource;

    invoke-direct {p3, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {p1, p3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    return-void

    .line 4667
    :catch_1f
    :cond_1f
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method public shouldAddWakeupForUser(I)Z
    .registers 4

    .line 3796
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    .line 3797
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_28

    :cond_1a
    if-eqz p1, :cond_28

    .line 3804
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    :goto_28
    return v1
.end method

.method public triggerAlarmsLocked(Ljava/util/ArrayList;J)I
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 4183
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4, v2, v3}, Lcom/android/server/alarm/AlarmStore;->removePendingAlarms(J)Ljava/util/ArrayList;

    move-result-object v8

    .line 4184
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v20, 0x0

    move/from16 v4, v20

    move/from16 v21, v4

    :goto_16
    if-ge v4, v9, :cond_f9

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v22, v4, 0x1

    move-object v10, v5

    check-cast v10, Lcom/android/server/alarm/Alarm;

    .line 4185
    invoke-virtual {v0, v10}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 4190
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v5, v10, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_3f

    .line 4192
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4193
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v6, v10, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4195
    :cond_3f
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, v22

    goto :goto_16

    :cond_45
    const/4 v11, 0x1

    .line 4199
    iput v11, v10, Lcom/android/server/alarm/Alarm;->count:I

    .line 4200
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4201
    iget v4, v10, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5e

    .line 4202
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v4, :cond_57

    move v4, v11

    goto :goto_59

    :cond_57
    move/from16 v4, v20

    :goto_59
    iget-object v5, v10, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 4205
    :cond_5e
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne v4, v10, :cond_6f

    const/4 v4, 0x0

    .line 4206
    iput-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 4207
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v4, v5}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 4219
    :cond_6f
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-ne v4, v10, :cond_7b

    .line 4220
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4}, Lcom/android/server/alarm/AlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 4227
    :cond_7b
    iget-wide v4, v10, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_db

    .line 4230
    iget v4, v10, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v4, v4

    invoke-virtual {v10}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v6

    sub-long v6, v2, v6

    iget-wide v12, v10, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    div-long/2addr v6, v12

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v10, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v4, v4

    mul-long/2addr v12, v4

    .line 4233
    invoke-virtual {v10}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v4

    add-long/2addr v4, v12

    .line 4234
    iget-wide v6, v10, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    invoke-static/range {v2 .. v7}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v6

    .line 4236
    iget v1, v10, Lcom/android/server/alarm/Alarm;->type:I

    iget-wide v2, v10, Lcom/android/server/alarm/Alarm;->origWhen:J

    add-long/2addr v2, v12

    sub-long/2addr v6, v4

    move-object v12, v8

    move v13, v9

    iget-wide v8, v10, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    iget-object v14, v10, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    move v15, v13

    iget v13, v10, Lcom/android/server/alarm/Alarm;->flags:I

    move-object/from16 v16, v14

    iget-object v14, v10, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v17, v15

    iget-object v15, v10, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    iget v11, v10, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v0, v10, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    const/16 v19, 0x1

    const/16 v18, 0x0

    move/from16 v23, v19

    const/16 v19, -0x1

    move-object/from16 v24, v10

    move-object/from16 v10, v16

    move/from16 v16, v11

    const/4 v11, 0x0

    move-object/from16 v25, v12

    const/4 v12, 0x0

    move/from16 v23, v17

    move-object/from16 v26, v24

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    move-object/from16 v5, v26

    goto :goto_e0

    :cond_db
    move-object/from16 v25, v8

    move/from16 v23, v9

    move-object v5, v10

    .line 4242
    :goto_e0
    iget-boolean v1, v5, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v1, :cond_e6

    add-int/lit8 v21, v21, 0x1

    .line 4247
    :cond_e6
    iget-object v1, v5, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_ed

    const/4 v1, 0x1

    .line 4248
    iput-boolean v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    :cond_ed
    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, v22

    move/from16 v9, v23

    move-object/from16 v8, v25

    goto/16 :goto_16

    .line 4252
    :cond_f9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 4253
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return v21
.end method

.method public final updateNextAlarmClockLocked()V
    .registers 13

    .line 3710
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v0, :cond_6

    goto/16 :goto_a0

    :cond_6
    const/4 v0, 0x0

    .line 3713
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 3715
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3716
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 3718
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3719
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :cond_19
    :goto_19
    if-ge v4, v3, :cond_5f

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 3720
    iget-object v6, v5, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v6, :cond_19

    .line 3721
    iget v6, v5, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3722
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3731
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_41

    .line 3732
    iget-object v5, v5, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    .line 3733
    :cond_41
    iget-object v5, v5, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 3734
    invoke-virtual {v7}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v8

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v5}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-gtz v5, :cond_19

    .line 3736
    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    .line 3741
    :cond_5f
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_63
    if-ge v0, v2, :cond_83

    .line 3743
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3744
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 3745
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3746
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    .line 3747
    invoke-virtual {p0, v4, v3}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 3751
    :cond_83
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8b
    if-ltz v0, :cond_a0

    .line 3753
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3754
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9d

    const/4 v3, 0x0

    .line 3755
    invoke-virtual {p0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    :cond_9d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8b

    :cond_a0
    :goto_a0
    return-void
.end method

.method public final updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 6

    const/4 v0, 0x1

    if-eqz p2, :cond_28

    .line 3767
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3768
    iget-boolean p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz p2, :cond_3f

    .line 3769
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->shouldAddWakeupForUser(I)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 3770
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 3771
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v1

    .line 3770
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lcom/android/server/alarm/UserWakeupStore;->addUserWakeup(IJ)V

    goto :goto_3f

    .line 3778
    :cond_28
    iget-boolean p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz p2, :cond_3a

    .line 3779
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 3780
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {p2, p1}, Lcom/android/server/alarm/UserWakeupStore;->removeUserWakeup(I)V

    .line 3783
    :cond_3a
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3786
    :cond_3f
    :goto_3f
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3787
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3788
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
