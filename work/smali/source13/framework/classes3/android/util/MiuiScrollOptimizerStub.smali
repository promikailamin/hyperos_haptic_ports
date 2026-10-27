.class public Landroid/util/MiuiScrollOptimizerStub;
.super Ljava/lang/Object;
.source "MiuiScrollOptimizerStub.java"


# static fields
.field private static blacklist sFrameInterval:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getFrameInterval()J
    .registers 2

    .line 18
    sget-wide v0, Landroid/util/MiuiScrollOptimizerStub;->sFrameInterval:J

    return-wide v0
.end method

.method public static blacklist setFrameInterval(J)V
    .registers 6
    .param p0, "frameIntervalNanos"    # J

    .line 11
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_17

    sget-wide v0, Landroid/util/MiuiScrollOptimizerStub;->sFrameInterval:J

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 13
    sput-wide p0, Landroid/util/MiuiScrollOptimizerStub;->sFrameInterval:J

    .line 15
    :cond_17
    return-void
.end method
