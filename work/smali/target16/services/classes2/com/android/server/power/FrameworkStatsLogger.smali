.class public Lcom/android/server/power/FrameworkStatsLogger;
.super Ljava/lang/Object;
.source "FrameworkStatsLogger.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wakelockStateChanged(ILjava/lang/String;ILcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V
    .registers 12

    .line 33
    sget-object p0, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    if-ne p4, p0, :cond_7

    const/4 p0, 0x1

    :goto_5
    move v5, p0

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_5

    :goto_9
    const/4 v2, 0x0

    const/16 v6, 0x3e7

    const/16 v0, 0xa

    move v1, p1

    move-object v4, p2

    move v3, p3

    .line 36
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method public wakelockStateChanged(Ljava/lang/String;Landroid/os/WorkSource$WorkChain;ILcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V
    .registers 12

    .line 50
    sget-object p0, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    if-ne p4, p0, :cond_7

    const/4 p0, 0x1

    :goto_5
    move v5, p0

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_5

    .line 55
    :goto_9
    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object v1

    .line 56
    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x3e7

    const/16 v0, 0xa

    move-object v4, p1

    move v3, p3

    .line 53
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method
