.class public Lcom/android/server/job/controllers/TimeController$2;
.super Ljava/lang/Object;
.source "TimeController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/TimeController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/TimeController;)V
    .registers 2

    .line 418
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 5

    .line 421
    invoke-static {}, Lcom/android/server/job/controllers/TimeController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 422
    const-string v0, "JobScheduler.Time"

    const-string v1, "Deadline-expired alarm fired"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_d
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_12
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/TimeController;->-$$Nest$fputmNextJobExpiredElapsedMillis(Lcom/android/server/job/controllers/TimeController;J)V

    .line 427
    iget-object p0, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 428
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_23

    throw p0
.end method
