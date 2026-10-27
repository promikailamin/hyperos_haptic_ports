.class public Lcom/xiaomi/camera/isp/ISPResult;
.super Ljava/lang/Object;
.source "ISPResult.java"


# instance fields
.field public blacklist mAnchorTimestamp:J

.field public blacklist mTimestamp:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public blacklist getAnchorTimestamp()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/xiaomi/camera/isp/ISPResult;->mAnchorTimestamp:J

    return-wide v0
.end method

.method public blacklist getTimestamp()J
    .registers 3

    .line 27
    iget-wide v0, p0, Lcom/xiaomi/camera/isp/ISPResult;->mTimestamp:J

    return-wide v0
.end method

.method public blacklist setAnchorTimestamp(J)V
    .registers 3
    .param p1, "anchor"    # J

    .line 15
    iput-wide p1, p0, Lcom/xiaomi/camera/isp/ISPResult;->mAnchorTimestamp:J

    .line 16
    return-void
.end method

.method public blacklist setTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 23
    iput-wide p1, p0, Lcom/xiaomi/camera/isp/ISPResult;->mTimestamp:J

    .line 24
    return-void
.end method
