.class public Lcom/android/server/job/JobServiceContext$JobAnrTimer;
.super Lcom/android/server/utils/AnrTimer;
.source "JobServiceContext.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobServiceContext;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobServiceContext;)V
    .registers 5

    .line 333
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext$JobAnrTimer;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 334
    invoke-static {p1}, Lcom/android/server/job/JobServiceContext;->-$$Nest$fgetmCallbackHandler(Lcom/android/server/job/JobServiceContext;)Landroid/os/Handler;

    move-result-object p1

    const-string v0, "JobScheduler"

    invoke-static {}, Lcom/android/server/job/JobServiceContext;->-$$Nest$sfgetsAnrTimerArgs()Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/server/utils/AnrTimer;-><init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/internal/os/TimeoutRecord;)V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobAnrTimer;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-$$Nest$fgetmRunningCallback(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobServiceContext$JobCallback;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/utils/AnrTimer;->accept(Ljava/lang/Object;Lcom/android/internal/os/TimeoutRecord;)V

    return-void
.end method

.method public cancel()Z
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobAnrTimer;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-$$Nest$fgetmRunningCallback(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobServiceContext$JobCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public discard()Z
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobAnrTimer;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-$$Nest$fgetmRunningCallback(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobServiceContext$JobCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public start(J)V
    .registers 10

    .line 338
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobAnrTimer;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-$$Nest$fgetmRunningCallback(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobServiceContext$JobCallback;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobAnrTimer;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-$$Nest$fgetmRunningJob(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    const/4 v3, 0x0

    move-object v1, p0

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/utils/AnrTimer;->start(Ljava/lang/Object;IIJ)V

    return-void
.end method
