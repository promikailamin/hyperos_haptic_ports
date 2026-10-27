.class public Lcom/android/server/tare/InternalResourceService;
.super Lcom/android/server/SystemService;
.source "InternalResourceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/InternalResourceService$ConfigObserver;,
        Lcom/android/server/tare/InternalResourceService$LocalService;,
        Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;,
        Lcom/android/server/tare/InternalResourceService$IrsHandler;
    }
.end annotation


# static fields
.field private static final ALARM_TAG_WEALTH_RECLAMATION:Ljava/lang/String; = "*tare.reclamation*"

.field public static final DEBUG:Z

.field private static final DEFAULT_UNUSED_RECLAMATION_PERCENTAGE:F = 0.1f

.field private static final MIN_UNUSED_TIME_MS:J = 0xf731400L

.field private static final MSG_NOTIFY_AFFORDABILITY_CHANGE_LISTENER:I = 0x0

.field private static final MSG_NOTIFY_STATE_CHANGE_LISTENERS:I = 0x3

.field private static final MSG_PROCESS_USAGE_EVENT:I = 0x2

.field private static final MSG_SCHEDULE_UNUSED_WEALTH_RECLAMATION_EVENT:I = 0x1

.field private static final PACKAGE_QUERY_FLAGS:I = 0x400c0000

.field private static final QUANTITATIVE_EASING_BATTERY_THRESHOLD:I = 0x32

.field private static final RECLAMATION_STARTUP_DELAY_MS:J = 0x7530L

.field public static final TAG:Ljava/lang/String; = "TARE-IRS"

.field static final UNUSED_RECLAMATION_PERIOD_MS:J = 0x5265c00L


# instance fields
.field private final mAgent:Lcom/android/server/tare/Agent;

.field private final mAnalyst:Lcom/android/server/tare/Analyst;

.field private final mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private volatile mBootPhase:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

.field private final mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

.field private mCurrentBatteryLevel:I

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private final mEconomyManagerStub:Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;

.field private volatile mExemptListLoaded:Z

.field private mExemptedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPackageToUidCache:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mScribe:Lcom/android/server/tare/Scribe;

.field private final mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurveillanceAgent:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

