.class public Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"


# instance fields
.field public final mFuture:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public static synthetic $r8$lambda$77gbTbhYjk5diFIwC009toAufDc(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->lambda$onConnectionInfeasible$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Fk0yMktu1UZJCKPkdoPuQ1aR64M(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->lambda$onVerificationIncompleteReceived$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UFI7DyWWkUWGQgnVQWbHVX1HkuM(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->lambda$onTimeout$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZYFrf8mj-fip46gOPgXtY_iguWA(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->lambda$onDeveloperVerificationSkipped$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$a9ZoDFqHbExS4COa8cNZUwqslWs(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->lambda$onVerificationBypassedReceived$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$fwM-WN5kVzKzxJUk1qZ9atWjDv4(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->lambda$onConnectionFailed$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$xfrYFZOMOheXoYtA8DVgybqa8VQ(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;Landroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->lambda$onVerificationCompleteReceived$4(Landroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/concurrent/CompletableFuture;)V
    .registers 3

    .line 3405
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3406
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onConnectionFailed$2()V
    .registers 4

    .line 3473
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDeveloperVerificationStatusInternal(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->setInternalStatus(I)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 3475
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v0

    monitor-enter v0

    .line 3476
    :try_start_11
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDeveloperVerificationStatusInternal(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationFinished(Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;)V

    .line 3477
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_64

    .line 3478
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmCurrentVerificationPolicy(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_37

    .line 3480
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofSuccess()Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 3484
    :cond_37
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->shouldAllowDeveloperVerificationEmergencyBypass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 3485
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->setDeveloperVerificationBypassedForEmergency()V

    return-void

    .line 3491
    :cond_47
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mshouldSendUserActionForVerification(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 3492
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$msendDeveloperVerificationUserAction(Lcom/android/server/pm/PackageInstallerSession;ILjava/util/concurrent/CompletableFuture;)V

    return-void

    .line 3494
    :cond_58
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    const-string v0, "A verifier agent is available on device but cannot be connected."

    .line 3495
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofFailure(ILjava/lang/String;)Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object v0

    .line 3494
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catchall_64
    move-exception p0

    .line 3477
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public final synthetic lambda$onConnectionInfeasible$1()V
    .registers 4

    .line 3438
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDeveloperVerificationStatusInternal(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->setInternalStatus(I)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 3440
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v0

    monitor-enter v0

    .line 3441
    :try_start_11
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDeveloperVerificationStatusInternal(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationFinished(Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;)V

    .line 3442
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_64

    .line 3443
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmCurrentVerificationPolicy(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_37

    .line 3445
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofSuccess()Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 3449
    :cond_37
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->shouldAllowDeveloperVerificationEmergencyBypass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 3450
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->setDeveloperVerificationBypassedForEmergency()V

    return-void

    .line 3456
    :cond_47
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mshouldSendUserActionForVerification(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 3457
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$msendDeveloperVerificationUserAction(Lcom/android/server/pm/PackageInstallerSession;ILjava/util/concurrent/CompletableFuture;)V

    return-void

    .line 3459
    :cond_58
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    const-string v0, "A verifier agent is specified on device but cannot be connected because of unknown error."

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofFailure(ILjava/lang/String;)Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catchall_64
    move-exception p0

    .line 3442
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public final synthetic lambda$onDeveloperVerificationSkipped$0()V
    .registers 2

    .line 3413
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofSuccess()Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic lambda$onTimeout$3()V
    .registers 4

    .line 3520
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDeveloperVerificationStatusInternal(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->setInternalStatus(I)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 3522
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v0

    monitor-enter v0

    .line 3523
    :try_start_11
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDeveloperVerificationStatusInternal(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationFinished(Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;)V

    .line 3524
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_64

    .line 3525
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmCurrentVerificationPolicy(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_37

    .line 3527
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofSuccess()Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 3531
    :cond_37
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->shouldAllowDeveloperVerificationEmergencyBypass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 3532
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->setDeveloperVerificationBypassedForEmergency()V

    return-void

    .line 3538
    :cond_47
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mshouldSendUserActionForVerification(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 3539
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$msendDeveloperVerificationUserAction(Lcom/android/server/pm/PackageInstallerSession;ILjava/util/concurrent/CompletableFuture;)V

    return-void

    .line 3541
    :cond_58
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    const-string v0, "Verification timed out; missing a response from the verifier within the time limit"

    .line 3542
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofFailure(ILjava/lang/String;)Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object v0

    .line 3541
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catchall_64
    move-exception p0

    .line 3524
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public final synthetic lambda$onVerificationBypassedReceived$6()V
    .registers 2

    .line 3667
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofSuccess()Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic lambda$onVerificationCompleteReceived$4(Landroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V
    .registers 7

    .line 3559
    invoke-virtual {p1}, Landroid/content/pm/verify/developer/DeveloperVerificationStatus;->isVerified()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 3562
    :goto_b
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDeveloperVerificationStatusInternal(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->setInternalStatus(I)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 3563
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDeveloperVerificationStatusInternal(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v0

    .line 3564
    invoke-virtual {p1}, Landroid/content/pm/verify/developer/DeveloperVerificationStatus;->getAppMetadataVerificationStatus()I

    move-result v3

    .line 3563
    invoke-virtual {v0, v3}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->setAppMetadataVerificationStatus(I)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 3565
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDeveloperVerificationStatusInternal(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v0

    .line 3566
    invoke-virtual {p1}, Landroid/content/pm/verify/developer/DeveloperVerificationStatus;->isLiteVerification()Z

    move-result v3

    .line 3565
    invoke-virtual {v0, v3}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->setLiteVerification(Z)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 3567
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0, p2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmDeveloperVerificationExtensionResponse(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/PersistableBundle;)V

    .line 3568
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object p2

    monitor-enter p2

    .line 3569
    :try_start_3a
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDeveloperVerificationStatusInternal(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationFinished(Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;)V

    .line 3570
    monitor-exit p2
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_bb

    .line 3571
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmCurrentVerificationPolicy(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-nez p2, :cond_60

    .line 3573
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofSuccess()Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 3576
    :cond_60
    invoke-virtual {p1}, Landroid/content/pm/verify/developer/DeveloperVerificationStatus;->isVerified()Z

    move-result p2

    if-eqz p2, :cond_70

    .line 3578
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofSuccess()Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 3582
    :cond_70
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->shouldAllowDeveloperVerificationEmergencyBypass(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_80

    .line 3583
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->setDeveloperVerificationBypassedForEmergency()V

    return-void

    .line 3589
    :cond_80
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mshouldSendUserActionForVerification(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    move-result p2

    if-eqz p2, :cond_90

    .line 3590
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1, v2, p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$msendDeveloperVerificationUserAction(Lcom/android/server/pm/PackageInstallerSession;ILjava/util/concurrent/CompletableFuture;)V

    return-void

    .line 3593
    :cond_90
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Verifier rejected the installation"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3594
    invoke-virtual {p1}, Landroid/content/pm/verify/developer/DeveloperVerificationStatus;->getFailureMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 3595
    const-string v0, " with message: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/verify/developer/DeveloperVerificationStatus;->getFailureMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3597
    :cond_ad
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 3599
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3597
    invoke-static {v2, p1}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofFailure(ILjava/lang/String;)Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catchall_bb
    move-exception p0

    .line 3570
    :try_start_bc
    monitor-exit p2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw p0
.end method

.method public final synthetic lambda$onVerificationIncompleteReceived$5(I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    move p1, v1

    goto :goto_7

    :cond_6
    move p1, v0

    :goto_7
    if-eqz p1, :cond_b

    const/4 v2, 0x4

    goto :goto_c

    :cond_b
    const/4 v2, 0x3

    .line 3615
    :goto_c
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDeveloperVerificationStatusInternal(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->setInternalStatus(I)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 3616
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v2

    monitor-enter v2

    .line 3617
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDeveloperVerificationStatusInternal(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationFinished(Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;)V

    .line 3618
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_87

    .line 3619
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmCurrentVerificationPolicy(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_42

    .line 3621
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofSuccess()Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 3625
    :cond_42
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->shouldAllowDeveloperVerificationEmergencyBypass(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 3626
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->setDeveloperVerificationBypassedForEmergency()V

    return-void

    .line 3631
    :cond_52
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Verification cannot be completed because of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_62

    .line 3636
    const-string/jumbo p1, "unavailable network."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 3640
    :cond_62
    const-string/jumbo p1, "unknown reasons."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 3642
    :goto_69
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mshouldSendUserActionForVerification(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 3643
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1, v1, p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$msendDeveloperVerificationUserAction(Lcom/android/server/pm/PackageInstallerSession;ILjava/util/concurrent/CompletableFuture;)V

    return-void

    .line 3645
    :cond_79
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 3650
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3646
    invoke-static {v1, p1}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofFailure(ILjava/lang/String;)Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object p1

    .line 3645
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catchall_87
    move-exception p0

    .line 3618
    :try_start_88
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p0
.end method

.method public onConnectionFailed()V
    .registers 3

    .line 3472
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmHandler(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConnectionInfeasible()V
    .registers 3

    .line 3437
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmHandler(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDeveloperVerificationSkipped()V
    .registers 3

    .line 3413
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmHandler(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTimeout()V
    .registers 4

    .line 3518
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDeveloperVerifierController(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->notifyVerificationTimeout(II)V

    .line 3519
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmHandler(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTimeoutExtensionRequested()V
    .registers 2

    .line 3508
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v0

    monitor-enter v0

    .line 3509
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationTimeoutExtensionRequested()V

    .line 3510
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public onVerificationBypassedReceived(I)V
    .registers 5

    .line 3660
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v0

    monitor-enter v0

    .line 3661
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDeveloperVerificationStatusInternal(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationFinished(Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;)V

    .line 3662
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationBypassed(I)V

    .line 3663
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_2f

    .line 3664
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmHandler(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_2f
    move-exception p0

    .line 3663
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public onVerificationCompleteReceived(Landroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V
    .registers 5

    .line 3558
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmHandler(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;Landroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVerificationIncompleteReceived(I)V
    .registers 4

    .line 3609
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmHandler(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVerificationPolicyOverridden(I)Z
    .registers 3

    .line 3422
    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->isValidVerificationPolicy(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 3425
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmCurrentVerificationPolicy(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3426
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v0

    monitor-enter v0

    .line 3427
    :try_start_18
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationPolicyOverridden(I)V

    .line 3428
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final setDeveloperVerificationBypassedForEmergency()V
    .registers 4

    .line 3677
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v0

    monitor-enter v0

    .line 3678
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmMetrics(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/SessionMetrics;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/SessionMetrics;->onDeveloperVerificationBypassed(I)V

    .line 3680
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_1c

    .line 3681
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofSuccess()Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catchall_1c
    move-exception p0

    .line 3680
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method
