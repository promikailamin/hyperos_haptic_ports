.class public Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;
.super Ljava/lang/Object;
.source "BiometricSchedulerOperation.java"


# instance fields
.field final mCancelWatchdog:Ljava/lang/Runnable;

.field public final mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field public final mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field public mOnStartCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field public mState:I


# direct methods
.method public static synthetic $r8$lambda$pLN8qPDL5N-O1CjZrHzKFJ0E_uo(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmClientMonitor(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmState(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)V
    .registers 4

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 114
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 115
    iput p3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 116
    new-instance p1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mCancelWatchdog:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    const-string v1, "abort"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenNoneOf(Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 251
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isHalOperation()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 252
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    .line 254
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aborted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricSchedulerOperation"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 6

    const/4 v0, 0x5

    .line 280
    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenOneOf(Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 284
    :cond_e
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x3

    .line 285
    const-string v2, "BiometricSchedulerOperation"

    if-ne v0, v1, :cond_2a

    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot cancel - already invoked for operation: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 290
    :cond_2a
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    if-eqz v0, :cond_51

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    const/4 v1, 0x4

    if-ne v0, v1, :cond_35

    goto :goto_51

    .line 297
    :cond_35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Cancelling] Current client: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancel()V

    goto :goto_70

    .line 294
    :cond_51
    :goto_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cancelling] Current client (without start): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancelWithoutStarting(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 302
    :goto_70
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mCancelWatchdog:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final doStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Z
    .registers 7

    .line 201
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mOnStartCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p1

    .line 204
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x0

    const-string v2, "BiometricSchedulerOperation"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3b

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation marked for cancellation, cancelling now: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {p1, v0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 208
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of p1, p0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-eqz p1, :cond_34

    .line 209
    check-cast p0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 p1, 0x5

    .line 210
    invoke-interface {p0, p1, v1}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    goto :goto_3a

    .line 213
    :cond_34
    const-string/jumbo p0, "monitor cancelled but does not implement ErrorConsumer"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return v1

    .line 219
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isUnstartableHalOperation()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to start: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    .line 222
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {p1, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return v1

    :cond_63
    const/4 v0, 0x2

    .line 226
    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 227
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "started: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final varargs errorWhenNoneOf(Ljava/lang/String;[I)Z
    .registers 5

    .line 450
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_36

    .line 452
    const-string v0, "biometric.value_biometric_scheduler_operation_state_error_count"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": mState="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " must be one of "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 456
    const-string p1, "BiometricSchedulerOperation"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return v1
.end method

.method public final varargs errorWhenOneOf(Ljava/lang/String;[I)Z
    .registers 4

    .line 439
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 441
    const-string v0, "biometric.value_biometric_scheduler_operation_state_error_count"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": mState must not be "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 444
    const-string p1, "BiometricSchedulerOperation"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return p2
.end method

.method public getClientMonitor()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .registers 1

    .line 435
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-object p0
.end method

.method public getProtoEnum()I
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result p0

    return p0
.end method

.method public getSensorId()I
    .registers 1

    .line 327
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    return p0
.end method

.method public getTargetUserId()I
    .registers 1

    .line 337
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    return p0
.end method

.method public final getWrappedCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 2

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p0

    return-object p0
.end method

.method public final getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 4

    .line 313
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;-><init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    .line 322
    new-instance v1, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    filled-new-array {v0, p1, p0}, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v1
.end method

.method public final hasOperationAlreadyStarted()Z
    .registers 2

    .line 234
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isAcquisitionOperation()Z
    .registers 1

    .line 388
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of p0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    return p0
.end method

.method public isAuthenticationOrDetectionOperation()Z
    .registers 2

    .line 376
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 377
    instance-of p0, p0, Lcom/android/server/biometrics/sensors/DetectionConsumer;

    if-nez v0, :cond_d

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public isEnrollOperation()Z
    .registers 1

    .line 366
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of p0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;

    return p0
.end method

.method public isFinished()Z
    .registers 2

    .line 421
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isFor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Z
    .registers 2

    .line 342
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final isHalOperation()Z
    .registers 1

    .line 351
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    return p0
.end method

.method public isInterruptable()Z
    .registers 1

    .line 347
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->isInterruptable()Z

    move-result p0

    return p0
.end method

.method public isMarkedCanceling()Z
    .registers 2

    .line 426
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isMatchingRequestId(J)Z
    .registers 5

    .line 400
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 401
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public isMatchingToken(Landroid/os/IBinder;)Z
    .registers 2

    .line 406
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object p0

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isReadyToStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)I
    .registers 4

    .line 141
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    if-nez v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    return p0

    .line 142
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 144
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 145
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->waitForCookie(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    :cond_1d
    return v0
.end method

.method public isStartUserOperation()Z
    .registers 1

    .line 383
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of p0, p0, Lcom/android/server/biometrics/sensors/StartUserClient;

    return p0
.end method

.method public isStarted()Z
    .registers 2

    .line 411
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final isUnstartableHalOperation()Z
    .registers 2

    .line 355
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isHalOperation()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 356
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 357
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0()V
    .registers 7

    .line 117
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isFinished()Z

    move-result v0

    if-nez v0, :cond_44

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Watchdog Triggered]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSchedulerOperation"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 120
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 121
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v4

    const/4 v5, 0x5

    .line 120
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_33} :catch_34

    goto :goto_39

    .line 124
    :catch_34
    const-string v2, "Remote exception when trying to send error in cancel watchdog."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_39
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mOnStartCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 128
    invoke-interface {v1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_44
    return-void
.end method

.method public markCanceling()Z
    .registers 2

    .line 261
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isInterruptable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 262
    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    return v0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public markCancelingForWatchdog()V
    .registers 2

    const/4 v0, 0x1

    .line 269
    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Z
    .registers 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    const-string/jumbo v1, "start"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenNoneOf(Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 165
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->hasOperationAlreadyStarted()Z

    move-result p0

    return p0

    .line 168
    :cond_15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 170
    const-string v0, "biometric.value_biometric_scheduler_operation_state_error_count"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 171
    const-string v0, "BiometricSchedulerOperation"

    const-string/jumbo v1, "operation requires cookie"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->doStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Z

    move-result p0

    return p0
.end method

.method public startWithCookie(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)Z
    .registers 5

    .line 185
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_28

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mismatched cookie for operation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", received: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricSchedulerOperation"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_28
    const/4 p2, 0x4

    const/4 v0, 0x1

    .line 190
    filled-new-array {v1, p2, v0}, [I

    move-result-object p2

    const-string/jumbo v0, "start"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenNoneOf(Ljava/lang/String;[I)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 194
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->hasOperationAlreadyStarted()Z

    move-result p0

    return p0

    .line 197
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->doStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
