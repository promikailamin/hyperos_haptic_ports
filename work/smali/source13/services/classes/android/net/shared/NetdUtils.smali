.class public Landroid/net/shared/NetdUtils;
.super Ljava/lang/Object;
.source "NetdUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Landroid/net/shared/NetdUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/shared/NetdUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 54
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, p2, :cond_33

    .line 56
    const/16 v1, 0x63

    :try_start_5
    invoke-interface {p0, v1, p1}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_8
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_8} :catch_9

    .line 57
    return-void

    .line 58
    :catch_9
    move-exception v1

    .line 59
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v3, Landroid/system/OsConstants;->EBUSY:I

    if-ne v2, v3, :cond_1a

    if-ge v0, p2, :cond_1a

    .line 60
    int-to-long v2, p3

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 61
    nop

    .line 54
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    .restart local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_1a
    sget-object v2, Landroid/net/shared/NetdUtils;->TAG:Ljava/lang/String;

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

    .line 65
    throw v1

    .line 68
    .end local v0    # "i":I
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_33
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

    .line 38
    new-instance v0, Landroid/net/TetherConfigParcel;

    invoke-direct {v0}, Landroid/net/TetherConfigParcel;-><init>()V

    .line 39
    .local v0, "config":Landroid/net/TetherConfigParcel;
    iput-boolean p1, v0, Landroid/net/TetherConfigParcel;->usingLegacyDnsProxy:Z

    .line 40
    iput-object p2, v0, Landroid/net/TetherConfigParcel;->dhcpRanges:[Ljava/lang/String;

    .line 41
    invoke-interface {p0, v0}, Landroid/net/INetd;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V

    .line 42
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

    .line 74
    const/16 v0, 0x63

    :try_start_2
    invoke-interface {p0, p1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_a

    .line 76
    invoke-interface {p0, v0, p1}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    .line 77
    nop

    .line 78
    return-void

    .line 76
    :catchall_a
    move-exception v1

    invoke-interface {p0, v0, p1}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    .line 77
    throw v1
.end method
