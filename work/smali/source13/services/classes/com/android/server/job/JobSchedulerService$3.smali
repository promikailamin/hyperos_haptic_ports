.class Lcom/android/server/job/JobSchedulerService$3;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .line 838
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 841
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 842
    .local v3, "action":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 843
    const-string v0, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receieved: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_24
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0, v2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mgetPackageName(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    .line 846
    .local v10, "pkgName":Ljava/lang/String;
    const-string v0, "android.intent.extra.UID"

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 848
    .local v11, "pkgUid":I
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_140

    .line 851
    if-eqz v10, :cond_11c

    if-eq v11, v4, :cond_11c

    .line 852
    const-string v0, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 854
    .local v12, "changedComponents":[Ljava/lang/String;
    if-eqz v12, :cond_11a

    .line 855
    array-length v0, v12

    :goto_47
    if-ge v5, v0, :cond_d2

    aget-object v13, v12, v5

    .line 856
    .local v13, "component":Ljava/lang/String;
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 857
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_6d

    .line 858
    const-string v0, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package state change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_6d
    :try_start_6d
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v14, v0

    .line 862
    .local v14, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    move-object v15, v0

    .line 863
    .local v15, "pm":Landroid/content/pm/IPackageManager;
    nop

    .line 864
    invoke-interface {v15, v10, v14}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    .line 865
    .local v9, "state":I
    const/4 v0, 0x2

    if-eq v9, v0, :cond_83

    const/4 v0, 0x3

    if-ne v9, v0, :cond_c2

    .line 867
    :cond_83
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_a9

    .line 868
    const-string v0, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing jobs for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_a9
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_ae} :catch_cc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_ae} :catch_cc

    .line 876
    :try_start_ae
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v7, 0xd

    const/4 v0, 0x7

    const-string v16, "app disabled"
    :try_end_b5
    .catchall {:try_start_ae .. :try_end_b5} :catchall_c3

    move-object v5, v10

    move v6, v11

    move-object/from16 v17, v8

    move v8, v0

    move/from16 v18, v9

    .end local v9    # "state":I
    .local v18, "state":I
    move-object/from16 v9, v16

    :try_start_be
    invoke-static/range {v4 .. v9}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IIILjava/lang/String;)V

    .line 880
    monitor-exit v17

    .line 893
    .end local v14    # "userId":I
    .end local v15    # "pm":Landroid/content/pm/IPackageManager;
    .end local v18    # "state":I
    :cond_c2
    goto :goto_d2

    .line 880
    .restart local v9    # "state":I
    .restart local v14    # "userId":I
    .restart local v15    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_c3
    move-exception v0

    move-object/from16 v17, v8

    move/from16 v18, v9

    .end local v9    # "state":I
    .restart local v18    # "state":I
    :goto_c8
    monitor-exit v17
    :try_end_c9
    .catchall {:try_start_be .. :try_end_c9} :catchall_ca

    .end local v3    # "action":Ljava/lang/String;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "pkgUid":I
    .end local v12    # "changedComponents":[Ljava/lang/String;
    .end local v13    # "component":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService$3;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_c9
    throw v0
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_ca} :catch_cc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c9 .. :try_end_ca} :catch_cc

    .restart local v3    # "action":Ljava/lang/String;
    .restart local v10    # "pkgName":Ljava/lang/String;
    .restart local v11    # "pkgUid":I
    .restart local v12    # "changedComponents":[Ljava/lang/String;
    .restart local v13    # "component":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService$3;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catchall_ca
    move-exception v0

    goto :goto_c8

    .line 882
    .end local v14    # "userId":I
    .end local v15    # "pm":Landroid/content/pm/IPackageManager;
    .end local v18    # "state":I
    :catch_cc
    move-exception v0

    .line 894
    goto :goto_d2

    .line 855
    .end local v13    # "component":Ljava/lang/String;
    :cond_ce
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_47

    .line 897
    :cond_d2
    :goto_d2
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_f4

    .line 898
    const-string v0, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changed. Reevaluating controller states."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_f4
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 902
    :try_start_f9
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "c":I
    :goto_103
    if-ltz v0, :cond_115

    .line 903
    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v5, v11}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    .line 902
    add-int/lit8 v0, v0, -0x1

    goto :goto_103

    .line 905
    .end local v0    # "c":I
    :cond_115
    monitor-exit v4

    goto :goto_11a

    :catchall_117
    move-exception v0

    monitor-exit v4
    :try_end_119
    .catchall {:try_start_f9 .. :try_end_119} :catchall_117

    throw v0

    .line 907
    .end local v12    # "changedComponents":[Ljava/lang/String;
    :cond_11a
    :goto_11a
    goto/16 :goto_32d

    .line 908
    :cond_11c
    const-string v0, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PACKAGE_CHANGED for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32d

    .line 910
    :cond_140
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 911
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_32d

    .line 912
    const-string v0, "android.intent.extra.UID"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 913
    .local v4, "uid":I
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 914
    :try_start_15b
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseSetArray;->remove(I)V

    .line 915
    monitor-exit v5

    .line 916
    .end local v4    # "uid":I
    goto/16 :goto_32d

    .line 915
    .restart local v4    # "uid":I
    :catchall_167
    move-exception v0

    monitor-exit v5
    :try_end_169
    .catchall {:try_start_15b .. :try_end_169} :catchall_167

    throw v0

    .line 917
    .end local v4    # "uid":I
    :cond_16a
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    .line 918
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_19e

    .line 919
    const-string v0, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing jobs for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_19e
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 922
    :try_start_1a3
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/util/SparseSetArray;->remove(I)V

    .line 926
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v7, 0xd

    const/4 v8, 0x7

    const-string v9, "app uninstalled"

    move-object v5, v10

    move v6, v11

    invoke-static/range {v4 .. v9}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IIILjava/lang/String;)V

    .line 929
    const/4 v0, 0x0

    .restart local v0    # "c":I
    :goto_1b9
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1d3

    .line 930
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4, v10, v11}, Lcom/android/server/job/controllers/StateController;->onAppRemovedLocked(Ljava/lang/String;I)V

    .line 929
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b9

    .line 932
    .end local v0    # "c":I
    :cond_1d3
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0, v10, v11}, Lcom/android/server/job/JobConcurrencyManager;->onAppRemovedLocked(Ljava/lang/String;I)V

    .line 934
    monitor-exit v12

    goto/16 :goto_32d

    :catchall_1e4
    move-exception v0

    monitor-exit v12
    :try_end_1e6
    .catchall {:try_start_1a3 .. :try_end_1e6} :catchall_1e4

    throw v0

    .line 935
    :cond_1e7
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 936
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 937
    .local v6, "userId":I
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 938
    const/4 v0, 0x0

    .restart local v0    # "c":I
    :goto_1fb
    :try_start_1fb
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_215

    .line 939
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4, v6}, Lcom/android/server/job/controllers/StateController;->onUserAddedLocked(I)V

    .line 938
    add-int/lit8 v0, v0, 0x1

    goto :goto_1fb

    .line 941
    .end local v0    # "c":I
    :cond_215
    monitor-exit v7

    .line 942
    .end local v6    # "userId":I
    goto/16 :goto_32d

    .line 941
    .restart local v6    # "userId":I
    :catchall_218
    move-exception v0

    monitor-exit v7
    :try_end_21a
    .catchall {:try_start_1fb .. :try_end_21a} :catchall_218

    throw v0

    .line 942
    .end local v6    # "userId":I
    :cond_21b
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_280

    .line 943
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 944
    .local v5, "userId":I
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_245

    .line 945
    const-string v0, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing jobs for user: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_245
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 948
    :try_start_24a
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 949
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0, v5}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForUserLocked(Lcom/android/server/job/JobSchedulerService;I)V

    .line 950
    const/4 v0, 0x0

    .restart local v0    # "c":I
    :goto_259
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_273

    .line 951
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4, v5}, Lcom/android/server/job/controllers/StateController;->onUserRemovedLocked(I)V

    .line 950
    add-int/lit8 v0, v0, 0x1

    goto :goto_259

    .line 953
    .end local v0    # "c":I
    :cond_273
    monitor-exit v6
    :try_end_274
    .catchall {:try_start_24a .. :try_end_274} :catchall_27d

    .line 954
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0, v5}, Lcom/android/server/job/JobConcurrencyManager;->onUserRemoved(I)V

    .line 955
    .end local v5    # "userId":I
    goto/16 :goto_32d

    .line 953
    .restart local v5    # "userId":I
    :catchall_27d
    move-exception v0

    :try_start_27e
    monitor-exit v6
    :try_end_27f
    .catchall {:try_start_27e .. :try_end_27f} :catchall_27d

    throw v0

    .line 955
    .end local v5    # "userId":I
    :cond_280
    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e7

    .line 958
    if-eq v11, v4, :cond_32d

    .line 960
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 961
    :try_start_28f
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, v11}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v0

    .line 962
    .local v0, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v5
    :try_end_298
    .catchall {:try_start_28f .. :try_end_298} :catchall_2e4

    .line 963
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_29e
    if-ltz v5, :cond_2e3

    .line 964
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e0

    .line 965
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_2dc

    .line 966
    const-string v6, "JobScheduler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restart query: package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has jobs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_2dc
    invoke-virtual {v1, v4}, Lcom/android/server/job/JobSchedulerService$3;->setResultCode(I)V

    .line 970
    goto :goto_2e3

    .line 963
    :cond_2e0
    add-int/lit8 v5, v5, -0x1

    goto :goto_29e

    .line 973
    .end local v0    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v5    # "i":I
    :cond_2e3
    :goto_2e3
    goto :goto_32d

    .line 962
    :catchall_2e4
    move-exception v0

    :try_start_2e5
    monitor-exit v5
    :try_end_2e6
    .catchall {:try_start_2e5 .. :try_end_2e6} :catchall_2e4

    throw v0

    .line 974
    :cond_2e7
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32d

    .line 976
    if-eq v11, v4, :cond_32d

    .line 977
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_317

    .line 978
    const-string v0, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing jobs for pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_317
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 981
    :try_start_31c
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v7, 0xd

    const/4 v8, 0x0

    const-string v9, "app force stopped"

    move-object v5, v10

    move v6, v11

    invoke-static/range {v4 .. v9}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IIILjava/lang/String;)V

    .line 985
    monitor-exit v12

    goto :goto_32d

    :catchall_32a
    move-exception v0

    monitor-exit v12
    :try_end_32c
    .catchall {:try_start_31c .. :try_end_32c} :catchall_32a

    throw v0

    .line 988
    :cond_32d
    :goto_32d
    return-void
.end method
