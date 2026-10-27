.class final Lcom/android/server/am/LowMemDetector$LowMemThread;
.super Ljava/lang/Thread;
.source "LowMemDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LowMemDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LowMemThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LowMemDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/LowMemDetector;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    .line 115
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 116
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v0}, Lcom/android/server/am/LowMemDetector;->-$$Nest$mwaitForPressure(Lcom/android/server/am/LowMemDetector;)I

    move-result v0

    .line 123
    .local v0, "newPressureState":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 125
    iget-object v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fputmAvailable(Lcom/android/server/am/LowMemDetector;Z)V

    .line 126
    nop

    .line 148
    .end local v0    # "newPressureState":I
    return-void

    .line 129
    .restart local v0    # "newPressureState":I
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v1}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fgetmPressureStateLock(Lcom/android/server/am/LowMemDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_18
    iget-object v2, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v2, v0}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fputmPressureState(Lcom/android/server/am/LowMemDetector;I)V

    .line 131
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_4c

    .line 133
    if-lez v0, :cond_38

    .line 135
    invoke-static {}, Lcom/android/server/ExtendMStub;->getInstance()Lcom/android/server/ExtendMStub;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/ExtendMStub;->reportMemPressure(I)V

    .line 137
    invoke-static {}, Lcom/android/server/am/MemoryStandardProcessControl;->getInstance()Lcom/android/server/am/MemoryStandardProcessControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MemoryStandardProcessControl;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 138
    invoke-static {}, Lcom/android/server/am/MemoryStandardProcessControl;->getInstance()Lcom/android/server/am/MemoryStandardProcessControl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/MemoryStandardProcessControl;->reportMemPressure(I)V

    .line 143
    :cond_38
    iget-object v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v1}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fgetmPeriodicCleaner(Lcom/android/server/am/LowMemDetector;)Lcom/android/server/am/PeriodicCleanerInternalStub;

    move-result-object v1

    if-eqz v1, :cond_4b

    if-lez v0, :cond_4b

    .line 144
    iget-object v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v1}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fgetmPeriodicCleaner(Lcom/android/server/am/LowMemDetector;)Lcom/android/server/am/PeriodicCleanerInternalStub;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/am/PeriodicCleanerInternalStub;->reportMemPressure(I)V

    .line 147
    .end local v0    # "newPressureState":I
    :cond_4b
    goto :goto_0

    .line 131
    .restart local v0    # "newPressureState":I
    :catchall_4c
    move-exception v2

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v2
.end method
