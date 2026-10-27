.class Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
.super Ljava/lang/Object;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;,
        Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;,
        Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    }
.end annotation


# static fields
.field private static final AGNSS_NET_CAPABILITY_NOT_METERED:I = 0x1

.field private static final AGNSS_NET_CAPABILITY_NOT_ROAMING:I = 0x2

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field public static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_EIMS:I = 0x3

.field private static final AGPS_TYPE_IMS:I = 0x4

.field public static final AGPS_TYPE_SUPL:I = 0x1

.field private static final AID_ERROR_CODE:I = 0x36c729b2

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final DEBUG:Z

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final HASH_MAP_INITIAL_CAPACITY_TO_TRACK_CONNECTED_NETWORKS:I = 0x5

.field private static final NET_ERROR_CODE:I = 0x36c729b1

.field private static final SUPL_NETWORK_REQUEST_TIMEOUT_MILLIS:I = 0x4e20

.field static final TAG:Ljava/lang/String; = "GnssNetworkConnectivityHandler"

.field private static final VERBOSE:Z

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssNetworkConnectivityHandler"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private AID_ERROR_SEND_INTERVAL:I

.field private NET_ERROR_SEND_INTERVAL:I

.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private mAGpsType:I

.field private mActiveSubId:I

.field private mAvailableNetworkAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mGnssNetworkListener:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;

.field private final mHandler:Landroid/os/Handler;

.field private mLastAidTime:J

.field private mLastNetTime:J

