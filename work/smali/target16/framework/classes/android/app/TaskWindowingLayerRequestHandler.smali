.class public Landroid/app/TaskWindowingLayerRequestHandler;
.super Ljava/lang/Object;
.source "TaskWindowingLayerRequestHandler.java"


# static fields
.field public static final blacklist REMOTE_CALLBACK_RESULT_KEY:Ljava/lang/String; = "result"

.field public static final blacklist RESULT_APPROVED:I = 0x0

.field public static final blacklist RESULT_FAILED_BAD_STATE:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createRemoteCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/os/IRemoteCallback;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)",
            "Landroid/os/IRemoteCallback;"
        }
    .end annotation

    .line 79
    new-instance v0, Landroid/app/TaskWindowingLayerRequestHandler$1;

    invoke-direct {v0, p0, p1}, Landroid/app/TaskWindowingLayerRequestHandler$1;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-object v0
.end method

.method public static blacklist requestWindowingLayer(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/app/IAppTask;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;",
            "Landroid/app/IAppTask;",
            ")V"
        }
    .end annotation

    .line 69
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/TaskWindowingLayerRequestHandler;->createRemoteCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/os/IRemoteCallback;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Landroid/app/IAppTask;->requestWindowingLayer(ILandroid/os/IRemoteCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 72
    nop

    .line 73
    return-void

    .line 70
    :catch_9
    move-exception p0

    .line 71
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
