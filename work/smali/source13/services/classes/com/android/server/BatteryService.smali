.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$Led;,
        Lcom/android/server/BatteryService$Shell;
    }
.end annotation


# static fields
.field private static final BATTERY_LEVEL_CHANGE_THROTTLE_MS:J = 0xea60L

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_SCALE:I = 0x64

.field private static final DEBUG:Z = false

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final HEALTH_HAL_WAIT_MS:J = 0x3e8L

.field private static final MAX_BATTERY_LEVELS_QUEUE_SIZE:I = 0x64

.field static final OPTION_FORCE_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mBatteryInputSuspended:Z

.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/BatteryService$BinderService;

.field private mChargeStartLevel:I

.field private mChargeStartTime:J

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mHealthInfo:Landroid/hardware/health/HealthInfo;

.field private mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

.field private mInvalidCharger:I

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelChangedSentMs:J

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastChargeCounter:I

.field private final mLastHealthInfo:Landroid/hardware/health/HealthInfo;

.field private mLastInvalidCharger:I

.field private mLastLowBatteryWarningLevel:I

.field private mLastMaxChargingCurrent:I

.field private mLastMaxChargingVoltage:I

.field private mLastPlugType:I

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private final mLock:Ljava/lang/Object;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPlugType:I

.field private mSentLowBatteryBroadcast:Z

.field private mSequence:I

.field private mShutdownBatteryTemperature:I

.field private mSwitchShutDown:Z

.field private mUpdatesStopped:Z


