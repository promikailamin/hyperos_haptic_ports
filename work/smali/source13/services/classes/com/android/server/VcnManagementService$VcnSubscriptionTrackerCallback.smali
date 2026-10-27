.class Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;
.super Ljava/lang/Object;
.source "VcnManagementService.java"

# interfaces
.implements Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcnSubscriptionTrackerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/VcnManagementService;)V
    .registers 2

    .line 488
    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;-><init>(Lcom/android/server/VcnManagementService;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onNewSnapshot$0$com-android-server-VcnManagementService$VcnSubscriptionTrackerCallback(Landroid/os/ParcelUuid;Lcom/android/server/vcn/Vcn;)V
    .registers 6
    .param p1, "uuidToTeardown"    # Landroid/os/ParcelUuid;
    .param p2, "instanceToTeardown"    # Lcom/android/server/vcn/Vcn;

    .line 549
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v0}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmLock(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 554
    :try_start_7
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmVcns(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_1e

    .line 555
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1, p1}, Lcom/android/server/VcnManagementService;->-$$Nest$mstopVcnLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V

    .line 559
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/android/server/VcnManagementService;->-$$Nest$mnotifyAllPermissionedStatusCallbacksLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;I)V

    .line 562
    :cond_1e
    monitor-exit v0

    .line 563
    return-void

    .line 562
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public onNewSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .registers 16
    .param p1, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 498
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v0}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmLock(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 499
    :try_start_7
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmLastSnapshot(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-result-object v1

    .line 500
    .local v1, "oldSnapshot":Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v2, p1}, Lcom/android/server/VcnManagementService;->-$$Nest$fputmLastSnapshot(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    .line 501
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "new snapshot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v4}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmLastSnapshot(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/VcnManagementService;->-$$Nest$mlogInfo(Lcom/android/server/VcnManagementService;Ljava/lang/String;)V

    .line 504
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v2}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmConfigs(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 505
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 508
    .local v4, "subGrp":Landroid/os/ParcelUuid;
    nop

    .line 509
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/vcn/VcnConfig;

    invoke-virtual {v5}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v5

    .line 508
    invoke-virtual {p1, v4, v5}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    iget-object v5, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 510
    invoke-static {v5, v4, p1}, Lcom/android/server/VcnManagementService;->-$$Nest$misActiveSubGroup(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 511
    iget-object v5, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v5}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmVcns(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    .line 512
    iget-object v5, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/vcn/VcnConfig;

    invoke-static {v5, v4, v6}, Lcom/android/server/VcnManagementService;->-$$Nest$mstartVcnLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    .line 516
    :cond_81
    iget-object v5, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v5}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmHandler(Lcom/android/server/VcnManagementService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v6}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmVcns(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 518
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;>;"
    .end local v4    # "subGrp":Landroid/os/ParcelUuid;
    :cond_94
    goto :goto_3f

    .line 522
    :cond_95
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v2}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmVcns(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 523
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Lcom/android/server/vcn/Vcn;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 524
    .restart local v4    # "subGrp":Landroid/os/ParcelUuid;
    iget-object v5, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v5}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmConfigs(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/vcn/VcnConfig;

    .line 526
    .local v5, "config":Landroid/net/vcn/VcnConfig;
    iget-object v6, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v6, v4, p1}, Lcom/android/server/VcnManagementService;->-$$Nest$misActiveSubGroup(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result v6

    .line 527
    .local v6, "isActiveSubGrp":Z
    nop

    .line 528
    invoke-virtual {p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getActiveDataSubscriptionId()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-eqz v7, :cond_dc

    iget-object v7, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 529
    invoke-static {v7, v4, p1}, Lcom/android/server/VcnManagementService;->-$$Nest$misActiveSubGroup(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result v7

    if-nez v7, :cond_dc

    const/4 v7, 0x1

    goto :goto_dd

    :cond_dc
    const/4 v7, 0x0

    .line 532
    .local v7, "isValidActiveDataSubIdNotInVcnSubGrp":Z
    :goto_dd
    if-eqz v5, :cond_fc

    .line 534
    invoke-virtual {v5}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v8

    .line 533
    invoke-virtual {p1, v4, v8}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fc

    if-nez v6, :cond_ec

    goto :goto_fc

    .line 566
    :cond_ec
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/vcn/Vcn;

    iget-object v9, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v9}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmLastSnapshot(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/vcn/Vcn;->updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    goto :goto_11a

    .line 536
    :cond_fc
    :goto_fc
    move-object v8, v4

    .line 537
    .local v8, "uuidToTeardown":Landroid/os/ParcelUuid;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/vcn/Vcn;

    .line 545
    .local v9, "instanceToTeardown":Lcom/android/server/vcn/Vcn;
    if-eqz v7, :cond_108

    .line 546
    const-wide/16 v10, 0x0

    goto :goto_10a

    .line 547
    :cond_108
    sget-wide v10, Lcom/android/server/VcnManagementService;->CARRIER_PRIVILEGES_LOST_TEARDOWN_DELAY_MS:J

    :goto_10a
    nop

    .line 548
    .local v10, "teardownDelayMs":J
    iget-object v12, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v12}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmHandler(Lcom/android/server/VcnManagementService;)Landroid/os/Handler;

    move-result-object v12

    new-instance v13, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback$$ExternalSyntheticLambda0;

    invoke-direct {v13, p0, v8, v9}, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;Landroid/os/ParcelUuid;Lcom/android/server/vcn/Vcn;)V

    invoke-virtual {v12, v13, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 564
    nop

    .line 568
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Lcom/android/server/vcn/Vcn;>;"
    .end local v4    # "subGrp":Landroid/os/ParcelUuid;
    .end local v5    # "config":Landroid/net/vcn/VcnConfig;
    .end local v6    # "isActiveSubGrp":Z
    .end local v7    # "isValidActiveDataSubIdNotInVcnSubGrp":Z
    .end local v8    # "uuidToTeardown":Landroid/os/ParcelUuid;
    .end local v9    # "instanceToTeardown":Lcom/android/server/vcn/Vcn;
    .end local v10    # "teardownDelayMs":J
    :goto_11a
    goto :goto_a3

    .line 570
    :cond_11b
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 571
    invoke-static {v2, v1}, Lcom/android/server/VcnManagementService;->-$$Nest$mgetSubGroupToSubIdMappings(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;

    move-result-object v2

    .line 572
    .local v2, "oldSubGrpMappings":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    iget-object v3, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v3}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmLastSnapshot(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-result-object v4

    .line 573
    invoke-static {v3, v4}, Lcom/android/server/VcnManagementService;->-$$Nest$mgetSubGroupToSubIdMappings(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;

    move-result-object v3

    .line 574
    .local v3, "currSubGrpMappings":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    invoke-interface {v3, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13b

    .line 575
    iget-object v4, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v4}, Lcom/android/server/VcnManagementService;->-$$Nest$mgarbageCollectAndWriteVcnConfigsLocked(Lcom/android/server/VcnManagementService;)V

    .line 576
    iget-object v4, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v4}, Lcom/android/server/VcnManagementService;->-$$Nest$mnotifyAllPolicyListenersLocked(Lcom/android/server/VcnManagementService;)V

    .line 578
    .end local v1    # "oldSnapshot":Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .end local v2    # "oldSubGrpMappings":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .end local v3    # "currSubGrpMappings":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    :cond_13b
    monitor-exit v0

    .line 579
    return-void

    .line 578
    :catchall_13d
    move-exception v1

    monitor-exit v0
    :try_end_13f
    .catchall {:try_start_7 .. :try_end_13f} :catchall_13d

    throw v1
.end method
