.class public Lcom/android/net/module/util/NetdUtils;
.super Ljava/lang/Object;
.source "NetdUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/NetdUtils$ModifyOperation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/android/net/module/util/NetdUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/NetdUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRoutesToLocalNetwork(Landroid/net/INetd;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/INetd;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x63

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 208
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 209
    sget-object v3, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->ADD:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    invoke-static {p0, v3, v2, v1}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    .line 211
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_1d
    goto :goto_4

    .line 214
    :cond_1e
    sget-object v0, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->ADD:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    new-instance v1, Landroid/net/RouteInfo;

    new-instance v3, Landroid/net/IpPrefix;

    const-string v4, "fe80::/64"

    invoke-direct {v3, v4}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v3, v4, p1, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-static {p0, v0, v2, v1}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    .line 216
    return-void
.end method

.method private static findNextHop(Landroid/net/RouteInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "route"    # Landroid/net/RouteInfo;

    .line 236
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_26

    .line 251
    const-string v0, ""

    .local v0, "nextHop":Ljava/lang/String;
    goto :goto_24

    .line 248
    .end local v0    # "nextHop":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v0, "throw"

    .line 249
    .restart local v0    # "nextHop":Ljava/lang/String;
    goto :goto_24

    .line 245
    .end local v0    # "nextHop":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v0, "unreachable"

    .line 246
    .restart local v0    # "nextHop":Ljava/lang/String;
    goto :goto_24

    .line 238
    .end local v0    # "nextHop":Ljava/lang/String;
    :sswitch_12
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 239
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "nextHop":Ljava/lang/String;
    goto :goto_24

    .line 241
    .end local v0    # "nextHop":Ljava/lang/String;
    :cond_21
    const-string v0, ""

    .line 243
    .restart local v0    # "nextHop":Ljava/lang/String;
    nop

    .line 254
    :goto_24
    return-object v0

    nop

    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_12
        0x7 -> :sswitch_e
        0x9 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .registers 4
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "iface"    # Ljava/lang/String;

    .line 64
    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 65
    :catch_5
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hasFlag(Landroid/net/InterfaceConfigurationParcel;Ljava/lang/String;)Z
    .registers 4
    .param p0, "config"    # Landroid/net/InterfaceConfigurationParcel;
    .param p1, "flag"    # Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lcom/android/net/module/util/NetdUtils;->validateFlag(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 86
    .local v0, "flagList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V
    .registers 10
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "op"    # Lcom/android/net/module/util/NetdUtils$ModifyOperation;
    .param p2, "netId"    # I
    .param p3, "route"    # Landroid/net/RouteInfo;

    .line 260
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "ifName":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "dst":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/net/module/util/NetdUtils;->findNextHop(Landroid/net/RouteInfo;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "nextHop":Ljava/lang/String;
    :try_start_10
    sget-object v3, Lcom/android/net/module/util/NetdUtils$1;->$SwitchMap$com$android$net$module$util$NetdUtils$ModifyOperation:[I

    invoke-virtual {p1}, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_46

    .line 273
    new-instance v3, Ljava/lang/IllegalStateException;

    goto :goto_28

    .line 270
    :pswitch_1e
    invoke-interface {p0, p2, v0, v1, v2}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    goto :goto_26

    .line 267
    :pswitch_22
    invoke-interface {p0, p2, v0, v1, v2}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    nop

    .line 277
    :goto_26
    nop

    .line 278
    return-void

    .line 273
    :goto_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported modify operation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ifName":Ljava/lang/String;
    .end local v1    # "dst":Ljava/lang/String;
    .end local v2    # "nextHop":Ljava/lang/String;
    .end local p0    # "netd":Landroid/net/INetd;
    .end local p1    # "op":Lcom/android/net/module/util/NetdUtils$ModifyOperation;
    .end local p2    # "netId":I
    .end local p3    # "route":Landroid/net/RouteInfo;
    throw v3
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_3f} :catch_3f
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_3f} :catch_3f

    .line 275
    .restart local v0    # "ifName":Ljava/lang/String;
    .restart local v1    # "dst":Ljava/lang/String;
    .restart local v2    # "nextHop":Ljava/lang/String;
    .restart local p0    # "netd":Landroid/net/INetd;
    .restart local p1    # "op":Lcom/android/net/module/util/NetdUtils$ModifyOperation;
    .restart local p2    # "netId":I
    .restart local p3    # "route":Landroid/net/RouteInfo;
    :catch_3f
    move-exception v3

    .line 276
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method

.method private static networkAddInterface(Landroid/net/INetd;Ljava/lang/String;II)V
    .registers 9
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "maxAttempts"    # I
    .param p3, "pollingIntervalMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, p2, :cond_33

    .line 179
    const/16 v1, 0x63

    :try_start_5
    invoke-interface {p0, v1, p1}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_8
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_8} :catch_9

    .line 180
    return-void

    .line 181
    :catch_9
    move-exception v1

    .line 182
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v3, Landroid/system/OsConstants;->EBUSY:I

    if-ne v2, v3, :cond_1a

    if-ge v0, p2, :cond_1a

    .line 183
    int-to-long v2, p3

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 184
    nop

    .line 177
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    .restart local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_1a
    sget-object v2, Lcom/android/net/module/util/NetdUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry Netd#networkAddInterface failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    throw v1

    .line 191
    .end local v0    # "i":I
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_33
    return-void
.end method

