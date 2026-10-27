.class final Lcom/android/server/alarm/AlarmManagerService$Constants;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
.implements Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Constants"
.end annotation


# static fields
.field private static final DEFAULT_ALLOW_WHILE_IDLE_COMPAT_QUOTA:I = 0x1

.field private static final DEFAULT_ALLOW_WHILE_IDLE_COMPAT_WINDOW:J = 0x83d60L

.field private static final DEFAULT_ALLOW_WHILE_IDLE_QUOTA:I = 0x48

.field private static final DEFAULT_ALLOW_WHILE_IDLE_WHITELIST_DURATION:J = 0x2710L

.field private static final DEFAULT_ALLOW_WHILE_IDLE_WINDOW:J = 0x36ee80L

.field private static final DEFAULT_APP_STANDBY_RESTRICTED_QUOTA:I = 0x1

.field private static final DEFAULT_APP_STANDBY_RESTRICTED_WINDOW:J = 0x5265c00L

.field private static final DEFAULT_APP_STANDBY_WINDOW:J = 0x36ee80L

.field private static final DEFAULT_CRASH_NON_CLOCK_APPS:Z = true

.field private static final DEFAULT_KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Z = true

.field private static final DEFAULT_LAZY_BATCHING:Z = true

.field private static final DEFAULT_LISTENER_TIMEOUT:J = 0x1388L

.field private static final DEFAULT_MAX_ALARMS_PER_UID:I = 0x1f4

.field private static final DEFAULT_MAX_DEVICE_IDLE_FUZZ:J = 0xdbba0L

.field private static final DEFAULT_MAX_INTERVAL:J = 0x757b12c00L

.field private static final DEFAULT_MIN_DEVICE_IDLE_FUZZ:J = 0x1d4c0L

.field private static final DEFAULT_MIN_FUTURITY:J = 0x1388L

.field private static final DEFAULT_MIN_INTERVAL:J = 0xea60L

.field private static final DEFAULT_MIN_WINDOW:J = 0x927c0L

.field private static final DEFAULT_PRIORITY_ALARM_DELAY:J = 0x83d60L

.field private static final DEFAULT_TEMPORARY_QUOTA_BUMP:I = 0x0

.field private static final DEFAULT_TIME_TICK_ALLOWED_WHILE_IDLE:Z = true

.field static final KEY_ALLOW_WHILE_IDLE_COMPAT_QUOTA:Ljava/lang/String; = "allow_while_idle_compat_quota"

.field static final KEY_ALLOW_WHILE_IDLE_COMPAT_WINDOW:Ljava/lang/String; = "allow_while_idle_compat_window"

.field static final KEY_ALLOW_WHILE_IDLE_QUOTA:Ljava/lang/String; = "allow_while_idle_quota"

.field static final KEY_ALLOW_WHILE_IDLE_WHITELIST_DURATION:Ljava/lang/String; = "allow_while_idle_whitelist_duration"

.field static final KEY_ALLOW_WHILE_IDLE_WINDOW:Ljava/lang/String; = "allow_while_idle_window"

.field private static final KEY_APP_STANDBY_RESTRICTED_QUOTA:Ljava/lang/String; = "standby_quota_restricted"

.field private static final KEY_APP_STANDBY_RESTRICTED_WINDOW:Ljava/lang/String; = "app_standby_restricted_window"

.field private static final KEY_APP_STANDBY_WINDOW:Ljava/lang/String; = "app_standby_window"

.field static final KEY_CRASH_NON_CLOCK_APPS:Ljava/lang/String; = "crash_non_clock_apps"

.field static final KEY_EXACT_ALARM_DENY_LIST:Ljava/lang/String; = "exact_alarm_deny_list"

.field static final KEY_KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Ljava/lang/String; = "kill_on_schedule_exact_alarm_revoked"

.field static final KEY_LAZY_BATCHING:Ljava/lang/String; = "lazy_batching"

.field static final KEY_LISTENER_TIMEOUT:Ljava/lang/String; = "listener_timeout"

.field static final KEY_MAX_ALARMS_PER_UID:Ljava/lang/String; = "max_alarms_per_uid"

.field static final KEY_MAX_DEVICE_IDLE_FUZZ:Ljava/lang/String; = "max_device_idle_fuzz"

.field static final KEY_MAX_INTERVAL:Ljava/lang/String; = "max_interval"

