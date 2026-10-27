.class public Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;
.super Ljava/lang/Object;
.source "BiometricSchedulerOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$OperationState;
    }
.end annotation


# static fields
.field private static final CANCEL_WATCHDOG_DELAY_MS:I = 0xbb8

.field protected static final STATE_FINISHED:I = 0x5

.field protected static final STATE_STARTED:I = 0x2

.field protected static final STATE_STARTED_CANCELING:I = 0x3

.field protected static final STATE_WAITING_FOR_COOKIE:I = 0x4

.field protected static final STATE_WAITING_IN_QUEUE:I = 0x0

.field protected static final STATE_WAITING_IN_QUEUE_CANCELING:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "BiometricSchedulerOperation"


# instance fields
.field final mCancelWatchdog:Ljava/lang/Runnable;

.field private final mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field private final mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field private final mIsDebuggable:Ljava/util/function/BooleanSupplier;

.field private mOnStartCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field private mState:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmClientMonitor(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 4
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)V

    .line 106
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)V
    .registers 5
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .param p3, "state"    # I

    .line 122
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;ILjava/util/function/BooleanSupplier;)V

    .line 123
    return-void
.end method

.method private constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;ILjava/util/function/BooleanSupplier;)V
    .registers 6
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .param p3, "state"    # I
    .param p4, "isDebuggable"    # Ljava/util/function/BooleanSupplier;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 132
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 133
    iput p3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 134
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mIsDebuggable:Ljava/util/function/BooleanSupplier;

    .line 135
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mCancelWatchdog:Ljava/lang/Runnable;

    .line 142
    return-void
.end method

.method constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;Ljava/util/function/BooleanSupplier;)V
    .registers 5
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .param p3, "isDebuggable"    # Ljava/util/function/BooleanSupplier;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;ILjava/util/function/BooleanSupplier;)V

    .line 115
    return-void
.end method

