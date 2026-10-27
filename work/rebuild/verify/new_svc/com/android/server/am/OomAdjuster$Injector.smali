.class public Lcom/android/server/am/OomAdjuster$Injector;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public batchSetOomAdj(Ljava/util/ArrayList;)V
    .registers 2

    .line 434
    invoke-static {p1}, Lcom/android/server/am/ProcessList;->batchSetOomAdj(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getElapsedRealtimeMillis()J
    .registers 3

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUptimeMillis()J
    .registers 3

    .line 426
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z
    .registers 4

    .line 421
    invoke-static {}, Lcom/android/server/am/psc/PlatformCompatCache;->getInstance()Lcom/android/server/am/psc/PlatformCompatCache;

    .line 422
    invoke-static {p1, p2, p3}, Lcom/android/server/am/psc/PlatformCompatCache;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0
.end method

.method public setOomAdj(III)V
    .registers 4

    .line 438
    invoke-static {p1, p2, p3}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    return-void
.end method

.method public setThreadPriority(II)V
    .registers 3

    .line 442
    invoke-static {p1, p2}, Landroid/os/Process;->setThreadPriority(II)V

    return-void
.end method