.field static final KEY_MIN_DEVICE_IDLE_FUZZ:Ljava/lang/String; = "min_device_idle_fuzz"

.field static final KEY_MIN_FUTURITY:Ljava/lang/String; = "min_futurity"

.field static final KEY_MIN_INTERVAL:Ljava/lang/String; = "min_interval"

.field static final KEY_MIN_WINDOW:Ljava/lang/String; = "min_window"

.field private static final KEY_PREFIX_STANDBY_QUOTA:Ljava/lang/String; = "standby_quota_"

.field static final KEY_PRIORITY_ALARM_DELAY:Ljava/lang/String; = "priority_alarm_delay"

.field static final KEY_TEMPORARY_QUOTA_BUMP:Ljava/lang/String; = "temporary_quota_bump"

.field private static final KEY_TIME_TICK_ALLOWED_WHILE_IDLE:Ljava/lang/String; = "time_tick_allowed_while_idle"

.field static final MAX_EXACT_ALARM_DENY_LIST_SIZE:I = 0xfa


# instance fields
.field public ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

.field public ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

.field public ALLOW_WHILE_IDLE_QUOTA:I

.field public ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

.field public ALLOW_WHILE_IDLE_WINDOW:J

.field public APP_STANDBY_QUOTAS:[I

.field public APP_STANDBY_RESTRICTED_QUOTA:I

.field public APP_STANDBY_RESTRICTED_WINDOW:J

.field public APP_STANDBY_WINDOW:J

.field public CRASH_NON_CLOCK_APPS:Z

.field private final DEFAULT_APP_STANDBY_QUOTAS:[I

.field public volatile EXACT_ALARM_DENY_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

.field public KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Z

.field public LAZY_BATCHING:Z

.field public LISTENER_TIMEOUT:J

.field public MAX_ALARMS_PER_UID:I

.field public MAX_DEVICE_IDLE_FUZZ:J

.field public MAX_INTERVAL:J

.field public MIN_DEVICE_IDLE_FUZZ:J

.field public MIN_FUTURITY:J

.field public MIN_INTERVAL:J

.field public MIN_WINDOW:J

.field public PRIORITY_ALARM_DELAY:J

.field public TEMPORARY_QUOTA_BUMP:I

.field public TIME_TICK_ALLOWED_WHILE_IDLE:Z

.field public USE_TARE_POLICY:Z

.field private mLastAllowWhileIdleWhitelistDuration:J

.field private mVersion:I

.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/os/Handler;)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 865
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    const-string/jumbo v0, "standby_quota_active"

    const-string/jumbo v1, "standby_quota_working"

    const-string/jumbo v2, "standby_quota_frequent"

    const-string/jumbo v3, "standby_quota_rare"

    const-string/jumbo v4, "standby_quota_never"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    .line 728
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_98

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    .line 763
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    .line 766
    const-wide/32 v3, 0xea60

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 769
    const-wide v3, 0x757b12c00L

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    .line 772
    const-wide/32 v3, 0x927c0

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    .line 775
    const-wide/16 v3, 0x2710

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 779
    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 780
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    .line 782
    const-wide/32 v1, 0x36ee80

    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 783
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    .line 784
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    .line 785
    const-wide/32 v3, 0x5265c00

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    .line 787
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LAZY_BATCHING:Z

    .line 788
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    .line 790
    const/16 v3, 0x48

    iput v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 796
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 802
    const-wide/32 v3, 0x83d60

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 808
    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 815
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->CRASH_NON_CLOCK_APPS:Z

    .line 821
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    .line 828
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    .line 834
    const-wide/32 v1, 0x1d4c0

    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    .line 840
    const-wide/32 v1, 0xdbba0

    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    .line 846
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Z

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    .line 860
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    .line 862
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 863
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    .line 866
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    .line 867
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_89
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_97

    .line 868
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 870
    .end local v0    # "i":I
    :cond_97
    return-void

    :array_98
    .array-data 4
        0x2d0
        0xa
        0x2
        0x1
        0x0
    .end array-data
.end method

.method static synthetic lambda$migrateAlarmsToNewStoreLocked$1(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .param p0, "unused"    # Lcom/android/server/alarm/Alarm;

    .line 1123
    const/4 v0, 0x1

    return v0
.end method

.method private migrateAlarmsToNewStoreLocked()V
    .registers 5

    .line 1121
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LAZY_BATCHING:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/android/server/alarm/LazyAlarmStore;

    invoke-direct {v0}, Lcom/android/server/alarm/LazyAlarmStore;-><init>()V

    goto :goto_f

    .line 1122
    :cond_a
    new-instance v0, Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-direct {v0}, Lcom/android/server/alarm/BatchingAlarmStore;-><init>()V

    :goto_f
    nop

    .line 1123
    .local v0, "newStore":Lcom/android/server/alarm/AlarmStore;
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$Constants$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/alarm/AlarmManagerService$Constants$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1124
    .local v1, "allAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->addAll(Ljava/util/ArrayList;)V

    .line 1125
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iput-object v0, v2, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    .line 1126
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAlarmClockUpdater(Lcom/android/server/alarm/AlarmManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->setAlarmClockRemovalListener(Ljava/lang/Runnable;)V

    .line 1127
    return-void
.end method

.method private updateDeviceIdleFuzzBoundaries()V
    .registers 6

    .line 1130
    const-string/jumbo v0, "min_device_idle_fuzz"

    const-string/jumbo v1, "max_device_idle_fuzz"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "alarm_manager"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    .line 1134
    .local v2, "properties":Landroid/provider/DeviceConfig$Properties;
    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v2, v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    .line 1136
    const-wide/32 v3, 0xdbba0

    invoke-virtual {v2, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    .line 1139
    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_47

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "max_device_idle_fuzz cannot be smaller than min_device_idle_fuzz! Increasing to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    .line 1145
    :cond_47
    return-void
.end method

.method private updateExactAlarmDenyList([Ljava/lang/String;)V
    .registers 7
    .param p1, "newDenyList"    # [Ljava/lang/String;

    .line 1099
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1100
    .local v0, "newSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1101
    .local v1, "removed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 1103
    .local v2, "added":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1104
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1105
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_30

    .line 1106
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4, v2}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1107
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1109
    :cond_30
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_43

    .line 1110
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v1}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1111
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1113
    :cond_43
    array-length v3, p1

    if-nez v3, :cond_4d

    .line 1114
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    goto :goto_4f

    .line 1116
    :cond_4d
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    .line 1118
    :goto_4f
    return-void
.end method

.method private updateStandbyQuotasLocked()V
    .registers 8

    .line 1150
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    const-string v1, "alarm_manager"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 1153
    .local v0, "properties":Landroid/provider/DeviceConfig$Properties;
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v5, v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v4

    .line 1156
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1a
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_38

    .line 1157
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget-object v3, v3, v2

    add-int/lit8 v5, v2, -0x1

    aget v5, v4, v5

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v6, v6, v2

    .line 1159
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1157
    invoke-virtual {v0, v3, v5}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v4, v2

    .line 1156
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1162
    .end local v2    # "i":I
    :cond_38
    nop

    .line 1163
    const-string/jumbo v2, "standby_quota_restricted"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1162
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    .line 1166
    return-void
.end method

.method private updateStandbyWindowsLocked()V
    .registers 9

    .line 1171
    const-string v0, "app_standby_window"

    const-string v1, "app_standby_restricted_window"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "alarm_manager"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    .line 1174
    .local v2, "properties":Landroid/provider/DeviceConfig$Properties;
    const-wide/32 v3, 0x36ee80

    invoke-virtual {v2, v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 1176
    cmp-long v0, v5, v3

    const-string v7, "AlarmManager"

    if-lez v0, :cond_25

    .line 1177
    const-string v0, "Cannot exceed the app_standby_window size of 3600000"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    goto :goto_41

    .line 1180
    :cond_25
    cmp-long v0, v5, v3

    if-gez v0, :cond_41

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using a non-default app_standby_window of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_41
    :goto_41
    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    const-wide/32 v5, 0x5265c00

    .line 1186
    invoke-virtual {v2, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1185
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    .line 1189
    return-void
.end method

.method private updateTareSettings(Z)V
    .registers 5
    .param p1, "isTareEnabled"    # Z

    .line 1069
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1070
    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-eq v1, p1, :cond_31

    .line 1071
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    .line 1072
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$Constants$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$Constants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService$Constants;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    .line 1085
    .local v1, "changed":Z
    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-nez v2, :cond_25

    .line 1088
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAffordabilityCache(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->clear()V

    .line 1090
    :cond_25
    if-eqz v1, :cond_31

    .line 1091
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1092
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1095
    .end local v1    # "changed":Z
    :cond_31
    monitor-exit v0

    .line 1096
    return-void

    .line 1095
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_33

    throw v1
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 1192
    const-string v0, "Settings:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1196
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1197
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1199
    const-string/jumbo v0, "min_futurity"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1200
    const-string v0, "="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1201
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1202
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1204
    const-string/jumbo v1, "min_interval"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1206
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1207
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1209
    const-string/jumbo v1, "max_interval"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1211
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1212
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1214
    const-string/jumbo v1, "min_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1216
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1217
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1219
    const-string/jumbo v1, "listener_timeout"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1221
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1222
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1224
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "allow_while_idle_quota"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1225
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1227
    const-string v1, "allow_while_idle_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1229
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1230
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1232
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "allow_while_idle_compat_quota"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1233
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1235
    const-string v1, "allow_while_idle_compat_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1237
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1238
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1240
    const-string v1, "allow_while_idle_whitelist_duration"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1242
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1243
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1245
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "max_alarms_per_uid"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1246
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1248
    const-string v1, "app_standby_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1250
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1251
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_da
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_f2

    .line 1254
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1255
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1253
    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    .line 1258
    .end local v1    # "i":I
    :cond_f2
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "standby_quota_restricted"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1259
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1261
    const-string v1, "app_standby_restricted_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1263
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1264
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1266
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LAZY_BATCHING:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "lazy_batching"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1267
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1269
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "time_tick_allowed_while_idle"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1270
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1272
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->CRASH_NON_CLOCK_APPS:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "crash_non_clock_apps"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1273
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1275
    const-string/jumbo v1, "priority_alarm_delay"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1277
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1278
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1280
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    const-string v2, "exact_alarm_deny_list"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1281
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1283
    const-string/jumbo v1, "min_device_idle_fuzz"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1285
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1286
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1288
    const-string/jumbo v1, "max_device_idle_fuzz"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1291
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1293
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Z

    .line 1294
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1293
    const-string/jumbo v1, "kill_on_schedule_exact_alarm_revoked"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1295
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1297
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_tare"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1298
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1300
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "temporary_quota_bump"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1301
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1303
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1304
    return-void
.end method

.method dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1307
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1309
    .local v0, "token":J
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1310
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1311
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    const-wide v4, 0x10300000007L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1312
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1313
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    const-wide v4, 0x10300000006L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1316
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1317
    return-void
.end method

.method public getVersion()I
    .registers 3

    .line 873
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_5
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    monitor-exit v0

    return v1

    .line 875
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1
.end method

.method synthetic lambda$updateTareSettings$0$com-android-server-alarm-AlarmManagerService$Constants(Lcom/android/server/alarm/Alarm;)Z
    .registers 9
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 1073
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    .line 1074
    .local v0, "standbyChanged":Z
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnTareLocked(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    .line 1075
    .local v1, "tareChanged":Z
    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-eqz v2, :cond_16

    .line 1076
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mregisterTareListener(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)V

    goto :goto_31

    .line 1078
    :cond_16
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmEconomyManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/tare/EconomyManagerInternal;

    move-result-object v2

    iget v3, p1, Lcom/android/server/alarm/Alarm;->uid:I

    .line 1079
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v5}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAffordabilityChangeListener(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    move-result-object v5

    .line 1081
    invoke-static {p1}, Lcom/android/server/alarm/TareBill;->getAppropriateBill(Lcom/android/server/alarm/Alarm;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v6

    .line 1078
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/server/tare/EconomyManagerInternal;->unregisterAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 1083
    :goto_31
    if-nez v0, :cond_38

    if-eqz v1, :cond_36

    goto :goto_38

    :cond_36
    const/4 v2, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v2, 0x1

    :goto_39
    return v2
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 17
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 905
    move-object v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 906
    .local v3, "standbyQuotaUpdated":Z
    const/4 v4, 0x0

    .line 907
    .local v4, "deviceIdleFuzzBoundariesUpdated":Z
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 908
    :try_start_a
    iget v0, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    const/4 v6, 0x1

    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    .line 909
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 910
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_27

    .line 911
    goto :goto_18

    .line 914
    :cond_27
    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x0

    sparse-switch v9, :sswitch_data_2e2

    :cond_30
    goto/16 :goto_134

    :sswitch_32
    const-string/jumbo v9, "min_interval"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    move v8, v6

    goto/16 :goto_134

    :sswitch_3e
    const-string v9, "allow_while_idle_compat_quota"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/4 v8, 0x5

    goto/16 :goto_134

    :sswitch_49
    const-string v9, "exact_alarm_deny_list"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0x11

    goto/16 :goto_134

    :sswitch_55
    const-string/jumbo v9, "max_interval"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/4 v8, 0x2

    goto/16 :goto_134

    :sswitch_61
    const-string/jumbo v9, "time_tick_allowed_while_idle"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0xe

    goto/16 :goto_134

    :sswitch_6e
    const-string v9, "allow_while_idle_whitelist_duration"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0x8

    goto/16 :goto_134

    :sswitch_7a
    const-string/jumbo v9, "listener_timeout"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0x9

    goto/16 :goto_134

    :sswitch_87
    const-string v9, "crash_non_clock_apps"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0xf

    goto/16 :goto_134

    :sswitch_93
    const-string v9, "app_standby_window"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0xb

    goto/16 :goto_134

    :sswitch_9f
    const-string/jumbo v9, "min_window"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/4 v8, 0x4

    goto/16 :goto_134

    :sswitch_ab
    const-string/jumbo v9, "max_device_idle_fuzz"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0x13

    goto/16 :goto_134

    :sswitch_b8
    const-string v9, "allow_while_idle_window"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/4 v8, 0x6

    goto/16 :goto_134

    :sswitch_c3
    const-string v9, "allow_while_idle_quota"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/4 v8, 0x3

    goto :goto_134

    :sswitch_cd
    const-string/jumbo v9, "temporary_quota_bump"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0x15

    goto :goto_134

    :sswitch_d9
    const-string/jumbo v9, "priority_alarm_delay"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0x10

    goto :goto_134

    :sswitch_e5
    const-string v9, "app_standby_restricted_window"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0xc

    goto :goto_134

    :sswitch_f0
    const-string/jumbo v9, "max_alarms_per_uid"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0xa

    goto :goto_134

    :sswitch_fc
    const-string/jumbo v9, "min_futurity"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    move v8, v10

    goto :goto_134

    :sswitch_107
    const-string/jumbo v9, "min_device_idle_fuzz"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0x12

    goto :goto_134

    :sswitch_113
    const-string v9, "allow_while_idle_compat_window"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/4 v8, 0x7

    goto :goto_134

    :sswitch_11d
    const-string/jumbo v9, "lazy_batching"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0xd

    goto :goto_134

    :sswitch_129
    const-string/jumbo v9, "kill_on_schedule_exact_alarm_revoked"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/16 v8, 0x14

    :goto_134
    const-wide/32 v13, 0x83d60

    const-wide/32 v11, 0x36ee80

    packed-switch v8, :pswitch_data_33c

    .line 1051
    const-string/jumbo v8, "standby_quota_"

    goto/16 :goto_2ce

    .line 1047
    :pswitch_142
    const-string/jumbo v8, "temporary_quota_bump"

    invoke-virtual {v2, v8, v10}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    .line 1049
    goto/16 :goto_2da

    .line 1042
    :pswitch_14d
    const-string/jumbo v8, "kill_on_schedule_exact_alarm_revoked"

    invoke-virtual {v2, v8, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Z

    .line 1045
    goto/16 :goto_2da

    .line 1036
    :pswitch_158
    if-nez v4, :cond_2da

    .line 1037
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateDeviceIdleFuzzBoundaries()V

    .line 1038
    const/4 v4, 0x1

    goto/16 :goto_2da

    .line 1020
    :pswitch_160
    const-string v8, "exact_alarm_deny_list"

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1022
    .local v8, "rawValue":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_171

    .line 1023
    sget-object v9, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_179

    .line 1024
    :cond_171
    const-string v9, ","

    const/16 v10, 0xfb

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    :goto_179
    nop

    .line 1025
    .local v9, "values":[Ljava/lang/String;
    array-length v10, v9

    const/16 v11, 0xfa

    if-le v10, v11, :cond_192

    .line 1026
    const-string v10, "AlarmManager"

    const-string v12, "Deny list too long, truncating to 250 elements."

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    nop

    .line 1029
    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 1028
    invoke-direct {p0, v10}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateExactAlarmDenyList([Ljava/lang/String;)V

    goto/16 :goto_2da

    .line 1031
    :cond_192
    invoke-direct {p0, v9}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateExactAlarmDenyList([Ljava/lang/String;)V

    .line 1033
    goto/16 :goto_2da

    .line 1016
    .end local v8    # "rawValue":Ljava/lang/String;
    .end local v9    # "values":[Ljava/lang/String;
    :pswitch_197
    const-string/jumbo v8, "priority_alarm_delay"

    invoke-virtual {v2, v8, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    .line 1018
    goto/16 :goto_2da

    .line 1012
    :pswitch_1a2
    const-string v8, "crash_non_clock_apps"

    invoke-virtual {v2, v8, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->CRASH_NON_CLOCK_APPS:Z

    .line 1014
    goto/16 :goto_2da

    .line 1007
    :pswitch_1ac
    const-string/jumbo v8, "time_tick_allowed_while_idle"

    invoke-virtual {v2, v8, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    .line 1010
    goto/16 :goto_2da

    .line 999
    :pswitch_1b7
    iget-boolean v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->LAZY_BATCHING:Z

    .line 1000
    .local v8, "oldLazyBatching":Z
    const-string/jumbo v9, "lazy_batching"

    invoke-virtual {v2, v9, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->LAZY_BATCHING:Z

    .line 1002
    if-eq v8, v9, :cond_2da

    .line 1003
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->migrateAlarmsToNewStoreLocked()V

    goto/16 :goto_2da

    .line 996
    .end local v8    # "oldLazyBatching":Z
    :pswitch_1c9
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateStandbyWindowsLocked()V

    .line 997
    goto/16 :goto_2da

    .line 986
    :pswitch_1ce
    const-string/jumbo v8, "max_alarms_per_uid"

    const/16 v9, 0x1f4

    invoke-virtual {v2, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    .line 988
    if-ge v8, v9, :cond_2da

    .line 989
    const-string v8, "AlarmManager"

    const-string v10, "Cannot set max_alarms_per_uid lower than 500"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iput v9, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    goto/16 :goto_2da

    .line 982
    :pswitch_1e6
    const-string/jumbo v8, "listener_timeout"

    const-wide/16 v9, 0x1388

    invoke-virtual {v2, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 984
    goto/16 :goto_2da

    .line 976
    :pswitch_1f3
    const-string v8, "allow_while_idle_whitelist_duration"

    const-wide/16 v9, 0x2710

    invoke-virtual {v2, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 979
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    .line 980
    goto/16 :goto_2da

    .line 961
    :pswitch_202
    const-string v8, "allow_while_idle_compat_window"

    invoke-virtual {v2, v8, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 965
    cmp-long v10, v8, v11

    if-lez v10, :cond_219

    .line 966
    const-string v8, "AlarmManager"

    const-string v9, "Cannot have allow_while_idle_compat_window > 3600000"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iput-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    goto/16 :goto_2da

    .line 969
    :cond_219
    cmp-long v8, v8, v13

    if-eqz v8, :cond_2da

    .line 971
    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using a non-default allow_while_idle_compat_window = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2da

    .line 948
    :pswitch_239
    const-string v8, "allow_while_idle_window"

    invoke-virtual {v2, v8, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 951
    cmp-long v10, v8, v11

    if-lez v10, :cond_250

    .line 952
    const-string v8, "AlarmManager"

    const-string v9, "Cannot have allow_while_idle_window > 3600000"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iput-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    goto/16 :goto_2da

    .line 955
    :cond_250
    cmp-long v8, v8, v11

    if-eqz v8, :cond_2da

    .line 956
    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using a non-default allow_while_idle_window = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2da

    .line 939
    :pswitch_26f
    const-string v8, "allow_while_idle_compat_quota"

    invoke-virtual {v2, v8, v6}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 942
    if-gtz v8, :cond_2da

    .line 943
    const-string v8, "AlarmManager"

    const-string v9, "Must have positive allow_while_idle_compat quota"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iput v6, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    goto :goto_2da

    .line 936
    :pswitch_283
    const-string/jumbo v8, "min_window"

    const-wide/32 v9, 0x927c0

    invoke-virtual {v2, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    .line 937
    goto :goto_2da

    .line 928
    :pswitch_290
    const-string v8, "allow_while_idle_quota"

    const/16 v9, 0x48

    invoke-virtual {v2, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 930
    if-gtz v8, :cond_2da

    .line 931
    const-string v8, "AlarmManager"

    const-string v9, "Must have positive allow_while_idle quota"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iput v6, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    goto :goto_2da

    .line 924
    :pswitch_2a6
    const-string/jumbo v8, "max_interval"

    const-wide v9, 0x757b12c00L

    invoke-virtual {v2, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    .line 926
    goto :goto_2da

    .line 920
    :pswitch_2b5
    const-string/jumbo v8, "min_interval"

    const-wide/32 v9, 0xea60

    invoke-virtual {v2, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 922
    goto :goto_2da

    .line 916
    :pswitch_2c2
    const-string/jumbo v8, "min_futurity"

    const-wide/16 v9, 0x1388

    invoke-virtual {v2, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    .line 918
    goto :goto_2da

    .line 1051
    :goto_2ce
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2da

    if-nez v3, :cond_2da

    .line 1054
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateStandbyQuotasLocked()V

    .line 1055
    const/4 v3, 0x1

    .line 1059
    .end local v7    # "name":Ljava/lang/String;
    :cond_2da
    :goto_2da
    goto/16 :goto_18

    .line 1060
    :cond_2dc
    monitor-exit v5

    .line 1061
    return-void

    .line 1060
    :catchall_2de
    move-exception v0

    monitor-exit v5
    :try_end_2e0
    .catchall {:try_start_a .. :try_end_2e0} :catchall_2de

    throw v0

    nop

    :sswitch_data_2e2
    .sparse-switch
        -0x7b9046b9 -> :sswitch_129
        -0x6a4b012d -> :sswitch_11d
        -0x5e0379da -> :sswitch_113
        -0x58de0e82 -> :sswitch_107
        -0x4d123227 -> :sswitch_fc
        -0x3a284894 -> :sswitch_f0
        -0x3481955c -> :sswitch_e5
        -0x24dca806 -> :sswitch_d9
        -0x23417eb5 -> :sswitch_cd
        -0x226d61af -> :sswitch_c3
        -0x21ab88c9 -> :sswitch_b8
        -0x187e4754 -> :sswitch_ab
        -0x176c2d83 -> :sswitch_9f
        -0x8c8f860 -> :sswitch_93
        0x24f9404d -> :sswitch_87
        0x3795c4d6 -> :sswitch_7a
        0x43f28753 -> :sswitch_6e
        0x48578d89 -> :sswitch_61
        0x5b1d4140 -> :sswitch_55
        0x64c69943 -> :sswitch_49
        0x70457582 -> :sswitch_3e
        0x77646c12 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_33c
    .packed-switch 0x0
        :pswitch_2c2
        :pswitch_2b5
        :pswitch_2a6
        :pswitch_290
        :pswitch_283
        :pswitch_26f
        :pswitch_239
        :pswitch_202
        :pswitch_1f3
        :pswitch_1e6
        :pswitch_1ce
        :pswitch_1c9
        :pswitch_1c9
        :pswitch_1b7
        :pswitch_1ac
        :pswitch_1a2
        :pswitch_197
        :pswitch_160
        :pswitch_158
        :pswitch_158
        :pswitch_14d
        :pswitch_142
    .end packed-switch
.end method

.method public onTareEnabledStateChanged(Z)V
    .registers 2
    .param p1, "isTareEnabled"    # Z

    .line 1065
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateTareSettings(Z)V

    .line 1066
    return-void
.end method

.method public start()V
    .registers 4

    .line 879
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->registerDeviceConfigListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 880
    const-class v0, Lcom/android/server/tare/EconomyManagerInternal;

    .line 881
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomyManagerInternal;

    .line 882
    .local v0, "economyManagerInternal":Lcom/android/server/tare/EconomyManagerInternal;
    invoke-interface {v0, p0}, Lcom/android/server/tare/EconomyManagerInternal;->registerTareStateChangeListener(Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;)V

    .line 883
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "alarm_manager"

    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/alarm/AlarmManagerService$Constants;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 884
    invoke-interface {v0}, Lcom/android/server/tare/EconomyManagerInternal;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateTareSettings(Z)V

    .line 885
    return-void
.end method

.method public updateAllowWhileIdleWhitelistDurationLocked()V
    .registers 8

    .line 888
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    .line 889
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 891
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    const/4 v4, 0x0

    const/16 v5, 0x12e

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    const/16 v5, 0x12d

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    const/4 v4, 0x1

    const/4 v5, -0x1

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 901
    :cond_32
    return-void
.end method
