.class Landroid/app/TaskWindowingLayerRequestHandler$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "TaskWindowingLayerRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/TaskWindowingLayerRequestHandler;->createRemoteCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/os/IRemoteCallback;
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

    .line 79
    iput-object p1, p0, Landroid/app/TaskWindowingLayerRequestHandler$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/TaskWindowingLayerRequestHandler$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$sendResult$0(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 85
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendResult$1(Landroid/os/OutcomeReceiver;)V
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The current system windowing state is not appropriate to fulfill the request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendResult$2(Landroid/os/OutcomeReceiver;I)V
    .registers 5

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error, code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public blacklist sendResult(Landroid/os/Bundle;)V
    .registers 5

    .line 82
    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 83
    packed-switch p1, :pswitch_data_32

    .line 93
    iget-object v0, p0, Landroid/app/TaskWindowingLayerRequestHandler$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/TaskWindowingLayerRequestHandler$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/app/TaskWindowingLayerRequestHandler$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1}, Landroid/app/TaskWindowingLayerRequestHandler$1$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_31

    .line 88
    :pswitch_17
    iget-object p1, p0, Landroid/app/TaskWindowingLayerRequestHandler$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/app/TaskWindowingLayerRequestHandler$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/app/TaskWindowingLayerRequestHandler$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/app/TaskWindowingLayerRequestHandler$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 91
    goto :goto_31

    .line 85
    :pswitch_24
    iget-object p1, p0, Landroid/app/TaskWindowingLayerRequestHandler$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/app/TaskWindowingLayerRequestHandler$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/app/TaskWindowingLayerRequestHandler$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/app/TaskWindowingLayerRequestHandler$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    nop

    .line 97
    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_24
        :pswitch_17
    .end packed-switch
.end method
