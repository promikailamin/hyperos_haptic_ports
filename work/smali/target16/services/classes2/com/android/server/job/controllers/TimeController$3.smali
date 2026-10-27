.class public Lcom/android/server/job/controllers/TimeController$3;
.super Ljava/lang/Object;
.source "TimeController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/TimeController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/TimeController;)V
    .registers 2

    .line 432
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$3;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 5

    .line 435
    invoke-static {}, Lcom/android/server/job/controllers/TimeController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 436
    const-string v0, "JobScheduler.Time"

    const-string v1, "Delay-expired alarm fired"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_d
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$3;->this$0:Lcom/android/server/job/controllers/TimeController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_12
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController$3;->this$0:Lcom/android/server/job/controllers/TimeController;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/TimeController;->-$$Nest$fputmLastFiredDelayExpiredElapsedMillis(Lcom/android/server/job/controllers/TimeController;J)V

    .line 441
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController$3;->this$0:Lcom/android/server/job/controllers/TimeController;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/TimeController;->-$$Nest$fputmNextDelayExpiredElapsedMillis(Lcom/android/server/job/controllers/TimeController;J)V

    .line 442
    iget-object p0, p0, Lcom/android/server/job/controllers/TimeController$3;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 443
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_2e

    throw p0
.end method
