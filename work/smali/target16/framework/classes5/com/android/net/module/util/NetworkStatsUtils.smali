.class public Lcom/android/net/module/util/NetworkStatsUtils;
.super Ljava/lang/Object;
.source "NetworkStatsUtils.java"


# static fields
.field public static final blacklist LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field public static final blacklist SUBSCRIBER_ID_MATCH_RULE_ALL:I = 0x1

.field public static final blacklist SUBSCRIBER_ID_MATCH_RULE_EXACT:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist constrain(III)I
    .registers 5

    .line 80
    if-gt p1, p2, :cond_a

    .line 81
    if-ge p0, p1, :cond_6

    move p0, p1

    goto :goto_9

    :cond_6
    if-le p0, p2, :cond_9

    move p0, p2

    :cond_9
    :goto_9
    return p0

    .line 80
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "low("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") > high("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist constrain(JJJ)J
    .registers 7

    .line 88
    cmp-long v0, p2, p4

    if-gtz v0, :cond_10

    .line 89
    cmp-long v0, p0, p2

    if-gez v0, :cond_a

    move-wide p0, p2

    goto :goto_f

    :cond_a
    cmp-long p2, p0, p4

    if-lez p2, :cond_f

    move-wide p0, p4

    :cond_f
    :goto_f
    return-wide p0

    .line 88
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "low("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") > high("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist multiplySafeByRational(JJJ)J
    .registers 14

    .line 33
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-eqz v2, :cond_39

    .line 36
    nop

    .line 37
    nop

    .line 40
    mul-long v2, p0, p2

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 42
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 43
    or-long/2addr v4, v6

    const/16 v6, 0x1f

    ushr-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-eqz v4, :cond_37

    .line 47
    cmp-long v0, p2, v0

    if-eqz v0, :cond_24

    div-long v0, v2, p2

    cmp-long v0, v0, p0

    if-nez v0, :cond_30

    :cond_24
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_37

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_37

    .line 50
    :cond_30
    long-to-double p2, p2

    long-to-double p4, p4

    div-double/2addr p2, p4

    long-to-double p0, p0

    mul-double/2addr p2, p0

    double-to-long p0, p2

    return-wide p0

    .line 53
    :cond_37
    div-long/2addr v2, p4

    return-wide v2

    .line 34
    :cond_39
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Invalid Denominator"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
