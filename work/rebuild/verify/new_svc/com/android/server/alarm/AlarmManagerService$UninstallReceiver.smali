.class public Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 5

    .line 4920
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4921
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4922
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4923
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4924
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4925
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4926
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4927
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4930
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4931
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4932
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4933
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmStartUserBeforeScheduledAlarms(Lcom/android/server/alarm/AlarmManagerService;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 4934
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4936
    :cond_46
    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4937
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v2, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 4943
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 4947
    :cond_7
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4948
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4950
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/16 v4, 0xb

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_1a8

    goto/16 :goto_130

    :sswitch_1f
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_130

    .line 4984
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4985
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 4988
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 4989
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 p2, 0xd

    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 4991
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4f

    :catchall_4c
    move-exception p0

    goto/16 :goto_1a6

    .line 4993
    :cond_4f
    :goto_4f
    monitor-exit v2

    return-void

    .line 4950
    :sswitch_51
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_130

    .line 4998
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 5002
    monitor-exit v2

    return-void

    .line 5004
    :cond_63
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a6

    .line 4950
    :sswitch_6b
    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_130

    .line 4961
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_9c

    .line 4963
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeUserLocked(I)V

    .line 4964
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p2, p2, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    .line 4965
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p2, p2, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    .line 4966
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p2, p2, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    .line 4967
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->removeForUser(I)V

    .line 4969
    :cond_9c
    monitor-exit v2

    return-void

    .line 4950
    :sswitch_9e
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_130

    .line 5007
    :goto_a6
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_130

    .line 5009
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_130

    .line 5011
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_131

    .line 4950
    :sswitch_b8
    const-string v3, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_130

    .line 4952
    const-string p1, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4953
    array-length p2, p1

    :goto_c7
    if-ge v5, p2, :cond_db

    aget-object v3, p1, v5

    .line 4954
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/alarm/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 4955
    invoke-virtual {p0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 4956
    monitor-exit v2

    return-void

    :cond_d8
    add-int/lit8 v5, v5, 0x1

    goto :goto_c7

    .line 4959
    :cond_db
    monitor-exit v2

    return-void

    .line 4950
    :sswitch_dd
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_130

    .line 4995
    const-string p1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_131

    .line 4950
    :sswitch_ec
    const-string p2, "android.intent.action.UID_REMOVED"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_130

    .line 4979
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmLastPriorityAlarmDispatch(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseLongArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 4980
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmRemovalHistory(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 4981
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4982
    monitor-exit v2

    return-void

    .line 4950
    :sswitch_10f
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_130

    .line 4971
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_12e

    .line 4973
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmStartUserBeforeScheduledAlarms(Lcom/android/server/alarm/AlarmManagerService;)Z

    move-result p2

    if-eqz p2, :cond_12e

    .line 4974
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/UserWakeupStore;->onUserRemoved(I)V

    .line 4977
    :cond_12e
    monitor-exit v2

    return-void

    :cond_130
    :goto_130
    const/4 p1, 0x0

    :goto_131
    if-eqz p1, :cond_1a4

    .line 5016
    array-length p2, p1

    if-lez p2, :cond_1a4

    .line 5017
    array-length p2, p1

    move v1, v5

    :goto_138
    if-ge v1, p2, :cond_1a4

    aget-object v3, p1, v1

    if-ltz v0, :cond_170

    .line 5020
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForPackage(Ljava/lang/String;I)V

    .line 5021
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForPackage(Ljava/lang/String;I)V

    .line 5022
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 5023
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 5022
    invoke-virtual {v4, v3, v6}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForPackage(Ljava/lang/String;I)V

    .line 5024
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->removeForPackage(Ljava/lang/String;I)V

    .line 5025
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(II)V

    goto :goto_175

    .line 5028
    :cond_170
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v3, v5}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Ljava/lang/String;I)V

    .line 5030
    :goto_175
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_17f
    if-ltz v4, :cond_1a1

    .line 5031
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 5032
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_19e

    .line 5033
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-gtz v6, :cond_19e

    .line 5034
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_19e
    add-int/lit8 v4, v4, -0x1

    goto :goto_17f

    :cond_1a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_138

    .line 5040
    :cond_1a4
    monitor-exit v2

    return-void

    :goto_1a6
    monitor-exit v2
    :try_end_1a7
    .catchall {:try_start_13 .. :try_end_1a7} :catchall_4c

    throw p0

    :sswitch_data_1a8
    .sparse-switch
        -0x7ad942ef -> :sswitch_10f
        -0x6849e2b4 -> :sswitch_ec
        -0x53ae571d -> :sswitch_dd
        -0x3ff1ba66 -> :sswitch_b8
        -0x2d2ad030 -> :sswitch_9e
        -0x2c3dc982 -> :sswitch_6b
        0x1f50b9c2 -> :sswitch_51
        0x5c1076e2 -> :sswitch_1f
    .end sparse-switch
.end method
