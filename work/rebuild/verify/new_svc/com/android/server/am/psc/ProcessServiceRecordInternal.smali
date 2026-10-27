.class public abstract Lcom/android/server/am/psc/ProcessServiceRecordInternal;
.super Ljava/lang/Object;
.source "ProcessServiceRecordInternal.java"


# instance fields
.field public mConnectionGroup:I

.field public mConnectionImportance:I

.field public mExecServicesFg:Z

.field public mHasAboveClient:Z

.field public mTreatLikeActivity:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAlmostPerceptible(Lcom/android/server/am/psc/ServiceRecordInternal;)Z
    .registers 8

    .line 108
    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->getLastTopAlmostPerceptibleBindRequestUptimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_c

    return v1

    .line 111
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/am/psc/ServiceRecordInternal;->getConnectionsSize()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_12
    if-ltz v0, :cond_34

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/server/am/psc/ServiceRecordInternal;->getConnectionAt(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_1d
    if-ltz v4, :cond_31

    .line 114
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/psc/ConnectionRecordInternal;

    const/high16 v6, 0x10000

    .line 115
    invoke-virtual {v5, v6}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_2e

    return v2

    :cond_2e
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_34
    return v1
.end method


# virtual methods
.method public abstract getConnectionAt(I)Lcom/android/server/am/psc/ConnectionRecordInternal;
.end method

.method public getConnectionGroup()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->mConnectionGroup:I

    return p0
.end method

.method public getConnectionImportance()I
    .registers 1

    .line 49
    iget p0, p0, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->mConnectionImportance:I

    return p0
.end method

.method public abstract getRunningServiceAt(I)Lcom/android/server/am/psc/ServiceRecordInternal;
.end method

.method public abstract getSdkSandboxConnectionAt(I)Lcom/android/server/am/psc/ConnectionRecordInternal;
.end method

.method public abstract hasExecutingServices()Z
.end method

.method public abstract hasForegroundServices()Z
.end method

.method public isExecServicesFg()Z
    .registers 1

    .line 73
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->mExecServicesFg:Z

    return p0
.end method

.method public isHasAboveClient()Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->mHasAboveClient:Z

    return p0
.end method

.method public isTreatLikeActivity()Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->mTreatLikeActivity:Z

    return p0
.end method

.method public abstract numberOfConnections()I
.end method

.method public abstract numberOfRunningServices()I
.end method

.method public abstract numberOfSdkSandboxConnections()I
.end method

.method public setConnectionGroup(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->mConnectionGroup:I

    return-void
.end method

.method public setConnectionImportance(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->mConnectionImportance:I

    return-void
.end method

.method public setExecServicesFg(Z)V
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->mExecServicesFg:Z

    return-void
.end method

.method public setHasAboveClient(Z)V
    .registers 2

    .line 69
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->mHasAboveClient:Z

    return-void
.end method

.method public setTreatLikeActivity(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->mTreatLikeActivity:Z

    return-void
.end method
