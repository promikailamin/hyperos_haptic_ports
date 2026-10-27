.class public Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;
.super Ljava/lang/Object;
.source "AggregatedMobileDataStatsPuller.java"


# instance fields
.field public mRxBytes:J

.field public mRxPackets:J

.field public mTxBytes:J

.field public mTxPackets:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 103
    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    .line 104
    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    .line 105
    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    .line 106
    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;-><init>()V

    return-void
.end method


# virtual methods
.method public addRxBytes(J)V
    .registers 5

    .line 133
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    return-void
.end method

.method public addRxPackets(J)V
    .registers 5

    .line 125
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    return-void
.end method

.method public addTxBytes(J)V
    .registers 5

    .line 137
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    return-void
.end method

.method public addTxPackets(J)V
    .registers 5

    .line 129
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    return-void
.end method

.method public getRxBytes()J
    .registers 3

    .line 117
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    return-wide v0
.end method

.method public getRxPackets()J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    return-wide v0
.end method

.method public getTxBytes()J
    .registers 3

    .line 121
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    return-wide v0
.end method

.method public getTxPackets()J
    .registers 3

    .line 113
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    return-wide v0
.end method

.method public isEmpty()Z
    .registers 5

    .line 141
    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxPackets:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mRxBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->mTxBytes:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method
