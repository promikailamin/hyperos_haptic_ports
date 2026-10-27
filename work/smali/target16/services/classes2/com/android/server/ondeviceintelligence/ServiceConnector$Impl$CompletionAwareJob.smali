.class public Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;
.super Lcom/android/internal/infra/AndroidFuture;
.source "ServiceConnector.java"

# interfaces
.implements Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public mAsync:Z

.field public mDelegate:Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;

.field public final synthetic this$0:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;)V
    .registers 6

    .line 723
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->this$0:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;

    invoke-direct {p0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    const/4 v0, 0x0

    .line 726
    iput-boolean v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    .line 731
    invoke-virtual {p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->getJobHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->setTimeoutHandler(Landroid/os/Handler;)Lcom/android/internal/infra/AndroidFuture;

    .line 733
    invoke-virtual {p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->getRequestTimeoutMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1e

    .line 735
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    :cond_1e
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 723
    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    if-eqz p2, :cond_6

    .line 774
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    .line 776
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel(Z)Z
    .registers 4

    if-eqz p1, :cond_c

    .line 757
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->this$0:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;

    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "mayInterruptIfRunning not supported - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_c
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->this$0:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->-$$Nest$fgetmQueue(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 760
    invoke-super {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    move-result p0

    if-nez p0, :cond_21

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 782
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 783
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->this$0:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;

    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->-$$Nest$fgetmUnfinishedJobs(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 784
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->this$0:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->-$$Nest$mmaybeScheduleUnbindTimeout(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;)V

    :cond_14
    return-void
.end method

.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 751
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;

    invoke-interface {p0, p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " wrapped into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