.field private final mUidToPackageCache:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnusedWealthReclamationListener:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method public static synthetic $r8$lambda$6vievQs7vcv71frhGR6rTFzw8Zo(Lcom/android/server/tare/InternalResourceService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService;->setupHeavyWork()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBootPhase(Lcom/android/server/tare/InternalResourceService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/tare/InternalResourceService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/tare/InternalResourceService;->mIsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScribe(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Scribe;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/CompleteEconomicPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsEnabled(Lcom/android/server/tare/InternalResourceService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/tare/InternalResourceService;->mIsEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/tare/InternalResourceService;Landroid/util/IndentingPrintWriter;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->dumpInternal(Landroid/util/IndentingPrintWriter;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessUsageEventLocked(Lcom/android/server/tare/InternalResourceService;ILandroid/app/usage/UsageEvents$Event;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->processUsageEventLocked(ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleUnusedWealthReclamationLocked(Lcom/android/server/tare/InternalResourceService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService;->scheduleUnusedWealthReclamationLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupEverything(Lcom/android/server/tare/InternalResourceService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService;->setupEverything()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtearDownEverything(Lcom/android/server/tare/InternalResourceService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService;->tearDownEverything()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smdumpHelp(Ljava/io/PrintWriter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 92
    const-string v0, "TARE"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 251
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    .line 137
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 141
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    .line 144
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 149
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    .line 159
    new-instance v0, Lcom/android/server/tare/InternalResourceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/tare/InternalResourceService$1;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    new-instance v0, Lcom/android/server/tare/InternalResourceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/tare/InternalResourceService$2;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mSurveillanceAgent:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    .line 222
    new-instance v0, Lcom/android/server/tare/InternalResourceService$3;

    invoke-direct {v0, p0}, Lcom/android/server/tare/InternalResourceService$3;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mUnusedWealthReclamationListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 253
    new-instance v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->get()Lcom/android/server/tare/TareHandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tare/TareHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/tare/InternalResourceService$IrsHandler;-><init>(Lcom/android/server/tare/InternalResourceService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    .line 254
    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 256
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 257
    new-instance v1, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;

    invoke-direct {v1, p0}, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mEconomyManagerStub:Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;

    .line 258
    new-instance v1, Lcom/android/server/tare/Analyst;

    invoke-direct {v1}, Lcom/android/server/tare/Analyst;-><init>()V

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAnalyst:Lcom/android/server/tare/Analyst;

    .line 259
    new-instance v2, Lcom/android/server/tare/Scribe;

    invoke-direct {v2, p0, v1}, Lcom/android/server/tare/Scribe;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;)V

    iput-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    .line 260
    new-instance v3, Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-direct {v3, p0}, Lcom/android/server/tare/CompleteEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    iput-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    .line 261
    new-instance v3, Lcom/android/server/tare/Agent;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/server/tare/Agent;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Scribe;Lcom/android/server/tare/Analyst;)V

    iput-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    .line 263
    new-instance v1, Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;-><init>(Lcom/android/server/tare/InternalResourceService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    .line 265
    const-class v0, Lcom/android/server/tare/EconomyManagerInternal;

    new-instance v1, Lcom/android/server/tare/InternalResourceService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/tare/InternalResourceService$LocalService;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/InternalResourceService$LocalService-IA;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/tare/InternalResourceService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method private adjustCreditSupplyLocked(Z)V
    .registers 13
    .param p1, "allowIncrease"    # Z

    .line 567
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getConsumptionLimitLocked()J

    move-result-wide v0

    .line 568
    .local v0, "newLimit":J
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v2}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v2

    .line 569
    .local v2, "remainingConsumableCakes":J
    cmp-long v4, v2, v0

    if-nez v4, :cond_f

    .line 570
    return-void

    .line 572
    :cond_f
    cmp-long v4, v2, v0

    if-lez v4, :cond_1b

    .line 573
    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    sub-long v5, v0, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/server/tare/Scribe;->adjustRemainingConsumableCakesLocked(J)V

    goto :goto_2d

    .line 574
    :cond_1b
    if-eqz p1, :cond_2d

    .line 575
    iget v4, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 576
    .local v4, "perc":D
    sub-long v6, v0, v2

    .line 577
    .local v6, "shortfall":J
    iget-object v8, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    long-to-double v9, v6

    mul-double/2addr v9, v4

    double-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/android/server/tare/Scribe;->adjustRemainingConsumableCakesLocked(J)V

    .line 579
    .end local v4    # "perc":D
    .end local v6    # "shortfall":J
    :cond_2d
    :goto_2d
    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v4}, Lcom/android/server/tare/Agent;->onCreditSupplyChanged()V

    .line 580
    return-void
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 1108
    const-string v0, "Resource Economy (economy) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    const-string v0, "  [-h|--help] [package] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    const-string v0, "    -h | --help: print this help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1111
    const-string v0, "  [package] is an optional package name to limit the output to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1112
    return-void
.end method

.method private dumpInternal(Landroid/util/IndentingPrintWriter;Z)V
    .registers 13
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "dumpAll"    # Z

    .line 1115
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1116
    :try_start_3
    const-string v1, "Is enabled: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    iget-boolean v1, p0, Lcom/android/server/tare/InternalResourceService;->mIsEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1119
    const-string v1, "Current battery level: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1120
    iget v1, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getConsumptionLimitLocked()J

    move-result-wide v1

    .line 1123
    .local v1, "consumptionLimit":J
    const-string v3, "Consumption limit (current/initial-satiated/current-satiated): "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1124
    invoke-static {v1, v2}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    const-string v3, "/"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1126
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1127
    const-string v3, "/"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1128
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v3

    .line 1131
    .local v3, "remainingConsumable":J
    const-string v5, "Goods remaining: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1132
    invoke-static {v3, v4}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1133
    const-string v5, " ("

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    long-to-float v9, v3

    mul-float/2addr v9, v8

    long-to-float v8, v1

    div-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1135
    const-string v5, "% of current limit)"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    const-string v5, "Device wealth: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1138
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v5}, Lcom/android/server/tare/Scribe;->getCakesInCirculationForLoggingLocked()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1141
    const-string v5, "Exempted apps"

    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1142
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1144
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1145
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v5, p1}, Lcom/android/server/tare/CompleteEconomicPolicy;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1147
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1148
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/tare/Scribe;->dumpLocked(Landroid/util/IndentingPrintWriter;Z)V

    .line 1150
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1151
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v5, p1}, Lcom/android/server/tare/Agent;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    .line 1153
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1154
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v5, p1}, Lcom/android/server/tare/Analyst;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1155
    .end local v1    # "consumptionLimit":J
    .end local v3    # "remainingConsumable":J
    monitor-exit v0

    .line 1156
    return-void

    .line 1155
    :catchall_c1
    move-exception v1

    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_3 .. :try_end_c3} :catchall_c1

    throw v1
.end method

.method private getCurrentBatteryLevel()I
    .registers 2

    .line 642
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method private getPackagesForUidLocked(I)Landroid/util/ArraySet;
    .registers 8
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 649
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_24

    .line 650
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, "pkgs":[Ljava/lang/String;
    if-eqz v1, :cond_24

    .line 652
    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 653
    .local v4, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 652
    .end local v4    # "pkg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 655
    :cond_1e
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 658
    .end local v1    # "pkgs":[Ljava/lang/String;
    :cond_24
    return-object v0
.end method

.method private loadInstalledPackageListLocked()V
    .registers 9

    .line 663
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 664
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 665
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 666
    .local v0, "userManagerInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    .line 667
    .local v1, "userIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_27

    aget v4, v1, v3

    .line 668
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v7, 0x400c0000    # 2.1875f

    .line 669
    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v6

    .line 668
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 671
    :cond_27
    return-void
.end method

.method private processUsageEventLocked(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 20
    .param p1, "userId"    # I
    .param p2, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 584
    move-object/from16 v0, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    iget-boolean v1, v0, Lcom/android/server/tare/InternalResourceService;->mIsEnabled:Z

    if-nez v1, :cond_b

    .line 585
    return-void

    .line 587
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 588
    .local v12, "pkgName":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-eqz v1, :cond_49

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 591
    invoke-static {v10, v12}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 589
    const-string v2, "TARE-IRS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 594
    .local v13, "nowElapsed":J
    invoke-virtual/range {p2 .. p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_94

    goto :goto_92

    .line 615
    :sswitch_56
    iget-object v1, v0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v10, v12, v3, v2}, Lcom/android/server/tare/Agent;->noteInstantaneousEventLocked(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_92

    .line 610
    :sswitch_5e
    iget-object v1, v0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    const v3, -0x7ffffffc

    invoke-virtual {v1, v10, v12, v3, v2}, Lcom/android/server/tare/Agent;->noteInstantaneousEventLocked(ILjava/lang/String;ILjava/lang/String;)V

    .line 612
    goto :goto_92

    .line 603
    :sswitch_67
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v15

    .line 604
    .local v15, "now":J
    iget-object v1, v0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    const v4, -0x7ffffffe

    iget v2, v11, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 605
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 604
    move/from16 v2, p1

    move-object v3, v12

    move-wide v6, v13

    move-wide v8, v15

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/tare/Agent;->stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJ)V

    .line 607
    goto :goto_92

    .line 596
    .end local v15    # "now":J
    :sswitch_7f
    iget-object v1, v0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    const v4, -0x7ffffffe

    iget v2, v11, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 597
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 596
    move/from16 v2, p1

    move-object v3, v12

    move-wide v6, v13

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/tare/Agent;->noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;J)V

    .line 599
    nop

    .line 619
    :goto_92
    return-void

    nop

    :sswitch_data_94
    .sparse-switch
        0x1 -> :sswitch_7f
        0x2 -> :sswitch_67
        0x7 -> :sswitch_5e
        0x9 -> :sswitch_5e
        0xa -> :sswitch_56
        0xc -> :sswitch_56
        0x17 -> :sswitch_67
        0x18 -> :sswitch_67
    .end sparse-switch
.end method

.method private registerListeners()V
    .registers 11

    .line 674
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 675
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 679
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 680
    .local v1, "pkgFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 685
    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 687
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 688
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 690
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 692
    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal;

    .line 693
    .local v3, "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mSurveillanceAgent:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    invoke-virtual {v3, v4}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 694
    return-void
.end method

.method private scheduleUnusedWealthReclamationLocked()V
    .registers 13

    .line 623
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v6

    .line 624
    .local v6, "now":J
    const-wide/16 v0, 0x7530

    add-long/2addr v0, v6

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    .line 625
    invoke-virtual {v2}, Lcom/android/server/tare/Scribe;->getLastReclamationTimeLocked()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    .line 624
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 626
    .local v8, "nextReclamationTime":J
    iget-object v10, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda1;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, v8

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/tare/InternalResourceService;JJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 639
    return-void
.end method

.method private setupEverything()V
    .registers 4

    .line 730
    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_31

    iget-boolean v0, p0, Lcom/android/server/tare/InternalResourceService;->mIsEnabled:Z

    if-nez v0, :cond_b

    goto :goto_31

    .line 733
    :cond_b
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService;->registerListeners()V

    .line 735
    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService;->getCurrentBatteryLevel()I

    move-result v1

    iput v1, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    .line 736
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 737
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    invoke-virtual {v2}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->getAllDeviceConfigProperties()Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/tare/CompleteEconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    .line 738
    monitor-exit v0

    .line 739
    return-void

    .line 738
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_2e

    throw v1

    .line 731
    :cond_31
    :goto_31
    return-void
.end method

.method private setupHeavyWork()V
    .registers 7

    .line 698
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService;->loadInstalledPackageListLocked()V

    .line 700
    iget v1, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    if-lt v1, v2, :cond_27

    iget-boolean v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptListLoaded:Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_76

    if-nez v1, :cond_27

    .line 702
    :try_start_11
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v2}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1e} :catch_1f
    .catchall {:try_start_11 .. :try_end_1e} :catchall_76

    .line 706
    goto :goto_25

    .line 703
    :catch_1f
    move-exception v1

    .line 705
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v2, "TARE-IRS"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 707
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_25
    iput-boolean v3, p0, Lcom/android/server/tare/InternalResourceService;->mExemptListLoaded:Z

    .line 709
    :cond_27
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->recordExists()Z

    move-result v1

    xor-int/2addr v1, v3

    .line 710
    .local v1, "isFirstSetup":Z
    if-eqz v1, :cond_41

    .line 711
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v2}, Lcom/android/server/tare/Agent;->grantBirthrightsLocked()V

    .line 712
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    .line 713
    invoke-virtual {v3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v3

    .line 712
    invoke-virtual {v2, v3, v4}, Lcom/android/server/tare/Scribe;->setConsumptionLimitLocked(J)V

    goto :goto_71

    .line 715
    :cond_41
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v2}, Lcom/android/server/tare/Scribe;->loadFromDiskLocked()V

    .line 716
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v2}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    .line 717
    invoke-virtual {v4}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_66

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    .line 718
    invoke-virtual {v2}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    .line 719
    invoke-virtual {v4}, Lcom/android/server/tare/CompleteEconomicPolicy;->getHardSatiatedConsumptionLimit()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_71

    .line 721
    :cond_66
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    .line 722
    invoke-virtual {v3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v3

    .line 721
    invoke-virtual {v2, v3, v4}, Lcom/android/server/tare/Scribe;->setConsumptionLimitLocked(J)V

    .line 725
    :cond_71
    :goto_71
    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService;->scheduleUnusedWealthReclamationLocked()V

    .line 726
    .end local v1    # "isFirstSetup":Z
    monitor-exit v0

    .line 727
    return-void

    .line 726
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_20 .. :try_end_78} :catchall_76

    throw v1
.end method

.method private tearDownEverything()V
    .registers 4

    .line 742
    iget-boolean v0, p0, Lcom/android/server/tare/InternalResourceService;->mIsEnabled:Z

    if-eqz v0, :cond_5

    .line 743
    return-void

    .line 745
    :cond_5
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_8
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v1}, Lcom/android/server/tare/Agent;->tearDownLocked()V

    .line 747
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v1}, Lcom/android/server/tare/Analyst;->tearDown()V

    .line 748
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v1}, Lcom/android/server/tare/CompleteEconomicPolicy;->tearDown()V

    .line 749
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 750
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptListLoaded:Z

    .line 751
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/tare/InternalResourceService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 759
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->tearDownLocked()V

    .line 760
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->clear()V

    .line 761
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 762
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 763
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 764
    .local v1, "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mSurveillanceAgent:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 765
    .end local v1    # "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_5c

    .line 766
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    monitor-enter v1

    .line 767
    :try_start_52
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 768
    monitor-exit v1

    .line 769
    return-void

    .line 768
    :catchall_59
    move-exception v0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_59

    throw v0

    .line 765
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v1
.end method


