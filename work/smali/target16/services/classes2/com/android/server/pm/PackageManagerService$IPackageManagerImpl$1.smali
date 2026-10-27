.class public Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final synthetic val$callingUid:I

.field public final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$restorePregrantedPermissions:Z

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;IZILandroid/content/pm/IPackageDataObserver;)V
    .registers 7

    .line 4903
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$restorePregrantedPermissions:Z

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$callingUid:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 4905
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4907
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    const-string v4, "clearApplicationUserData"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v5, 0xa

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mfreezePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;Z)Lcom/android/server/pm/PackageFreezer;

    move-result-object v1

    .line 4911
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_3d

    .line 4912
    :try_start_25
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$restorePregrantedPermissions:Z

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mclearApplicationUserDataLIF(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_e5

    if-eqz v2, :cond_41

    .line 4914
    :try_start_39
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    goto :goto_41

    :catchall_3d
    move-exception v0

    move-object p0, v0

    goto/16 :goto_f2

    .line 4915
    :cond_41
    :goto_41
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->deleteInstantApplicationMetadata(Ljava/lang/String;I)V

    .line 4916
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_58
    .catchall {:try_start_39 .. :try_end_58} :catchall_3d

    if-eqz v0, :cond_6c

    .line 4918
    :try_start_5a
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$callingUid:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mresetComponentEnabledSettingsIfNeededLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)V

    goto :goto_6c

    :catchall_68
    move-exception v0

    move-object p0, v0

    goto/16 :goto_e0

    .line 4921
    :cond_6c
    :goto_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_5a .. :try_end_6d} :catchall_68

    :try_start_6d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_3d

    if-eqz v1, :cond_75

    .line 4922
    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_75
    if-eqz v0, :cond_ce

    .line 4925
    const-class v1, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 4926
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    if-eqz v1, :cond_84

    .line 4928
    invoke-interface {v1}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    .line 4930
    :cond_84
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-string v2, "android.permission.SUSPEND_APPS"

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/IPackageManagerBase;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_ce

    .line 4932
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 4933
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    const/4 v5, -0x1

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)V

    .line 4935
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V

    .line 4936
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 4937
    :try_start_b9
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mflushPackageRestrictionsAsUserInternalLocked(Lcom/android/server/pm/PackageManagerService;I)V

    .line 4938
    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_b9 .. :try_end_c3} :catchall_c7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_ce

    :catchall_c7
    move-exception v0

    move-object p0, v0

    :try_start_c9
    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 4941
    :cond_ce
    :goto_ce
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v1, :cond_df

    .line 4943
    :try_start_d2
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_d7} :catch_d8

    return-void

    .line 4945
    :catch_d8
    const-string p0, "PackageManager"

    const-string v0, "Observer no longer exists."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_df
    return-void

    .line 4921
    :goto_e0
    :try_start_e0
    monitor-exit v2
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_68

    :try_start_e1
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
    :try_end_e5
    .catchall {:try_start_e1 .. :try_end_e5} :catchall_3d

    :catchall_e5
    move-exception v0

    move-object p0, v0

    if-eqz v2, :cond_f1

    .line 4911
    :try_start_e9
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_ed

    goto :goto_f1

    :catchall_ed
    move-exception v0

    :try_start_ee
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f1
    :goto_f1
    throw p0
    :try_end_f2
    .catchall {:try_start_ee .. :try_end_f2} :catchall_3d

    :goto_f2
    if-eqz v1, :cond_fc

    .line 4907
    :try_start_f4
    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_f8

    goto :goto_fc

    :catchall_f8
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_fc
    :goto_fc
    throw p0
.end method
