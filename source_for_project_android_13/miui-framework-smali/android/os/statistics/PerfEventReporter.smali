.class public Landroid/os/statistics/PerfEventReporter;
.super Ljava/lang/Object;
.source "PerfEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;,
        Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;
    }
.end annotation


# static fields
.field private static final blacklist DEBUGGING:Z = false

.field private static final blacklist MAX_RETRY_WRITE_COUNT:I = 0x6


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfetchProcKernelPerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I
    .registers 1

    invoke-static {p0}, Landroid/os/statistics/PerfEventReporter;->fetchProcKernelPerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfetchProcUserspacePerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I
    .registers 1

    invoke-static {p0}, Landroid/os/statistics/PerfEventReporter;->fetchProcUserspacePerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smwaitForPerfEventArrived(I)V
    .registers 1

    invoke-static {p0}, Landroid/os/statistics/PerfEventReporter;->waitForPerfEventArrived(I)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist fetchProcKernelPerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I
.end method

.method private static native blacklist fetchProcUserspacePerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I
.end method

.method public static native blacklist getEarliestBeginUptimeMillisOfExecutingRootEvents()J
.end method

.method private static native blacklist nativeReport(ILandroid/os/statistics/PerfEvent;)V
.end method

.method public static blacklist report(Landroid/os/statistics/PerfEvent;)V
    .registers 2
    .param p0, "event"    # Landroid/os/statistics/PerfEvent;

    .line 43
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isPerfEventReportable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 44
    return-void

    .line 46
    :cond_7
    iget v0, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-static {v0, p0}, Landroid/os/statistics/PerfEventReporter;->nativeReport(ILandroid/os/statistics/PerfEvent;)V

    .line 47
    return-void
.end method

.method static blacklist start()V
    .registers 1

    .line 33
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isPerfEventReportable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 34
    return-void

    .line 36
    :cond_7
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSystemServer()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 37
    const/16 v0, 0x708

    goto :goto_12

    :cond_10
    const/16 v0, 0x258

    .line 36
    :goto_12
    invoke-static {v0}, Landroid/os/statistics/FilteringPerfEventCache;->setCapacity(I)V

    .line 38
    invoke-static {}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->getInstance()Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventFilterThread;->start()V

    .line 39
    invoke-static {}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->getInstance()Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/statistics/PerfEventReporter$ProcPerfEventReaderThread;->start()V

    .line 40
    return-void
.end method

.method private static native blacklist waitForPerfEventArrived(I)V
.end method
