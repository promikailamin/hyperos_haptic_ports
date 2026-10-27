.class Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 5157
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 5158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5159
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5160
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5161
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5162
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5163
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 5164
    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 5167
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 5168
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5169
    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5170
    const-string v3, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5171
    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p0, v1, v2, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 5173
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 5177
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 5178
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5179
    const/4 v3, 0x0

    .line 5180
    .local v3, "pkgList":[Ljava/lang/String;
    :try_start_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v5, :sswitch_data_1a6

    :cond_1a
    goto :goto_61

    :sswitch_1b
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x3

    goto :goto_62

    :sswitch_25
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x5

    goto :goto_62

    :sswitch_2f
    const-string v5, "android.intent.action.USER_STOPPED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move v4, v6

    goto :goto_62

    :sswitch_39
    const-string v5, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x6

    goto :goto_62

    :sswitch_43
    const-string v5, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move v4, v7

    goto :goto_62

    :sswitch_4d
    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x4

    goto :goto_62

    :sswitch_57
    const-string v5, "android.intent.action.UID_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x2

    goto :goto_62

    :goto_61
    move v4, v1

    :goto_62
    const/16 v5, 0xb

    packed-switch v4, :pswitch_data_1c4

    goto/16 :goto_120

    .line 5220
    :pswitch_69
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 5224
    monitor-exit v2

    return-void

    .line 5226
    :cond_73
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 5229
    :pswitch_7a
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 5230
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_120

    .line 5231
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 5232
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_120

    .line 5233
    new-array v5, v6, [Ljava/lang/String;

    aput-object v4, v5, v7

    move-object v3, v5

    goto/16 :goto_120

    .line 5217
    .end local v1    # "data":Landroid/net/Uri;
    .end local v4    # "pkg":Ljava/lang/String;
    :pswitch_8d
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 5218
    goto/16 :goto_120

    .line 5206
    :pswitch_96
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 5207
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 5210
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 5211
    .local v4, "packageUpdated":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v6, 0xd

    invoke-virtual {v5, v6, v0, v1, v4}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5213
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 5215
    .end local v4    # "packageUpdated":Ljava/lang/String;
    :cond_ba
    monitor-exit v2

    return-void

    .line 5201
    :pswitch_bc
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmLastPriorityAlarmDispatch(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseLongArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 5202
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmRemovalHistory(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 5203
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5204
    monitor-exit v2

    return-void

    .line 5191
    :pswitch_d7
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5192
    .local v1, "userHandle":I
    if-ltz v1, :cond_100

    .line 5193
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeUserLocked(I)V

    .line 5194
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v4, v1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    .line 5195
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v4, v1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    .line 5196
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v4, v1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    .line 5197
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v4, v1}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->removeForUser(I)V

    .line 5199
    :cond_100
    monitor-exit v2

    return-void

    .line 5182
    .end local v1    # "userHandle":I
    :pswitch_102
    const-string v4, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 5183
    array-length v4, v3

    :goto_10a
    if-ge v7, v4, :cond_11e

    aget-object v5, v3, v7

    .line 5184
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/alarm/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11b

    .line 5185
    invoke-virtual {p0, v1}, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->setResultCode(I)V

    .line 5186
    monitor-exit v2

    return-void

    .line 5183
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_11b
    add-int/lit8 v7, v7, 0x1

    goto :goto_10a

    .line 5189
    :cond_11e
    monitor-exit v2

    return-void

    .line 5240
    :cond_120
    :goto_120
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerServiceStub;->get()Lcom/android/server/alarm/AlarmManagerServiceStub;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/server/alarm/AlarmManagerServiceStub;->filterPersistPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5241
    .end local v3    # "pkgList":[Ljava/lang/String;
    .local v1, "pkgList":[Ljava/lang/String;
    if-eqz v1, :cond_1a1

    array-length v3, v1

    if-lez v3, :cond_1a1

    .line 5242
    array-length v3, v1

    move v4, v7

    :goto_12f
    if-ge v4, v3, :cond_1a1

    aget-object v5, v1, v4

    .line 5243
    .local v5, "pkg":Ljava/lang/String;
    if-ltz v0, :cond_167

    .line 5245
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v8, v5, v9}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForPackage(Ljava/lang/String;I)V

    .line 5246
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v8, v5, v9}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForPackage(Ljava/lang/String;I)V

    .line 5247
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 5248
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 5247
    invoke-virtual {v8, v5, v9}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForPackage(Ljava/lang/String;I)V

    .line 5249
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v8, v5, v9}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->removeForPackage(Ljava/lang/String;I)V

    .line 5250
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v8, v0, v7}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(II)V

    goto :goto_16c

    .line 5253
    :cond_167
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v8, v5}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 5255
    :goto_16c
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5256
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v6

    .local v8, "i":I
    :goto_17c
    if-ltz v8, :cond_19e

    .line 5257
    iget-object v9, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    .line 5258
    .local v9, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_19b

    .line 5259
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-gtz v10, :cond_19b

    .line 5260
    iget-object v10, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->removeAt(I)V

    .line 5256
    .end local v9    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    :cond_19b
    add-int/lit8 v8, v8, -0x1

    goto :goto_17c

    .line 5242
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_19e
    add-int/lit8 v4, v4, 0x1

    goto :goto_12f

    .line 5266
    .end local v1    # "pkgList":[Ljava/lang/String;
    :cond_1a1
    monitor-exit v2

    .line 5267
    return-void

    .line 5266
    :catchall_1a3
    move-exception v1

    monitor-exit v2
    :try_end_1a5
    .catchall {:try_start_d .. :try_end_1a5} :catchall_1a3

    throw v1

    :sswitch_data_1a6
    .sparse-switch
        -0x6849e2b4 -> :sswitch_57
        -0x53ae571d -> :sswitch_4d
        -0x3ff1ba66 -> :sswitch_43
        -0x2d2ad030 -> :sswitch_39
        -0x2c3dc982 -> :sswitch_2f
        0x1f50b9c2 -> :sswitch_25
        0x5c1076e2 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_1c4
    .packed-switch 0x0
        :pswitch_102
        :pswitch_d7
        :pswitch_bc
        :pswitch_96
        :pswitch_8d
        :pswitch_69
        :pswitch_7a
    .end packed-switch
.end method
