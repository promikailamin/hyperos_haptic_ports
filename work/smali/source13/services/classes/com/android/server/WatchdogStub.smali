.class public Lcom/android/server/WatchdogStub;
.super Ljava/lang/Object;
.source "WatchdogStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/WatchdogStub;
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/WatchdogStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WatchdogStub;

    return-object v0
.end method


# virtual methods
.method public checkOOMState()V
    .registers 1

    .line 21
    return-void
.end method

.method public crashIfHasDThread(Z)V
    .registers 2
    .param p1, "mHasDThread"    # Z

    .line 35
    return-void
.end method

.method onHalfWatchdog(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "trace"    # Ljava/io/File;
    .param p4, "binderTransInfo"    # Ljava/lang/String;
    .param p5, "mUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    .local p3, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    return-void
.end method

.method onWatchdog(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "trace"    # Ljava/io/File;
    .param p4, "binderTransInfo"    # Ljava/lang/String;
    .param p5, "mUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    .local p3, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
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

    .line 39
    .local p1, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public setWatchdogPropTimestamp(J)V
    .registers 3
    .param p1, "anrtime"    # J

    .line 32
    return-void
.end method