.method protected static removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0, "flags"    # [Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;
    .param p2, "add"    # Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    invoke-static {p2}, Lcom/android/net/module/util/NetdUtils;->validateFlag(Ljava/lang/String;)V

    .line 97
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_21

    aget-object v3, p0, v2

    .line 100
    .local v3, "flag":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_1e

    .line 101
    :cond_1b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v3    # "flag":Ljava/lang/String;
    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 103
    :cond_21
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_30} :catch_31

    return-object v1

    .line 105
    :catch_31
    move-exception v1

    .line 106
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid InterfaceConfigurationParcel"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static removeRoutesFromLocalNetwork(Landroid/net/INetd;Ljava/util/List;)I
    .registers 7
    .param p0, "netd"    # Landroid/net/INetd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/INetd;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation

    .line 220
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const/4 v0, 0x0

    .line 222
    .local v0, "failures":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 224
    .local v2, "route":Landroid/net/RouteInfo;
    :try_start_11
    sget-object v3, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->REMOVE:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    const/16 v4, 0x63

    invoke-static {p0, v3, v4, v2}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_18} :catch_19

    .line 227
    goto :goto_1c

    .line 225
    :catch_19
    move-exception v3

    .line 226
    .local v3, "e":Ljava/lang/IllegalStateException;
    add-int/lit8 v0, v0, 0x1

    .line 228
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_1c
    goto :goto_5

    .line 230
    :cond_1d
    return v0
.end method

.method public static setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V
    .registers 4
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "configParcel"    # Landroid/net/InterfaceConfigurationParcel;

    .line 115
    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_3} :catch_5

    .line 118
    nop

    .line 119
    return-void

    .line 116
    :catch_5
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setInterfaceDown(Landroid/net/INetd;Ljava/lang/String;)V
    .registers 6
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "iface"    # Ljava/lang/String;

    .line 135
    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v0

    .line 136
    .local v0, "configParcel":Landroid/net/InterfaceConfigurationParcel;
    iget-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    const-string/jumbo v2, "up"

    const-string v3, "down"

    invoke-static {v1, v2, v3}, Lcom/android/net/module/util/NetdUtils;->removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 138
    invoke-static {p0, v0}, Lcom/android/net/module/util/NetdUtils;->setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V

    .line 139
    return-void
.end method

.method public static setInterfaceUp(Landroid/net/INetd;Ljava/lang/String;)V
    .registers 6
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "iface"    # Ljava/lang/String;

    .line 125
    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v0

    .line 126
    .local v0, "configParcel":Landroid/net/InterfaceConfigurationParcel;
    iget-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    const-string v2, "down"

    const-string/jumbo v3, "up"

    invoke-static {v1, v2, v3}, Lcom/android/net/module/util/NetdUtils;->removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 128
    invoke-static {p0, v0}, Lcom/android/net/module/util/NetdUtils;->setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V

    .line 129
    return-void
.end method

.method public static tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;)V
    .registers 5
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "dest"    # Landroid/net/IpPrefix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 153
    const/16 v0, 0x14

    const/16 v1, 0x32

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/net/module/util/NetdUtils;->tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;II)V

    .line 154
    return-void
.end method

.method public static tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;II)V
    .registers 9
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "dest"    # Landroid/net/IpPrefix;
    .param p3, "maxAttempts"    # I
    .param p4, "pollingIntervalMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 160
    invoke-interface {p0, p1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V

    .line 161
    invoke-static {p0, p1, p3, p4}, Lcom/android/net/module/util/NetdUtils;->networkAddInterface(Landroid/net/INetd;Ljava/lang/String;II)V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    new-instance v1, Landroid/net/RouteInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p2, v2, p1, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {p0, p1, v0}, Lcom/android/net/module/util/NetdUtils;->addRoutesToLocalNetwork(Landroid/net/INetd;Ljava/lang/String;Ljava/util/List;)V

    .line 165
    return-void
.end method

.method public static tetherStart(Landroid/net/INetd;Z[Ljava/lang/String;)V
    .registers 4
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "usingLegacyDnsProxy"    # Z
    .param p2, "dhcpRange"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 144
    new-instance v0, Landroid/net/TetherConfigParcel;

    invoke-direct {v0}, Landroid/net/TetherConfigParcel;-><init>()V

    .line 145
    .local v0, "config":Landroid/net/TetherConfigParcel;
    iput-boolean p1, v0, Landroid/net/TetherConfigParcel;->usingLegacyDnsProxy:Z

    .line 146
    iput-object p2, v0, Landroid/net/TetherConfigParcel;->dhcpRanges:[Ljava/lang/String;

    .line 147
    invoke-interface {p0, v0}, Landroid/net/INetd;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V

    .line 148
    return-void
.end method

.method public static untetherInterface(Landroid/net/INetd;Ljava/lang/String;)V
    .registers 4
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 197
    const/16 v0, 0x63

    :try_start_2
    invoke-interface {p0, p1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_a

    .line 199
    invoke-interface {p0, v0, p1}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    .line 200
    nop

    .line 201
    return-void

    .line 199
    :catchall_a
    move-exception v1

    invoke-interface {p0, v0, p1}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    .line 200
    throw v1
.end method

.method private static validateFlag(Ljava/lang/String;)V
    .registers 4
    .param p0, "flag"    # Ljava/lang/String;

    .line 71
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_9

    .line 74
    return-void

    .line 72
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag contains space: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
