.class public Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;
.super Ljava/lang/Object;
.source "DualSimInfoManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;,
        Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;,
        Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;
    }
.end annotation


# static fields
.field private static blacklist mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbroadcastSubscriptionsChanged()V
    .registers 0

    invoke-static {}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->broadcastSubscriptionsChanged()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;-><init>(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl-IA;)V

    sput-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static blacklist broadcastSubscriptionsChanged()V
    .registers 3

    .line 34
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;

    .line 36
    .local v2, "listener":Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;
    invoke-interface {v2}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;->onSubscriptionsChanged()V

    .line 37
    .end local v2    # "listener":Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;
    goto :goto_9

    .line 38
    :cond_19
    monitor-exit v0

    .line 39
    return-void

    .line 38
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static whitelist getSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 68
    .local v1, "siminfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_75

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_75

    .line 72
    :cond_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_20

    .line 73
    new-instance v2, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;

    invoke-direct {v2, v0}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;-><init>(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable-IA;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    :cond_20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v2, "simInfos":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    .line 78
    .local v4, "info":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 79
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v5, "simInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "simId"

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v6, "slotNum"

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v6, "simName"

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v6, "iccId"

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_73} :catch_76

    .line 86
    .end local v4    # "info":Lmiui/telephony/SubscriptionInfo;
    .end local v5    # "simInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_73
    goto :goto_29

    .line 87
    :cond_74
    return-object v2

    .line 69
    .end local v2    # "simInfos":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_75
    :goto_75
    return-object v0

    .line 88
    .end local v1    # "siminfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    :catch_76
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private static blacklist registerChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V
    .registers 2
    .param p0, "listener"    # Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    .line 58
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 59
    return-void
.end method

.method public static whitelist registerSimInfoChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;

    .line 16
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 17
    if-eqz p1, :cond_17

    :try_start_5
    sget-object v1, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 18
    sget-object v1, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v1, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    invoke-static {v1}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->registerChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V

    .line 21
    :cond_17
    monitor-exit v0

    .line 22
    return-void

    .line 21
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private static blacklist unRegisterChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V
    .registers 2
    .param p0, "listener"    # Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    .line 62
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 63
    return-void
.end method

.method public static whitelist unRegisterSimInfoChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;

    .line 25
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 26
    if-eqz p1, :cond_17

    :try_start_5
    sget-object v1, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 27
    sget-object v1, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    sget-object v1, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    invoke-static {v1}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->unRegisterChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V

    .line 30
    :cond_17
    monitor-exit v0

    .line 31
    return-void

    .line 30
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v1
.end method
