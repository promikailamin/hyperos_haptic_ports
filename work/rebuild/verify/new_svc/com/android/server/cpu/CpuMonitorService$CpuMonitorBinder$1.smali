.class public Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;
.super Ljava/lang/Object;
.source "CpuMonitorService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# instance fields
.field public final synthetic this$1:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;)V
    .registers 2

    .line 523
    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;->this$1:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    .line 527
    iget-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;->this$1:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;

    iget-object p1, p1, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->this$0:Lcom/android/server/cpu/CpuMonitorService;

    invoke-static {p1}, Lcom/android/server/cpu/CpuMonitorService;->-$$Nest$fgetmContext(Lcom/android/server/cpu/CpuMonitorService;)Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-eqz p1, :cond_2d

    if-eqz p4, :cond_13

    goto :goto_2d

    .line 531
    :cond_13
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 532
    :try_start_18
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;->this$1:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;

    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->this$0:Lcom/android/server/cpu/CpuMonitorService;

    invoke-static {p0, p1}, Lcom/android/server/cpu/CpuMonitorService;->-$$Nest$mdoDump(Lcom/android/server/cpu/CpuMonitorService;Landroid/util/IndentingPrintWriter;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_23

    .line 533
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->close()V

    return-void

    :catchall_23
    move-exception p0

    .line 531
    :try_start_24
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw p0

    :cond_2d
    :goto_2d
    return-void
.end method
