.class public Lcom/android/server/companion/CompanionDeviceManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "CompanionDeviceManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .registers 2

    .line 910
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 4

    .line 934
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmPackageLock(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 935
    :try_start_7
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monPackageAddedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V

    .line 936
    monitor-exit p2

    return-void

    :catchall_12
    move-exception p0

    monitor-exit p2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .registers 4

    .line 920
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmPackageLock(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 921
    :try_start_7
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monPackageRemoveOrDataClearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V

    .line 922
    monitor-exit p2

    return-void

    :catchall_12
    move-exception p0

    monitor-exit p2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 4

    .line 927
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmPackageLock(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 928
    :try_start_7
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    invoke-static {v1, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monPackageModifiedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V

    .line 929
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 4

    .line 913
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmPackageLock(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 914
    :try_start_7
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monPackageRemoveOrDataClearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V

    .line 915
    monitor-exit p2

    return-void

    :catchall_12
    move-exception p0

    monitor-exit p2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method
