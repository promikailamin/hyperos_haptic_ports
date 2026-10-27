.class public Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;-><init>(Lcom/android/server/wm/LaunchParamsPersister;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 3

    .line 323
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-static {p2}, Lcom/android/server/wm/LaunchParamsPersister;->-$$Nest$fgetmSupervisor(Lcom/android/server/wm/LaunchParamsPersister;)Lcom/android/server/wm/ActivityTaskSupervisor;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object p2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p2

    .line 324
    :try_start_10
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->removeRecordForPackage(Ljava/lang/String;)V

    .line 325
    monitor-exit p2
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit p2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
