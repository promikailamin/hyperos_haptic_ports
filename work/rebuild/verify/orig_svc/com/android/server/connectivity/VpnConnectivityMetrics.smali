.class public Lcom/android/server/connectivity/VpnConnectivityMetrics;
.super Ljava/lang/Object;
.source "VpnConnectivityMetrics.java"


# static fields
.field static final IP_PROTOCOL_IPv4:I = 0x1

.field static final IP_PROTOCOL_IPv4v6:I = 0x3

.field static final IP_PROTOCOL_IPv6:I = 0x2

.field static final IP_PROTOCOL_UNKNOWN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "VpnConnectivityMetrics"

.field static final VPN_PROFILE_TYPE_UNKNOWN:I

.field static final VPN_TYPE_UNKNOWN:I

.field public static final sAlgorithms:Landroid/util/SparseArray;

.field public static final sVpnProfileTypeMap:Landroid/util/SparseIntArray;


# instance fields
.field public mAllowedAlgorithms:I

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mDependencies:Lcom/android/server/connectivity/VpnConnectivityMetrics$Dependencies;

.field public final mMetricLogs:Landroid/util/LocalLog;

.field public mMtu:I

.field public mServerIpProtocol:I

.field public mUnderlyingNetworkTypes:[I

.field public final mUserId:I

.field public mVpnNetworkIpProtocol:I

.field public mVpnProfileType:I

.field public mVpnType:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->sAlgorithms:Landroid/util/SparseArray;

    .line 84
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/server/connectivity/VpnConnectivityMetrics;->sVpnProfileTypeMap:Landroid/util/SparseIntArray;

    .line 127
    const-string v2, "cmac(aes)"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    const-string/jumbo v2, "xcbc(aes)"

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    const-string/jumbo v2, "rfc4106(gcm(aes))"

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    const-string/jumbo v2, "rfc7539esp(chacha20,poly1305)"

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    const-string v2, "hmac(md5)"

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    const-string v2, "hmac(sha1)"

    const/4 v8, 0x5

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    const-string v2, "hmac(sha256)"

    const/4 v9, 0x6

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    const-string v2, "hmac(sha384)"

    const/4 v10, 0x7

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    const-string v2, "hmac(sha512)"

    const/16 v11, 0x8

    invoke-virtual {v0, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    const-string v2, "cbc(aes)"

    const/16 v12, 0x9

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    const-string/jumbo v2, "rfc3686(ctr(aes))"

    const/16 v13, 0xa

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 144
    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    invoke-virtual {v1, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 148
    invoke-virtual {v1, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    invoke-virtual {v1, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 152
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 154
    invoke-virtual {v1, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 156
    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(ILandroid/net/ConnectivityManager;)V
    .registers 4

    .line 178
    new-instance v0, Lcom/android/server/connectivity/VpnConnectivityMetrics$Dependencies;

    invoke-direct {v0}, Lcom/android/server/connectivity/VpnConnectivityMetrics$Dependencies;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/connectivity/VpnConnectivityMetrics;-><init>(ILandroid/net/ConnectivityManager;Lcom/android/server/connectivity/VpnConnectivityMetrics$Dependencies;)V

    return-void
.end method

.method public constructor <init>(ILandroid/net/ConnectivityManager;Lcom/android/server/connectivity/VpnConnectivityMetrics$Dependencies;)V
    .registers 6

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mMetricLogs:Landroid/util/LocalLog;

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnType:I

    .line 91
    iput v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnProfileType:I

    .line 92
    iput v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mMtu:I

    .line 99
    iput v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mAllowedAlgorithms:I

    .line 117
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mUnderlyingNetworkTypes:[I

    .line 119
    iput v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnNetworkIpProtocol:I

    .line 120
    iput v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mServerIpProtocol:I

    .line 184
    iput p1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mUserId:I

    .line 185
    iput-object p2, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 186
    iput-object p3, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mDependencies:Lcom/android/server/connectivity/VpnConnectivityMetrics$Dependencies;

    return-void
.end method

.method public static buildAllowedAlgorithmsBitmask(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 246
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    sget-object v2, Lcom/android/server/connectivity/VpnConnectivityMetrics;->sAlgorithms:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_30

    .line 249
    sget-object v2, Lcom/android/server/connectivity/VpnConnectivityMetrics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown allowed algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_30
    const/4 v1, 0x1

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_5

    :cond_34
    return v0
.end method

.method public static checkIpProtocol(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;)I"
        }
    .end annotation

    .line 406
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    if-nez v3, :cond_17

    goto :goto_7

    .line 408
    :cond_17
    invoke-virtual {v3}, Landroid/net/LinkAddress;->isIpv4()Z

    move-result v5

    if-eqz v5, :cond_1f

    move v1, v4

    goto :goto_7

    .line 410
    :cond_1f
    invoke-virtual {v3}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v3

    if-eqz v3, :cond_7

    move v2, v4

    goto :goto_7

    :cond_27
    if-eqz v1, :cond_2d

    if-eqz v2, :cond_2d

    const/4 p0, 0x3

    return p0

    :cond_2d
    if-eqz v1, :cond_30

    return v4

    :cond_30
    if-eqz v2, :cond_34

    const/4 p0, 0x2

    return p0

    :cond_34
    return v0
.end method

.method public static getIpProtocolVersion(Ljava/net/InetAddress;)I
    .registers 2

    .line 390
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 391
    :cond_6
    instance-of p0, p0, Ljava/net/Inet6Address;

    if-eqz p0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    .line 521
    const-string v0, "VpnConnectivityMetrics logs (most recent first):"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 523
    iget-object p0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mMetricLogs:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->reverseDump(Ljava/io/PrintWriter;)V

    .line 524
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public notifyVpnConnected()V
    .registers 2

    const/4 v0, 0x1

    .line 488
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->validateAndReportVpnConnectionEvent(Z)V

    return-void
.end method

.method public notifyVpnDisconnected()V
    .registers 2

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->validateAndReportVpnConnectionEvent(Z)V

    return-void
.end method

.method public resetMetrics()V
    .registers 2

    const/4 v0, 0x0

    .line 508
    iput v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnType:I

    .line 509
    iput v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnNetworkIpProtocol:I

    .line 510
    iput v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mServerIpProtocol:I

    .line 511
    iput v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnProfileType:I

    .line 512
    iput v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mAllowedAlgorithms:I

    .line 513
    iput v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mMtu:I

    .line 514
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mUnderlyingNetworkTypes:[I

    return-void
.end method

.method public setAllowedAlgorithms(Ljava/util/List;)V
    .registers 2

    .line 225
    invoke-static {p1}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->buildAllowedAlgorithmsBitmask(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mAllowedAlgorithms:I

    return-void
.end method

.method public setMtu(I)V
    .registers 2

    .line 204
    iput p1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mMtu:I

    return-void
.end method

.method public setVpnProfileType(I)V
    .registers 4

    .line 213
    sget-object v0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->sVpnProfileTypeMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnProfileType:I

    return-void
.end method

.method public setVpnType(I)V
    .registers 2

    .line 195
    iput p1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnType:I

    return-void
.end method

.method public updateServerIpProtocol(Ljava/net/InetAddress;)V
    .registers 3

    .line 360
    invoke-static {p1}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->getIpProtocolVersion(Ljava/net/InetAddress;)I

    move-result p1

    .line 364
    iget v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mServerIpProtocol:I

    if-nez v0, :cond_b

    .line 365
    iput p1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mServerIpProtocol:I

    return-void

    :cond_b
    if-ne v0, p1, :cond_e

    return-void

    .line 373
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->notifyVpnDisconnected()V

    .line 374
    iput p1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mServerIpProtocol:I

    .line 375
    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->notifyVpnConnected()V

    return-void
.end method

.method public updateUnderlyingNetworkTypes([Landroid/net/Network;)V
    .registers 7

    .line 285
    array-length v0, p1

    if-nez v0, :cond_4

    goto :goto_33

    .line 289
    :cond_4
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 290
    :goto_9
    array-length v3, p1

    if-ge v2, v3, :cond_25

    .line 291
    iget-object v3, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mConnectivityManager:Landroid/net/ConnectivityManager;

    aget-object v4, p1, v2

    .line 292
    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 295
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v3

    aget v3, v3, v1

    aput v3, v0, v2

    goto :goto_22

    :cond_1f
    const/4 v3, -0x1

    .line 297
    aput v3, v0, v2

    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 303
    :cond_25
    iget-object p1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mUnderlyingNetworkTypes:[I

    array-length v1, p1

    if-nez v1, :cond_2d

    .line 304
    iput-object v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mUnderlyingNetworkTypes:[I

    return-void

    .line 308
    :cond_2d
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_34

    :goto_33
    return-void

    .line 312
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->notifyVpnDisconnected()V

    .line 313
    iput-object v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mUnderlyingNetworkTypes:[I

    .line 314
    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->notifyVpnConnected()V

    return-void
.end method

.method public updateVpnNetworkIpProtocol(Ljava/util/List;)V
    .registers 3

    .line 330
    invoke-static {p1}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->checkIpProtocol(Ljava/util/List;)I

    move-result p1

    .line 334
    iget v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnNetworkIpProtocol:I

    if-nez v0, :cond_b

    .line 335
    iput p1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnNetworkIpProtocol:I

    return-void

    :cond_b
    if-ne v0, p1, :cond_e

    return-void

    .line 343
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->notifyVpnDisconnected()V

    .line 344
    iput p1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnNetworkIpProtocol:I

    .line 345
    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->notifyVpnConnected()V

    return-void
.end method

.method public final validateAndCorrectMetrics()V
    .registers 5

    .line 435
    iget v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnType:I

    const/4 v1, 0x0

    if-ltz v0, :cond_8

    const/4 v2, 0x4

    if-le v0, v2, :cond_22

    .line 436
    :cond_8
    sget-object v0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid vpnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iput v1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnType:I

    .line 439
    :cond_22
    iget v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnNetworkIpProtocol:I

    if-ltz v0, :cond_29

    const/4 v2, 0x3

    if-le v0, v2, :cond_43

    .line 441
    :cond_29
    sget-object v0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid vpnNetworkIpProtocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnNetworkIpProtocol:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iput v1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnNetworkIpProtocol:I

    .line 444
    :cond_43
    iget v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mServerIpProtocol:I

    if-ltz v0, :cond_4a

    const/4 v2, 0x2

    if-le v0, v2, :cond_64

    .line 445
    :cond_4a
    sget-object v0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid serverIpProtocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mServerIpProtocol:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iput v1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mServerIpProtocol:I

    .line 448
    :cond_64
    iget v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnProfileType:I

    if-ltz v0, :cond_6c

    const/16 v2, 0xa

    if-le v0, v2, :cond_86

    .line 450
    :cond_6c
    sget-object v0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid vpnProfileType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnProfileType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iput v1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnProfileType:I

    .line 453
    :cond_86
    iget v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mAllowedAlgorithms:I

    if-ltz v0, :cond_90

    const/16 v2, 0x7ff

    if-le v0, v2, :cond_8f

    goto :goto_90

    :cond_8f
    return-void

    .line 454
    :cond_90
    :goto_90
    sget-object v0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid allowedAlgorithms: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mAllowedAlgorithms:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iput v1, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mAllowedAlgorithms:I

    return-void
.end method

.method public final validateAndReportVpnConnectionEvent(Z)V
    .registers 14

    .line 460
    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnConnectivityMetrics;->validateAndCorrectMetrics()V

    .line 461
    iget-object v0, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mMetricLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report VPN connection event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_14

    const-string v2, "CONNECTED"

    goto :goto_16

    :cond_14
    const-string v2, "DISCONNECTED"

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", vpnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vpnProfileType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnProfileType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", underlyingNetworkTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mUnderlyingNetworkTypes:[I

    .line 464
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", vpnNetworkIpProtocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnNetworkIpProtocol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", serverIpProtocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mServerIpProtocol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", allowedAlgorithms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mAllowedAlgorithms:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mMtu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mDependencies:Lcom/android/server/connectivity/VpnConnectivityMetrics$Dependencies;

    iget v3, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnType:I

    iget v4, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnNetworkIpProtocol:I

    iget v5, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mServerIpProtocol:I

    iget v6, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mVpnProfileType:I

    iget v7, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mAllowedAlgorithms:I

    iget v8, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mMtu:I

    iget-object v9, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mUnderlyingNetworkTypes:[I

    iget v11, p0, Lcom/android/server/connectivity/VpnConnectivityMetrics;->mUserId:I

    move v10, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/connectivity/VpnConnectivityMetrics$Dependencies;->statsWrite(IIIIII[IZI)V

    return-void
.end method
