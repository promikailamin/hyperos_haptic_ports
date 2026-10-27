.class Lcom/android/server/tare/TareUtils;
.super Ljava/lang/Object;
.source "TareUtils.java"


# static fields
.field private static final sDumpDateFormat:Ljava/text/SimpleDateFormat;

.field static sSystemClock:Ljava/time/Clock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/tare/TareUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    .line 36
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/TareUtils;->sSystemClock:Ljava/time/Clock;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appToString(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "userId"    # I
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static cakeToArc(J)I
    .registers 4
    .param p0, "cakes"    # J

    .line 47
    const-wide/32 v0, 0x3b9aca00

    div-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method static cakeToString(J)Ljava/lang/String;
    .registers 18
    .param p0, "cakes"    # J

    .line 52
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_9

    .line 53
    const-string v0, "0 ARCs"

    return-object v0

    .line 55
    :cond_9
    const-wide/32 v2, 0x3b9aca00

    rem-long v2, p0, v2

    .line 56
    .local v2, "sub":J
    invoke-static/range {p0 .. p1}, Lcom/android/server/tare/TareUtils;->cakeToArc(J)I

    move-result v4

    int-to-long v4, v4

    .line 57
    .local v4, "arcs":J
    cmp-long v6, v4, v0

    const-wide/16 v7, 0x1

    if-nez v6, :cond_45

    .line 58
    cmp-long v0, v2, v7

    if-nez v0, :cond_31

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cake"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 60
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cakes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_44
    return-object v0

    .line 62
    :cond_45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    cmp-long v9, v2, v0

    if-eqz v9, :cond_72

    .line 65
    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const-string v11, "%03d"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_72
    const-string v9, " ARC"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    cmp-long v7, v4, v7

    if-nez v7, :cond_7f

    cmp-long v0, v2, v0

    if-eqz v0, :cond_85

    .line 69
    :cond_7f
    const-string/jumbo v0, "s"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static dumpTime(Landroid/util/IndentingPrintWriter;J)V
    .registers 5
    .param p0, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "time"    # J

    .line 39
    sget-object v0, Lcom/android/server/tare/TareUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static getCurrentTimeMillis()J
    .registers 2

    .line 43
    sget-object v0, Lcom/android/server/tare/TareUtils;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    return-wide v0
.end method