# virtual methods
.method getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    return-object v0
.end method

.method getConsumptionLimitLocked()J
    .registers 5

    .line 335
    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v2}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method

.method getInitialSatiatedConsumptionLimitLocked()J
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v0}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method getInstalledPackages()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 314
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getInstalledPackages(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v0, "userPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 323
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 324
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2a

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 325
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_2a

    .line 326
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 329
    .end local v2    # "i":I
    :cond_2d
    monitor-exit v1

    .line 330
    return-object v0

    .line 329
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method getLock()Ljava/lang/Object;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method getMinBalanceLocked(ILjava/lang/String;)J
    .registers 7
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 340
    iget v0, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMinSatiatedBalance(ILjava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method

.method getUid(ILjava/lang/String;)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    monitor-enter v0

    .line 351
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 352
    .local v1, "uid":Ljava/lang/Integer;
    if-nez v1, :cond_1f

    .line 353
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p2, v3, v4, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    .line 354
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 356
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    .line 357
    .end local v1    # "uid":Ljava/lang/Integer;
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method isEnabled()Z
    .registers 2

    .line 361
    iget-boolean v0, p0, Lcom/android/server/tare/InternalResourceService;->mIsEnabled:Z

    return v0
.end method

.method isPackageExempted(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 367
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method isSystem(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 371
    const-string v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 372
    const/4 v0, 0x1

    return v0

    .line 374
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->getUid(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$scheduleUnusedWealthReclamationLocked$0$com-android-server-tare-InternalResourceService(JJ)V
    .registers 15
    .param p1, "nextReclamationTime"    # J
    .param p3, "now"    # J

    .line 628
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 629
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-eqz v0, :cond_24

    .line 630
    const/4 v2, 0x3

    .line 631
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v5, p1, p3

    add-long/2addr v3, v5

    const-wide/32 v5, 0x1b7740

    iget-object v8, p0, Lcom/android/server/tare/InternalResourceService;->mUnusedWealthReclamationListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v9, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    .line 630
    const-string v7, "*tare.reclamation*"

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_2c

    .line 635
    :cond_24
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 638
    :goto_2c
    return-void
.end method

.method synthetic lambda$tearDownEverything$1$com-android-server-tare-InternalResourceService()V
    .registers 3

    .line 753
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 754
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-eqz v0, :cond_13

    .line 755
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mUnusedWealthReclamationListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 757
    :cond_13
    return-void
.end method

.method maybePerformQuantitativeEasingLocked()V
    .registers 11

    .line 534
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v0

    .line 535
    .local v0, "remainingConsumableCakes":J
    iget v2, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    const/16 v3, 0x32

    if-le v2, v3, :cond_65

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_13

    goto :goto_65

    .line 539
    :cond_13
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v2}, Lcom/android/server/tare/Scribe;->getSatiatedConsumptionLimitLocked()J

    move-result-wide v4

    .line 540
    .local v4, "currentConsumptionLimit":J
    iget v2, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v2, v4

    const-wide/16 v6, 0x64

    div-long/2addr v2, v6

    .line 542
    .local v2, "shortfall":J
    add-long v6, v4, v2

    iget-object v8, p0, Lcom/android/server/tare/InternalResourceService;->mCompleteEconomicPolicy:Lcom/android/server/tare/CompleteEconomicPolicy;

    .line 543
    invoke-virtual {v8}, Lcom/android/server/tare/CompleteEconomicPolicy;->getHardSatiatedConsumptionLimit()J

    move-result-wide v8

    .line 542
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 544
    .local v6, "newConsumptionLimit":J
    cmp-long v8, v6, v4

    if-eqz v8, :cond_64

    .line 545
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Increasing consumption limit from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v5}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 546
    invoke-static {v6, v7}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 545
    const-string v9, "TARE-IRS"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v8, p0, Lcom/android/server/tare/InternalResourceService;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/tare/Scribe;->setConsumptionLimitLocked(J)V

    .line 548
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/tare/InternalResourceService;->adjustCreditSupplyLocked(Z)V

    .line 550
    :cond_64
    return-void

    .line 537
    .end local v2    # "shortfall":J
    .end local v4    # "currentConsumptionLimit":J
    .end local v6    # "newConsumptionLimit":J
    :cond_65
    :goto_65
    return-void
.end method

.method onBatteryLevelChanged()V
    .registers 5

    .line 378
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService;->getCurrentBatteryLevel()I

    move-result v1

    .line 380
    .local v1, "newBatteryLevel":I
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v2, v1}, Lcom/android/server/tare/Analyst;->noteBatteryLevelChange(I)V

    .line 381
    iget v2, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    if-le v1, v2, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 382
    .local v3, "increased":Z
    :goto_13
    if-eqz v3, :cond_1b

    .line 383
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v2, v1}, Lcom/android/server/tare/Agent;->distributeBasicIncomeLocked(I)V

    goto :goto_1f

    .line 384
    :cond_1b
    if-ne v1, v2, :cond_1f

    .line 386
    monitor-exit v0

    return-void

    .line 388
    :cond_1f
    :goto_1f
    iput v1, p0, Lcom/android/server/tare/InternalResourceService;->mCurrentBatteryLevel:I

    .line 389
    invoke-direct {p0, v3}, Lcom/android/server/tare/InternalResourceService;->adjustCreditSupplyLocked(Z)V

    .line 390
    .end local v1    # "newBatteryLevel":I
    .end local v3    # "increased":Z
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 275
    iput p1, p0, Lcom/android/server/tare/InternalResourceService;->mBootPhase:I

    .line 277
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_1b

    .line 278
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mConfigObserver:Lcom/android/server/tare/InternalResourceService$ConfigObserver;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->start()V

    .line 279
    const-string v0, "deviceidle"

    .line 280
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 279
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 281
    invoke-direct {p0}, Lcom/android/server/tare/InternalResourceService;->setupEverything()V

    goto :goto_43

    .line 282
    :cond_1b
    const/16 v0, 0x3e8

    if-ne v0, p1, :cond_43

    .line 283
    iget-boolean v0, p0, Lcom/android/server/tare/InternalResourceService;->mExemptListLoaded:Z

    if-nez v0, :cond_43

    .line 284
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_26
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 287
    invoke-interface {v2}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_33} :catch_36
    .catchall {:try_start_26 .. :try_end_33} :catchall_34

    .line 291
    goto :goto_3c

    .line 293
    :catchall_34
    move-exception v1

    goto :goto_41

    .line 288
    :catch_36
    move-exception v1

    .line 290
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_37
    const-string v2, "TARE-IRS"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/tare/InternalResourceService;->mExemptListLoaded:Z

    .line 293
    monitor-exit v0

    goto :goto_43

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_34

    throw v1

    .line 296
    :cond_43
    :goto_43
    return-void
