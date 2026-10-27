.class final Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
.super Ljava/lang/Object;
.source "DeviceStateManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceStateRequestWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mRequest:Landroid/hardware/devicestate/DeviceStateRequest;


# direct methods
.method public static synthetic blacklist $r8$lambda$AvuoSy4ZoxMw0x2eoajUl9CARE0(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->lambda$notifyRequestCanceled$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$U72DUahuGtn2AaWKs-CAIdEF3uI(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->lambda$notifyRequestActive$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequest(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)Landroid/hardware/devicestate/DeviceStateRequest;
    .registers 1

    iget-object p0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateRequest;Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    invoke-direct {p0, p2, p3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->validateRequestWrapperParameters(Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V

    .line 439
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    .line 440
    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    .line 441
    iput-object p3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 442
    return-void
.end method

.method private synthetic blacklist lambda$notifyRequestActive$0()V
    .registers 3

    .line 449
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    invoke-interface {v0, v1}, Landroid/hardware/devicestate/DeviceStateRequest$Callback;->onRequestActivated(Landroid/hardware/devicestate/DeviceStateRequest;)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyRequestCanceled$1()V
    .registers 3

    .line 457
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    invoke-interface {v0, v1}, Landroid/hardware/devicestate/DeviceStateRequest$Callback;->onRequestCanceled(Landroid/hardware/devicestate/DeviceStateRequest;)V

    return-void
.end method

.method private blacklist validateRequestWrapperParameters(Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 462
    if-nez p1, :cond_d

    if-nez p2, :cond_5

    goto :goto_d

    .line 463
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback must be supplied with executor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 464
    :cond_d
    :goto_d
    if-nez p2, :cond_1a

    if-nez p1, :cond_12

    goto :goto_1a

    .line 465
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Executor must be supplied with callback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 467
    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method blacklist notifyRequestActive()V
    .registers 3

    .line 445
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    if-nez v0, :cond_5

    .line 446
    return-void

    .line 449
    :cond_5
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 450
    return-void
.end method

.method blacklist notifyRequestCanceled()V
    .registers 3

    .line 453
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mCallback:Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    if-nez v0, :cond_5

    .line 454
    return-void

    .line 457
    :cond_5
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method
