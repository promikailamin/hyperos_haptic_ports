.class public Lcom/android/server/wm/WindowManagerService$10;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "WindowManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 1432
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .registers 5

    const/16 p2, 0xa4

    if-ne p1, p2, :cond_34

    .line 1436
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 1437
    :try_start_c
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Session;

    .line 1438
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$10;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Session;->updateCanCreateSystemApplicationOverlay(Landroid/permission/PermissionManager;)V

    goto :goto_14

    :catchall_28
    move-exception p0

    goto :goto_2f

    .line 1441
    :cond_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_34
    return-void
.end method
