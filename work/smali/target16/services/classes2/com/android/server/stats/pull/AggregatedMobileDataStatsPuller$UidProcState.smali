.class public Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;
.super Ljava/lang/Object;
.source "AggregatedMobileDataStatsPuller.java"


# instance fields
.field public final mState:I

.field public final mUid:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    .line 72
    iput p2, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 80
    :cond_4
    instance-of v1, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    check-cast p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    .line 83
    iget v1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    iget v3, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    if-ne v1, v3, :cond_18

    iget p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    iget p1, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    if-ne p0, p1, :cond_18

    return v0

    :cond_18
    return v2
.end method

.method public getState()I
    .registers 1

    .line 98
    iget p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    return p0
.end method

.method public getUid()I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    mul-int/lit8 v0, v0, 0x1f

    .line 89
    iget p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    add-int/2addr v0, p0

    return v0
.end method
