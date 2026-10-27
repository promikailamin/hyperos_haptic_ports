.class public Lcom/android/server/wm/RecentTasks$1;
.super Ljava/lang/Object;
.source "RecentTasks.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RecentTasks;


# direct methods
.method public static synthetic $r8$lambda$kMLZu1da_9gKFD9TDrUKSwr3HJM(Lcom/android/server/wm/RecentTasks$1;IIILjava/lang/Object;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/RecentTasks$1;->lambda$onPointerEvent$0(IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/RecentTasks;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onPointerEvent$0(IIILjava/lang/Object;)V
    .registers 12

    .line 232
    iget-object p4, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {p4}, Lcom/android/server/wm/RecentTasks;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p4

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p4

    .line 233
    :try_start_c
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v0}, Lcom/android/server/wm/RecentTasks;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 234
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    int-to-float v0, p2

    int-to-float v1, p3

    .line 235
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 237
    monitor-exit p4
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_27
    move-exception p0

    goto/16 :goto_c8

    .line 242
    :cond_2a
    :try_start_2a
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object p1

    .line 244
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v1}, Lcom/android/server/wm/RecentTasks;->-$$Nest$fgetmTmpRect(Lcom/android/server/wm/RecentTasks;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 245
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v1}, Lcom/android/server/wm/RecentTasks;->-$$Nest$fgetmTmpRect(Lcom/android/server/wm/RecentTasks;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 246
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v4

    const/4 v5, 0x0

    .line 245
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 247
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {p1}, Lcom/android/server/wm/RecentTasks;->-$$Nest$fgetmTmpRect(Lcom/android/server/wm/RecentTasks;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_6a

    .line 248
    monitor-exit p4
    :try_end_66
    .catchall {:try_start_2a .. :try_end_66} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 252
    :cond_6a
    :try_start_6a
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {p1}, Lcom/android/server/wm/RecentTasks;->shouldUnfreezeOnInteractionInWindow(I)Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 253
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {p1}, Lcom/android/server/wm/RecentTasks;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_85

    .line 254
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_86

    :cond_85
    const/4 p1, 0x0

    .line 255
    :goto_86
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_be

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    int-to-long v2, v0

    int-to-long v4, p2

    int-to-long p2, p3

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v0}, Lcom/android/server/wm/RecentTasks;->-$$Nest$fgetmTmpRect(Lcom/android/server/wm/RecentTasks;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {v1, v2, v3, p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-wide v0, -0x77f8e24892a6ccc3L

    const/16 p3, 0x54

    invoke-static {v6, v0, v1, p3, p2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 258
    :cond_be
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReordering(Lcom/android/server/wm/Task;)V

    .line 260
    :cond_c3
    monitor-exit p4
    :try_end_c4
    .catchall {:try_start_6a .. :try_end_c4} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_c8
    :try_start_c8
    monitor-exit p4
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 6

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v0}, Lcom/android/server/wm/RecentTasks;->-$$Nest$fgetmFreezeTaskListReordering(Lcom/android/server/wm/RecentTasks;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3d

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    goto :goto_3d

    .line 228
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 231
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v2}, Lcom/android/server/wm/RecentTasks;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RecentTasks$1;III)V

    const/4 p0, 0x0

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 261
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 231
    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3d
    :goto_3d
    return-void
.end method
