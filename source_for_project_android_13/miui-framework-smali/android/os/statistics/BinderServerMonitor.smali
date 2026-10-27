.class public Landroid/os/statistics/BinderServerMonitor;
.super Ljava/lang/Object;
.source "BinderServerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist MAX_RECORDS_QUEUE_CAPACITY:I = 0xc

.field public static final blacklist PERFSHIELDER_SERVICE_NAME:Ljava/lang/String; = "perfshielder"

.field private static final blacklist TAG:Ljava/lang/String; = "BinderServerMonitor"

.field private static blacklist isEnabled:Z

.field private static blacklist mBinderClientCpuUsages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mExcessiveCpuUsageRecords:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mExcessiveCpuUsageThershold:I

.field private static blacklist mPerfService:Lcom/android/internal/app/IPerfShielder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 27
    const-string v0, "persist.sys.excessive_cpu_usage_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/statistics/BinderServerMonitor;->isEnabled:Z

    .line 28
    const-string v0, "persist.sys.excessive_cpu_usage"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageThershold:I

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/statistics/BinderServerMonitor;->mBinderClientCpuUsages:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist clearBinderClientCpuTimeUsed(I)J
.end method

.method public static blacklist computeCpuUsage(JJ)I
    .registers 6
    .param p0, "upCputime"    # J
    .param p2, "cputimeUsed"    # J

    .line 117
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p2

    div-long/2addr v0, p0

    long-to-int v0, v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static native blacklist dumpBinderClientCpuTimeUsed(Ljava/util/HashMap;)V
.end method

.method public static blacklist getBinderClientCpuUsages()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 83
    sget-object v0, Landroid/os/statistics/BinderServerMonitor;->mBinderClientCpuUsages:Ljava/util/HashMap;

    return-object v0
.end method

.method public static blacklist getExcessiveCpuUsageThreshold()I
    .registers 1

    .line 74
    sget v0, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageThershold:I

    return v0
.end method

.method static native blacklist nativeStart()V
.end method

.method public static blacklist recordExcessiveCpuUsage(Ljava/lang/String;IIIJJJZ)V
    .registers 15
    .param p0, "procName"    # Ljava/lang/String;
    .param p1, "procState"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "uptimeSince"    # J
    .param p6, "procCputime"    # J
    .param p8, "binderCpuTime"    # J
    .param p10, "reportToDaemon"    # Z

    .line 87
    new-instance v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;

    invoke-direct {v0}, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;-><init>()V

    .line 88
    .local v0, "cpuUsageInfo":Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;
    iput p2, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->pid:I

    .line 89
    iput p3, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->uid:I

    .line 90
    iput-object p0, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->procName:Ljava/lang/String;

    .line 91
    iput p1, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->procState:I

    .line 92
    iput-wide p4, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->duration:J

    .line 93
    add-long v1, p6, p8

    iput-wide v1, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->runningTime:J

    .line 94
    iput-wide p8, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->binderCpuTime:J

    .line 95
    iget-wide v1, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->runningTime:J

    invoke-static {p4, p5, v1, v2}, Landroid/os/statistics/BinderServerMonitor;->computeCpuUsage(JJ)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->cpuUsage:D

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->currentTimeMills:J

    .line 98
    invoke-virtual {v0}, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "logStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excessive process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BinderServerMonitor"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/16 v2, 0x758d

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 103
    .end local v1    # "logStr":Ljava/lang/String;
    if-eqz p10, :cond_6a

    .line 104
    sget-object v1, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    invoke-virtual {v0}, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v1, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_6a

    .line 106
    sget-object v1, Landroid/os/statistics/BinderServerMonitor;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_65

    .line 108
    :try_start_5e
    sget-object v2, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IPerfShielder;->reportExcessiveCpuUsageRecords(Ljava/util/List;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_64

    goto :goto_65

    .line 109
    :catch_64
    move-exception v1

    .line 111
    :cond_65
    :goto_65
    sget-object v1, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 114
    :cond_6a
    return-void
.end method

.method public static blacklist start()V
    .registers 1

    .line 67
    sget-boolean v0, Landroid/os/statistics/BinderServerMonitor;->isEnabled:Z

    if-eqz v0, :cond_d

    .line 68
    invoke-static {}, Landroid/os/statistics/BinderServerMonitor;->nativeStart()V

    .line 69
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v0

    sput-object v0, Landroid/os/statistics/BinderServerMonitor;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    .line 71
    :cond_d
    return-void
.end method

.method public static blacklist updateBinderClientCpuUsages()V
    .registers 1

    .line 78
    sget-object v0, Landroid/os/statistics/BinderServerMonitor;->mBinderClientCpuUsages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 79
    sget-object v0, Landroid/os/statistics/BinderServerMonitor;->mBinderClientCpuUsages:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/os/statistics/BinderServerMonitor;->dumpBinderClientCpuTimeUsed(Ljava/util/HashMap;)V

    .line 80
    return-void
.end method
