.class public Lcom/android/server/ScoutStub;
.super Ljava/lang/Object;
.source "ScoutStub.java"


# static fields
.field private static final INSTANCE:Lcom/android/server/ScoutStub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/android/server/ScoutStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ScoutStub;

    sput-object v0, Lcom/android/server/ScoutStub;->INSTANCE:Lcom/android/server/ScoutStub;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/ScoutStub;
    .registers 1

    .line 15
    sget-object v0, Lcom/android/server/ScoutStub;->INSTANCE:Lcom/android/server/ScoutStub;

    return-object v0
.end method


# virtual methods
.method public addScoutMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 2
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .line 33
    return-void
.end method

.method public addScoutThread(Landroid/os/Handler;)V
    .registers 2
    .param p1, "thread"    # Landroid/os/Handler;

    .line 36
    return-void
.end method

.method public checkAndSetMonkeyPid(Ljava/lang/String;I)V
    .registers 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 54
    return-void
.end method

.method public crashIfHasDThread(Z)V
    .registers 2
    .param p1, "mHasDThread"    # Z

    .line 48
    return-void
.end method

.method public getSystemWorkerHandler()Landroid/os/Handler;
    .registers 2

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public pauseScoutWatchingCurrentThread(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 42
    return-void
.end method

.method public reportRebootNullEventtoMqs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "triggerWay"    # Ljava/lang/String;
    .param p3, "intentName"    # Ljava/lang/String;

    .line 51
    return-void
.end method

.method public resetClipProp(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 65
    return-void
.end method

.method public resumeScoutWatchingCurrentThread(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 39
    return-void
.end method

.method public scoutSystemCheckBinderCallChain(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/ScoutWatchdogInfo;)V
    .registers 4
    .param p3, "watchdoginfo"    # Lcom/android/server/ScoutWatchdogInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/ScoutWatchdogInfo;",
            ")V"
        }
    .end annotation

    .line 30
    .local p1, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public scoutSystemMonitorEnable()Z
    .registers 2

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public scoutSystemMonitorInit(Lcom/android/server/Watchdog$Monitor;Ljava/lang/Object;)V
    .registers 3
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;
    .param p2, "mLock"    # Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public scoutSystemMonitorInitContext(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .line 26
    return-void
.end method

.method public scoutSystemMonitorWork(JIZLcom/android/server/ScoutWatchdogInfo$ScoutId;)V
    .registers 6
    .param p1, "timeout"    # J
    .param p3, "count"    # I
    .param p4, "waitedHalf"    # Z
    .param p5, "scoutId"    # Lcom/android/server/ScoutWatchdogInfo$ScoutId;

    .line 45
    return-void
.end method

.method public skipClipDataAppAnr(II)Z
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 61
    const/4 v0, 0x0

    return v0
.end method