# direct methods
.method public static synthetic $r8$lambda$BBvTF9zr3jlUbHVZimjkg7NVAgQ(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendEnqueuedBatteryLevelChangedEvents()V

    return-void
.end method

.method public static synthetic $r8$lambda$nMM-N14QCYtvYu3I-B9f4UtoxL0(Lcom/android/server/BatteryService;Landroid/hardware/health/HealthInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Landroid/hardware/health/HealthInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/BatteryService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryLevelLow(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHealthServiceWrapper(Lcom/android/server/BatteryService;)Lcom/android/server/health/HealthServiceWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInvalidCharger(Lcom/android/server/BatteryService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLowBatteryWarningLevel(Lcom/android/server/BatteryService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlugType(Lcom/android/server/BatteryService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchShutDown(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mSwitchShutDown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmInvalidCharger(Lcom/android/server/BatteryService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwitchShutDown(Lcom/android/server/BatteryService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mSwitchShutDown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpProto(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misPoweredLocked(Lcom/android/server/BatteryService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetBattery(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->resetBattery(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBatteryLevel(Lcom/android/server/BatteryService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->setBatteryLevel(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetChargerAcOnline(Lcom/android/server/BatteryService;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->setChargerAcOnline(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msuspendBatteryInput(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BatteryService;->suspendBatteryInput()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munplugBattery(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->unplugBattery(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBatteryWarningLevelLocked(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 111
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 126
    const-string v0, "--checkin"

    const-string v1, "--unplugged"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 141
    new-instance v0, Landroid/hardware/health/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/HealthInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 154
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    .line 165
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 196
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 197
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/android/server/BatteryService$Led;

    const-class v2, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsManager;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 199
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 200
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e003c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0095

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e00ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 211
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 212
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 215
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 216
    new-instance v0, Lcom/android/server/BatteryService$1;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    .line 227
    .local v0, "invalidChargerObserver":Landroid/os/UEventObserver;
    const-string v2, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {v0, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 231
    .end local v0    # "invalidChargerObserver":Landroid/os/UEventObserver;
    :cond_9c
    invoke-static {}, Landroid/sysprop/PowerProperties;->battery_input_suspended()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    .line 232
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 880
    const-string v0, "Battery service (battery) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    const-string v0, "  get [-f] [ac|usb|wireless|status|level|temp|present|counter|invalid]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    const-string v0, "  set [-f] [ac|usb|wireless|status|level|temp|present|counter|invalid] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    const-string v0, "    Force a battery property value, freezing battery state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    const-string v1, "  unplug [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 889
    const-string v1, "    Force battery unplugged, freezing battery state."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    const-string v1, "  reset [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    const-string v1, "    Unfreeze battery state, returning to current hardware values."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_4b

    .line 895
    const-string v0, "  suspend_input"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    const-string v0, "    Suspend charging even if plugged in. "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    :cond_4b
    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1109
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1110
    if-eqz p3, :cond_2b

    :try_start_5
    array-length v1, p3

    if-eqz v1, :cond_2b

    const-string v1, "-a"

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_2b

    .line 1130
    :cond_14
    new-instance v2, Lcom/android/server/BatteryService$Shell;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 1131
    .local v2, "shell":Lcom/android/server/BatteryService$Shell;
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v5, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/BatteryService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_190

    .line 1111
    .end local v2    # "shell":Lcom/android/server/BatteryService$Shell;
    :cond_2b
    :goto_2b
    const-string v1, "Current Battery Service state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1112
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v1, :cond_39

    .line 1113
    const-string v1, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1115
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  AC powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  USB powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Wireless powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max charging current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max charging voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Charge counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  health: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  present: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    const-string v1, "  scale: 100"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  temperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  technology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    :goto_190
    monitor-exit v0

    .line 1134
    return-void

    .line 1133
    :catchall_192
    move-exception v1

    monitor-exit v0
    :try_end_194
    .catchall {:try_start_5 .. :try_end_194} :catchall_192

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1137
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1139
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1140
    const-wide v2, 0x10800000001L

    :try_start_d
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1141
    const/4 v2, 0x0

    .line 1142
    .local v2, "batteryPluggedValue":I
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v3, :cond_1b

    .line 1143
    const/4 v2, 0x1

    goto :goto_33

    .line 1144
    :cond_1b
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v3, :cond_23

    .line 1145
    const/4 v2, 0x2

    goto :goto_33

    .line 1146
    :cond_23
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v3, :cond_2b

    .line 1147
    const/4 v2, 0x4

    goto :goto_33

    .line 1148
    :cond_2b
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz v3, :cond_33

    .line 1149
    const/16 v2, 0x8

    .line 1151
    :cond_33
    :goto_33
    const-wide v3, 0x10e00000002L

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1152
    const-wide v3, 0x10500000003L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1155
    const-wide v3, 0x10500000004L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1158
    const-wide v3, 0x10500000005L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1160
    const-wide v3, 0x10e00000006L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1161
    const-wide v3, 0x10e00000007L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1162
    const-wide v3, 0x10800000008L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v5, v5, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1163
    const-wide v3, 0x10500000009L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1164
    const-wide v3, 0x1050000000aL

    const/16 v5, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1165
    const-wide v3, 0x1050000000bL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1166
    const-wide v3, 0x1050000000cL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1169
    const-wide v3, 0x1090000000dL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v5, v5, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1170
    .end local v2    # "batteryPluggedValue":I
    monitor-exit v1
    :try_end_be
    .catchall {:try_start_d .. :try_end_be} :catchall_c2

    .line 1171
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1172
    return-void

    .line 1170
    :catchall_c2
    move-exception v2

    :try_start_c3
    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v2
.end method

.method private getIconLocked(I)I
    .registers 6
    .param p1, "level"    # I

    .line 849
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const v1, 0x108085f

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    .line 850
    return v1

    .line 851
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v2, 0x3

    const v3, 0x1080851

    if-ne v0, v2, :cond_16

    .line 852
    return v3

    .line 853
    :cond_16
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_29

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_25

    goto :goto_29

    .line 862
    :cond_25
    const v0, 0x108086d

    return v0

    .line 855
    :cond_29
    :goto_29
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_3a

    .line 857
    return v1

    .line 859
    :cond_3a
    return v3
.end method

.method private isPoweredLocked(I)Z
    .registers 4
    .param p1, "plugTypeSet"    # I

    .line 330
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 331
    return v1

    .line 333
    :cond_8
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_13

    .line 335
    return v1

    .line 337
    :cond_13
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_1e

    .line 339
    return v1

    .line 341
    :cond_1e
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_29

    .line 343
    return v1

    .line 345
    :cond_29
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz v0, :cond_34

    .line 347
    return v1

    .line 349
    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$sendBatteryChangedIntentLocked$0(Landroid/content/Intent;)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 732
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private logBatteryStatsLocked()V
    .registers 10

    .line 784
    const-string v0, "failed to close dumpsys output stream"

    const-string v1, "failed to delete temporary dumpsys file: "

    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 785
    .local v2, "batteryInfoService":Landroid/os/IBinder;
    if-nez v2, :cond_d

    return-void

    .line 787
    :cond_d
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v4, "dropbox"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/DropBoxManager;

    .line 788
    .local v3, "db":Landroid/os/DropBoxManager;
    if-eqz v3, :cond_eb

    const-string v4, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v3, v4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    goto/16 :goto_eb

    .line 790
    :cond_23
    const/4 v5, 0x0

    .line 791
    .local v5, "dumpFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 794
    .local v6, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_25
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/batterystats.dump"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 795
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v7

    .line 796
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 797
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 800
    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v7}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_43} :catch_96
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_43} :catch_71
    .catchall {:try_start_25 .. :try_end_43} :catchall_6f

    .line 807
    nop

    .line 809
    :try_start_44
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 812
    goto :goto_4e

    .line 810
    :catch_48
    move-exception v4

    .line 811
    .local v4, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4e
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 815
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 816
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 807
    :catchall_6f
    move-exception v4

    goto :goto_bc

    .line 803
    :catch_71
    move-exception v4

    .line 804
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_72
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_6f

    .line 807
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_86

    .line 809
    :try_start_7c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    .line 812
    goto :goto_86

    .line 810
    :catch_80
    move-exception v4

    .line 811
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    .end local v4    # "e":Ljava/io/IOException;
    :cond_86
    :goto_86
    if-eqz v5, :cond_bb

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 815
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5b

    .line 801
    :catch_96
    move-exception v4

    .line 802
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_97
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_6f

    .line 807
    nop

    .end local v4    # "e":Landroid/os/RemoteException;
    if-eqz v6, :cond_ab

    .line 809
    :try_start_a1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    .line 812
    goto :goto_ab

    .line 810
    :catch_a5
    move-exception v4

    .line 811
    .local v4, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    .end local v4    # "e":Ljava/io/IOException;
    :cond_ab
    :goto_ab
    if-eqz v5, :cond_bb

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 815
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5b

    .line 819
    :cond_bb
    :goto_bb
    return-void

    .line 807
    :goto_bc
    if-eqz v6, :cond_c8

    .line 809
    :try_start_be
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c2

    .line 812
    goto :goto_c8

    .line 810
    :catch_c2
    move-exception v7

    .line 811
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    .end local v7    # "e":Ljava/io/IOException;
    :cond_c8
    :goto_c8
    if-eqz v5, :cond_ea

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_ea

    .line 815
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 816
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_ea
    throw v4

    .line 788
    .end local v5    # "dumpFile":Ljava/io/File;
    .end local v6    # "dumpStream":Ljava/io/FileOutputStream;
    :cond_eb
    :goto_eb
    return-void
.end method

.method private logOutlierLocked(J)V
    .registers 11
    .param p1, "duration"    # J

    .line 822
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 823
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "battery_discharge_threshold"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "dischargeThresholdString":Ljava/lang/String;
    const-string v2, "battery_discharge_duration_threshold"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 828
    .local v2, "durationThresholdString":Ljava/lang/String;
    if-eqz v1, :cond_52

    if-eqz v2, :cond_52

    .line 830
    :try_start_16
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 831
    .local v3, "durationThreshold":J
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 832
    .local v5, "dischargeThreshold":I
    cmp-long v6, p1, v3

    if-gtz v6, :cond_2e

    iget v6, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v7, v7, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    sub-int/2addr v6, v7

    if-lt v6, v5, :cond_2e

    .line 835
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_2e} :catch_2f

    .line 844
    .end local v3    # "durationThreshold":J
    .end local v5    # "dischargeThreshold":I
    :cond_2e
    goto :goto_52

    .line 841
    :catch_2f
    move-exception v3

    .line 842
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_52
    :goto_52
    return-void
.end method

.method private static plugType(Landroid/hardware/health/HealthInfo;)I
    .registers 2
    .param p0, "healthInfo"    # Landroid/hardware/health/HealthInfo;

    .line 463
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_6

    .line 464
    const/4 v0, 0x1

    return v0

    .line 465
    :cond_6
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_c

    .line 466
    const/4 v0, 0x2

    return v0

    .line 467
    :cond_c
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_12

    .line 468
    const/4 v0, 0x4

    return v0

    .line 469
    :cond_12
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz v0, :cond_19

    .line 470
    const/16 v0, 0x8

    return v0

    .line 472
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private processValuesLocked(Z)V
    .registers 20
    .param p1, "force"    # Z

    .line 477
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 478
    .local v2, "logOutlier":Z
    const-wide/16 v3, 0x0

    .line 480
    .local v3, "dischargeDuration":J
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v6, 0x1

    if-eq v0, v6, :cond_16

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v7, v1, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v0, v7, :cond_16

    move v0, v6

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 483
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService;->plugType(Landroid/hardware/health/HealthInfo;)I

    move-result v0

    iput v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 494
    :try_start_21
    iget-object v7, v1, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v8, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v10, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v11, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v12, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v13, v0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v14, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v15, v0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-wide v5, v0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    move-wide/from16 v16, v5

    invoke-interface/range {v7 .. v17}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIIIJ)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_4a} :catch_4b

    .line 506
    goto :goto_4c

    .line 504
    :catch_4b
    move-exception v0

    .line 508
    :goto_4c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    .line 511
    if-nez p1, :cond_a8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v5, :cond_a8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v5, :cond_a8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v5, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v5, :cond_a8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v5, :cond_a8

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v5, :cond_a8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v0, v5, :cond_a8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-ne v0, v5, :cond_a8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    if-ne v0, v5, :cond_a8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    if-ne v0, v5, :cond_a8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    if-ne v0, v5, :cond_a8

    iget v0, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-eq v0, v5, :cond_34c

    .line 524
    :cond_a8
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/4 v6, 0x4

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    if-eq v0, v5, :cond_179

    .line 525
    const/16 v12, 0x58a

    const/16 v13, 0x58d

    const/16 v14, 0x589

    if-nez v5, :cond_123

    .line 527
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 528
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 530
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v14}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 531
    .local v0, "builder":Landroid/metrics/LogMaker;
    invoke-virtual {v0, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 532
    iget v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v13, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 533
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v7, v7, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 534
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 533
    invoke-virtual {v0, v12, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 535
    iget-object v7, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v7, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 539
    iget-wide v7, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    cmp-long v7, v7, v10

    if-eqz v7, :cond_122

    iget v7, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-eq v7, v8, :cond_122

    .line 540
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v12, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v3, v7, v12

    .line 541
    const/4 v2, 0x1

    .line 542
    const/16 v7, 0xaaa

    const/4 v8, 0x3

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v13, 0x0

    aput-object v8, v12, v13

    iget v8, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 543
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v13, 0x1

    aput-object v8, v12, v13

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v9

    .line 542
    invoke-static {v7, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 545
    iput-wide v10, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 547
    .end local v0    # "builder":Landroid/metrics/LogMaker;
    :cond_122
    goto :goto_179

    :cond_123
    if-nez v0, :cond_122

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 550
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 552
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v5, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    sub-long/2addr v7, v5

    .line 553
    .local v7, "chargeDuration":J
    cmp-long v5, v5, v10

    if-eqz v5, :cond_177

    cmp-long v5, v7, v10

    if-eqz v5, :cond_177

    .line 554
    new-instance v5, Landroid/metrics/LogMaker;

    invoke-direct {v5, v14}, Landroid/metrics/LogMaker;-><init>(I)V

    move-object v6, v5

    .line 555
    .local v6, "builder":Landroid/metrics/LogMaker;
    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 556
    iget v14, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 557
    const/16 v13, 0x58c

    .line 558
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 557
    invoke-virtual {v6, v13, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 559
    iget v13, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 560
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 559
    invoke-virtual {v6, v12, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 561
    const/16 v12, 0x58b

    iget-object v13, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v13, v13, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 562
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 561
    invoke-virtual {v6, v12, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 563
    iget-object v12, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v12, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 565
    .end local v6    # "builder":Landroid/metrics/LogMaker;
    :cond_177
    iput-wide v10, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 568
    .end local v7    # "chargeDuration":J
    :cond_179
    :goto_179
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v6, v7, :cond_197

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v6, v7, :cond_197

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v6, v6, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v6, v7, :cond_197

    iget v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v6, v7, :cond_1cf

    .line 572
    :cond_197
    const/16 v6, 0xaa3

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v7, v7, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 573
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v7, v7, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v7, v7, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    iget v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 574
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v5, v8

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v7, v7, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const/4 v0, 0x4

    aput-object v7, v5, v0

    .line 572
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 576
    :cond_1cf
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v0, v5, :cond_1ff

    .line 579
    const/16 v0, 0xaa2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 581
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 582
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 583
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 579
    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 585
    :cond_1ff
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_215

    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v0, :cond_215

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_215

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v5, v7

    .line 590
    .end local v3    # "dischargeDuration":J
    .local v5, "dischargeDuration":J
    const/4 v0, 0x1

    move v2, v0

    move-wide v3, v5

    .line 593
    .end local v5    # "dischargeDuration":J
    .restart local v3    # "dischargeDuration":J
    :cond_215
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v0, :cond_22f

    .line 595
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_24f

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_24f

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v6, :cond_24f

    .line 599
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_24f

    .line 603
    :cond_22f
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_237

    .line 604
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_24f

    .line 605
    :cond_237
    const/4 v5, 0x0

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v6, :cond_243

    .line 606
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_24f

    .line 607
    :cond_243
    if-eqz p1, :cond_24f

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v0, v6, :cond_24f

    .line 610
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 614
    :cond_24f
    :goto_24f
    iget v0, v1, Lcom/android/server/BatteryService;->mSequence:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 619
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v5, "seq"

    const/high16 v6, 0x4000000

    if-eqz v0, :cond_27c

    iget v7, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v7, :cond_27c

    .line 620
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    .local v0, "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 622
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$5;

    invoke-direct {v8, v1, v0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 629
    .end local v0    # "statusIntent":Landroid/content/Intent;
    goto :goto_29b

    .line 630
    :cond_27c
    if-nez v0, :cond_29b

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_29b

    .line 631
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 633
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 634
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$6;

    invoke-direct {v8, v1, v0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_29b
    :goto_29b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v0

    if-eqz v0, :cond_2be

    .line 643
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 644
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.BATTERY_LOW"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 646
    iget v6, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/BatteryService$7;

    invoke-direct {v6, v1, v0}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v0    # "statusIntent":Landroid/content/Intent;
    goto :goto_2e7

    .line 653
    :cond_2be
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v0, :cond_2e7

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v7, :cond_2e7

    .line 655
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 656
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 658
    iget v6, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 659
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/BatteryService$8;

    invoke-direct {v6, v1, v0}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2e8

    .line 653
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_2e7
    :goto_2e7
    nop

    .line 670
    :goto_2e8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked()V

    .line 671
    iget v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-ne v0, v5, :cond_2f9

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    iget v5, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eq v0, v5, :cond_2fc

    .line 672
    :cond_2f9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryLevelChangedIntentLocked()V

    .line 677
    :cond_2fc
    iget-object v0, v1, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 680
    if-eqz v2, :cond_30a

    cmp-long v0, v3, v10

    if-eqz v0, :cond_30a

    .line 681
    invoke-direct {v1, v3, v4}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    .line 684
    :cond_30a
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 685
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 686
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 687
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 688
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 689
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 690
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 691
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 692
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 693
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    .line 694
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 695
    iget v0, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 697
    :cond_34c
    return-void
.end method

.method private processValuesLocked(ZLjava/io/PrintWriter;)V
    .registers 4
    .param p1, "forceUpdate"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1102
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 1103
    if-eqz p2, :cond_c

    if-eqz p1, :cond_c

    .line 1104
    iget v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1106
    :cond_c
    return-void
.end method

.method private registerHealthCallback()V
    .registers 9

    .line 272
    const-string v0, "HealthInitWrapper"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 275
    :try_start_5
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/BatteryService;)V

    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/health/HealthInfoCallback;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_a0
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_10} :catch_95
    .catchall {:try_start_5 .. :try_end_10} :catchall_93

    .line 283
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 284
    nop

    .line 286
    const-string v0, "HealthInitWaitUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 291
    .local v0, "beforeWait":J
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 292
    :goto_20
    :try_start_20
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    if-nez v3, :cond_66

    .line 293
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "health: Waited "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms for callbacks. Waiting another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ms..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_20 .. :try_end_55} :catchall_90

    .line 296
    :try_start_55
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_5a} :catch_5b
    .catchall {:try_start_55 .. :try_end_5a} :catchall_90

    .line 300
    goto :goto_20

    .line 297
    :catch_5b
    move-exception v3

    .line 298
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_5c
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "health: InterruptedException when waiting for update.  Continuing..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    nop

    .end local v3    # "ex":Ljava/lang/InterruptedException;
    goto :goto_20

    .line 302
    :cond_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_5c .. :try_end_67} :catchall_90

    .line 304
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "health: Waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms and received the update."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 307
    return-void

    .line 302
    :catchall_90
    move-exception v3

    :try_start_91
    monitor-exit v2
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v3

    .line 283
    .end local v0    # "beforeWait":J
    :catchall_93
    move-exception v0

    goto :goto_ae

    .line 279
    :catch_95
    move-exception v0

    .line 280
    .local v0, "ex":Ljava/util/NoSuchElementException;
    :try_start_96
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "health: cannot register callback. (no supported health HAL service)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    nop

    .end local p0    # "this":Lcom/android/server/BatteryService;
    throw v0

    .line 276
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    .restart local p0    # "this":Lcom/android/server/BatteryService;
    :catch_a0
    move-exception v0

    .line 277
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "health: cannot register callback. (RemoteException)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Lcom/android/server/BatteryService;
    throw v1
    :try_end_ae
    .catchall {:try_start_96 .. :try_end_ae} :catchall_93

    .line 283
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/BatteryService;
    :goto_ae
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 284
    throw v0
.end method

.method private resetBattery(ZLjava/io/PrintWriter;)V
    .registers 6
    .param p1, "forceUpdate"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1081
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 1082
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1083
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0, v2}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 1084
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1086
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    if-eqz v0, :cond_23

    .line 1087
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    .line 1088
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    .line 1090
    :cond_23
    return-void
.end method

.method private sendBatteryChangedIntentLocked()V
    .registers 7

    .line 701
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 702
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 705
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v1

    .line 707
    .local v1, "icon":I
    iget v2, p0, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v3, "seq"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 708
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 709
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-string/jumbo v3, "health"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-string/jumbo v3, "present"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 711
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-string/jumbo v3, "level"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const-string v3, "battery_low"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 713
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    const-string/jumbo v2, "icon-small"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 715
    iget v2, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v3, "plugged"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 716
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-string/jumbo v3, "voltage"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 717
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-string/jumbo v3, "temperature"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 719
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-string/jumbo v3, "technology"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    iget v2, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    const-string/jumbo v3, "invalid_charger"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 721
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    const-string/jumbo v3, "max_charging_current"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 723
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    const-string/jumbo v3, "max_charging_voltage"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-string v3, "charge_counter"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 732
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 733
    invoke-static {}, Lcom/android/server/MiuiBatteryServiceStub;->getInstance()Lcom/android/server/MiuiBatteryServiceStub;

    move-result-object v2

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/MiuiBatteryServiceStub;->setBatteryStatusWithFbo(III)V

    .line 734
    return-void
.end method

.method private sendBatteryLevelChangedIntentLocked()V
    .registers 11

    .line 737
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 738
    .local v0, "event":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 739
    .local v1, "now":J
    iget v3, p0, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v4, "seq"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 740
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-string/jumbo v4, "status"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 741
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-string/jumbo v4, "health"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 742
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-string/jumbo v4, "present"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 743
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-string/jumbo v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 744
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const-string v4, "battery_low"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 745
    const-string/jumbo v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 746
    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v5, "plugged"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 747
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-string/jumbo v5, "voltage"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 748
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-string/jumbo v5, "temperature"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 749
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-string v5, "charge_counter"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 750
    const-string v3, "android.os.extra.EVENT_TIMESTAMP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 752
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    .line 753
    .local v3, "queueWasEmpty":Z
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-le v5, v4, :cond_8a

    .line 756
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 759
    :cond_8a
    if-eqz v3, :cond_a6

    .line 761
    iget-wide v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    sub-long v6, v1, v4

    const-wide/32 v8, 0xea60

    cmp-long v6, v6, v8

    if-lez v6, :cond_9a

    .line 762
    const-wide/16 v4, 0x0

    goto :goto_9c

    :cond_9a
    add-long/2addr v4, v8

    sub-long/2addr v4, v1

    .line 763
    .local v4, "delay":J
    :goto_9c
    iget-object v6, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 765
    .end local v4    # "delay":J
    :cond_a6
    return-void
.end method

.method private sendEnqueuedBatteryLevelChangedEvents()V
    .registers 6

    .line 769
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 771
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 772
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_31

    .line 773
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 775
    const-string v2, "android.os.extra.EVENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 777
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.BATTERY_STATS"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 779
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    .line 780
    return-void

    .line 772
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private setBatteryLevel(IZ)V
    .registers 5
    .param p1, "level"    # I
    .param p2, "forceUpdate"    # Z

    .line 1061
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_b

    .line 1062
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 1064
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iput p1, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1066
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/BatteryService;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1067
    return-void
.end method

.method private setChargerAcOnline(ZZ)V
    .registers 5
    .param p1, "online"    # Z
    .param p2, "forceUpdate"    # Z

    .line 1052
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_b

    .line 1053
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 1055
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iput-boolean p1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 1056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1057
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/BatteryService;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1058
    return-void
.end method

.method private shouldSendBatteryLowLocked()Z
    .registers 7

    .line 353
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 354
    .local v0, "plugged":Z
    :goto_9
    iget v3, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    .line 362
    .local v3, "oldPlugged":Z
    :goto_10
    if-nez v0, :cond_2f

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    if-eq v4, v2, :cond_2f

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_2f

    if-nez v3, :cond_2e

    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-gt v4, v5, :cond_2e

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    if-le v4, v5, :cond_2f

    :cond_2e
    move v1, v2

    :cond_2f
    return v1
.end method

.method private shouldShutdownLocked()Z
    .registers 5

    .line 371
    const-string/jumbo v0, "persist.vendor.extreme.mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 372
    return v1

    .line 375
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1b

    .line 376
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    if-ne v0, v3, :cond_1a

    move v1, v3

    :cond_1a
    return v1

    .line 378
    :cond_1b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-lez v0, :cond_22

    .line 379
    return v1

    .line 383
    :cond_22
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    if-nez v0, :cond_29

    .line 384
    return v1

    .line 391
    :cond_29
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_31

    move v1, v3

    :cond_31
    return v1
.end method

.method private shutdownIfNoPowerLocked()V
    .registers 3

    .line 397
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shouldShutdownLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 398
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$3;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    :cond_10
    return-void
.end method

.method private shutdownIfOverTempLocked()V
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-le v0, v1, :cond_12

    .line 424
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$4;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    :cond_12
    return-void
.end method

.method private suspendBatteryInput()V
    .registers 3

    .line 1093
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    .line 1097
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    .line 1098
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    .line 1099
    return-void

    .line 1094
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "battery suspend_input is only supported on debuggable builds"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static traceBegin(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1175
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1176
    return-void
.end method

.method private static traceEnd()V
    .registers 2

    .line 1179
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1180
    return-void
.end method

.method private unplugBattery(ZLjava/io/PrintWriter;)V
    .registers 5
    .param p1, "forceUpdate"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1070
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_b

    .line 1071
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 1073
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 1074
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 1075
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 1076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1077
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1078
    return-void
.end method

.method private update(Landroid/hardware/health/HealthInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/hardware/health/HealthInfo;

    .line 441
    const-string v0, "HealthInfoUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 443
    const-string v0, "BatteryChargeCounter"

    iget v1, p1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 445
    const-string v0, "BatteryCurrent"

    iget v1, p1, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 446
    const-string v0, "PlugType"

    invoke-static {p1}, Lcom/android/server/BatteryService;->plugType(Landroid/hardware/health/HealthInfo;)I

    move-result v1

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 447
    const-string v0, "BatteryStatus"

    iget v1, p1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 449
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_29
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v1, :cond_39

    .line 451
    iput-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 453
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 454
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3e

    .line 456
    :cond_39
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v1, p1}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 458
    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_43

    .line 459
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 460
    return-void

    .line 458
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private updateBatteryWarningLevelLocked()V
    .registers 6

    .line 310
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 311
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 313
    .local v1, "defWarnLevel":I
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iput v2, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    .line 314
    const-string/jumbo v2, "low_power_trigger_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 316
    if-nez v2, :cond_24

    .line 317
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 319
    :cond_24
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v2, v3, :cond_2c

    .line 320
    iput v3, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 322
    :cond_2c
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 324
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 325
    return-void
.end method


# virtual methods
.method synthetic lambda$resetBattery$4$com-android-server-BatteryService(ZLjava/io/PrintWriter;)V
    .registers 3
    .param p1, "forceUpdate"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1084
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method synthetic lambda$setBatteryLevel$2$com-android-server-BatteryService(Z)V
    .registers 2
    .param p1, "forceUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1066
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method synthetic lambda$setChargerAcOnline$1$com-android-server-BatteryService(Z)V
    .registers 2
    .param p1, "forceUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1057
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method synthetic lambda$unplugBattery$3$com-android-server-BatteryService(ZLjava/io/PrintWriter;)V
    .registers 3
    .param p1, "forceUpdate"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1077
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .line 247
    const/16 v0, 0x226

    if-ne p1, v0, :cond_28

    .line 249
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_7
    new-instance v1, Lcom/android/server/BatteryService$2;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 258
    .local v1, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 259
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "low_power_trigger_level"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 262
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 263
    .end local v1    # "obs":Landroid/database/ContentObserver;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    monitor-exit v0

    goto :goto_35

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v1

    .line 265
    :cond_28
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_35

    .line 266
    invoke-static {}, Lcom/android/server/MiuiBatteryServiceStub;->getInstance()Lcom/android/server/MiuiBatteryServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/MiuiBatteryServiceStub;->init(Landroid/content/Context;)V

    .line 269
    :cond_35
    :goto_35
    return-void
.end method

.method onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I
    .registers 21
    .param p1, "shell"    # Lcom/android/server/BatteryService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 914
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    if-nez v2, :cond_b

    .line 915
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 917
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/BatteryService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 918
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2ae

    :cond_16
    goto :goto_4d

    :sswitch_17
    const-string/jumbo v0, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    goto :goto_4e

    :sswitch_22
    const-string/jumbo v0, "set"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    goto :goto_4e

    :sswitch_2d
    const-string v0, "get"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_4e

    :sswitch_37
    const-string/jumbo v0, "suspend_input"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x4

    goto :goto_4e

    :sswitch_42
    const-string/jumbo v0, "unplug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_4e

    :goto_4d
    const/4 v0, -0x1

    :goto_4e
    const-string/jumbo v14, "invalid"

    const-string v15, "counter"

    const-string/jumbo v4, "level"

    const-string/jumbo v5, "temp"

    const-string/jumbo v6, "usb"

    const-string v10, "ac"

    const-string/jumbo v11, "present"

    const-string/jumbo v12, "status"

    const-string/jumbo v13, "wireless"

    const-string v8, "No property specified"

    const/4 v9, 0x0

    const-string v7, "android.permission.DEVICE_POWER"

    packed-switch v0, :pswitch_data_2c4

    .line 1046
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1041
    :pswitch_74
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->suspendBatteryInput()V

    .line 1044
    goto/16 :goto_2ab

    .line 1035
    :pswitch_80
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v0

    .line 1036
    .local v0, "opts":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_91

    const/4 v9, 0x1

    goto :goto_92

    :cond_91
    const/4 v9, 0x0

    :goto_92
    invoke-direct {v1, v9, v3}, Lcom/android/server/BatteryService;->resetBattery(ZLjava/io/PrintWriter;)V

    .line 1039
    .end local v0    # "opts":I
    goto/16 :goto_2ab

    .line 966
    :pswitch_97
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v17

    .line 967
    .local v17, "opts":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 970
    .local v7, "key":Ljava/lang/String;
    if-nez v7, :cond_ad

    .line 971
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    const/4 v8, -0x1

    return v8

    .line 975
    :cond_ad
    const/4 v8, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 976
    .local v9, "value":Ljava/lang/String;
    if-nez v9, :cond_ba

    .line 977
    const-string v0, "No value specified"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    return v8

    .line 982
    :cond_ba
    :try_start_ba
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_c5

    .line 983
    iget-object v0, v1, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0, v8}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 985
    :cond_c5
    const/4 v0, 0x1

    .line 986
    .local v0, "update":Z
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_2d2

    :cond_cd
    goto :goto_117

    :sswitch_ce
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    const/16 v4, 0x8

    goto :goto_118

    :sswitch_d7
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    const/4 v4, 0x6

    goto :goto_118

    :sswitch_df
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    const/4 v4, 0x5

    goto :goto_118

    :sswitch_e7
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    const/4 v4, 0x7

    goto :goto_118

    :sswitch_ef
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    const/4 v4, 0x2

    goto :goto_118

    :sswitch_f7
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    const/4 v4, 0x1

    goto :goto_118

    :sswitch_ff
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    const/4 v4, 0x0

    goto :goto_118

    :sswitch_107
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    const/4 v4, 0x4

    goto :goto_118

    :sswitch_10f
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    const/4 v4, 0x3

    goto :goto_118

    :goto_117
    const/4 v4, -0x1

    :goto_118
    packed-switch v4, :pswitch_data_2f8

    .line 1015
    new-instance v4, Ljava/lang/StringBuilder;

    goto/16 :goto_184

    .line 1012
    :pswitch_11f
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 1013
    goto :goto_182

    .line 1009
    :pswitch_126
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 1010
    goto :goto_182

    .line 1006
    :pswitch_12f
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 1007
    goto :goto_182

    .line 1003
    :pswitch_138
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1004
    goto :goto_182

    .line 1000
    :pswitch_141
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 1001
    goto :goto_182

    .line 997
    :pswitch_14a
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_154

    const/4 v5, 0x1

    goto :goto_155

    :cond_154
    const/4 v5, 0x0

    :goto_155
    iput-boolean v5, v4, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 998
    goto :goto_182

    .line 994
    :pswitch_158
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_162

    const/4 v5, 0x1

    goto :goto_163

    :cond_162
    const/4 v5, 0x0

    :goto_163
    iput-boolean v5, v4, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 995
    goto :goto_182

    .line 991
    :pswitch_166
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_170

    const/4 v5, 0x1

    goto :goto_171

    :cond_170
    const/4 v5, 0x0

    :goto_171
    iput-boolean v5, v4, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 992
    goto :goto_182

    .line 988
    :pswitch_174
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_17e

    const/4 v5, 0x1

    goto :goto_17f

    :cond_17e
    const/4 v5, 0x0

    :goto_17f
    iput-boolean v5, v4, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 989
    nop

    .line 1019
    :goto_182
    move v4, v0

    goto :goto_19a

    .line 1015
    :goto_184
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown set option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    const/4 v0, 0x0

    move v4, v0

    .line 1019
    .end local v0    # "update":Z
    .local v4, "update":Z
    :goto_19a
    if-eqz v4, :cond_1b6

    .line 1020
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_1a0
    .catch Ljava/lang/NumberFormatException; {:try_start_ba .. :try_end_1a0} :catch_1b9

    .line 1022
    .local v5, "ident":J
    const/4 v0, 0x1

    :try_start_1a1
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1023
    and-int/lit8 v8, v17, 0x1

    if-eqz v8, :cond_1a8

    goto :goto_1a9

    :cond_1a8
    const/4 v0, 0x0

    :goto_1a9
    invoke-direct {v1, v0, v3}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V
    :try_end_1ac
    .catchall {:try_start_1a1 .. :try_end_1ac} :catchall_1b0

    .line 1026
    :try_start_1ac
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1027
    goto :goto_1b6

    .line 1026
    :catchall_1b0
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1027
    nop

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v17    # "opts":I
    .end local p0    # "this":Lcom/android/server/BatteryService;
    .end local p1    # "shell":Lcom/android/server/BatteryService$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v0
    :try_end_1b6
    .catch Ljava/lang/NumberFormatException; {:try_start_1ac .. :try_end_1b6} :catch_1b9

    .line 1032
    .end local v4    # "update":Z
    .end local v5    # "ident":J
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v17    # "opts":I
    .restart local p0    # "this":Lcom/android/server/BatteryService;
    .restart local p1    # "shell":Lcom/android/server/BatteryService$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :cond_1b6
    :goto_1b6
    nop

    .line 1033
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v17    # "opts":I
    goto/16 :goto_2ab

    .line 1029
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v17    # "opts":I
    :catch_1b9
    move-exception v0

    .line 1030
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    const/16 v16, -0x1

    return v16

    .line 926
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v17    # "opts":I
    :pswitch_1d3
    const/4 v0, 0x1

    const/16 v16, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 927
    .restart local v7    # "key":Ljava/lang/String;
    if-nez v7, :cond_1e0

    .line 928
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    return v16

    .line 932
    :cond_1e0
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_30e

    :cond_1e7
    goto :goto_231

    :sswitch_1e8
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    const/16 v4, 0x8

    goto :goto_233

    :sswitch_1f1
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    const/4 v4, 0x6

    goto :goto_233

    :sswitch_1f9
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    const/4 v4, 0x5

    goto :goto_233

    :sswitch_201
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    const/4 v4, 0x7

    goto :goto_233

    :sswitch_209
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    const/4 v4, 0x2

    goto :goto_233

    :sswitch_211
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e7

    move v4, v0

    goto :goto_233

    :sswitch_219
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    const/4 v4, 0x0

    goto :goto_233

    :sswitch_221
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    const/4 v4, 0x4

    goto :goto_233

    :sswitch_229
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    const/4 v4, 0x3

    goto :goto_233

    :goto_231
    move/from16 v4, v16

    :goto_233
    packed-switch v4, :pswitch_data_334

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown get option: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_293

    .line 958
    :pswitch_24d
    iget v0, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 959
    goto :goto_293

    .line 955
    :pswitch_253
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 956
    goto :goto_293

    .line 952
    :pswitch_25b
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 953
    goto :goto_293

    .line 949
    :pswitch_263
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 950
    goto :goto_293

    .line 946
    :pswitch_26b
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 947
    goto :goto_293

    .line 943
    :pswitch_273
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 944
    goto :goto_293

    .line 940
    :pswitch_27b
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 941
    goto :goto_293

    .line 937
    :pswitch_283
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 938
    goto :goto_293

    .line 934
    :pswitch_28b
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 935
    nop

    .line 964
    .end local v7    # "key":Ljava/lang/String;
    :goto_293
    goto :goto_2ab

    .line 920
    :pswitch_294
    const/4 v0, 0x1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v4

    .line 921
    .local v4, "opts":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v7, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_2a6

    move v9, v0

    goto :goto_2a7

    :cond_2a6
    const/4 v9, 0x0

    :goto_2a7
    invoke-direct {v1, v9, v3}, Lcom/android/server/BatteryService;->unplugBattery(ZLjava/io/PrintWriter;)V

    .line 924
    .end local v4    # "opts":I
    nop

    .line 1048
    :goto_2ab
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_2ae
    .sparse-switch
        -0x32165859 -> :sswitch_42
        -0x204dc1f9 -> :sswitch_37
        0x18f56 -> :sswitch_2d
        0x1bc62 -> :sswitch_22
        0x6761d4f -> :sswitch_17
    .end sparse-switch

    :pswitch_data_2c4
    .packed-switch 0x0
        :pswitch_294
        :pswitch_1d3
        :pswitch_97
        :pswitch_80
        :pswitch_74
    .end packed-switch

    :sswitch_data_2d2
    .sparse-switch
        -0x3b9b7862 -> :sswitch_10f
        -0x3532300e -> :sswitch_107
        -0x12f88745 -> :sswitch_ff
        0xc22 -> :sswitch_f7
        0x1c584 -> :sswitch_ef
        0x3643d4 -> :sswitch_e7
        0x6219b84 -> :sswitch_df
        0x391755fc -> :sswitch_d7
        0x74cff1f7 -> :sswitch_ce
    .end sparse-switch

    :pswitch_data_2f8
    .packed-switch 0x0
        :pswitch_174
        :pswitch_166
        :pswitch_158
        :pswitch_14a
        :pswitch_141
        :pswitch_138
        :pswitch_12f
        :pswitch_126
        :pswitch_11f
    .end packed-switch

    :sswitch_data_30e
    .sparse-switch
        -0x3b9b7862 -> :sswitch_229
        -0x3532300e -> :sswitch_221
        -0x12f88745 -> :sswitch_219
        0xc22 -> :sswitch_211
        0x1c584 -> :sswitch_209
        0x3643d4 -> :sswitch_201
        0x6219b84 -> :sswitch_1f9
        0x391755fc -> :sswitch_1f1
        0x74cff1f7 -> :sswitch_1e8
    .end sparse-switch

    :pswitch_data_334
    .packed-switch 0x0
        :pswitch_28b
        :pswitch_283
        :pswitch_27b
        :pswitch_273
        :pswitch_26b
        :pswitch_263
        :pswitch_25b
        :pswitch_253
        :pswitch_24d
    .end packed-switch
.end method

.method public onStart()V
    .registers 4

    .line 236
    invoke-direct {p0}, Lcom/android/server/BatteryService;->registerHealthCallback()V

    .line 238
    new-instance v0, Lcom/android/server/BatteryService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BinderService-IA;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    .line 239
    const-string v2, "battery"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 240
    new-instance v0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BatteryPropertiesRegistrar-IA;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    .line 241
    const-string v2, "batteryproperties"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 242
    const-class v0, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$LocalService-IA;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .registers 5
    .param p1, "shell"    # Lcom/android/server/BatteryService$Shell;

    .line 904
    const/4 v0, 0x0

    .line 905
    .local v0, "opts":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 906
    const-string v1, "-f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 907
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 910
    :cond_13
    return v0
.end method
