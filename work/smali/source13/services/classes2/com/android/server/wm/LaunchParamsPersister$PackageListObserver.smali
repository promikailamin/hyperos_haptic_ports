.class Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LaunchParamsPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageListObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;)V
    .registers 2

    .line 595
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;-><init>(Lcom/android/server/wm/LaunchParamsPersister;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 597
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-static {v0}, Lcom/android/server/wm/LaunchParamsPersister;->-$$Nest$fgetmSupervisor(Lcom/android/server/wm/LaunchParamsPersister;)Lcom/android/server/wm/ActivityTaskSupervisor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 602
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/LaunchParamsPersister;->removeRecordForPackage(Ljava/lang/String;)V

    .line 603
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 604
    return-void

    .line 603
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