.method private doStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Z
    .registers 8
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 214
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mOnStartCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 215
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v0

    .line 217
    .local v0, "cb":Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "BiometricSchedulerOperation"

    if-ne v1, v2, :cond_3d

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Operation marked for cancellation, cancelling now: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 221
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v2, v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-eqz v2, :cond_36

    .line 222
    check-cast v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 223
    .local v1, "errorConsumer":Lcom/android/server/biometrics/sensors/ErrorConsumer;
    const/4 v2, 0x5

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 225
    .end local v1    # "errorConsumer":Lcom/android/server/biometrics/sensors/ErrorConsumer;
    goto :goto_3c

    .line 226
    :cond_36
    const-string/jumbo v1, "monitor cancelled but does not implement ErrorConsumer"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_3c
    return v3

    .line 232
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isUnstartableHalOperation()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v1, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    .line 235
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {v0, v1, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 236
    return v3

    .line 239
    :cond_67
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 240
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "started: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return v2
.end method

.method private varargs errorWhenNoneOf(Ljava/lang/String;[I)Z
    .registers 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "states"    # [I

    .line 455
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 456
    .local v0, "isError":Z
    if-eqz v0, :cond_45

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "err":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mIsDebuggable:Ljava/util/function/BooleanSupplier;

    invoke-interface {v2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 461
    const-string v2, "BiometricSchedulerOperation"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 459
    :cond_3f
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    .end local v1    # "err":Ljava/lang/String;
    :cond_45
    :goto_45
    return v0
.end method

.method private varargs errorWhenOneOf(Ljava/lang/String;[I)Z
    .registers 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "states"    # [I

    .line 443
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 444
    .local v0, "isError":Z
    if-eqz v0, :cond_35

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": mState must not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "err":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mIsDebuggable:Ljava/util/function/BooleanSupplier;

    invoke-interface {v2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 449
    const-string v2, "BiometricSchedulerOperation"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 447
    :cond_2f
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    .end local v1    # "err":Ljava/lang/String;
    :cond_35
    :goto_35
    return v0
.end method

.method private getWrappedCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 2

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v0

    return-object v0
.end method

.method private getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 7
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 322
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;-><init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    .line 331
    .local v0, "destroyCallback":Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    new-instance v1, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v1
.end method

.method private isHalOperation()Z
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    return v0
.end method

.method private isUnstartableHalOperation()Z
    .registers 3

    .line 364
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isHalOperation()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 365
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 366
    .local v0, "client":Lcom/android/server/biometrics/sensors/HalClientMonitor;, "Lcom/android/server/biometrics/sensors/HalClientMonitor<*>;"
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_12

    .line 367
    const/4 v1, 0x1

    return v1

    .line 370
    .end local v0    # "client":Lcom/android/server/biometrics/sensors/HalClientMonitor;, "Lcom/android/server/biometrics/sensors/HalClientMonitor<*>;"
    :cond_12
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abort()V
    .registers 4

    .line 253
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    const-string v1, "abort"

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenNoneOf(Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 257
    return-void

    .line 260
    :cond_f
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isHalOperation()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 261
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    .line 263
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aborted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSchedulerOperation"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    nop

    :array_40
    .array-data 4
        0x0
        0x4
        0x1
    .end array-data
.end method

.method public cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 7
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 285
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    const-string v2, "cancel"

    invoke-direct {p0, v2, v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenOneOf(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 286
    return-void

    .line 289
    :cond_10
    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 290
    .local v1, "currentState":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isInterruptable()Z

    move-result v2

    const-string v3, "BiometricSchedulerOperation"

    if-nez v2, :cond_31

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot cancel - operation not interruptable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 294
    :cond_31
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4b

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot cancel - already invoked for operation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 299
    :cond_4b
    iput v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 300
    if-eqz v1, :cond_75

    if-eq v1, v0, :cond_75

    const/4 v0, 0x4

    if-ne v1, v0, :cond_55

    goto :goto_75

    .line 306
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cancelling] Current client: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/Interruptable;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/Interruptable;->cancel()V

    goto :goto_98

    .line 303
    :cond_75
    :goto_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cancelling] Current client (without start): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/Interruptable;

    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/server/biometrics/sensors/Interruptable;->cancelWithoutStarting(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 311
    :goto_98
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mCancelWatchdog:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    return-void
.end method

.method public getClientMonitor()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-object v0
.end method

.method public getProtoEnum()I
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result v0

    return v0
.end method

.method public getSensorId()I
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    return v0
.end method

.method public getTargetUserId()I
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v0

    return v0
.end method

.method public isAcquisitionOperation()Z
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    return v0
.end method

.method public isAuthenticateOperation()Z
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    return v0
.end method

.method public isAuthenticationOrDetectionOperation()Z
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 386
    .local v1, "isAuthentication":Z
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/DetectionConsumer;

    .line 387
    .local v0, "isDetection":Z
    if-nez v1, :cond_d

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v2, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v2, 0x1

    :goto_e
    return v2
.end method

.method public isCanceling()Z
    .registers 3

    .line 420
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isEnrollOperation()Z
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/EnrollClient;

    return v0
.end method

.method public isFinished()Z
    .registers 3

    .line 425
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isFor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Z
    .registers 3
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 351
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isInterruptable()Z
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/Interruptable;

    return v0
.end method

.method public isMarkedCanceling()Z
    .registers 3

    .line 430
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isMatchingRequestId(J)Z
    .registers 5
    .param p1, "requestId"    # J

    .line 404
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 405
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 404
    :goto_16
    return v0
.end method

.method public isMatchingToken(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 410
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isReadyToStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)I
    .registers 5
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 152
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    if-nez v0, :cond_8

    goto :goto_a

    .line 161
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    .line 154
    .local v0, "cookie":I
    if-eqz v0, :cond_1d

    .line 155
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 156
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->waitForCookie(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 158
    :cond_1d
    return v0
.end method

.method public isStarted()Z
    .registers 3

    .line 415
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method synthetic lambda$new$0$com-android-server-biometrics-sensors-BiometricSchedulerOperation()V
    .registers 4

    .line 136
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Watchdog Triggered]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSchedulerOperation"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mOnStartCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    const/4 v2, 0x0

    .line 139
    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 141
    :cond_2a
    return-void
.end method

.method public markCanceling()Z
    .registers 2

    .line 270
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isInterruptable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 271
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 272
    return v0

    .line 274
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Z
    .registers 4
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 172
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    const-string/jumbo v1, "start"

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenNoneOf(Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 176
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    if-eqz v0, :cond_30

    .line 180
    const-string/jumbo v0, "operation requires cookie"

    .line 181
    .local v0, "err":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mIsDebuggable:Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 184
    const-string v1, "BiometricSchedulerOperation"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 182
    :cond_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    .end local v0    # "err":Ljava/lang/String;
    :cond_30
    :goto_30
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->doStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Z

    move-result v0

    return v0

    nop

    :array_36
    .array-data 4
        0x0
        0x4
        0x1
    .end array-data
.end method

.method public startWithCookie(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)Z
    .registers 6
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .param p2, "cookie"    # I

    .line 198
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_2c

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched cookie for operation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", received: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricSchedulerOperation"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return v1

    .line 203
    :cond_2c
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_42

    const-string/jumbo v2, "start"

    invoke-direct {p0, v2, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenNoneOf(Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 207
    return v1

    .line 210
    :cond_3c
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->doStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Z

    move-result v0

    return v0

    nop

    :array_42
    .array-data 4
        0x0
        0x4
        0x1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
