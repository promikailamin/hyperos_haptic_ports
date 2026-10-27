.class public Landroid/net/metrics/MiuiDnsRecordParams;
.super Ljava/lang/Object;
.source "MiuiDnsRecordParams.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/net/metrics/MiuiDnsRecordParams;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist eventType:I

.field private blacklist hostname:Ljava/lang/String;

.field private blacklist ipAddresses:[Ljava/lang/String;

.field private blacklist ipAddressesCount:I

.field private blacklist latency:I

.field private blacklist requestTime:J

.field private blacklist returnCode:I

.field private blacklist timestamp:J

.field private blacklist uid:I


# direct methods
.method public constructor blacklist <init>(IIII[Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 12
    .param p1, "latency"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "ipAddressesCount"    # I
    .param p5, "ipAddresses"    # [Ljava/lang/String;
    .param p6, "hostname"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "timestamp"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->latency:I

    .line 34
    iput p2, p0, Landroid/net/metrics/MiuiDnsRecordParams;->eventType:I

    .line 35
    iput p3, p0, Landroid/net/metrics/MiuiDnsRecordParams;->returnCode:I

    .line 36
    iput p4, p0, Landroid/net/metrics/MiuiDnsRecordParams;->ipAddressesCount:I

    .line 37
    iput-object p5, p0, Landroid/net/metrics/MiuiDnsRecordParams;->ipAddresses:[Ljava/lang/String;

    .line 38
    iput-object p6, p0, Landroid/net/metrics/MiuiDnsRecordParams;->hostname:Ljava/lang/String;

    .line 39
    iput p7, p0, Landroid/net/metrics/MiuiDnsRecordParams;->uid:I

    .line 40
    iput-wide p8, p0, Landroid/net/metrics/MiuiDnsRecordParams;->timestamp:J

    .line 41
    int-to-long v0, p1

    sub-long v0, p8, v0

    iput-wide v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->requestTime:J

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist compareTo(Landroid/net/metrics/MiuiDnsRecordParams;)I
    .registers 6
    .param p1, "params"    # Landroid/net/metrics/MiuiDnsRecordParams;

    .line 132
    iget-wide v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->requestTime:J

    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getRequestTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, -0x1

    :goto_d
    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 4
    check-cast p1, Landroid/net/metrics/MiuiDnsRecordParams;

    invoke-virtual {p0, p1}, Landroid/net/metrics/MiuiDnsRecordParams;->compareTo(Landroid/net/metrics/MiuiDnsRecordParams;)I

    move-result p1

    return p1
.end method

.method public blacklist getEventType()I
    .registers 2

    .line 56
    iget v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->eventType:I

    return v0
.end method

.method public blacklist getHostname()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIpAddresses()[Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->ipAddresses:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIpAddressesCount()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->ipAddressesCount:I

    return v0
.end method

.method public blacklist getLatencyMs()I
    .registers 2

    .line 46
    iget v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->latency:I

    return v0
.end method

.method public blacklist getRequestTime()J
    .registers 3

    .line 126
    iget-wide v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->requestTime:J

    return-wide v0
.end method

.method public blacklist getReturnCode()I
    .registers 2

    .line 66
    iget v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->returnCode:I

    return v0
.end method

.method public blacklist getTimestamp()J
    .registers 3

    .line 116
    iget-wide v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->timestamp:J

    return-wide v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/net/metrics/MiuiDnsRecordParams;->uid:I

    return v0
.end method

.method public blacklist setEventType(I)V
    .registers 2
    .param p1, "eventType"    # I

    .line 61
    iput p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->eventType:I

    .line 62
    return-void
.end method

.method public blacklist setHostname(Ljava/lang/String;)V
    .registers 2
    .param p1, "hostname"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->hostname:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public blacklist setIpAddresses([Ljava/lang/String;)V
    .registers 2
    .param p1, "ipAddresses"    # [Ljava/lang/String;

    .line 91
    iput-object p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->ipAddresses:[Ljava/lang/String;

    .line 92
    return-void
.end method

.method public blacklist setIpAddressesCount(I)V
    .registers 2
    .param p1, "ipAddressesCount"    # I

    .line 81
    iput p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->ipAddressesCount:I

    .line 82
    return-void
.end method

.method public blacklist setLatencyMs(I)V
    .registers 2
    .param p1, "latency"    # I

    .line 51
    iput p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->latency:I

    .line 52
    return-void
.end method

.method public blacklist setReturnCode(I)V
    .registers 2
    .param p1, "returnCode"    # I

    .line 71
    iput p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->returnCode:I

    .line 72
    return-void
.end method

.method public blacklist setTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 121
    iput-wide p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->timestamp:J

    .line 122
    return-void
.end method

.method public blacklist setUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 111
    iput p1, p0, Landroid/net/metrics/MiuiDnsRecordParams;->uid:I

    .line 112
    return-void
.end method
