.class Lcom/android/server/net/NetworkPolicyManagerService$15;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 5290
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 5293
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_392

    .line 5508
    :pswitch_a
    return v3

    .line 5479
    :pswitch_b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    .line 5480
    .local v0, "uidStateUpdates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/SomeArgs;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 5481
    .local v3, "uidsSize":I
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 5482
    .local v5, "listenersSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1e
    if-ge v6, v5, :cond_7b

    .line 5483
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/net/INetworkPolicyListener;

    .line 5484
    .local v7, "listener":Landroid/net/INetworkPolicyListener;
    const/4 v8, 0x0

    .local v8, "uidIndex":I
    :goto_2d
    if-ge v8, v3, :cond_78

    .line 5485
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 5486
    .local v9, "uid":I
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/SomeArgs;

    .line 5487
    .local v10, "someArgs":Lcom/android/internal/os/SomeArgs;
    iget v11, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 5488
    .local v11, "oldBlockedReasons":I
    iget v12, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 5489
    .local v12, "newBlockedReasons":I
    iget v13, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 5491
    .local v13, "uidRules":I
    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v14, v7, v9, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchBlockedReasonChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V

    .line 5493
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v14

    if-eqz v14, :cond_70

    .line 5494
    const-string v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dispatching rules="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, " for uid="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5497
    :cond_70
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v7, v9, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchUidRulesChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 5484
    .end local v9    # "uid":I
    .end local v10    # "someArgs":Lcom/android/internal/os/SomeArgs;
    .end local v11    # "oldBlockedReasons":I
    .end local v12    # "newBlockedReasons":I
    .end local v13    # "uidRules":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 5482
    .end local v7    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v8    # "uidIndex":I
    :cond_78
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 5500
    .end local v6    # "i":I
    :cond_7b
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5502
    const/4 v4, 0x0

    .local v4, "uidIndex":I
    :goto_85
    if-ge v4, v3, :cond_93

    .line 5503
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 5502
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 5505
    .end local v4    # "uidIndex":I
    :cond_93
    const/4 v4, 0x1

    return v4

    .line 5450
    .end local v0    # "uidStateUpdates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/SomeArgs;>;"
    .end local v3    # "uidsSize":I
    .end local v5    # "listenersSize":I
    :pswitch_95
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5451
    :try_start_9a
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_9f
    .catchall {:try_start_9a .. :try_end_9f} :catchall_de

    .line 5452
    :try_start_9f
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 5453
    .local v0, "subId":I
    iget v6, v2, Landroid/os/Message;->arg2:I

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v7, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_ca

    .line 5454
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGD()Z

    move-result v6

    if-eqz v6, :cond_ba

    const-string v6, "NetworkPolicy"

    const-string v7, "Clearing expired subscription plans."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5455
    :cond_ba
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    new-array v8, v3, [Landroid/telephony/SubscriptionPlan;

    const-wide/16 v9, 0x0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    move v7, v0

    invoke-static/range {v6 .. v11}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$msetSubscriptionPlansInternal(Lcom/android/server/net/NetworkPolicyManagerService;I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    goto :goto_d7

    .line 5459
    :cond_ca
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGD()Z

    move-result v3

    if-eqz v3, :cond_d7

    const-string v3, "NetworkPolicy"

    const-string v6, "Ignoring stale CLEAR_SUBSCRIPTION_PLANS."

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5461
    .end local v0    # "subId":I
    :cond_d7
    :goto_d7
    monitor-exit v5
    :try_end_d8
    .catchall {:try_start_9f .. :try_end_d8} :catchall_db

    .line 5462
    :try_start_d8
    monitor-exit v4
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_de

    .line 5463
    const/4 v0, 0x1

    return v0

    .line 5461
    :catchall_db
    move-exception v0

    :try_start_dc
    monitor-exit v5
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService$15;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_dd
    throw v0

    .line 5462
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService$15;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_de
    move-exception v0

    monitor-exit v4
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_de

    throw v0

    .line 5466
    :pswitch_e1
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 5467
    .local v0, "uid":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    .line 5468
    .local v3, "newBlockedReasons":I
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 5469
    .local v4, "oldBlockedReasons":I
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 5470
    .local v5, "length":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_f8
    if-ge v6, v5, :cond_10e

    .line 5471
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/net/INetworkPolicyListener;

    .line 5472
    .restart local v7    # "listener":Landroid/net/INetworkPolicyListener;
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v8, v7, v0, v4, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchBlockedReasonChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V

    .line 5470
    .end local v7    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_f8

    .line 5475
    .end local v6    # "i":I
    :cond_10e
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5476
    const/4 v6, 0x1

    return v6

    .line 5320
    .end local v0    # "uid":I
    .end local v3    # "newBlockedReasons":I
    .end local v4    # "oldBlockedReasons":I
    .end local v5    # "length":I
    :pswitch_119
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmNetworkStats(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/app/usage/NetworkStatsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/usage/NetworkStatsManager;->forceUpdate()V

    .line 5322
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5325
    :try_start_127
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 5326
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 5327
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 5328
    monitor-exit v3

    .line 5329
    const/4 v0, 0x1

    return v0

    .line 5328
    :catchall_139
    move-exception v0

    monitor-exit v3
    :try_end_13b
    .catchall {:try_start_127 .. :try_end_13b} :catchall_139

    throw v0

    .line 5439
    :pswitch_13c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    .line 5440
    .local v0, "plans":[Landroid/telephony/SubscriptionPlan;
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 5441
    .local v3, "subId":I
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 5442
    .local v4, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14d
    if-ge v5, v4, :cond_163

    .line 5443
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    .line 5444
    .local v6, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v6, v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchSubscriptionPlansChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V

    .line 5442
    .end local v6    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_14d

    .line 5446
    .end local v5    # "i":I
    :cond_163
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5447
    const/4 v5, 0x1

    return v5

    .line 5433
    .end local v0    # "plans":[Landroid/telephony/SubscriptionPlan;
    .end local v3    # "subId":I
    .end local v4    # "length":I
    :pswitch_16e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 5434
    .local v0, "template":Landroid/net/NetworkTemplate;
    iget v4, v2, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_177

    const/4 v3, 0x1

    .line 5435
    .local v3, "enabled":Z
    :cond_177
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$msetNetworkTemplateEnabledInner(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V

    .line 5436
    const/4 v4, 0x1

    return v4

    .line 5427
    .end local v0    # "template":Landroid/net/NetworkTemplate;
    .end local v3    # "enabled":Z
    :pswitch_17e
    const/4 v4, 0x1

    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 5428
    .local v0, "userId":I
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    .line 5429
    .local v3, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$msetMeteredRestrictedPackagesInternal(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V

    .line 5430
    return v4

    .line 5412
    .end local v0    # "userId":I
    .end local v3    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_18b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 5413
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5414
    .local v3, "subId":I
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 5415
    .local v10, "overrideMask":I
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 5416
    .local v11, "overrideValue":I
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v12, v4

    check-cast v12, [I

    .line 5417
    .local v12, "networkTypes":[I
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v13

    .line 5418
    .local v13, "length":I
    const/4 v4, 0x0

    move v14, v4

    .local v14, "i":I
    :goto_1b8
    if-ge v14, v13, :cond_1d4

    .line 5419
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/net/INetworkPolicyListener;

    .line 5420
    .local v15, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object v5, v15

    move v6, v3

    move v7, v10

    move v8, v11

    move-object v9, v12

    invoke-static/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchSubscriptionOverride(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III[I)V

    .line 5418
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v14, v14, 0x1

    goto :goto_1b8

    .line 5423
    .end local v14    # "i":I
    :cond_1d4
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5424
    const/4 v4, 0x1

    return v4

    .line 5408
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "subId":I
    .end local v10    # "overrideMask":I
    .end local v11    # "overrideValue":I
    .end local v12    # "networkTypes":[I
    .end local v13    # "length":I
    :pswitch_1df
    const/4 v4, 0x1

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mresetUidFirewallRules(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 5409
    return v4

    .line 5366
    :pswitch_1e8
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 5367
    .local v0, "uid":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    .line 5368
    .local v3, "policy":I
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    .line 5370
    .local v4, "notifyApp":Ljava/lang/Boolean;
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 5371
    .local v5, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1fb
    if-ge v6, v5, :cond_211

    .line 5372
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/net/INetworkPolicyListener;

    .line 5373
    .restart local v7    # "listener":Landroid/net/INetworkPolicyListener;
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v8, v7, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchUidPoliciesChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 5371
    .end local v7    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1fb

    .line 5375
    .end local v6    # "i":I
    :cond_211
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5377
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_225

    .line 5378
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6, v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mbroadcastRestrictBackgroundChanged(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V

    .line 5380
    :cond_225
    const/4 v6, 0x1

    return v6

    .line 5401
    .end local v0    # "uid":I
    .end local v3    # "policy":I
    .end local v4    # "notifyApp":Ljava/lang/Boolean;
    .end local v5    # "length":I
    :pswitch_227
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5402
    .local v0, "iface":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mremoveInterfaceLimit(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 5403
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmNetworkStats(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/app/usage/NetworkStatsManager;

    move-result-object v3

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/NetworkStatsManager;->setStatsProviderWarningAndLimitAsync(Ljava/lang/String;JJ)V

    .line 5405
    const/4 v3, 0x1

    return v3

    .line 5392
    .end local v0    # "iface":Ljava/lang/String;
    :pswitch_240
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;

    .line 5394
    .local v0, "val":Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mremoveInterfaceLimit(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 5395
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    iget-wide v5, v0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->limit:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$msetInterfaceLimit(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    .line 5396
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmNetworkStats(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/app/usage/NetworkStatsManager;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    iget-wide v6, v0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->warning:J

    iget-wide v8, v0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->limit:J

    invoke-virtual/range {v4 .. v9}, Landroid/app/usage/NetworkStatsManager;->setStatsProviderWarningAndLimitAsync(Ljava/lang/String;JJ)V

    .line 5398
    const/4 v3, 0x1

    return v3

    .line 5383
    .end local v0    # "val":Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;
    :pswitch_265
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 5386
    .local v3, "lowestRule":J
    const-wide/16 v5, 0x3e8

    div-long v5, v3, v5

    .line 5388
    .local v5, "persistThreshold":J
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmNetworkStats(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/app/usage/NetworkStatsManager;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/app/usage/NetworkStatsManager;->setDefaultGlobalAlert(J)V

    .line 5389
    const/4 v0, 0x1

    return v0

    .line 5352
    .end local v3    # "lowestRule":J
    .end local v5    # "persistThreshold":J
    :pswitch_27c
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_281

    const/4 v3, 0x1

    :cond_281
    move v0, v3

    .line 5353
    .local v0, "restrictBackground":Z
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 5354
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28d
    if-ge v4, v3, :cond_2a3

    .line 5355
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 5356
    .local v5, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6, v5, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchRestrictBackgroundChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 5354
    .end local v5    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_28d

    .line 5358
    .end local v4    # "i":I
    :cond_2a3
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5359
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5361
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5362
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmContext(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5363
    const/4 v5, 0x1

    return v5

    .line 5332
    .end local v0    # "restrictBackground":Z
    .end local v3    # "length":I
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_2c5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 5333
    .local v3, "iface":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5335
    :try_start_2cf
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmMeteredIfaces(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2de

    .line 5336
    monitor-exit v4

    const/4 v0, 0x1

    return v0

    .line 5338
    :cond_2de
    monitor-exit v4
    :try_end_2df
    .catchall {:try_start_2cf .. :try_end_2df} :catchall_302

    .line 5342
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmNetworkStats(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/app/usage/NetworkStatsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/usage/NetworkStatsManager;->forceUpdate()V

    .line 5344
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5345
    :try_start_2ed
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 5346
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 5347
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 5348
    monitor-exit v5

    .line 5349
    const/4 v0, 0x1

    return v0

    .line 5348
    :catchall_2ff
    move-exception v0

    monitor-exit v5
    :try_end_301
    .catchall {:try_start_2ed .. :try_end_301} :catchall_2ff

    throw v0

    .line 5338
    :catchall_302
    move-exception v0

    :try_start_303
    monitor-exit v4
    :try_end_304
    .catchall {:try_start_303 .. :try_end_304} :catchall_302

    throw v0

    .line 5310
    .end local v3    # "iface":Ljava/lang/String;
    :pswitch_305
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 5311
    .local v0, "meteredIfaces":[Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 5312
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_314
    if-ge v4, v3, :cond_32a

    .line 5313
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 5314
    .restart local v5    # "listener":Landroid/net/INetworkPolicyListener;
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6, v5, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchMeteredIfacesChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 5312
    .end local v5    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_314

    .line 5316
    .end local v4    # "i":I
    :cond_32a
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5317
    const/4 v4, 0x1

    return v4

    .line 5295
    .end local v0    # "meteredIfaces":[Ljava/lang/String;
    .end local v3    # "length":I
    :pswitch_335
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 5296
    .local v0, "uid":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    .line 5297
    .local v3, "uidRules":I
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v4

    if-eqz v4, :cond_365

    .line 5298
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dispatching rules="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5301
    :cond_365
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 5302
    .local v4, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_370
    if-ge v5, v4, :cond_386

    .line 5303
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    .line 5304
    .local v6, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v6, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchUidRulesChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 5302
    .end local v6    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_370

    .line 5306
    .end local v5    # "i":I
    :cond_386
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5307
    const/4 v5, 0x1

    return v5

    nop

    :pswitch_data_392
    .packed-switch 0x1
        :pswitch_335
        :pswitch_305
        :pswitch_a
        :pswitch_a
        :pswitch_2c5
        :pswitch_27c
        :pswitch_265
        :pswitch_a
        :pswitch_a
        :pswitch_240
        :pswitch_227
        :pswitch_a
        :pswitch_1e8
        :pswitch_a
        :pswitch_1df
        :pswitch_18b
        :pswitch_17e
        :pswitch_16e
        :pswitch_13c
        :pswitch_119
        :pswitch_e1
        :pswitch_95
        :pswitch_b
    .end packed-switch
.end method
