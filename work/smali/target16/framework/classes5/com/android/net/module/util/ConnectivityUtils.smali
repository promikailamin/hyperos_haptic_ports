.class public final Lcom/android/net/module/util/ConnectivityUtils;
.super Ljava/lang/Object;
.source "ConnectivityUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;
    .registers 3

    .line 38
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_7

    const-string v0, "[%s]:%d"

    goto :goto_9

    :cond_7
    const-string v0, "%s:%d"

    .line 39
    :goto_9
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 37
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist isIPv6ULA(Ljava/net/InetAddress;)Z
    .registers 3

    .line 46
    instance-of v0, p0, Ljava/net/Inet6Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 47
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xfe

    const/16 v0, 0xfc

    if-ne p0, v0, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    nop

    .line 46
    :goto_14
    return v1
.end method

.method public static blacklist saturatedCast(J)I
    .registers 4

    .line 59
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_b

    .line 60
    const p0, 0x7fffffff

    return p0

    .line 62
    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_15

    .line 63
    const/high16 p0, -0x80000000

    return p0

    .line 65
    :cond_15
    long-to-int p0, p0

    return p0
.end method
