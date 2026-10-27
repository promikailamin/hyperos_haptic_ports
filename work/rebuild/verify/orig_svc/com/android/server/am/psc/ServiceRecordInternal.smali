.class public abstract Lcom/android/server/am/psc/ServiceRecordInternal;
.super Landroid/os/Binder;
.source "ServiceRecordInternal.java"


# instance fields
.field public final instanceName:Landroid/content/ComponentName;

.field public mForegroundServiceType:I

.field public mIsForeground:Z

.field public mKeepWarming:Z

.field public mLastActivity:J

.field public mLastTopAlmostPerceptibleBindRequestUptimeMs:J

.field public mStartRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;J)V
    .registers 4

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    .line 56
    iput-wide p2, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->mLastActivity:J

    return-void
.end method


# virtual methods
.method public abstract getConnectionAt(I)Ljava/util/ArrayList;
.end method

.method public abstract getConnectionsSize()I
.end method

.method public getForegroundServiceType()I
    .registers 1

    .line 91
    iget p0, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->mForegroundServiceType:I

    return p0
.end method

.method public abstract getHostProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
.end method

.method public abstract getIsolationHostProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
.end method

.method public getLastActivity()J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->mLastActivity:J

    return-wide v0
.end method

.method public getLastTopAlmostPerceptibleBindRequestUptimeMs()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->mLastTopAlmostPerceptibleBindRequestUptimeMs:J

    return-wide v0
.end method

.method public abstract isFgsAllowedWiu_forCapabilities()Z
.end method

.method public isForeground()Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->mIsForeground:Z

    return p0
.end method

.method public isKeepWarming()Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->mKeepWarming:Z

    return p0
.end method

.method public isStartRequested()Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->mStartRequested:Z

    return p0
.end method

.method public setForegroundServiceType(I)V
    .registers 2

    .line 95
    iput p1, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->mForegroundServiceType:I

    return-void
.end method

.method public setIsForeground(Z)V
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->mIsForeground:Z

    return-void
.end method

.method public setLastActivity(J)V
    .registers 3

    .line 87
    iput-wide p1, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->mLastActivity:J

    return-void
.end method

.method public setLastTopAlmostPerceptibleBindRequestUptimeMs(J)V
    .registers 3

    .line 104
    iput-wide p1, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->mLastTopAlmostPerceptibleBindRequestUptimeMs:J

    return-void
.end method

.method public setStartRequested(Z)V
    .registers 2

    .line 64
    iput-boolean p1, p0, Lcom/android/server/am/psc/ServiceRecordInternal;->mStartRequested:Z

    return-void
.end method

.method public abstract updateKeepWarmLocked()V
.end method
