.class public Lcom/android/server/notification/NotificationAttentionHelper$3;
.super Landroid/content/BroadcastReceiver;
.source "NotificationAttentionHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .registers 2

    .line 1696
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 1699
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto/16 :goto_11e

    .line 1704
    :cond_8
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    .line 1707
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationAttentionHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1708
    :try_start_19
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v3, v2}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmScreenOn(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    .line 1709
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 1710
    monitor-exit v0

    goto/16 :goto_bb

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_26

    throw p0

    .line 1711
    :cond_29
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1712
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationAttentionHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1713
    :try_start_38
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v3, v1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmScreenOn(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    .line 1714
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v3, v1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmUserPresent(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    .line 1715
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 1716
    monitor-exit v0

    goto :goto_bb

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_38 .. :try_end_4b} :catchall_49

    throw p0

    .line 1717
    :cond_4c
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1718
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string/jumbo v4, "state"

    .line 1719
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmInCallStateOffHook(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    .line 1720
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationAttentionHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1721
    :try_start_6d
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 1722
    monitor-exit v0

    goto :goto_bb

    :catchall_74
    move-exception p0

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_74

    throw p0

    .line 1723
    :cond_77
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1724
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0, v2}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmUserPresent(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    .line 1726
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmNotificationLight(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/lights/LogicalLight;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 1727
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmNotificationLight(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/lights/LogicalLight;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    goto :goto_bb

    .line 1729
    :cond_96
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 1730
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 1731
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 1732
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1733
    :cond_b6
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$mloadUserSettings(Lcom/android/server/notification/NotificationAttentionHelper;)V

    .line 1737
    :cond_bb
    :goto_bb
    sget-object v0, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 1740
    sget-object v0, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_EXTRAS:Ljava/util/Map;

    .line 1741
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_e1

    .line 1743
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1744
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 1745
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p2, v0, :cond_e0

    move v1, v2

    :cond_e0
    move v2, v1

    .line 1748
    :cond_e1
    sget-boolean p2, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz p2, :cond_103

    .line 1749
    const-string p2, "NotifAttentionHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avalanche trigger intent received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Enabling avalanche strategy: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_103
    if-eqz v2, :cond_11e

    .line 1753
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {p1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmStrategy(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    move-result-object p1

    instance-of p1, p1, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;

    if-eqz p1, :cond_11e

    .line 1754
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmStrategy(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;

    .line 1755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->setTriggerTimeMs(J)V

    :cond_11e
    :goto_11e
    return-void
.end method
