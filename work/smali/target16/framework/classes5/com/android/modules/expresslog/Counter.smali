.class public final Lcom/android/modules/expresslog/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist logIncrement(Ljava/lang/String;)V
    .registers 3

    .line 32
    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;J)V

    .line 33
    return-void
.end method

.method public static blacklist logIncrement(Ljava/lang/String;J)V
    .registers 7

    .line 50
    nop

    .line 51
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/MetricIds;->getMetricIdHash(Ljava/lang/String;I)J

    move-result-wide v0

    .line 52
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_11

    .line 53
    const/16 p0, 0x210

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/modules/expresslog/StatsExpressLog;->write(IJJ)V

    .line 55
    :cond_11
    return-void
.end method

.method public static blacklist logIncrementWithUid(Ljava/lang/String;I)V
    .registers 4

    .line 41
    const-wide/16 v0, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;IJ)V

    .line 42
    return-void
.end method

.method public static blacklist logIncrementWithUid(Ljava/lang/String;IJ)V
    .registers 11

    .line 64
    nop

    .line 65
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/MetricIds;->getMetricIdHash(Ljava/lang/String;I)J

    move-result-wide v2

    .line 66
    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-eqz p0, :cond_13

    .line 67
    const/16 v1, 0x284

    move v6, p1

    move-wide v4, p2

    invoke-static/range {v1 .. v6}, Lcom/android/modules/expresslog/StatsExpressLog;->write(IJJI)V

    .line 70
    :cond_13
    return-void
.end method
