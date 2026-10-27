.class Landroid/app/appfunctions/AppFunctionManager$1;
.super Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;
.source "AppFunctionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/appfunctions/AppFunctionManager;->executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/app/appfunctions/AppFunctionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 505
    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onError$2(Landroid/os/OutcomeReceiver;Landroid/app/appfunctions/AppFunctionException;)V
    .registers 2

    .line 524
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$0(Landroid/os/OutcomeReceiver;Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .registers 2

    .line 509
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSuccess$1(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V
    .registers 4

    .line 515
    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    .line 518
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x7d0

    invoke-direct {v0, v1, p1}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 515
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/app/appfunctions/AppFunctionException;)V
    .registers 5

    .line 524
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/app/appfunctions/AppFunctionManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/app/appfunctions/AppFunctionManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/app/appfunctions/AppFunctionException;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method

.method public blacklist onSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .registers 5

    .line 509
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/app/appfunctions/AppFunctionManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/app/appfunctions/AppFunctionManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_d

    .line 519
    goto :goto_1a

    .line 510
    :catch_d
    move-exception p1

    .line 513
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/app/appfunctions/AppFunctionManager$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1}, Landroid/app/appfunctions/AppFunctionManager$1$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 520
    :goto_1a
    return-void
.end method
