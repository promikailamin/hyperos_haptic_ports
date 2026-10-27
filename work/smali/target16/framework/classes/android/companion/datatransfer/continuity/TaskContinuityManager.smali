.class public Landroid/companion/datatransfer/continuity/TaskContinuityManager;
.super Ljava/lang/Object;
.source "TaskContinuityManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;,
        Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;,
        Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallbackHolder;,
        Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallback;,
        Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestResultCode;
    }
.end annotation


# static fields
.field public static final blacklist HANDOFF_REQUEST_RESULT_FAILURE_DEVICE_NOT_FOUND:I = 0x5

.field public static final blacklist HANDOFF_REQUEST_RESULT_FAILURE_NO_DATA_PROVIDED_BY_TASK:I = 0x2

.field public static final blacklist HANDOFF_REQUEST_RESULT_FAILURE_OTHER_INTERNAL_ERROR:I = 0x6

.field public static final blacklist HANDOFF_REQUEST_RESULT_FAILURE_SENDER_LOST_CONNECTION:I = 0x3

.field public static final blacklist HANDOFF_REQUEST_RESULT_FAILURE_TASK_NOT_FOUND:I = 0x1

.field public static final blacklist HANDOFF_REQUEST_RESULT_FAILURE_TIMEOUT:I = 0x4

.field public static final blacklist HANDOFF_REQUEST_RESULT_SUCCESS:I


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mListenerHolder:Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;

.field private final blacklist mService:Landroid/companion/datatransfer/continuity/ITaskContinuityManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/companion/datatransfer/continuity/TaskContinuityManager;)Landroid/companion/datatransfer/continuity/ITaskContinuityManager;
    .registers 1

    iget-object p0, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager;->mService:Landroid/companion/datatransfer/continuity/ITaskContinuityManager;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/companion/datatransfer/continuity/ITaskContinuityManager;)V
    .registers 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager;->mService:Landroid/companion/datatransfer/continuity/ITaskContinuityManager;

    .line 120
    new-instance p1, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;

    invoke-direct {p1, p0, p2}, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;-><init>(Landroid/companion/datatransfer/continuity/TaskContinuityManager;Landroid/companion/datatransfer/continuity/ITaskContinuityManager;)V

    iput-object p1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager;->mListenerHolder:Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;

    .line 121
    return-void
.end method


# virtual methods
.method public blacklist registerRemoteTaskListener(Ljava/util/concurrent/Executor;Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;)V
    .registers 4

    .line 166
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :try_start_6
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager;->mListenerHolder:Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;

    invoke-virtual {v0, p1, p2}, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->registerListener(Ljava/util/concurrent/Executor;Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 175
    nop

    .line 176
    return-void

    .line 173
    :catch_d
    move-exception p1

    .line 174
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist requestHandoff(IILjava/util/concurrent/Executor;Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallback;)V
    .registers 6

    .line 215
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :try_start_6
    new-instance v0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallbackHolder;

    invoke-direct {v0, p0, p3, p4}, Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallbackHolder;-><init>(Landroid/companion/datatransfer/continuity/TaskContinuityManager;Ljava/util/concurrent/Executor;Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallback;)V

    .line 222
    iget-object p3, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager;->mService:Landroid/companion/datatransfer/continuity/ITaskContinuityManager;

    invoke-interface {p3, p1, p2, v0}, Landroid/companion/datatransfer/continuity/ITaskContinuityManager;->requestHandoff(IILandroid/companion/datatransfer/continuity/IHandoffRequestCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    .line 225
    nop

    .line 226
    return-void

    .line 223
    :catch_12
    move-exception p1

    .line 224
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist unregisterRemoteTaskListener(Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;)V
    .registers 3

    .line 188
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :try_start_3
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager;->mListenerHolder:Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;

    invoke-virtual {v0, p1}, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->unregisterListener(Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 194
    nop

    .line 195
    return-void

    .line 192
    :catch_a
    move-exception p1

    .line 193
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
