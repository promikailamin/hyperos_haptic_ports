.class Lcom/android/server/rollback/RollbackManagerServiceImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerTimeChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 414
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 417
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$massertInWorkerThread(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 418
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$fgetmRelativeBootTime(Lcom/android/server/rollback/RollbackManagerServiceImpl;)J

    move-result-wide v0

    .line 419
    .local v0, "oldRelativeBootTime":J
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$smcalculateRelativeBootTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$fputmRelativeBootTime(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)V

    .line 420
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$fgetmRelativeBootTime(Lcom/android/server/rollback/RollbackManagerServiceImpl;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 422
    .local v2, "timeDifference":J
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$fgetmRollbacks(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 423
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 424
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/rollback/Rollback;

    .line 425
    .local v5, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v5}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/rollback/Rollback;->setTimestamp(Ljava/time/Instant;)V

    .line 426
    .end local v5    # "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_25

    .line 427
    :cond_3d
    return-void
.end method
