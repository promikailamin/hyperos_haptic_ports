.class final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1637
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1638
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1639
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 1643
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_24e

    :pswitch_8
    goto/16 :goto_24d

    .line 1759
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1760
    .local v0, "appId":I
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManagerInternal(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v3, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZILjava/lang/String;)V

    .line 1762
    .end local v0    # "appId":I
    goto/16 :goto_24d

    .line 1752
    :pswitch_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1753
    .restart local v0    # "appId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1754
    .local v1, "reasonCode":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1755
    .local v3, "reason":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManagerInternal(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZILjava/lang/String;)V

    .line 1757
    .end local v0    # "appId":I
    .end local v1    # "reasonCode":I
    .end local v3    # "reason":Ljava/lang/String;
    goto/16 :goto_24d

    .line 1735
    :pswitch_2a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1736
    .local v0, "uid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_31

    goto :goto_32

    :cond_31
    move v2, v3

    :goto_32
    move v1, v2

    .line 1738
    .local v1, "added":Z
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v2

    .line 1739
    :try_start_36
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmTempAllowlistChangeListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmTempAllowlistChangeListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;

    move-result-object v5

    .line 1741
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;

    .line 1739
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;

    .line 1742
    .local v4, "listeners":[Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_36 .. :try_end_4f} :catchall_62

    .line 1743
    array-length v2, v4

    :goto_50
    if-ge v3, v2, :cond_60

    aget-object v5, v4, v3

    .line 1744
    .local v5, "listener":Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;
    if-eqz v1, :cond_5a

    .line 1745
    invoke-interface {v5, v0}, Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;->onAppAdded(I)V

    goto :goto_5d

    .line 1747
    :cond_5a
    invoke-interface {v5, v0}, Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;->onAppRemoved(I)V

    .line 1743
    .end local v5    # "listener":Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 1750
    .end local v0    # "uid":I
    .end local v1    # "added":Z
    .end local v4    # "listeners":[Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;
    :cond_60
    goto/16 :goto_24d

    .line 1742
    .restart local v0    # "uid":I
    .restart local v1    # "added":Z
    :catchall_62
    move-exception v3

    :try_start_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v3

    .line 1776
    .end local v0    # "uid":I
    .end local v1    # "added":Z
    :pswitch_65
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$mupdatePreIdleFactor(Lcom/android/server/DeviceIdleController;)V

    .line 1777
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$mmaybeDoImmediateMaintenance(Lcom/android/server/DeviceIdleController;)V

    .line 1778
    goto/16 :goto_24d

    .line 1773
    :pswitch_71
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$mupdatePreIdleFactor(Lcom/android/server/DeviceIdleController;)V

    .line 1774
    goto/16 :goto_24d

    .line 1764
    :pswitch_78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 1765
    .local v0, "constraint":Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_81

    goto :goto_82

    :cond_81
    move v2, v3

    :goto_82
    move v1, v2

    .line 1766
    .local v1, "monitoring":Z
    if-eqz v1, :cond_89

    .line 1767
    invoke-interface {v0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->startMonitoring()V

    goto :goto_8c

    .line 1769
    :cond_89
    invoke-interface {v0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->stopMonitoring()V

    .line 1771
    .end local v0    # "constraint":Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .end local v1    # "monitoring":Z
    :goto_8c
    goto/16 :goto_24d

    .line 1732
    :pswitch_8e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1733
    goto/16 :goto_24d

    .line 1780
    :pswitch_95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 1784
    .local v0, "newListener":Lcom/android/server/DeviceIdleInternal$StationaryListener;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 1785
    :try_start_9c
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-$$Nest$misStationaryLocked(Lcom/android/server/DeviceIdleController;)Z

    move-result v2

    .line 1786
    .local v2, "isStationary":Z
    if-nez v0, :cond_bd

    .line 1788
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmStationaryListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmStationaryListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;

    move-result-object v5

    .line 1790
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 1788
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .local v4, "listeners":[Lcom/android/server/DeviceIdleInternal$StationaryListener;
    goto :goto_be

    .line 1792
    .end local v4    # "listeners":[Lcom/android/server/DeviceIdleInternal$StationaryListener;
    :cond_bd
    const/4 v4, 0x0

    .line 1794
    .restart local v4    # "listeners":[Lcom/android/server/DeviceIdleInternal$StationaryListener;
    :goto_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_9c .. :try_end_bf} :catchall_d3

    .line 1795
    if-eqz v4, :cond_cc

    .line 1796
    array-length v1, v4

    :goto_c2
    if-ge v3, v1, :cond_cc

    aget-object v5, v4, v3

    .line 1797
    .local v5, "listener":Lcom/android/server/DeviceIdleInternal$StationaryListener;
    invoke-interface {v5, v2}, Lcom/android/server/DeviceIdleInternal$StationaryListener;->onDeviceStationaryChanged(Z)V

    .line 1796
    .end local v5    # "listener":Lcom/android/server/DeviceIdleInternal$StationaryListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c2

    .line 1800
    :cond_cc
    if-eqz v0, :cond_24d

    .line 1801
    invoke-interface {v0, v2}, Lcom/android/server/DeviceIdleInternal$StationaryListener;->onDeviceStationaryChanged(Z)V

    goto/16 :goto_24d

    .line 1794
    .end local v2    # "isStationary":Z
    .end local v4    # "listeners":[Lcom/android/server/DeviceIdleInternal$StationaryListener;
    :catchall_d3
    move-exception v2

    :try_start_d4
    monitor-exit v1
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw v2

    .line 1727
    .end local v0    # "newListener":Lcom/android/server/DeviceIdleInternal$StationaryListener;
    :pswitch_d6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1728
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    .line 1729
    .end local v0    # "uid":I
    goto/16 :goto_24d

    .line 1705
    :pswitch_df
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1706
    .local v0, "activeReason":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1708
    .local v1, "activeUid":I
    if-eqz v0, :cond_e9

    move-object v2, v0

    goto :goto_ec

    :cond_e9
    const-string/jumbo v2, "unknown"

    .line 1707
    :goto_ec
    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1709
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v2

    .line 1710
    .local v2, "deepChanged":Z
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v4

    .line 1712
    .local v4, "lightChanged":Z
    :try_start_103
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManager(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1713
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmBatteryStats(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, v3, v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_115
    .catch Landroid/os/RemoteException; {:try_start_103 .. :try_end_115} :catch_116

    .line 1716
    goto :goto_117

    .line 1715
    :catch_116
    move-exception v3

    .line 1717
    :goto_117
    if-eqz v2, :cond_12a

    .line 1718
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1720
    :cond_12a
    if-eqz v4, :cond_13d

    .line 1721
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLightIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1723
    :cond_13d
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    .line 1724
    .end local v0    # "activeReason":Ljava/lang/String;
    .end local v1    # "activeUid":I
    .end local v2    # "deepChanged":Z
    .end local v4    # "lightChanged":Z
    goto/16 :goto_24d

    .line 1679
    :pswitch_142
    const-string/jumbo v0, "unknown"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1680
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1681
    .local v0, "deepChanged":Z
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v2

    .line 1683
    .local v2, "lightChanged":Z
    :try_start_15c
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManager(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1684
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmBatteryStats(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    .line 1685
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 1684
    invoke-interface {v4, v3, v1, v5}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_172
    .catch Landroid/os/RemoteException; {:try_start_15c .. :try_end_172} :catch_173

    .line 1687
    goto :goto_174

    .line 1686
    :catch_173
    move-exception v1

    .line 1688
    :goto_174
    if-eqz v0, :cond_197

    .line 1689
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1690
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleStartedDoneReceiver(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1693
    :cond_197
    if-eqz v2, :cond_1ba

    .line 1694
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1695
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLightIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleStartedDoneReceiver(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1700
    :cond_1ba
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1701
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    .line 1702
    .end local v0    # "deepChanged":Z
    .end local v2    # "lightChanged":Z
    goto/16 :goto_24d

    .line 1651
    :pswitch_1c4
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    .line 1654
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1e1

    .line 1655
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1656
    .restart local v0    # "deepChanged":Z
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v3

    .local v3, "lightChanged":Z
    goto :goto_1f5

    .line 1658
    .end local v0    # "deepChanged":Z
    .end local v3    # "lightChanged":Z
    :cond_1e1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1659
    .restart local v0    # "deepChanged":Z
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v3

    .line 1662
    .restart local v3    # "lightChanged":Z
    :goto_1f5
    :try_start_1f5
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManager(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1663
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmBatteryStats(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v4, :cond_20a

    .line 1664
    move v2, v4

    goto :goto_20b

    .line 1665
    :cond_20a
    nop

    :goto_20b
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 1663
    invoke-interface {v5, v2, v1, v4}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_212
    .catch Landroid/os/RemoteException; {:try_start_1f5 .. :try_end_212} :catch_213

    .line 1667
    goto :goto_214

    .line 1666
    :catch_213
    move-exception v1

    .line 1668
    :goto_214
    if-eqz v0, :cond_227

    .line 1669
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1671
    :cond_227
    if-eqz v3, :cond_23a

    .line 1672
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLightIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1674
    :cond_23a
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    .line 1675
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmGoingIdleWakeLock(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1676
    .end local v0    # "deepChanged":Z
    .end local v3    # "lightChanged":Z
    goto :goto_24d

    .line 1646
    :pswitch_247
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    .line 1647
    nop

    .line 1806
    :cond_24d
    :goto_24d
    return-void

    :pswitch_data_24e
    .packed-switch 0x1
        :pswitch_247
        :pswitch_1c4
        :pswitch_1c4
        :pswitch_142
        :pswitch_df
        :pswitch_d6
        :pswitch_95
        :pswitch_8e
        :pswitch_8
        :pswitch_78
        :pswitch_71
        :pswitch_65
        :pswitch_2a
        :pswitch_17
        :pswitch_a
    .end packed-switch
.end method