.end method

.method onDeviceStateChanged()V
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v1}, Lcom/android/server/tare/Agent;->onDeviceStateChangedLocked()V

    .line 396
    monitor-exit v0

    .line 397
    return-void

    .line 396
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method onExemptionListChanged()V
    .registers 14

    .line 400
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 401
    .local v0, "userIds":[I
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_f
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    .line 403
    .local v2, "removed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_a1

    .line 405
    .local v3, "added":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_16
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_99
    .catchall {:try_start_16 .. :try_end_23} :catchall_a1

    .line 410
    nop

    .line 412
    :try_start_24
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_2a
    if-ltz v4, :cond_44

    .line 413
    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService;->mExemptedApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 414
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 415
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_3d
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 412
    nop

    .end local v6    # "pkg":Ljava/lang/String;
    add-int/lit8 v4, v4, -0x1

    goto :goto_2a

    .line 419
    .end local v4    # "i":I
    :cond_44
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v5

    .local v4, "a":I
    :goto_49
    const/4 v6, 0x0

    if-ltz v4, :cond_6e

    .line 420
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 421
    .local v7, "pkgName":Ljava/lang/String;
    array-length v8, v0

    move v9, v6

    :goto_54
    if-ge v9, v8, :cond_6b

    aget v10, v0, v9

    .line 425
    .local v10, "userId":I
    invoke-virtual {p0, v10, v7}, Lcom/android/server/tare/InternalResourceService;->getUid(ILjava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_60

    move v11, v5

    goto :goto_61

    :cond_60
    move v11, v6

    .line 426
    .local v11, "appExists":Z
    :goto_61
    if-eqz v11, :cond_68

    .line 427
    iget-object v12, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v12, v10, v7}, Lcom/android/server/tare/Agent;->onAppExemptedLocked(ILjava/lang/String;)V

    .line 421
    .end local v10    # "userId":I
    .end local v11    # "appExists":Z
    :cond_68
    add-int/lit8 v9, v9, 0x1

    goto :goto_54

    .line 419
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_6b
    add-int/lit8 v4, v4, -0x1

    goto :goto_49

    .line 431
    .end local v4    # "a":I
    :cond_6e
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v5

    .local v4, "r":I
    :goto_73
    if-ltz v4, :cond_97

    .line 432
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 433
    .restart local v7    # "pkgName":Ljava/lang/String;
    array-length v8, v0

    move v9, v6

    :goto_7d
    if-ge v9, v8, :cond_94

    aget v10, v0, v9

    .line 437
    .restart local v10    # "userId":I
    invoke-virtual {p0, v10, v7}, Lcom/android/server/tare/InternalResourceService;->getUid(ILjava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_89

    move v11, v5

    goto :goto_8a

    :cond_89
    move v11, v6

    .line 438
    .restart local v11    # "appExists":Z
    :goto_8a
    if-eqz v11, :cond_91

    .line 439
    iget-object v12, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v12, v10, v7}, Lcom/android/server/tare/Agent;->onAppUnexemptedLocked(ILjava/lang/String;)V

    .line 433
    .end local v10    # "userId":I
    .end local v11    # "appExists":Z
    :cond_91
    add-int/lit8 v9, v9, 0x1

    goto :goto_7d

    .line 431
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_94
    add-int/lit8 v4, v4, -0x1

    goto :goto_73

    .line 443
    .end local v2    # "removed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "added":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "r":I
    :cond_97
    monitor-exit v1

    .line 444
    return-void

    .line 406
    .restart local v2    # "removed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "added":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catch_99
    move-exception v4

    .line 408
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "TARE-IRS"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    monitor-exit v1

    return-void

    .line 443
    .end local v2    # "removed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "added":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_a1
    move-exception v2

    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_24 .. :try_end_a3} :catchall_a1

    throw v2
