.class public Lcom/android/server/job/JobSchedulerService$3;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 1397
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .line 1400
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1401
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 1402
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receieved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_1e
    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 1405
    const-string v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1407
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_12b

    .line 1408
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1410
    :try_start_39
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1411
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_127

    if-eqz v4, :cond_108

    if-eq v5, v2, :cond_108

    .line 1415
    const-string p1, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_393

    .line 1418
    array-length p2, p1

    :goto_50
    if-ge v11, p2, :cond_c0

    aget-object v0, p1, v11

    .line 1419
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1420
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_74

    .line 1421
    const-string p2, "JobScheduler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package state change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_74
    :try_start_74
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 1425
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1427
    invoke-interface {v0, v4, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_86

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c0

    :cond_86
    if-eqz p1, :cond_a6

    .line 1431
    const-string p1, "JobScheduler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing jobs for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_a6
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_ab} :catch_c0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_74 .. :try_end_ab} :catch_c0

    .line 1439
    :try_start_ab
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v10, "app disabled"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v8, 0xd

    const/4 v9, 0x7

    invoke-static/range {v3 .. v10}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZZIILjava/lang/String;)V

    .line 1445
    monitor-exit p1

    goto :goto_c0

    :catchall_b9
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_bc
    .catchall {:try_start_ab .. :try_end_bc} :catchall_b9

    :try_start_bc
    throw p2
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_bd} :catch_c0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bc .. :try_end_bd} :catch_c0

    :cond_bd
    add-int/lit8 v11, v11, 0x1

    goto :goto_50

    .line 1462
    :catch_c0
    :cond_c0
    :goto_c0
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_df

    .line 1463
    const-string p1, "JobScheduler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Something in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " changed. Reevaluating controller states."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_df
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1467
    :try_start_e4
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_ee
    if-ltz p2, :cond_103

    .line 1468
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0, v5}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_ee

    :catchall_100
    move-exception v0

    move-object p0, v0

    goto :goto_106

    .line 1470
    :cond_103
    monitor-exit p1

    goto/16 :goto_393

    :goto_106
    monitor-exit p1
    :try_end_107
    .catchall {:try_start_e4 .. :try_end_107} :catchall_100

    throw p0

    .line 1473
    :cond_108
    const-string p0, "JobScheduler"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PACKAGE_CHANGED for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_127
    move-exception v0

    move-object p0, v0

    .line 1411
    :try_start_129
    monitor-exit v1
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_127

    throw p0

    .line 1475
    :cond_12b
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_164

    .line 1476
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1478
    :try_start_13a
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1479
    monitor-exit v1
    :try_end_144
    .catchall {:try_start_13a .. :try_end_144} :catchall_160

    .line 1480
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_393

    .line 1481
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1482
    :try_start_151
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1483
    monitor-exit p1

    return-void

    :catchall_15c
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_15f
    .catchall {:try_start_151 .. :try_end_15f} :catchall_15c

    throw p0

    :catchall_160
    move-exception v0

    move-object p0, v0

    .line 1479
    :try_start_162
    monitor-exit v1
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_160

    throw p0

    .line 1485
    :cond_164
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ef

    .line 1486
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1487
    :try_start_173
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1488
    monitor-exit v1
    :try_end_17d
    .catchall {:try_start_173 .. :try_end_17d} :catchall_1eb

    if-eqz v0, :cond_1a2

    .line 1490
    const-string p1, "JobScheduler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing jobs for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (uid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_1a2
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1493
    :try_start_1a7
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1497
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v10, "app uninstalled"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v8, 0xd

    const/4 v9, 0x7

    invoke-static/range {v3 .. v10}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZZIILjava/lang/String;)V

    .line 1501
    :goto_1bc
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v11, p2, :cond_1d9

    .line 1502
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p2, v4, v5}, Lcom/android/server/job/controllers/StateController;->onAppRemovedLocked(Ljava/lang/String;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1bc

    :catchall_1d6
    move-exception v0

    move-object p0, v0

    goto :goto_1e9

    .line 1504
    :cond_1d9
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, v4, v5}, Lcom/android/server/job/JobConcurrencyManager;->onAppRemovedLocked(Ljava/lang/String;I)V

    .line 1506
    monitor-exit p1

    return-void

    :goto_1e9
    monitor-exit p1
    :try_end_1ea
    .catchall {:try_start_1a7 .. :try_end_1ea} :catchall_1d6

    throw p0

    :catchall_1eb
    move-exception v0

    move-object p0, v0

    .line 1488
    :try_start_1ed
    monitor-exit v1
    :try_end_1ee
    .catchall {:try_start_1ed .. :try_end_1ee} :catchall_1eb

    throw p0

    .line 1507
    :cond_1ef
    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_223

    .line 1508
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_393

    .line 1509
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1510
    :try_start_204
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1511
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidCapabilities(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseIntArray;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1512
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidProcStates(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1513
    monitor-exit p1

    return-void

    :catchall_21f
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_222
    .catchall {:try_start_204 .. :try_end_222} :catchall_21f

    throw p0

    .line 1515
    :cond_223
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_257

    .line 1516
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1517
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1518
    :goto_236
    :try_start_236
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v11, p2, :cond_253

    .line 1519
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/StateController;->onUserAddedLocked(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_236

    :catchall_250
    move-exception v0

    move-object p0, v0

    goto :goto_255

    .line 1521
    :cond_253
    monitor-exit v1

    return-void

    :goto_255
    monitor-exit v1
    :try_end_256
    .catchall {:try_start_236 .. :try_end_256} :catchall_250

    throw p0

    .line 1522
    :cond_257
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f0

    .line 1523
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_27d

    .line 1525
    const-string p2, "JobScheduler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing jobs for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_27d
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1528
    :try_start_282
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 1529
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForUserLocked(Lcom/android/server/job/JobSchedulerService;I)V

    .line 1530
    :goto_290
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_2ad

    .line 1531
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->onUserRemovedLocked(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_290

    :catchall_2aa
    move-exception v0

    move-object p0, v0

    goto :goto_2ee

    .line 1533
    :cond_2ad
    monitor-exit p2
    :try_end_2ae
    .catchall {:try_start_282 .. :try_end_2ae} :catchall_2aa

    .line 1534
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobConcurrencyManager;->onUserRemoved(I)V

    .line 1535
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1536
    :try_start_2bc
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2c8
    if-ltz p2, :cond_2ea

    .line 1537
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1538
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p1, v0, :cond_2e7

    .line 1539
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_2e7

    :catchall_2e4
    move-exception v0

    move-object p0, v0

    goto :goto_2ec

    :cond_2e7
    :goto_2e7
    add-int/lit8 p2, p2, -0x1

    goto :goto_2c8

    .line 1542
    :cond_2ea
    monitor-exit v1

    return-void

    :goto_2ec
    monitor-exit v1
    :try_end_2ed
    .catchall {:try_start_2bc .. :try_end_2ed} :catchall_2e4

    throw p0

    .line 1533
    :goto_2ee
    :try_start_2ee
    monitor-exit p2
    :try_end_2ef
    .catchall {:try_start_2ee .. :try_end_2ef} :catchall_2aa

    throw p0

    .line 1543
    :cond_2f0
    const-string p2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_352

    if-eq v5, v2, :cond_393

    .line 1548
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1549
    :try_start_2ff
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p2, v5}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object p2

    .line 1550
    monitor-exit p1
    :try_end_308
    .catchall {:try_start_2ff .. :try_end_308} :catchall_34e

    .line 1551
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_30e
    if-ltz p1, :cond_393

    .line 1552
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34b

    .line 1553
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_347

    .line 1554
    const-string p1, "JobScheduler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Restart query: package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at uid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has jobs"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_347
    invoke-virtual {p0, v2}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    :cond_34b
    add-int/lit8 p1, p1, -0x1

    goto :goto_30e

    :catchall_34e
    move-exception v0

    move-object p0, v0

    .line 1550
    :try_start_350
    monitor-exit p1
    :try_end_351
    .catchall {:try_start_350 .. :try_end_351} :catchall_34e

    throw p0

    .line 1562
    :cond_352
    const-string p2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_393

    if-eq v5, v2, :cond_393

    if-eqz v0, :cond_37c

    .line 1566
    const-string p1, "JobScheduler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing jobs for pkg "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at uid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_37c
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1573
    :try_start_381
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v10, "app force stopped"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-static/range {v3 .. v10}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZZIILjava/lang/String;)V

    .line 1578
    monitor-exit p1

    return-void

    :catchall_38f
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_392
    .catchall {:try_start_381 .. :try_end_392} :catchall_38f

    throw p0

    :cond_393
    :goto_393
    return-void
.end method
