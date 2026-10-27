.class public Landroid/app/TaskMoveRequestHandler;
.super Ljava/lang/Object;
.source "TaskMoveRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/TaskMoveRequestHandler$RequestResult;
    }
.end annotation


# static fields
.field public static final blacklist REMOTE_CALLBACK_BOUNDS_KEY:Ljava/lang/String; = "bounds"

.field public static final blacklist REMOTE_CALLBACK_DISPLAY_ID_KEY:Ljava/lang/String; = "display_id"

.field public static final blacklist REMOTE_CALLBACK_RESULT_KEY:Ljava/lang/String; = "result"

.field public static final blacklist RESULT_APPROVED:I = 0x0

.field public static final blacklist RESULT_FAILED_BAD_BOUNDS:I = 0x4

.field public static final blacklist RESULT_FAILED_BAD_STATE:I = 0x1

.field public static final blacklist RESULT_FAILED_IMMOVABLE_TASK:I = 0x5

.field public static final blacklist RESULT_FAILED_NONEXISTENT_DISPLAY:I = 0x3

.field public static final blacklist RESULT_FAILED_NO_PERMISSIONS:I = 0x6

.field public static final blacklist RESULT_FAILED_UNABLE_TO_PLACE_TASK:I = 0x2


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnotifyTaskMoveRequestResult(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILandroid/graphics/Rect;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/TaskMoveRequestHandler;->notifyTaskMoveRequestResult(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILandroid/graphics/Rect;I)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTaskMoveRequestResult$0(Landroid/os/OutcomeReceiver;ILandroid/graphics/Rect;)V
    .registers 4

    .line 158
    new-instance v0, Landroid/app/TaskLocation;

    invoke-direct {v0, p1, p2}, Landroid/app/TaskLocation;-><init>(ILandroid/graphics/Rect;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTaskMoveRequestResult$1(Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The windowing mode currently present at target screen is not feasible forplacing freeform windows."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTaskMoveRequestResult$2(Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 167
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The task cannot be placed on the target display."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTaskMoveRequestResult$3(Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The target display does not exist."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTaskMoveRequestResult$4(Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The target bounds were impossible to recover to valid ones."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTaskMoveRequestResult$5(Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The target task had been marked as not movable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTaskMoveRequestResult$6(Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 183
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not hold the permission to reposition its windows."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTaskMoveRequestResult$7(Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static blacklist moveTaskTo(Landroid/app/TaskLocation;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/app/IAppTask;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/TaskLocation;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/TaskLocation;",
            "Ljava/lang/Exception;",
            ">;",
            "Landroid/app/IAppTask;",
            ")V"
        }
    .end annotation

    .line 115
    invoke-static {p0, p1, p2}, Landroid/app/TaskMoveRequestHandler;->preValidateTaskMoveRequest(Landroid/app/TaskLocation;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 117
    :try_start_3
    new-instance v0, Landroid/app/TaskMoveRequestHandler$1;

    invoke-direct {v0, p1, p2}, Landroid/app/TaskMoveRequestHandler$1;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 129
    nop

    .line 130
    invoke-virtual {p0}, Landroid/app/TaskLocation;->getDisplayId()I

    move-result p1

    invoke-virtual {p0}, Landroid/app/TaskLocation;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 129
    invoke-interface {p3, p1, p0, v0}, Landroid/app/IAppTask;->moveTaskTo(ILandroid/graphics/Rect;Landroid/os/IRemoteCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_16

    .line 133
    nop

    .line 134
    return-void

    .line 131
    :catch_16
    move-exception p0

    .line 132
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist notifyTaskMoveRequestResult(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILandroid/graphics/Rect;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/TaskLocation;",
            "Ljava/lang/Exception;",
            ">;I",
            "Landroid/graphics/Rect;",
            "I)V"
        }
    .end annotation

    .line 156
    packed-switch p4, :pswitch_data_4c

    .line 187
    new-instance p2, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda7;

    invoke-direct {p2, p1}, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda7;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4b

    .line 183
    :pswitch_c
    new-instance p2, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda6;

    invoke-direct {p2, p1}, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda6;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 185
    goto :goto_4b

    .line 179
    :pswitch_15
    new-instance p2, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda5;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 181
    goto :goto_4b

    .line 175
    :pswitch_1e
    new-instance p2, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1}, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda4;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 177
    goto :goto_4b

    .line 171
    :pswitch_27
    new-instance p2, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 173
    goto :goto_4b

    .line 167
    :pswitch_30
    new-instance p2, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 169
    goto :goto_4b

    .line 162
    :pswitch_39
    new-instance p2, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 165
    goto :goto_4b

    .line 158
    :pswitch_42
    new-instance p4, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {p4, p1, p2, p3}, Landroid/app/TaskMoveRequestHandler$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;ILandroid/graphics/Rect;)V

    invoke-interface {p0, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 160
    nop

    .line 190
    :goto_4b
    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_42
        :pswitch_39
        :pswitch_30
        :pswitch_27
        :pswitch_1e
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

.method private static blacklist preValidateTaskMoveRequest(Landroid/app/TaskLocation;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
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

    .line 145
    const-string v0, "The location provided is null."

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    const-string p0, "The executor provided is null."

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    const-string p0, "The callback provided is null."

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    return-void
.end method