.end method

.method onPackageAdded(ILjava/lang/String;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 447
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 450
    .local v0, "userId":I
    :try_start_4
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x400c0000    # 2.1875f

    .line 451
    invoke-virtual {v1, p2, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_34

    .line 455
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 456
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    monitor-enter v2

    .line 457
    :try_start_10
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, p2, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 458
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_31

    .line 459
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 460
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 463
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/tare/Agent;->grantBirthrightLocked(ILjava/lang/String;)V

    .line 464
    monitor-exit v3

    .line 465
    return-void

    .line 464
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_2e

    throw v2

    .line 458
    :catchall_31
    move-exception v3

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v3

    .line 452
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_34
    move-exception v1

    .line 453
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "TARE-IRS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PM couldn\'t find newly added package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    return-void
.end method

.method onPackageForceStopped(ILjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_3
    monitor-exit v0

    .line 471
    return-void

    .line 470
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method onPackageRemoved(ILjava/lang/String;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 474
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 475
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    monitor-enter v1

    .line 476
    :try_start_7
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 477
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_4b

    .line 478
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 479
    :try_start_10
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 480
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_41

    .line 481
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 482
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, v0, :cond_3e

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 483
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 484
    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 485
    goto :goto_41

    .line 480
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 488
    .end local v1    # "i":I
    :cond_41
    :goto_41
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/tare/Agent;->onPackageRemovedLocked(ILjava/lang/String;)V

    .line 489
    monitor-exit v2

    .line 490
    return-void

    .line 489
    :catchall_48
    move-exception v1

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_10 .. :try_end_4a} :catchall_48

    throw v1

    .line 477
    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method public onStart()V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mEconomyManagerStub:Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;

    const-string/jumbo v1, "tare"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tare/InternalResourceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 271
    return-void
.end method

.method onUidStateChanged(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 493
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/tare/InternalResourceService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 495
    .local v1, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_22

    .line 496
    const-string v2, "TARE-IRS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t have packages for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 498
    :cond_22
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/tare/Agent;->onAppStatesChangedLocked(ILandroid/util/ArraySet;)V

    .line 500
    .end local v1    # "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_2b
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method onUserAdded(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 504
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v3, 0x400c0000    # 2.1875f

    .line 506
    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 505
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 507
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v1, p1}, Lcom/android/server/tare/Agent;->grantBirthrightsLocked(I)V

    .line 508
    monitor-exit v0

    .line 509
    return-void

    .line 508
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method onUserRemoved(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 512
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v1, "removedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_3b

    .line 515
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 516
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_38

    .line 517
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseSetArray;->remove(I)V

    .line 519
    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService;->mPkgCache:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 520
    goto :goto_3b

    .line 514
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_38
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 523
    .end local v2    # "i":I
    :cond_3b
    :goto_3b
    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService;->mAgent:Lcom/android/server/tare/Agent;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/tare/Agent;->onUserRemovedLocked(ILjava/util/List;)V

    .line 524
    .end local v1    # "removedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v0

    .line 525
    return-void

    .line 524
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "affordabilityNote"    # Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 554
    sget-boolean v0, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " affordability changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 556
    invoke-virtual {p3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    const-string v1, "TARE-IRS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_2e
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 559
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 560
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 561
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 562
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 563
    return-void
.end method
