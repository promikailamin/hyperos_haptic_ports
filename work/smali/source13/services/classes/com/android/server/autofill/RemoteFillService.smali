.class final Lcom/android/server/autofill/RemoteFillService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/autofill/IAutoFillService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteFillService"

.field private static final TIMEOUT_IDLE_BIND_MILLIS:J = 0x1388L

.field private static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x1388L


# instance fields
.field private final mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mLock:Ljava/lang/Object;

.field private mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/service/autofill/FillResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingFillRequestId:I


# direct methods
.method static bridge synthetic -$$Nest$mdispatchCancellationSignal(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callbacks"    # Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
    .param p5, "bindInstantServiceAllowed"    # Z

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 85
    if-eqz p5, :cond_10

    const/high16 v0, 0x400000

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/high16 v1, 0x100000

    or-int v5, v0, v1

    new-instance v7, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda2;-><init>()V

    .line 83
    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    .line 65
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 87
    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 88
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 55
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/RemoteFillService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 55
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mTimeoutDisconnect:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 55
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService;->getJobHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V
    .registers 5
    .param p1, "signal"    # Landroid/os/ICancellationSignal;

    .line 101
    if-nez p1, :cond_3

    .line 102
    return-void

    .line 105
    :cond_3
    :try_start_3
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    .line 108
    goto :goto_f

    .line 106
    :catch_7
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteFillService"

    const-string v2, "Error requesting a cancellation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method static synthetic lambda$onSavedPasswordCountRequest$6(Lcom/android/internal/os/IResultReceiver;Landroid/service/autofill/IAutoFillService;)V
    .registers 2
    .param p0, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p1, "service"    # Landroid/service/autofill/IAutoFillService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    invoke-interface {p1, p0}, Landroid/service/autofill/IAutoFillService;->onSavedPasswordCountRequest(Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method


# virtual methods
.method public addLast(Lcom/android/internal/infra/ServiceConnector$Job;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "Landroid/service/autofill/IAutoFillService;",
            "*>;)V"
        }
    .end annotation

    .line 119
    .local p1, "iAutoFillServiceJob":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<Landroid/service/autofill/IAutoFillService;*>;"
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelPendingJobs()V

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->addLast(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public bridge synthetic addLast(Ljava/lang/Object;)V
    .registers 2

    .line 55
    check-cast p1, Lcom/android/internal/infra/ServiceConnector$Job;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->addLast(Lcom/android/internal/infra/ServiceConnector$Job;)V

    return-void
.end method

.method public cancelCurrentRequest()I
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    if-eqz v1, :cond_11

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 135
    iget v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    goto :goto_13

    .line 136
    :cond_11
    const/high16 v1, -0x80000000

    :goto_13
    monitor-exit v0

    .line 134
    return v1

    .line 137
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public destroy()V
    .registers 1

    .line 249
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService;->unbind()V

    .line 250
    return-void
.end method

.method protected getAutoDisconnectTimeoutMs()J
    .registers 3

    .line 113
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method synthetic lambda$onFillRequest$0$com-android-server-autofill-RemoteFillService(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .param p1, "request"    # Landroid/service/autofill/FillRequest;
    .param p2, "futureRef"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p3, "cancellationSink"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p4, "remoteService"    # Landroid/service/autofill/IAutoFillService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_20

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling onFillRequest() for id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteFillService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_20
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 149
    .local v0, "fillRequest":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/service/autofill/FillResponse;>;"
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$1;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/android/server/autofill/RemoteFillService$1;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p4, p1, v1}, Landroid/service/autofill/IAutoFillService;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V

    .line 185
    return-object v0
.end method

.method synthetic lambda$onFillRequest$1$com-android-server-autofill-RemoteFillService(Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 9
    .param p1, "err"    # Ljava/lang/Throwable;
    .param p2, "request"    # Landroid/service/autofill/FillRequest;
    .param p3, "res"    # Landroid/service/autofill/FillResponse;
    .param p4, "cancellationSink"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 195
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 197
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 198
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_5b

    .line 199
    if-nez p1, :cond_21

    .line 200
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 201
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v3

    .line 200
    invoke-interface {v0, v1, p3, v2, v3}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V

    goto :goto_5a

    .line 203
    :cond_21
    const-string v0, "RemoteFillService"

    const-string v1, "Error calling on fill request"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_3f

    .line 205
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ICancellationSignal;

    invoke-direct {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 206
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestTimeout(I)V

    goto :goto_5a

    .line 207
    :cond_3f
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_4d

    .line 208
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ICancellationSignal;

    invoke-direct {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    goto :goto_5a

    .line 210
    :cond_4d
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/CharSequence;)V

    .line 213
    :goto_5a
    return-void

    .line 198
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method synthetic lambda$onFillRequest$2$com-android-server-autofill-RemoteFillService(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/FillResponse;Ljava/lang/Throwable;)V
    .registers 13
    .param p1, "request"    # Landroid/service/autofill/FillRequest;
    .param p2, "cancellationSink"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p3, "res"    # Landroid/service/autofill/FillResponse;
    .param p4, "err"    # Ljava/lang/Throwable;

    .line 194
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onSaveRequest$3$com-android-server-autofill-RemoteFillService(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p1, "request"    # Landroid/service/autofill/SaveRequest;
    .param p2, "service"    # Landroid/service/autofill/IAutoFillService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "RemoteFillService"

    const-string v1, "calling onSaveRequest()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_b
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 221
    .local v0, "save":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/content/IntentSender;>;"
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/autofill/RemoteFillService$2;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p2, p1, v1}, Landroid/service/autofill/IAutoFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V

    .line 232
    return-object v0
.end method

.method synthetic lambda$onSaveRequest$4$com-android-server-autofill-RemoteFillService(Ljava/lang/Throwable;Landroid/content/IntentSender;)V
    .registers 6
    .param p1, "err"    # Ljava/lang/Throwable;
    .param p2, "res"    # Landroid/content/IntentSender;

    .line 235
    if-nez p1, :cond_e

    .line 236
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V

    goto :goto_1d

    .line 238
    :cond_e
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 239
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-interface {v0, v1, v2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 241
    :goto_1d
    return-void
.end method

.method synthetic lambda$onSaveRequest$5$com-android-server-autofill-RemoteFillService(Landroid/content/IntentSender;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "res"    # Landroid/content/IntentSender;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 234
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFillRequest(Landroid/service/autofill/FillRequest;)V
    .registers 8
    .param p1, "request"    # Landroid/service/autofill/FillRequest;

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 142
    .local v0, "cancellationSink":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/ICancellationSignal;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 143
    .local v1, "futureRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/CompletableFuture<Landroid/service/autofill/FillResponse;>;>;"
    new-instance v2, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v2}, Lcom/android/server/autofill/RemoteFillService;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 186
    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    .line 187
    .local v2, "connectThenFillRequest":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/service/autofill/FillResponse;>;"
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 189
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 190
    :try_start_21
    iput-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 191
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v4

    iput v4, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 192
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_33

    .line 194
    new-instance v3, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 214
    return-void

    .line 192
    :catchall_33
    move-exception v4

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v4
.end method

.method public onSaveRequest(Landroid/service/autofill/SaveRequest;)V
    .registers 6
    .param p1, "request"    # Landroid/service/autofill/SaveRequest;

    .line 217
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 233
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    .line 234
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 242
    return-void
.end method

.method onSavedPasswordCountRequest(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 245
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 246
    return-void
.end method

.method protected bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3

    .line 55
    check-cast p1, Landroid/service/autofill/IAutoFillService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->onServiceConnectionStatusChanged(Landroid/service/autofill/IAutoFillService;Z)V

    return-void
.end method

.method protected onServiceConnectionStatusChanged(Landroid/service/autofill/IAutoFillService;Z)V
    .registers 6
    .param p1, "service"    # Landroid/service/autofill/IAutoFillService;
    .param p2, "connected"    # Z

    .line 94
    :try_start_0
    invoke-interface {p1, p2}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 97
    goto :goto_27

    .line 95
    :catch_4
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception calling onConnectedStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteFillService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27
    return-void
.end method
