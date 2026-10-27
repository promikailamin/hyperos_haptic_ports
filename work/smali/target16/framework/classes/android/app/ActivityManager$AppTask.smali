.class public Landroid/app/ActivityManager$AppTask;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$AppTask$WindowingLayer;
    }
.end annotation


# static fields
.field public static final blacklist WINDOWING_LAYER_NORMAL_APP:I = 0x1

.field public static final blacklist WINDOWING_LAYER_PINNED:I = 0x2

.field public static final blacklist WINDOWING_LAYER_UNDEFINED:I


# instance fields
.field private greylist-max-o mAppTaskImpl:Landroid/app/IAppTask;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/app/IAppTask;)V
    .registers 2

    .line 6365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6366
    iput-object p1, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    .line 6367
    return-void
.end method


# virtual methods
.method public whitelist finishAndRemoveTask()V
    .registers 4

    .line 6373
    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_FINISH_ACTIVITY:Z

    if-eqz v0, :cond_25

    .line 6374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppTask#finishAndRemoveTask: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6375
    invoke-virtual {p0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 6374
    const-string v2, "Instrumentation"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6378
    :cond_25
    :try_start_25
    iget-object v0, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v0}, Landroid/app/IAppTask;->finishAndRemoveTask()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2c

    .line 6381
    nop

    .line 6382
    return-void

    .line 6379
    :catch_2c
    move-exception v0

    .line 6380
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 2

    .line 6391
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v0}, Landroid/app/IAppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 6392
    :catch_7
    move-exception v0

    .line 6393
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist moveTaskTo(Landroid/app/TaskLocation;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/TaskLocation;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/TaskLocation;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 6464
    iget-object v0, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-static {p1, p2, p3, v0}, Landroid/app/TaskMoveRequestHandler;->moveTaskTo(Landroid/app/TaskLocation;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/app/IAppTask;)V

    .line 6465
    return-void
.end method

.method public whitelist moveToFront()V
    .registers 4

    .line 6405
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 6406
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v0

    .line 6407
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6408
    iget-object v2, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v2, v0, v1}, Landroid/app/IAppTask;->moveToFront(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 6411
    nop

    .line 6412
    return-void

    .line 6409
    :catch_13
    move-exception v0

    .line 6410
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist requestWindowingLayer(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 6526
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6527
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6528
    iget-object v0, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-static {p1, p2, p3, v0}, Landroid/app/TaskWindowingLayerRequestHandler;->requestWindowingLayer(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/app/IAppTask;)V

    .line 6531
    return-void
.end method

.method public whitelist setExcludeFromRecents(Z)V
    .registers 3

    .line 6503
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v0, p1}, Landroid/app/IAppTask;->setExcludeFromRecents(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 6506
    nop

    .line 6507
    return-void

    .line 6504
    :catch_7
    move-exception p1

    .line 6505
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 11

    .line 6489
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 6490
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 6491
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    .line 6490
    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/Instrumentation;->execStartActivityFromAppTask(Landroid/content/Context;Landroid/os/IBinder;Landroid/app/IAppTask;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 6492
    return-void
.end method
