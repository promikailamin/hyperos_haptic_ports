.class Lcom/android/server/am/AppProfiler$BgHandler;
.super Landroid/os/Handler;
.source "AppProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BgHandler"
.end annotation


# static fields
.field static final COLLECT_PSS_BG_MSG:I = 0x1

.field static final DEFER_PSS_MSG:I = 0x2

.field static final MEMORY_PRESSURE_CHANGED:I = 0x4

.field static final REPORT_OOM_MEMINFO_MSG:I = 0x5b

.field static final REPORT_PACKAGE_PSS_MSG:I = 0x5c

.field static final STOP_DEFERRING_PSS_MSG:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppProfiler;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 418
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    .line 419
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 420
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 424
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_5e

    goto :goto_5c

    .line 440
    :sswitch_6
    invoke-static {}, Lcom/android/server/am/AppProfilerStub;->getInstance()Lcom/android/server/am/AppProfilerStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/server/am/AppProfilerStub;->reportPackagePss(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    .line 442
    goto :goto_5c

    .line 436
    :sswitch_18
    invoke-static {}, Lcom/android/server/am/AppProfilerStub;->getInstance()Lcom/android/server/am/AppProfilerStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v2}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmProcessCpuTracker(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/am/AppProfilerStub;->reportOomMemRecordIfNeeded(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/ProcessCpuTracker;)V

    .line 438
    goto :goto_5c

    .line 445
    :sswitch_2c
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_33
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 446
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3}, Lcom/android/server/am/AppProfiler;->-$$Nest$mhandleMemoryPressureChangedLocked(Lcom/android/server/am/AppProfiler;II)V

    .line 447
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_5c

    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 432
    :sswitch_4a
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->-$$Nest$mstopDeferPss(Lcom/android/server/am/AppProfiler;)V

    .line 433
    goto :goto_5c

    .line 429
    :sswitch_50
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->-$$Nest$mdeferPssForActivityStart(Lcom/android/server/am/AppProfiler;)V

    .line 430
    goto :goto_5c

    .line 426
    :sswitch_56
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->-$$Nest$mcollectPssInBackground(Lcom/android/server/am/AppProfiler;)V

    .line 427
    nop

    .line 450
    :goto_5c
    return-void

    nop

    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_56
        0x2 -> :sswitch_50
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_2c
        0x5b -> :sswitch_18
        0x5c -> :sswitch_6
    .end sparse-switch
.end method
