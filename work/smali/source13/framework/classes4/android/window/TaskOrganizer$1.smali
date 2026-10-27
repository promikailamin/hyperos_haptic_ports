.class Landroid/window/TaskOrganizer$1;
.super Landroid/window/ITaskOrganizer$Stub;
.source "TaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/TaskOrganizer;


# direct methods
.method constructor blacklist <init>(Landroid/window/TaskOrganizer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/window/TaskOrganizer;

    .line 285
    iput-object p1, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-direct {p0}, Landroid/window/ITaskOrganizer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "windowInfo"    # Landroid/window/StartingWindowInfo;
    .param p2, "appToken"    # Landroid/os/IBinder;

    .line 289
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;-><init>(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public blacklist copySplashScreenView(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 299
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda3;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method

.method public blacklist enterSplitScreen(IZ)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "leftOrTop"    # Z

    .line 335
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;-><init>(Landroid/window/TaskOrganizer$1;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 336
    return-void
.end method

.method public blacklist exitSplitScreen(I)V
    .registers 4
    .param p1, "position"    # I

    .line 345
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda2;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 346
    return-void
.end method

.method synthetic blacklist lambda$addStartingWindow$0$android-window-TaskOrganizer$1(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "windowInfo"    # Landroid/window/StartingWindowInfo;
    .param p2, "appToken"    # Landroid/os/IBinder;

    .line 289
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    return-void
.end method

.method synthetic blacklist lambda$copySplashScreenView$2$android-window-TaskOrganizer$1(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 299
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->copySplashScreenView(I)V

    return-void
.end method

.method synthetic blacklist lambda$enterSplitScreen$9$android-window-TaskOrganizer$1(IZ)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "leftOrTop"    # Z

    .line 335
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->enterSplitScreen(IZ)V

    return-void
.end method

.method synthetic blacklist lambda$exitSplitScreen$11$android-window-TaskOrganizer$1(I)V
    .registers 3
    .param p1, "position"    # I

    .line 345
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->exitSplitScreen(I)V

    return-void
.end method

.method synthetic blacklist lambda$onAppSplashScreenViewRemoved$3$android-window-TaskOrganizer$1(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 304
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onAppSplashScreenViewRemoved(I)V

    return-void
.end method

.method synthetic blacklist lambda$onBackPressedOnTaskRoot$7$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 324
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onImeDrawnOnTask$8$android-window-TaskOrganizer$1(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 329
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onImeDrawnOnTask(I)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskAppeared$4$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 309
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskInfoChanged$6$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 319
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskVanished$5$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 314
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$removeStartingWindow$1$android-window-TaskOrganizer$1(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 3
    .param p1, "removalInfo"    # Landroid/window/StartingWindowRemovalInfo;

    .line 294
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$startIntentInSplitScreen$13$android-window-TaskOrganizer$1(Landroid/app/PendingIntent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "position"    # I

    .line 356
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    .line 357
    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->startIntentInSplitScreen(Landroid/app/PendingIntent;I)V

    .line 356
    return-void
.end method

.method synthetic blacklist lambda$startTasksWithLegacyTransitionForSystem$12$android-window-TaskOrganizer$1(II)V
    .registers 4
    .param p1, "mainTaskId"    # I
    .param p2, "sideTaskId"    # I

    .line 350
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->startTasksWithLegacyTransitionForSystem(II)V

    return-void
.end method

.method synthetic blacklist lambda$swapSplitTasks$10$android-window-TaskOrganizer$1()V
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0}, Landroid/window/TaskOrganizer;->swapSplitTasks()V

    return-void
.end method

.method public blacklist onAppSplashScreenViewRemoved(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 304
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda0;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method public blacklist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 324
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda1;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public blacklist onImeDrawnOnTask(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 329
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 330
    return-void
.end method

.method public blacklist onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 309
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda10;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public blacklist onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 319
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method public blacklist onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 314
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda13;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method public blacklist removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 4
    .param p1, "removalInfo"    # Landroid/window/StartingWindowRemovalInfo;

    .line 294
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda11;-><init>(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowRemovalInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method

.method public blacklist startIntentInSplitScreen(Landroid/app/PendingIntent;I)V
    .registers 5
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "position"    # I

    .line 356
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/PendingIntent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method

.method public blacklist startTasksWithLegacyTransitionForSystem(II)V
    .registers 5
    .param p1, "mainTaskId"    # I
    .param p2, "sideTaskId"    # I

    .line 350
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda12;-><init>(Landroid/window/TaskOrganizer$1;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method

.method public blacklist swapSplitTasks()V
    .registers 3

    .line 340
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;-><init>(Landroid/window/TaskOrganizer$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method
