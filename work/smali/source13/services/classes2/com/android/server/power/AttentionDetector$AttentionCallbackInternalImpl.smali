.class final Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;
.super Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
.source "AttentionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/AttentionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AttentionCallbackInternalImpl"
.end annotation


# instance fields
.field private final mId:I

.field final synthetic this$0:Lcom/android/server/power/AttentionDetector;


# direct methods
.method static bridge synthetic -$$Nest$fgetmId(Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    return p0
.end method

.method constructor <init>(Lcom/android/server/power/AttentionDetector;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/power/AttentionDetector;
    .param p2, "id"    # I

    .line 411
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-direct {p0}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;-><init>()V

    .line 412
    iput p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    .line 413
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 5
    .param p1, "error"    # I

    .line 441
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceStub;->get()Lcom/android/server/power/PowerManagerServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v1}, Lcom/android/server/power/AttentionDetector;->-$$Nest$fgetmStartTimeStamp(Lcom/android/server/power/AttentionDetector;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/power/PowerManagerServiceStub;->notifyUserAttentionChanged(JI)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to check attention: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttentionDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v0}, Lcom/android/server/power/AttentionDetector;->-$$Nest$fgetmRequested(Lcom/android/server/power/AttentionDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 444
    return-void
.end method

.method public onSuccess(IJ)V
    .registers 7
    .param p1, "result"    # I
    .param p2, "timestamp"    # J

    .line 418
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceStub;->get()Lcom/android/server/power/PowerManagerServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v1}, Lcom/android/server/power/AttentionDetector;->-$$Nest$fgetmStartTimeStamp(Lcom/android/server/power/AttentionDetector;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/power/PowerManagerServiceStub;->notifyUserAttentionChanged(JI)V

    .line 419
    const-string v0, "AttentionDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget v0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    iget v1, v1, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    if-ne v0, v1, :cond_7c

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v0}, Lcom/android/server/power/AttentionDetector;->-$$Nest$fgetmRequested(Lcom/android/server/power/AttentionDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 424
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v0}, Lcom/android/server/power/AttentionDetector;->-$$Nest$fgetmLock(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 425
    :try_start_4e
    iget-object v1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v1}, Lcom/android/server/power/AttentionDetector;->-$$Nest$fgetmWakefulness(Lcom/android/server/power/AttentionDetector;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_66

    .line 426
    invoke-static {}, Lcom/android/server/power/AttentionDetector;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_64

    const-string v1, "AttentionDetector"

    const-string v2, "Device slept before receiving callback."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_64
    monitor-exit v0

    return-void

    .line 429
    :cond_66
    if-ne p1, v2, :cond_72

    .line 430
    iget-object v1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v1}, Lcom/android/server/power/AttentionDetector;->-$$Nest$fgetmOnUserAttention(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_77

    .line 432
    :cond_72
    iget-object v1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v1}, Lcom/android/server/power/AttentionDetector;->-$$Nest$mresetConsecutiveExtensionCount(Lcom/android/server/power/AttentionDetector;)V

    .line 434
    :goto_77
    monitor-exit v0

    goto :goto_7c

    :catchall_79
    move-exception v1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_4e .. :try_end_7b} :catchall_79

    throw v1

    .line 436
    :cond_7c
    :goto_7c
    return-void
.end method
