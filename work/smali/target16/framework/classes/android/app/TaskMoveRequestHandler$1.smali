.class Landroid/app/TaskMoveRequestHandler$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "TaskMoveRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/TaskMoveRequestHandler;->moveTaskTo(Landroid/app/TaskLocation;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/app/IAppTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 117
    iput-object p1, p0, Landroid/app/TaskMoveRequestHandler$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/TaskMoveRequestHandler$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist sendResult(Landroid/os/Bundle;)V
    .registers 6

    .line 119
    nop

    .line 120
    nop

    .line 121
    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    if-nez v0, :cond_1c

    .line 123
    const-string v1, "display_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 124
    const-string v2, "bounds"

    const-class v3, Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    goto :goto_1e

    .line 122
    :cond_1c
    const/4 v1, -0x1

    const/4 p1, 0x0

    .line 126
    :goto_1e
    iget-object v2, p0, Landroid/app/TaskMoveRequestHandler$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/app/TaskMoveRequestHandler$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-static {v2, v3, v1, p1, v0}, Landroid/app/TaskMoveRequestHandler;->-$$Nest$smnotifyTaskMoveRequestResult(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILandroid/graphics/Rect;I)V

    .line 127
    return-void
.end method
