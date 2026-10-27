.class Lcom/android/server/autofill/RemoteFillService$1;
.super Landroid/service/autofill/IFillCallback$Stub;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteFillService;->lambda$onFillRequest$0$com-android-server-autofill-RemoteFillService(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteFillService;

.field final synthetic val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$fillRequest:Ljava/util/concurrent/CompletableFuture;

.field final synthetic val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CompletableFuture;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 149
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$1;->this$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$fillRequest:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/service/autofill/IFillCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellable(Landroid/os/ICancellationSignal;)V
    .registers 4
    .param p1, "cancellation"    # Landroid/os/ICancellationSignal;

    .line 152
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    .line 153
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 154
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$1;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v1, p1}, Lcom/android/server/autofill/RemoteFillService;->-$$Nest$mdispatchCancellationSignal(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V

    goto :goto_1b

    .line 156
    :cond_16
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 158
    :goto_1b
    return-void
.end method

.method public onFailure(ILjava/lang/CharSequence;)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 180
    if-nez p2, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "errorMessage":Ljava/lang/String;
    :goto_9
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$fillRequest:Ljava/util/concurrent/CompletableFuture;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 183
    return-void
.end method

.method public onSuccess(Landroid/service/autofill/FillResponse;)V
    .registers 7
    .param p1, "response"    # Landroid/service/autofill/FillResponse;

    .line 164
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->isContainCaptcha()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 165
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    .line 166
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;
    const-wide/32 v1, 0xc350

    if-eqz v0, :cond_23

    .line 167
    move-object v3, v0

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v3}, Lcom/android/internal/infra/AndroidFuture;->cancelTimeout()Lcom/android/internal/infra/AndroidFuture;

    .line 168
    move-object v3, v0

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 170
    :cond_23
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$1;->this$0:Lcom/android/server/autofill/RemoteFillService;

    # invokes: Lcom/android/server/autofill/RemoteFillService;->cancelTimeout()V
    invoke-static {v3}, Lcom/android/server/autofill/RemoteFillService;->access$000(Lcom/android/server/autofill/RemoteFillService;)V

    .line 171
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$1;->this$0:Lcom/android/server/autofill/RemoteFillService;

    # invokes: Lcom/android/server/autofill/RemoteFillService;->getJobHandler()Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/autofill/RemoteFillService;->access$200(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$1;->this$0:Lcom/android/server/autofill/RemoteFillService;

    # getter for: Lcom/android/server/autofill/RemoteFillService;->mTimeoutDisconnect:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/autofill/RemoteFillService;->access$100(Lcom/android/server/autofill/RemoteFillService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    .end local v0    # "future":Ljava/util/concurrent/CompletableFuture;
    goto :goto_3d

    .line 173
    :cond_38
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$fillRequest:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 176
    :goto_3d
    return-void
.end method
