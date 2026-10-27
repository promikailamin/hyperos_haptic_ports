.class public Landroid/net/metrics/MiuiTcpRecordParams;
.super Ljava/lang/Object;
.source "MiuiTcpRecordParams.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/net/metrics/MiuiTcpRecordParams;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist error:I

.field private blacklist ipAddr:Ljava/lang/String;

.field private blacklist latencyMs:I

.field private blacklist port:I

.field private blacklist requestTime:J

.field private blacklist timestamp:J

.field private blacklist uid:I


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;IIJ)V
    .registers 10
    .param p1, "error"    # I
    .param p2, "latencyMs"    # I
    .param p3, "ipAddr"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "uid"    # I
    .param p6, "timestamp"    # J

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Landroid/net/metrics/MiuiTcpRecordParams;->error:I

    .line 21
    iput p2, p0, Landroid/net/metrics/MiuiTcpRecordParams;->latencyMs:I

    .line 22
    iput-object p3, p0, Landroid/net/metrics/MiuiTcpRecordParams;->ipAddr:Ljava/lang/String;

    .line 23
    iput p4, p0, Landroid/net/metrics/MiuiTcpRecordParams;->port:I

    .line 24
    iput p5, p0, Landroid/net/metrics/MiuiTcpRecordParams;->uid:I

    .line 25
    iput-wide p6, p0, Landroid/net/metrics/MiuiTcpRecordParams;->timestamp:J

    .line 26
    int-to-long v0, p2

    sub-long v0, p6, v0

    iput-wide v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->requestTime:J

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist compareTo(Landroid/net/metrics/MiuiTcpRecordParams;)I
    .registers 6
    .param p1, "params"    # Landroid/net/metrics/MiuiTcpRecordParams;

    .line 97
    iget-wide v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->requestTime:J

    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getRequestTime()J

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
    check-cast p1, Landroid/net/metrics/MiuiTcpRecordParams;

    invoke-virtual {p0, p1}, Landroid/net/metrics/MiuiTcpRecordParams;->compareTo(Landroid/net/metrics/MiuiTcpRecordParams;)I

    move-result p1

    return p1
.end method

.method public blacklist getError()I
    .registers 2

    .line 31
    iget v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->error:I

    return v0
.end method

.method public blacklist getIpAddr()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->ipAddr:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLatencyMs()I
    .registers 2

    .line 41
    iget v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->latencyMs:I

    return v0
.end method

.method public blacklist getPort()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->port:I

    return v0
.end method

.method public blacklist getRequestTime()J
    .registers 3

    .line 91
    iget-wide v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->requestTime:J

    return-wide v0
.end method

.method public blacklist getTimestamp()J
    .registers 3

    .line 81
    iget-wide v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->timestamp:J

    return-wide v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 71
    iget v0, p0, Landroid/net/metrics/MiuiTcpRecordParams;->uid:I

    return v0
.end method

.method public blacklist setError(I)V
    .registers 2
    .param p1, "error"    # I

    .line 36
    iput p1, p0, Landroid/net/metrics/MiuiTcpRecordParams;->error:I

    .line 37
    return-void
.end method

.method public blacklist setIpAddr(Ljava/lang/String;)V
    .registers 2
    .param p1, "ipAddr"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Landroid/net/metrics/MiuiTcpRecordParams;->ipAddr:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public blacklist setLatencyMs(I)V
    .registers 2
    .param p1, "latencyMs"    # I

    .line 46
    iput p1, p0, Landroid/net/metrics/MiuiTcpRecordParams;->latencyMs:I

    .line 47
    return-void
.end method

.method public blacklist setPort(I)V
    .registers 2
    .param p1, "port"    # I

    .line 66
    iput p1, p0, Landroid/net/metrics/MiuiTcpRecordParams;->port:I

    .line 67
    return-void
.end method

.method public blacklist setTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 86
    iput-wide p1, p0, Landroid/net/metrics/MiuiTcpRecordParams;->timestamp:J

    .line 87
    return-void
.end method

.method public blacklist setUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 76
    iput p1, p0, Landroid/net/metrics/MiuiTcpRecordParams;->uid:I

    .line 77
    return-void
.end method
