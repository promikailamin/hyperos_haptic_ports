.class public abstract Lcom/android/server/am/psc/ConnectionRecordInternal;
.super Ljava/lang/Object;
.source "ConnectionRecordInternal.java"

# interfaces
.implements Lcom/android/server/am/OomAdjusterImpl$Connection;


# instance fields
.field public mFlags:J

.field public mOngoingCalls:Z


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lcom/android/server/am/psc/ConnectionRecordInternal;->mFlags:J

    return-void
.end method


# virtual methods
.method public computeHostOomAdjLSP(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;JLcom/android/server/am/psc/ProcessRecordInternal;ZII)V
    .registers 11

    const/4 p6, 0x0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    .line 131
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/OomAdjuster;->computeServiceHostOomAdjLSP(Lcom/android/server/am/psc/ConnectionRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;JZ)Z

    return-void
.end method

.method public cpuTimeTransmissionType()I
    .registers 5

    .line 142
    iget-boolean v0, p0, Lcom/android/server/am/psc/ConnectionRecordInternal;->mOngoingCalls:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-wide v2, 0x400000000L

    .line 145
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(J)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    const-wide v2, 0x800000000L

    .line 148
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(J)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x2

    return p0

    :cond_20
    return v1
.end method

.method public abstract getActivity()Lcom/android/server/wm/ActivityServiceConnectionsHolder;
.end method

.method public abstract getAttributedClient()Lcom/android/server/am/psc/ProcessRecordInternal;
.end method

.method public abstract getClient()Lcom/android/server/am/psc/ProcessRecordInternal;
.end method

.method public getFlags()J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/android/server/am/psc/ConnectionRecordInternal;->mFlags:J

    return-wide v0
.end method

.method public getOngoingCalls()Z
    .registers 1

    .line 115
    iget-boolean p0, p0, Lcom/android/server/am/psc/ConnectionRecordInternal;->mOngoingCalls:Z

    return p0
.end method

.method public abstract getService()Lcom/android/server/am/psc/ServiceRecordInternal;
.end method

.method public hasFlag(I)Z
    .registers 4

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(J)Z

    move-result p0

    return p0
.end method

.method public hasFlag(J)Z
    .registers 5

    .line 83
    iget-wide v0, p0, Lcom/android/server/am/psc/ConnectionRecordInternal;->mFlags:J

    and-long p0, v0, p1

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public notHasFlag(I)Z
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notHasFlag(J)Z
    .registers 3

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setOngoingCalls(Z)Z
    .registers 3

    .line 120
    iget-boolean v0, p0, Lcom/android/server/am/psc/ConnectionRecordInternal;->mOngoingCalls:Z

    if-eq v0, p1, :cond_8

    .line 121
    iput-boolean p1, p0, Lcom/android/server/am/psc/ConnectionRecordInternal;->mOngoingCalls:Z

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public abstract trackProcState(II)V
.end method
