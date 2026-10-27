.class Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
.super Lcom/android/server/net/NetworkPolicyManagerInternal;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkPolicyManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 6029
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J
    .registers 9
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "quotaType"    # I

    .line 6072
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6073
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mgetSubIdLocked(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I

    move-result v2

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    .line 6075
    .local v1, "quotaBytes":J
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_4e

    .line 6076
    cmp-long v0, v1, v3

    if-nez v0, :cond_1b

    .line 6077
    return-wide v3

    .line 6080
    :cond_1b
    const/4 v0, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne p2, v0, :cond_35

    .line 6081
    long-to-float v0, v1

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmContext(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "netpolicy_quota_frac_jobs"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    mul-float/2addr v0, v3

    float-to-long v3, v0

    return-wide v3

    .line 6083
    :cond_35
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4d

    .line 6084
    long-to-float v0, v1

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmContext(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "netpolicy_quota_frac_multipath"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    mul-float/2addr v0, v3

    float-to-long v3, v0

    return-wide v3

    .line 6087
    :cond_4d
    return-wide v3

    .line 6075
    .end local v1    # "quotaBytes":J
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public getSubscriptionPlan(Landroid/net/Network;)Landroid/telephony/SubscriptionPlan;
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 6063
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6064
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mgetSubIdLocked(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I

    move-result v1

    .line 6065
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mgetPrimarySubscriptionPlanLocked(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 6066
    .end local v1    # "subId":I
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method

.method synthetic lambda$setLowPowerStandbyActive$0$com-android-server-net-NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 6126
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mupdateRulesForPowerRestrictionsUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    return-void
.end method

.method public onAdminDataAvailable()V
    .registers 2

    .line 6093
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmAdminDataAvailableLatch(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6094
    return-void
.end method

.method public onTempPowerSaveWhitelistChange(IZILjava/lang/String;)V
    .registers 8
    .param p1, "appId"    # I
    .param p2, "added"    # Z
    .param p3, "reasonCode"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 6047
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6048
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-nez v1, :cond_d

    .line 6049
    monitor-exit v0

    return-void

    .line 6051
    :cond_d
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmLogger(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyLogger;->tempPowerSaveWlChanged(IZILjava/lang/String;)V

    .line 6052
    if-eqz p2, :cond_23

    .line 6053
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmPowerSaveTempWhitelistAppIds(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2c

    .line 6055
    :cond_23
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmPowerSaveTempWhitelistAppIds(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 6057
    :goto_2c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mupdateRulesForTempWhitelistChangeUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 6058
    monitor-exit v0

    .line 6059
    return-void

    .line 6058
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public resetUserState(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 6033
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6034
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateUL(IZZ)Z

    move-result v1

    .line 6035
    .local v1, "changed":Z
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$maddDefaultRestrictBackgroundAllowlistUidsUL(Lcom/android/server/net/NetworkPolicyManagerService;I)Z

    move-result v4

    if-nez v4, :cond_19

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    move v2, v3

    :cond_19
    :goto_19
    move v1, v2

    .line 6036
    if-eqz v1, :cond_2b

    .line 6037
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_2d

    .line 6038
    :try_start_21
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 6039
    monitor-exit v2

    goto :goto_2b

    :catchall_28
    move-exception v3

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
    .end local p1    # "userId":I
    :try_start_2a
    throw v3

    .line 6041
    .end local v1    # "changed":Z
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
    .restart local p1    # "userId":I
    :cond_2b
    :goto_2b
    monitor-exit v0

    .line 6042
    return-void

    .line 6041
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public setAppIdleWhitelist(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "shouldWhitelist"    # Z

    .line 6098
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

    .line 6099
    return-void
.end method

.method public setLowPowerStandbyActive(Z)V
    .registers 8
    .param p1, "active"    # Z

    .line 6114
    const-string/jumbo v0, "setLowPowerStandbyActive"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6116
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_4d

    .line 6117
    :try_start_e
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    if-ne v3, p1, :cond_19

    .line 6118
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_4a

    .line 6130
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6118
    return-void

    .line 6120
    :cond_19
    :try_start_19
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-boolean p1, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    .line 6121
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_4a

    .line 6122
    :try_start_22
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-nez v4, :cond_2e

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_47

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_4a

    .line 6130
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6122
    return-void

    .line 6123
    :cond_2e
    :try_start_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_47

    .line 6125
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo v4, "updateRulesForRestrictPower"

    new-instance v5, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;)V

    invoke-static {v3, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mforEachUid(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    .line 6127
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForLowPowerStandbyUL()V

    .line 6128
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_4a

    .line 6130
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6131
    nop

    .line 6132
    return-void

    .line 6123
    :catchall_47
    move-exception v4

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
    .end local p1    # "active":Z
    :try_start_49
    throw v4

    .line 6128
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
    .restart local p1    # "active":Z
    :catchall_4a
    move-exception v3

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4a

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
    .end local p1    # "active":Z
    :try_start_4c
    throw v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    .line 6130
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
    .restart local p1    # "active":Z
    :catchall_4d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6131
    throw v0
.end method

.method public setLowPowerStandbyAllowlist([I)V
    .registers 9
    .param p1, "uids"    # [I

    .line 6136
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6137
    :try_start_5
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 6138
    .local v1, "changedUids":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmLowPowerStandbyAllowlistUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2e

    .line 6139
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmLowPowerStandbyAllowlistUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 6140
    .local v3, "oldUid":I
    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 6141
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6138
    .end local v3    # "oldUid":I
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6145
    .end local v2    # "i":I
    :cond_2e
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2f
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 6146
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 6147
    .local v3, "deletedUid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmLowPowerStandbyAllowlistUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 6145
    .end local v3    # "deletedUid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 6150
    .end local v2    # "i":I
    :cond_45
    array-length v2, p1

    const/4 v3, 0x0

    :goto_47
    if-ge v3, v2, :cond_66

    aget v5, p1, v3

    .line 6151
    .local v5, "newUid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmLowPowerStandbyAllowlistUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_63

    .line 6152
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 6153
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmLowPowerStandbyAllowlistUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 6150
    .end local v5    # "newUid":I
    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 6157
    :cond_66
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    if-nez v2, :cond_6e

    .line 6158
    monitor-exit v0

    return-void

    .line 6161
    :cond_6e
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_73
    .catchall {:try_start_5 .. :try_end_73} :catchall_9a

    .line 6162
    :try_start_73
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-nez v3, :cond_7c

    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_97

    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_9a

    return-void

    .line 6163
    :cond_7c
    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_97

    .line 6165
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7e
    :try_start_7e
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_95

    .line 6166
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 6167
    .local v3, "changedUid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mupdateRulesForPowerRestrictionsUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 6168
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForLowPowerStandbyUL(I)V

    .line 6165
    .end local v3    # "changedUid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 6170
    .end local v1    # "changedUids":Landroid/util/SparseBooleanArray;
    .end local v2    # "i":I
    :cond_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_7e .. :try_end_96} :catchall_9a

    .line 6171
    return-void

    .line 6163
    .restart local v1    # "changedUids":Landroid/util/SparseBooleanArray;
    :catchall_97
    move-exception v3

    :try_start_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
    .end local p1    # "uids":[I
    :try_start_99
    throw v3

    .line 6170
    .end local v1    # "changedUids":Landroid/util/SparseBooleanArray;
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
    .restart local p1    # "uids":[I
    :catchall_9a
    move-exception v1

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9a

    throw v1
.end method

.method public setMeteredRestrictedPackages(Ljava/util/Set;I)V
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 6103
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$msetMeteredRestrictedPackagesInternal(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V

    .line 6104
    return-void
.end method

.method public setMeteredRestrictedPackagesAsync(Ljava/util/Set;I)V
    .registers 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 6108
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6109
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6110
    return-void
.end method
