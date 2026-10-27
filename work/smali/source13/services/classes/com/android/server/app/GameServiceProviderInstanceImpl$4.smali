.class Lcom/android/server/app/GameServiceProviderInstanceImpl$4;
.super Landroid/app/TaskStackListener;
.source "GameServiceProviderInstanceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameServiceProviderInstanceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 117
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onTaskCreated$0$com-android-server-app-GameServiceProviderInstanceImpl$4(ILandroid/content/ComponentName;)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 125
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$monTaskCreated(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILandroid/content/ComponentName;)V

    .line 126
    return-void
.end method

.method synthetic lambda$onTaskFocusChanged$2$com-android-server-app-GameServiceProviderInstanceImpl$4(IZ)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 139
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$monTaskFocusChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;IZ)V

    .line 140
    return-void
.end method

.method synthetic lambda$onTaskRemoved$1$com-android-server-app-GameServiceProviderInstanceImpl$4(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 132
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$monTaskRemoved(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V

    .line 133
    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    if-nez p2, :cond_3

    .line 121
    return-void

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public onTaskFocusChanged(IZ)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 138
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public onTaskRemoved(I)V
    .registers 4
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method
