.class Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;
.super Ljava/lang/Object;
.source "NetworkPriorityClassifier.java"


# static fields
.field static final PRIORITY_ANY:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String;

.field static final WIFI_ENTRY_RSSI_THRESHOLD_DEFAULT:I = -0x46

.field static final WIFI_EXIT_RSSI_THRESHOLD_DEFAULT:I = -0x4a


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculatePriorityClass(Lcom/android/server/vcn/VcnContext;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I
    .registers 19
    .param p0, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p1, "networkRecord"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p3, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p4, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p5, "currentlySelected"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p6, "carrierConfig"    # Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/VcnContext;",
            "Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            "Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;",
            ")I"
        }
    .end annotation

    .line 87
    .local p2, "underlyingNetworkTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/net/vcn/VcnUnderlyingNetworkTemplate;>;"
    move-object v7, p1

    iget-boolean v0, v7, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    const v8, 0x7fffffff

    if-eqz v0, :cond_21

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network blocked for System Server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    .line 89
    return v8

    .line 92
    :cond_21
    if-nez p4, :cond_29

    .line 93
    const-string v0, "Got null snapshot"

    invoke-static {v0}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    .line 94
    return v8

    .line 97
    :cond_29
    const/4 v0, 0x0

    .line 98
    .local v0, "priorityIndex":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v0

    .end local v0    # "priorityIndex":I
    .local v10, "priorityIndex":I
    :goto_2f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    .line 99
    .local v11, "nwPriority":Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    move-object v0, p0

    move-object v1, v11

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->checkMatchesPriorityRule(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 107
    return v10

    .line 109
    :cond_4d
    nop

    .end local v11    # "nwPriority":Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    add-int/lit8 v10, v10, 0x1

    .line 110
    goto :goto_2f

    .line 111
    :cond_51
    return v8
.end method

.method public static checkMatchesCellPriorityRule(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z
    .registers 20
    .param p0, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p1, "networkPriority"    # Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
    .param p2, "networkRecord"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p3, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p4, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 232
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 234
    .local v2, "caps":Landroid/net/NetworkCapabilities;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 235
    return v3

    .line 238
    :cond_e
    nop

    .line 239
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v4

    check-cast v4, Landroid/net/TelephonyNetworkSpecifier;

    .line 240
    .local v4, "telephonyNetworkSpecifier":Landroid/net/TelephonyNetworkSpecifier;
    if-nez v4, :cond_1d

    .line 241
    const-string v5, "Got null NetworkSpecifier"

    invoke-static {v5}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    .line 242
    return v3

    .line 245
    :cond_1d
    invoke-virtual {v4}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v5

    .line 246
    .local v5, "subId":I
    nop

    .line 248
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/telephony/TelephonyManager;

    .line 249
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 250
    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 252
    .local v6, "subIdSpecificTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {p1 .. p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getOperatorPlmnIds()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4b

    .line 253
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "plmnId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getOperatorPlmnIds()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    .line 255
    return v3

    .line 259
    .end local v7    # "plmnId":Ljava/lang/String;
    :cond_4b
    invoke-virtual/range {p1 .. p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getSimSpecificCarrierIds()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_68

    .line 260
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimSpecificCarrierId()I

    move-result v7

    .line 261
    .local v7, "carrierId":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getSimSpecificCarrierIds()Ljava/util/Set;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_68

    .line 262
    return v3

    .line 266
    .end local v7    # "carrierId":I
    :cond_68
    invoke-virtual/range {p1 .. p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getRoaming()I

    move-result v7

    .line 267
    .local v7, "roamingMatch":I
    const/16 v8, 0x12

    invoke-virtual {v2, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    .line 268
    .local v8, "isRoaming":Z
    if-ne v7, v9, :cond_78

    if-eqz v8, :cond_7d

    :cond_78
    const/4 v10, 0x2

    if-ne v7, v10, :cond_7e

    if-eqz v8, :cond_7e

    .line 270
    :cond_7d
    return v3

    .line 273
    :cond_7e
    invoke-virtual/range {p1 .. p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getOpportunistic()I

    move-result v11

    .line 274
    .local v11, "opportunisticMatch":I
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->isOpportunistic(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Ljava/util/Set;)Z

    move-result v12

    .line 275
    .local v12, "isOpportunistic":Z
    if-ne v11, v9, :cond_b6

    .line 276
    if-nez v12, :cond_8f

    .line 277
    return v3

    .line 290
    :cond_8f
    move-object/from16 v13, p3

    invoke-virtual {v0, v13}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v10

    .line 291
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_bd

    .line 292
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v10

    .line 293
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_bd

    .line 294
    return v3

    .line 296
    :cond_b6
    move-object/from16 v13, p3

    if-ne v11, v10, :cond_bd

    if-nez v12, :cond_bd

    .line 297
    return v3

    .line 300
    :cond_bd
    return v9
.end method

.method public static checkMatchesPriorityRule(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z
    .registers 15
    .param p0, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p1, "networkPriority"    # Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    .param p2, "networkRecord"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p3, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p4, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p5, "currentlySelected"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p6, "carrierConfig"    # Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 123
    iget-object v0, p2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 124
    .local v0, "caps":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p5, :cond_12

    iget-object v3, p5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v4, p2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 126
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    .line 128
    .local v3, "isSelectedUnderlyingNetwork":Z
    :goto_13
    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMetered()I

    move-result v4

    .line 129
    .local v4, "meteredMatch":I
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    xor-int/2addr v5, v1

    .line 130
    .local v5, "isMetered":Z
    if-ne v4, v1, :cond_22

    if-eqz v5, :cond_27

    :cond_22
    const/4 v6, 0x2

    if-ne v4, v6, :cond_28

    if-eqz v5, :cond_28

    .line 132
    :cond_27
    return v2

    .line 137
    :cond_28
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v6

    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMinExitUpstreamBandwidthKbps()I

    move-result v7

    if-lt v6, v7, :cond_9c

    .line 138
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v6

    .line 139
    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMinEntryUpstreamBandwidthKbps()I

    move-result v7

    if-ge v6, v7, :cond_3f

    if-nez v3, :cond_3f

    goto :goto_9c

    .line 144
    :cond_3f
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v6

    .line 145
    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMinExitDownstreamBandwidthKbps()I

    move-result v7

    if-lt v6, v7, :cond_9b

    .line 146
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v6

    .line 147
    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMinEntryDownstreamBandwidthKbps()I

    move-result v7

    if-ge v6, v7, :cond_56

    if-nez v3, :cond_56

    goto :goto_9b

    .line 152
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnContext;->isInTestMode()Z

    move-result v6

    if-eqz v6, :cond_64

    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 153
    return v1

    .line 156
    :cond_64
    instance-of v1, p1, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    if-eqz v1, :cond_70

    .line 157
    move-object v1, p1

    check-cast v1, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    invoke-static {v1, p2, p5, p6}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->checkMatchesWifiPriorityRule(Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z

    move-result v1

    return v1

    .line 164
    :cond_70
    instance-of v1, p1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    if-eqz v1, :cond_7c

    .line 165
    move-object v1, p1

    check-cast v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    invoke-static {p0, v1, p2, p3, p4}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->checkMatchesCellPriorityRule(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result v1

    return v1

    .line 173
    :cond_7c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got unknown VcnUnderlyingNetworkTemplate class: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v1}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    .line 176
    return v2

    .line 149
    :cond_9b
    :goto_9b
    return v2

    .line 141
    :cond_9c
    :goto_9c
    return v2
.end method

.method public static checkMatchesWifiPriorityRule(Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z
    .registers 9
    .param p0, "networkPriority"    # Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
    .param p1, "networkRecord"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p2, "currentlySelected"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p3, "carrierConfig"    # Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 185
    iget-object v0, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 187
    .local v0, "caps":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_b

    .line 188
    return v3

    .line 192
    :cond_b
    invoke-static {p1, p2, p3}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->isWifiRssiAcceptable(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 193
    return v3

    .line 196
    :cond_12
    invoke-virtual {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->getSsids()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 197
    invoke-virtual {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->getSsids()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 198
    return v3

    .line 201
    :cond_2b
    return v1
.end method

.method static getWifiEntryRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I
    .registers 3
    .param p0, "carrierConfig"    # Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 318
    const/16 v0, -0x46

    if-eqz p0, :cond_c

    .line 319
    const-string/jumbo v1, "vcn_network_selection_wifi_entry_rssi_threshold"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 323
    :cond_c
    return v0
.end method

.method static getWifiExitRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I
    .registers 3
    .param p0, "carrierConfig"    # Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 327
    const/16 v0, -0x4a

    if-eqz p0, :cond_c

    .line 328
    const-string/jumbo v1, "vcn_network_selection_wifi_exit_rssi_threshold"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 332
    :cond_c
    return v0
.end method

.method static isOpportunistic(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Ljava/util/Set;)Z
    .registers 6
    .param p0, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 305
    .local p1, "subIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 306
    const-string v1, "Got null snapshot"

    invoke-static {v1}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    .line 307
    return v0

    .line 309
    :cond_9
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 310
    .local v2, "subId":I
    invoke-virtual {p0, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->isOpportunistic(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 311
    const/4 v0, 0x1

    return v0

    .line 313
    .end local v2    # "subId":I
    :cond_25
    goto :goto_d

    .line 314
    :cond_26
    return v0
.end method

.method private static isWifiRssiAcceptable(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z
    .registers 9
    .param p0, "networkRecord"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p1, "currentlySelected"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p2, "carrierConfig"    # Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 208
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 209
    .local v0, "caps":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_12

    iget-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v4, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 211
    invoke-virtual {v3, v4}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v2

    goto :goto_13

    :cond_12
    move v3, v1

    .line 213
    .local v3, "isSelectedNetwork":Z
    :goto_13
    if-eqz v3, :cond_20

    .line 214
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v4

    invoke-static {p2}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->getWifiExitRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result v5

    if-lt v4, v5, :cond_20

    .line 215
    return v2

    .line 218
    :cond_20
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v4

    invoke-static {p2}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->getWifiEntryRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result v5

    if-lt v4, v5, :cond_2b

    .line 219
    return v2

    .line 222
    :cond_2b
    return v1
.end method

.method private static logWtf(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 336
    sget-object v0, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WTF: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 338
    return-void
.end method
