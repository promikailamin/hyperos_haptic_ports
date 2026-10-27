.class final Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallbackHolder;
.super Landroid/companion/datatransfer/continuity/IHandoffRequestCallback$Stub;
.source "TaskContinuityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/datatransfer/continuity/TaskContinuityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandoffRequestCallbackHolder"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$Fyz9I4I7Y5-ObpId0gtMo8wYzds(Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallbackHolder;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallbackHolder;->lambda$onHandoffRequestFinished$0(III)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/companion/datatransfer/continuity/TaskContinuityManager;Ljava/util/concurrent/Executor;Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Landroid/companion/datatransfer/continuity/IHandoffRequestCallback$Stub;-><init>()V

    .line 236
    iput-object p2, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallbackHolder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 237
    iput-object p3, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallbackHolder;->mCallback:Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallback;

    .line 238
    return-void
.end method

.method private synthetic blacklist lambda$onHandoffRequestFinished$0(III)V
    .registers 5

    .line 246
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallbackHolder;->mCallback:Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallback;->onHandoffRequestFinished(III)V

    return-void
.end method


# virtual methods
.method public blacklist onHandoffRequestFinished(III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallbackHolder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallbackHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallbackHolder$$ExternalSyntheticLambda0;-><init>(Landroid/companion/datatransfer/continuity/TaskContinuityManager$HandoffRequestCallbackHolder;III)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method
