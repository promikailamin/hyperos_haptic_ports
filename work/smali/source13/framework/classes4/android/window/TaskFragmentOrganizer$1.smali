.class Landroid/window/TaskFragmentOrganizer$1;
.super Landroid/window/ITaskFragmentOrganizer$Stub;
.source "TaskFragmentOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/TaskFragmentOrganizer;


# direct methods
.method constructor blacklist <init>(Landroid/window/TaskFragmentOrganizer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/window/TaskFragmentOrganizer;

    .line 209
    iput-object p1, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-direct {p0}, Landroid/window/ITaskFragmentOrganizer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onActivityReparentToTask$5$android-window-TaskFragmentOrganizer$1(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "activityIntent"    # Landroid/content/Intent;
    .param p3, "activityToken"    # Landroid/os/IBinder;

    .line 253
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/window/TaskFragmentOrganizer;->onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V

    return-void
.end method

.method synthetic blacklist lambda$onMiuiEmbedStateChanged$6$android-window-TaskFragmentOrganizer$1(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "embedState"    # I

    .line 262
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskFragmentOrganizer;->onMiuiEmbedStateChanged(Landroid/os/IBinder;I)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentAppeared$0$android-window-TaskFragmentOrganizer$1(Landroid/window/TaskFragmentInfo;)V
    .registers 3
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 213
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentError$4$android-window-TaskFragmentOrganizer$1(Landroid/os/Bundle;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "errorBundle"    # Landroid/os/Bundle;
    .param p2, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 240
    const-string/jumbo v0, "task_fragment_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentInfo;

    .line 242
    .local v0, "info":Landroid/window/TaskFragmentInfo;
    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    .line 244
    const-string/jumbo v2, "operation_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 245
    const-string v3, "fragment_exception"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 242
    invoke-virtual {v1, p2, v0, v2, v3}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentError(Landroid/os/IBinder;Landroid/window/TaskFragmentInfo;ILjava/lang/Throwable;)V

    .line 246
    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentInfoChanged$1$android-window-TaskFragmentOrganizer$1(Landroid/window/TaskFragmentInfo;)V
    .registers 3
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 219
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentParentInfoChanged$3$android-window-TaskFragmentOrganizer$1(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 232
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentVanished$2$android-window-TaskFragmentOrganizer$1(Landroid/window/TaskFragmentInfo;)V
    .registers 3
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 225
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V

    return-void
.end method

.method public blacklist onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "activityIntent"    # Landroid/content/Intent;
    .param p3, "activityToken"    # Landroid/os/IBinder;

    .line 252
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;-><init>(Landroid/window/TaskFragmentOrganizer$1;ILandroid/content/Intent;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method

.method public blacklist onMiuiEmbedStateChanged(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "embedState"    # I

    .line 261
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda4;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/os/IBinder;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method

.method public blacklist onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V
    .registers 4
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 212
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda5;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/window/TaskFragmentInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method public blacklist onTaskFragmentError(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p2, "errorBundle"    # Landroid/os/Bundle;

    .line 239
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/os/Bundle;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method public blacklist onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V
    .registers 4
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 218
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda6;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/window/TaskFragmentInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method public blacklist onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 231
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda1;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method public blacklist onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V
    .registers 4
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 224
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda3;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/window/TaskFragmentInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method
