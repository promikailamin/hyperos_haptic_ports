.class public Lcom/android/server/am/ActiveServices$2;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic val$callerFg:Z

.field public final synthetic val$connection:Landroid/app/IServiceConnection;

.field public final synthetic val$r:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$service:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V
    .registers 6

    .line 1355
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$2;->val$r:Lcom/android/server/am/ServiceRecord;

    iput-object p3, p0, Lcom/android/server/am/ActiveServices$2;->val$service:Landroid/content/Intent;

    iput-boolean p4, p0, Lcom/android/server/am/ActiveServices$2;->val$callerFg:Z

    iput-object p5, p0, Lcom/android/server/am/ActiveServices$2;->val$connection:Landroid/app/IServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 16

    .line 1358
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 1359
    :try_start_8
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_2c

    .line 1361
    :try_start_12
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$2;->val$r:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_73

    if-nez v0, :cond_30

    .line 1399
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_2c

    .line 1362
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2c
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ac

    .line 1368
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$2;->val$r:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v3, v3, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 1369
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v0
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_73

    if-nez v0, :cond_8d

    const/4 v3, 0x6

    .line 1371
    :try_start_45
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    .line 1372
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object v4
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4f} :catch_8a
    .catchall {:try_start_45 .. :try_end_4f} :catchall_69

    .line 1374
    :try_start_4f
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$2;->val$r:Lcom/android/server/am/ServiceRecord;

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$2;->val$service:Landroid/content/Intent;

    .line 1375
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v7

    iget-boolean v8, p0, Lcom/android/server/am/ActiveServices$2;->val$callerFg:Z

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1374
    invoke-static/range {v5 .. v13}, Lcom/android/server/am/ActiveServices;->-$$Nest$mbringUpServiceLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZZZI)Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_4f .. :try_end_63} :catchall_75

    if-eqz v4, :cond_6b

    .line 1382
    :try_start_65
    invoke-virtual {v4}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_68} :catch_8a
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6b

    :catchall_69
    move-exception v0

    goto :goto_82

    .line 1391
    :cond_6b
    :goto_6b
    :try_start_6b
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    :goto_6d
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_73

    goto :goto_94

    :catchall_73
    move-exception v0

    goto :goto_a2

    :catchall_75
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_81

    .line 1371
    :try_start_79
    invoke-virtual {v4}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    goto :goto_81

    :catchall_7d
    move-exception v0

    :try_start_7e
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_81
    :goto_81
    throw v5
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_82} :catch_8a
    .catchall {:try_start_7e .. :try_end_82} :catchall_69

    .line 1391
    :goto_82
    :try_start_82
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v4, v4, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 1394
    throw v0

    .line 1391
    :catch_8a
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    goto :goto_6d

    .line 1396
    :cond_8d
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$2;->val$connection:Landroid/app/IServiceConnection;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    :try_end_94
    .catchall {:try_start_82 .. :try_end_94} :catchall_73

    .line 1399
    :goto_94
    :try_start_94
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    .line 1401
    monitor-exit p1
    :try_end_9e
    .catchall {:try_start_94 .. :try_end_9e} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1399
    :goto_a2
    :try_start_a2
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    .line 1400
    throw v0

    .line 1401
    :goto_ac
    monitor-exit p1
    :try_end_ad
    .catchall {:try_start_a2 .. :try_end_ad} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
