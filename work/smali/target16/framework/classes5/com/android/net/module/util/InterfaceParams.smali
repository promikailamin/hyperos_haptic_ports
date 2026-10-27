.class public Lcom/android/net/module/util/InterfaceParams;
.super Ljava/lang/Object;
.source "InterfaceParams.java"


# static fields
.field private static final blacklist ETHER_MTU:I = 0x5dc

.field private static final blacklist IPV6_MIN_MTU:I = 0x500


# instance fields
.field public final blacklist defaultMtu:I

.field public final blacklist hasMacAddress:Z

.field public final blacklist index:I

.field public final blacklist macAddr:Landroid/net/MacAddress;

.field public final blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ILandroid/net/MacAddress;)V
    .registers 5

    .line 67
    const/16 v0, 0x5dc

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/net/module/util/InterfaceParams;-><init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V
    .registers 6

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 75
    if-lez p2, :cond_30

    .line 77
    iput-object p1, p0, Lcom/android/net/module/util/InterfaceParams;->name:Ljava/lang/String;

    .line 78
    iput p2, p0, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 79
    if-eqz p3, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iput-boolean p1, p0, Lcom/android/net/module/util/InterfaceParams;->hasMacAddress:Z

    .line 80
    iget-boolean p1, p0, Lcom/android/net/module/util/InterfaceParams;->hasMacAddress:Z

    if-eqz p1, :cond_1b

    goto :goto_25

    :cond_1b
    const/4 p1, 0x6

    new-array p1, p1, [B

    fill-array-data p1, :array_40

    invoke-static {p1}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object p3

    :goto_25
    iput-object p3, p0, Lcom/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    .line 82
    const/16 p1, 0x500

    if-le p4, p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move p4, p1

    :goto_2d
    iput p4, p0, Lcom/android/net/module/util/InterfaceParams;->defaultMtu:I

    .line 83
    return-void

    .line 75
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid interface index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "impossible interface name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_40
    .array-data 1
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static blacklist getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;
    .registers 6

    .line 53
    invoke-static {p0}, Lcom/android/net/module/util/InterfaceParams;->getNetworkInterfaceByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 54
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 57
    :cond_8
    invoke-static {v0}, Lcom/android/net/module/util/InterfaceParams;->getMacAddress(Ljava/net/NetworkInterface;)Landroid/net/MacAddress;

    move-result-object v2

    .line 60
    :try_start_c
    new-instance v3, Lcom/android/net/module/util/InterfaceParams;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getMTU()I

    move-result v0

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/android/net/module/util/InterfaceParams;-><init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_19} :catch_1a
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_19} :catch_1a

    return-object v3

    .line 61
    :catch_1a
    move-exception p0

    .line 62
    return-object v1
.end method

.method private static blacklist getMacAddress(Ljava/net/NetworkInterface;)Landroid/net/MacAddress;
    .registers 1

    .line 100
    :try_start_0
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object p0

    invoke-static {p0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 101
    :catch_9
    move-exception p0

    .line 102
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getNetworkInterfaceByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .registers 1

    .line 92
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 93
    :catch_5
    move-exception p0

    .line 94
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/android/net/module/util/InterfaceParams;->name:Ljava/lang/String;

    iget v1, p0, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    iget v3, p0, Lcom/android/net/module/util/InterfaceParams;->defaultMtu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s/%d/%s/%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
