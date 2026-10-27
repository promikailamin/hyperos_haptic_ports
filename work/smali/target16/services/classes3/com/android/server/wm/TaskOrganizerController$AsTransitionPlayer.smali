.class public Lcom/android/server/wm/TaskOrganizerController$AsTransitionPlayer;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"

# interfaces
.implements Landroid/window/ITransitionPlayer;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TaskOrganizerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskOrganizerController;)V
    .registers 2

    .line 1306
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$AsTransitionPlayer;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1328
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$AsTransitionPlayer;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController;->-$$Nest$fgetmTaskOrganizers(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/ArrayDeque;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/ITaskOrganizer;

    invoke-interface {p0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 1311
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$AsTransitionPlayer;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController;->-$$Nest$fgetmTaskOrganizers(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/ArrayDeque;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/ITaskOrganizer;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/window/ITaskOrganizer;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 2

    .line 1323
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$AsTransitionPlayer;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController;->-$$Nest$fgetmTaskOrganizers(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/ArrayDeque;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/ITaskOrganizer;

    invoke-interface {p0, p1}, Landroid/window/ITaskOrganizer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V

    return-void
.end method

.method public requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V
    .registers 3

    .line 1317
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$AsTransitionPlayer;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController;->-$$Nest$fgetmTaskOrganizers(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/ArrayDeque;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/ITaskOrganizer;

    invoke-interface {p0, p1, p2}, Landroid/window/ITaskOrganizer;->requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V

    return-void
.end method
