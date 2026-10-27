.class public final Lcom/android/server/power/PowerManagerService$DisplayListener;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 763
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DisplayListener;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 5

    .line 772
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmNotifier(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/power/Notifier;->clearScreenTimeoutPolicyListeners(I)V

    .line 774
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmFeatureFlags(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/feature/PowerManagerFlags;

    move-result-object p1

    .line 775
    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags;->isLockOnUnplugEnabled()Z

    move-result p1

    if-nez p1, :cond_16

    return-void

    .line 780
    :cond_16
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x0

    .line 781
    :goto_1e
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 782
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    .line 785
    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->isDefaultOrAdjacentGroup()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 786
    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_47

    .line 787
    monitor-exit p1

    return-void

    :catchall_45
    move-exception p0

    goto :goto_4f

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 790
    :cond_4a
    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_1e .. :try_end_4b} :catchall_45

    .line 791
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$DisplayListener;->tryToLockNow()V

    return-void

    .line 790
    :goto_4f
    :try_start_4f
    monitor-exit p1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_45

    throw p0
.end method

.method public final tryToLockNow()V
    .registers 3

    .line 795
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    if-nez v0, :cond_15

    .line 796
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayListener;->this$0:Lcom/android/server/power/PowerManagerService;

    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    # invokes: Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmWindowManagerInternal(Lcom/android/server/power/PowerManagerService;Lcom/android/server/wm/WindowManagerInternal;)V

    .line 798
    :cond_15
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 799
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$DisplayListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->lockNow()V

    :cond_26
    return-void
.end method