.field private mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneStateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic -$$Nest$fgetAID_ERROR_SEND_INTERVAL(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->AID_ERROR_SEND_INTERVAL:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetNET_ERROR_SEND_INTERVAL(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->NET_ERROR_SEND_INTERVAL:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveSubId(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGnssNetworkListener(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastAidTime(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mLastAidTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetTime(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mLastNetTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneStateListeners(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveSubId(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastAidTime(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mLastAidTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNetTime(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mLastNetTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPhoneStateListeners(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/util/HashMap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleReleaseSuplConnection(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSuplConnectionAvailable(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleSuplConnectionAvailable(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdateNetworkState(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleUpdateNetworkState(Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetVERBOSE()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 62
    const-string v0, "GnssNetworkConnectivityHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    .line 63
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gnssNetworkListener"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "niHandler"    # Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    .line 124
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->NET_ERROR_SEND_INTERVAL:I

    .line 125
    iput v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->AID_ERROR_SEND_INTERVAL:I

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mLastNetTime:J

    .line 127
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mLastAidTime:J

    .line 244
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 202
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 203
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;

    .line 205
    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 206
    .local v1, "subManager":Landroid/telephony/SubscriptionManager;
    if-eqz v1, :cond_32

    .line 207
    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 210
    :cond_32
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 211
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "GnssNetworkConnectivityHandler"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 213
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    .line 214
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 215
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 216
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 217
    return-void
.end method

.method private agpsDataConnStateAsString()Ljava/lang/String;
    .registers 3

    .line 707
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    packed-switch v0, :pswitch_data_2a

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 711
    :pswitch_21
    const-string v0, "OPEN"

    return-object v0

    .line 713
    :pswitch_24
    const-string v0, "OPENING"

    return-object v0

    .line 709
    :pswitch_27
    const-string v0, "CLOSED"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private agpsDataConnStatusAsString(I)Ljava/lang/String;
    .registers 4
    .param p1, "agpsDataConnStatus"    # I

    .line 723
    packed-switch p1, :pswitch_data_2c

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 729
    :pswitch_1d
    const-string v0, "FAILED"

    return-object v0

    .line 727
    :pswitch_20
    const-string v0, "DONE"

    return-object v0

    .line 725
    :pswitch_23
    const-string v0, "CONNECTED"

    return-object v0

    .line 731
    :pswitch_26
    const-string v0, "RELEASE"

    return-object v0

    .line 733
    :pswitch_29
    const-string v0, "REQUEST"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private agpsTypeAsString(I)Ljava/lang/String;
    .registers 4
    .param p1, "agpsType"    # I

    .line 740
    packed-switch p1, :pswitch_data_2a

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 748
    :pswitch_1d
    const-string v0, "IMS"

    return-object v0

    .line 746
    :pswitch_20
    const-string v0, "EIMS"

    return-object v0

    .line 744
    :pswitch_23
    const-string v0, "C2K"

    return-object v0

    .line 742
    :pswitch_26
    const-string v0, "SUPL"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2

    .line 351
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method private createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2

    .line 403
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method private ensureInHandlerThread()V
    .registers 3

    .line 697
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 698
    return-void

    .line 700
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must run on the Handler thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLinkIpType(Landroid/net/LinkProperties;)I
    .registers 10
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .line 755
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->ensureInHandlerThread()V

    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, "isIPv4":Z
    const/4 v1, 0x0

    .line 759
    .local v1, "isIPv6":Z
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    .line 760
    .local v2, "linkAddresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 761
    .local v4, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 762
    .local v5, "inetAddress":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_23

    .line 763
    const/4 v0, 0x1

    goto :goto_28

    .line 764
    :cond_23
    instance-of v6, v5, Ljava/net/Inet6Address;

    if-eqz v6, :cond_28

    .line 765
    const/4 v1, 0x1

    .line 767
    :cond_28
    :goto_28
    sget-boolean v6, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v6, :cond_48

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LinkAddress : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GnssNetworkConnectivityHandler"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .end local v4    # "linkAddress":Landroid/net/LinkAddress;
    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    :cond_48
    goto :goto_d

    .line 770
    :cond_49
    if-eqz v0, :cond_4f

    if-eqz v1, :cond_4f

    .line 771
    const/4 v3, 0x3

    return v3

    .line 773
    :cond_4f
    if-eqz v0, :cond_53

    .line 774
    const/4 v3, 0x1

    return v3

    .line 776
    :cond_53
    if-eqz v1, :cond_57

    .line 777
    const/4 v3, 0x2

    return v3

    .line 779
    :cond_57
    const/4 v3, 0x0

    return v3
.end method

.method private getNetworkCapability(I)I
    .registers 5
    .param p1, "agpsType"    # I

    .line 636
    packed-switch p1, :pswitch_data_24

    .line 645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agpsType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :pswitch_1c
    const/4 v0, 0x4

    return v0

    .line 641
    :pswitch_1e
    const/16 v0, 0xa

    return v0

    .line 639
    :pswitch_21
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21
        :pswitch_21
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method private handleReleaseSuplConnection(I)V
    .registers 7
    .param p1, "agpsDataConnStatus"    # I

    .line 650
    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v1, "GnssNetworkConnectivityHandler"

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 651
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 653
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x1

    .line 654
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 651
    const-string/jumbo v3, "releaseSuplConnection, state=%s, status=%s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "message":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .end local v0    # "message":Ljava/lang/String;
    :cond_21
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-nez v0, :cond_26

    .line 659
    return-void

    .line 662
    :cond_26
    iput v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 663
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_34

    .line 664
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 667
    :cond_34
    sparse-switch p1, :sswitch_data_58

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status to release SUPL connection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 669
    :sswitch_4e
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_failed()V

    .line 670
    goto :goto_56

    .line 672
    :sswitch_52
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_closed()V

    .line 673
    nop

    .line 677
    :goto_56
    return-void

    nop

    :sswitch_data_58
    .sparse-switch
        0x2 -> :sswitch_52
        0x5 -> :sswitch_4e
    .end sparse-switch
.end method

.method private handleRequestSuplConnection(I[B)V
    .registers 11
    .param p1, "agpsType"    # I
    .param p2, "suplIpAddr"    # [B

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 578
    iput p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsType:I

    .line 579
    const-string v1, "GnssNetworkConnectivityHandler"

    if-eqz p2, :cond_61

    .line 580
    sget-boolean v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received SUPL IP addr[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_27
    :try_start_27
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 583
    sget-boolean v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v2, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP address converted to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/net/UnknownHostException; {:try_start_27 .. :try_end_49} :catch_4a

    .line 586
    :cond_49
    goto :goto_61

    .line 584
    :catch_4a
    move-exception v2

    .line 585
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad IP Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :cond_61
    :goto_61
    sget-boolean v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_85

    .line 590
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 592
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 593
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsTypeAsString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    aput-object v7, v5, v6

    .line 590
    const-string/jumbo v6, "requestSuplConnection, state=%s, agpsType=%s, address=%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, "message":Ljava/lang/String;
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .end local v5    # "message":Ljava/lang/String;
    :cond_85
    iget v5, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-eqz v5, :cond_8a

    .line 599
    return-void

    .line 601
    :cond_8a
    iput v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 606
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 607
    .local v3, "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    iget v5, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsType:I

    invoke-direct {p0, v5}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->getNetworkCapability(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 608
    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 611
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v4

    if-eqz v4, :cond_d5

    iget v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    if-ltz v4, :cond_d5

    .line 612
    if-eqz v2, :cond_c7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding Network Specifier: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_c7
    iget v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 614
    const/16 v2, 0xd

    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 616
    :cond_d5
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 618
    .local v2, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v4, :cond_e2

    .line 619
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 621
    :cond_e2
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 623
    :try_start_e8
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x4e20

    invoke-virtual {v5, v2, v4, v6, v7}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;I)V
    :try_end_f1
    .catch Ljava/lang/RuntimeException; {:try_start_e8 .. :try_end_f1} :catch_f2

    .line 632
    goto :goto_fe

    .line 628
    :catch_f2
    move-exception v4

    .line 629
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "Failed to request network."

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 631
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    .line 633
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :goto_fe
    return-void
.end method

.method private handleSuplConnectionAvailable(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 12
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 534
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 535
    .local v0, "info":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 536
    .local v1, "apn":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 537
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 540
    :cond_d
    sget-boolean v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v3, "GnssNetworkConnectivityHandler"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_2d

    .line 541
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 543
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    aput-object p1, v7, v6

    aput-object v0, v7, v5

    .line 541
    const-string/jumbo v8, "handleSuplConnectionAvailable: state=%s, suplNetwork=%s, info=%s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 546
    .local v7, "message":Ljava/lang/String;
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local v7    # "message":Ljava/lang/String;
    :cond_2d
    iget v7, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-ne v7, v6, :cond_5f

    .line 550
    if-nez v1, :cond_35

    .line 553
    const-string v1, "dummy-apn"

    .line 559
    :cond_35
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-eqz v7, :cond_3c

    .line 560
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->setRouting()V

    .line 563
    :cond_3c
    invoke-direct {p0, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->getLinkIpType(Landroid/net/LinkProperties;)I

    move-result v7

    .line 564
    .local v7, "apnIpType":I
    if-eqz v2, :cond_56

    .line 565
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    .line 568
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    .line 565
    const-string/jumbo v4, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, "message":Ljava/lang/String;
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .end local v2    # "message":Ljava/lang/String;
    :cond_56
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v1, v7}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_open(JLjava/lang/String;I)V

    .line 572
    iput v5, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 574
    .end local v7    # "apnIpType":I
    :cond_5f
    return-void
.end method

.method private handleUpdateNetworkState(Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .registers 23
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "isConnected"    # Z
    .param p3, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 460
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    const/4 v1, 0x0

    .line 461
    .local v1, "networkAvailable":Z
    iget-object v0, v10, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 462
    .local v13, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "GnssNetworkConnectivityHandler"

    if-eqz v13, :cond_2e

    .line 464
    if-eqz v12, :cond_2b

    :try_start_1a
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1e} :catch_22

    if-eqz v0, :cond_2b

    move v0, v3

    goto :goto_2c

    .line 465
    :catch_22
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 466
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v5, "TelephonyManager getDataEnabled exception:"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 464
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2b
    move v0, v2

    :goto_2c
    move v1, v0

    .line 467
    goto :goto_2f

    .line 469
    :cond_2e
    :goto_2e
    move v0, v1

    .end local v1    # "networkAvailable":Z
    .local v0, "networkAvailable":Z
    :goto_2f
    move-object/from16 v1, p3

    invoke-direct {v10, v12, v11, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->updateTrackedNetworksState(ZLandroid/net/Network;Landroid/net/NetworkCapabilities;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    move-result-object v14

    .line 471
    .local v14, "networkAttributes":Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    invoke-static {v14}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$fgetmApn(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)Ljava/lang/String;

    move-result-object v15

    .line 472
    .local v15, "apn":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$fgetmType(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)I

    move-result v16

    .line 475
    .local v16, "type":I
    invoke-static {v14}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$fgetmCapabilities(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    .line 476
    .end local p3    # "capabilities":Landroid/net/NetworkCapabilities;
    .local v9, "capabilities":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 480
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v11, v1, v2

    const/4 v2, 0x3

    aput-object v9, v1, v2

    const/4 v2, 0x4

    iget-object v5, v10, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 483
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    .line 476
    const-string/jumbo v2, "updateNetworkState, state=%s, connected=%s, network=%s, capabilities=%s, availableNetworkCount: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_is_agps_ril_supported()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 486
    const/16 v1, 0x12

    .line 489
    invoke-virtual {v9, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    .line 492
    xor-int/lit8 v4, v1, 0x1

    if-eqz v15, :cond_7f

    move-object v6, v15

    goto :goto_82

    :cond_7f
    const-string v1, ""

    move-object v6, v1

    .line 493
    :goto_82
    invoke-virtual/range {p1 .. p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v7

    .line 494
    invoke-static {v9}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$smgetCapabilityFlags(Landroid/net/NetworkCapabilities;)S

    move-result v17

    .line 486
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, v16

    move v5, v0

    move-object/from16 v18, v9

    .end local v9    # "capabilities":Landroid/net/NetworkCapabilities;
    .local v18, "capabilities":Landroid/net/NetworkCapabilities;
    move/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_update_network_state(ZIZZLjava/lang/String;JS)V

    goto :goto_a4

    .line 495
    .end local v18    # "capabilities":Landroid/net/NetworkCapabilities;
    .restart local v9    # "capabilities":Landroid/net/NetworkCapabilities;
    :cond_99
    move-object/from16 v18, v9

    .end local v9    # "capabilities":Landroid/net/NetworkCapabilities;
    .restart local v18    # "capabilities":Landroid/net/NetworkCapabilities;
    sget-boolean v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v1, :cond_a4

    .line 496
    const-string v1, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_a4
    :goto_a4
    return-void
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(JLjava/lang/String;I)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;JS)V
.end method

.method private runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "event"    # Ljava/lang/Runnable;

    .line 449
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private runOnHandler(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "event"    # Ljava/lang/Runnable;

    .line 442
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 443
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 444
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 446
    :cond_19
    return-void
.end method

.method private setRouting()V
    .registers 5

    .line 682
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 686
    .local v0, "result":Z
    const-string v1, "GnssNetworkConnectivityHandler"

    if-nez v0, :cond_26

    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 688
    :cond_26
    sget-boolean v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    if-eqz v2, :cond_42

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_42
    :goto_42
    return-void
.end method

.method private updateTrackedNetworksState(ZLandroid/net/Network;Landroid/net/NetworkCapabilities;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    .registers 7
    .param p1, "isConnected"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 502
    if-nez p1, :cond_b

    .line 504
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    return-object v0

    .line 507
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    .line 508
    .local v0, "networkAttributes":Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    if-eqz v0, :cond_19

    .line 510
    invoke-static {v0, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$fputmCapabilities(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)V

    .line 511
    return-object v0

    .line 515
    :cond_19
    new-instance v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes-IA;)V

    move-object v0, v1

    .line 516
    invoke-static {v0, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$fputmCapabilities(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)V

    .line 520
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 521
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_39

    .line 522
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$fputmApn(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$fputmType(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;I)V

    .line 527
    :cond_39
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    return-object v0
.end method


# virtual methods
.method isDataNetworkConnected()Z
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 322
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method synthetic lambda$onReportAGpsStatus$0$com-android-server-location-gnss-GnssNetworkConnectivityHandler(I[B)V
    .registers 3
    .param p1, "agpsType"    # I
    .param p2, "suplIpAddr"    # [B

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleRequestSuplConnection(I[B)V

    return-void
.end method

.method synthetic lambda$onReportAGpsStatus$1$com-android-server-location-gnss-GnssNetworkConnectivityHandler()V
    .registers 2

    .line 339
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method synthetic lambda$runEventAndReleaseWakeLock$2$com-android-server-location-gnss-GnssNetworkConnectivityHandler(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "event"    # Ljava/lang/Runnable;

    .line 451
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_a

    .line 453
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 454
    nop

    .line 455
    return-void

    .line 453
    :catchall_a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 454
    throw v0
.end method

.method onReportAGpsStatus(II[B)V
    .registers 7
    .param p1, "agpsType"    # I
    .param p2, "agpsStatus"    # I
    .param p3, "suplIpAddr"    # [B

    .line 333
    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->DEBUG:Z

    const-string v1, "GnssNetworkConnectivityHandler"

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AGPS_DATA_CONNECTION: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_20
    packed-switch p2, :pswitch_data_4e

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unknown AGPS status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 344
    :pswitch_3a
    goto :goto_4d

    .line 339
    :pswitch_3b
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->runOnHandler(Ljava/lang/Runnable;)V

    .line 340
    goto :goto_4d

    .line 336
    :pswitch_44
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I[B)V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->runOnHandler(Ljava/lang/Runnable;)V

    .line 337
    nop

    .line 348
    :goto_4d
    return-void

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_44
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method

.method registerNetworkCallbacks()V
    .registers 6

    .line 307
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 308
    .local v0, "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 309
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 310
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 311
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 312
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 313
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v2, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 314
    return-void
.end method
