.class final Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "StatsPullAtomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatsSubscriptionsListener"
.end annotation


# instance fields
.field private final mSm:Landroid/telephony/SubscriptionManager;

.field final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/telephony/SubscriptionManager;)V
    .registers 3
    .param p2, "sm"    # Landroid/telephony/SubscriptionManager;

    .line 4817
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 4818
    iput-object p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->mSm:Landroid/telephony/SubscriptionManager;

    .line 4819
    return-void
.end method

.method static synthetic lambda$onSubscriptionsChanged$0(Landroid/telephony/SubscriptionInfo;Lcom/android/server/stats/pull/netstats/SubInfo;)Z
    .registers 4
    .param p0, "sub"    # Landroid/telephony/SubscriptionInfo;
    .param p1, "it"    # Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 4826
    iget v0, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 18

    .line 4823
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->mSm:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 4824
    .local v2, "currentSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 4825
    .local v3, "sub":Landroid/telephony/SubscriptionInfo;
    iget-object v4, v1, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmHistoricalSubs(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/SubscriptionInfo;)V

    invoke-static {v4, v5}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 4828
    .local v4, "match":Lcom/android/server/stats/pull/netstats/SubInfo;
    if-eqz v4, :cond_2c

    goto :goto_c

    .line 4831
    :cond_2c
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v12

    .line 4832
    .local v12, "subId":I
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v13

    .line 4833
    .local v13, "mcc":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object v14

    .line 4834
    .local v14, "mnc":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTelephony(Lcom/android/server/stats/pull/StatsPullAtomService;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v15

    .line 4835
    .local v15, "subscriberId":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b3

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b3

    .line 4836
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5c

    goto :goto_b3

    .line 4841
    :cond_5c
    new-instance v16, Lcom/android/server/stats/pull/netstats/SubInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v7

    .line 4842
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v11

    move-object/from16 v5, v16

    move v6, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v5 .. v11}, Lcom/android/server/stats/pull/netstats/SubInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4843
    .local v5, "subInfo":Lcom/android/server/stats/pull/netstats/SubInfo;
    const-string v6, "StatsPullAtomService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "subId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " added into historical sub list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    iget-object v6, v1, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDataBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 4846
    :try_start_95
    iget-object v7, v1, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmHistoricalSubs(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4849
    iget-object v7, v1, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNetworkStatsBaselines(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v8, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mgetDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4850
    monitor-exit v6

    .line 4851
    .end local v3    # "sub":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "match":Lcom/android/server/stats/pull/netstats/SubInfo;
    .end local v5    # "subInfo":Lcom/android/server/stats/pull/netstats/SubInfo;
    .end local v12    # "subId":I
    .end local v13    # "mcc":Ljava/lang/String;
    .end local v14    # "mnc":Ljava/lang/String;
    .end local v15    # "subscriberId":Ljava/lang/String;
    goto/16 :goto_c

    .line 4850
    .restart local v3    # "sub":Landroid/telephony/SubscriptionInfo;
    .restart local v4    # "match":Lcom/android/server/stats/pull/netstats/SubInfo;
    .restart local v5    # "subInfo":Lcom/android/server/stats/pull/netstats/SubInfo;
    .restart local v12    # "subId":I
    .restart local v13    # "mcc":Ljava/lang/String;
    .restart local v14    # "mnc":Ljava/lang/String;
    .restart local v15    # "subscriberId":Ljava/lang/String;
    :catchall_b0
    move-exception v0

    monitor-exit v6
    :try_end_b2
    .catchall {:try_start_95 .. :try_end_b2} :catchall_b0

    throw v0

    .line 4837
    .end local v5    # "subInfo":Lcom/android/server/stats/pull/netstats/SubInfo;
    :cond_b3
    :goto_b3
    const-string v5, "StatsPullAtomService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subInfo of subId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is invalid, ignored."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4838
    goto/16 :goto_c

    .line 4852
    .end local v3    # "sub":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "match":Lcom/android/server/stats/pull/netstats/SubInfo;
    .end local v12    # "subId":I
    .end local v13    # "mcc":Ljava/lang/String;
    .end local v14    # "mnc":Ljava/lang/String;
    .end local v15    # "subscriberId":Ljava/lang/String;
    :cond_d4
    return-void
.end method
