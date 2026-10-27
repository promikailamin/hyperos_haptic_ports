.class public abstract Lcom/android/server/am/psc/UidRecordInternal;
.super Ljava/lang/Object;
.source "UidRecordInternal.java"


# instance fields
.field public mCurAllowList:Z

.field public mCurCapability:I

.field public mCurProcState:I

.field public mEphemeral:Z

.field public mHasForegroundServices:Z

.field public mIdle:Z

.field public mLastBackgroundTime:J

.field public mLastIdleTimeIfStillIdle:J

.field public mProcAdjChanged:Z

.field public final mProcLock:Ljava/lang/Object;

.field public mRealLastIdleTime:J

.field public final mService:Ljava/lang/Object;

.field public mSetAllowList:Z

.field public mSetCapability:I

.field public mSetIdle:Z

.field public mSetProcState:I

.field public final mUid:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 58
    iput v0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mSetProcState:I

    .line 125
    iput p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mUid:I

    .line 126
    iput-object p2, p0, Lcom/android/server/am/psc/UidRecordInternal;->mService:Ljava/lang/Object;

    .line 127
    iput-object p3, p0, Lcom/android/server/am/psc/UidRecordInternal;->mProcLock:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mIdle:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/server/am/psc/UidRecordInternal;->reset()V

    return-void
.end method


# virtual methods
.method public getCurCapability()I
    .registers 1

    .line 179
    iget p0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mCurCapability:I

    return p0
.end method

.method public getCurProcState()I
    .registers 1

    .line 149
    iget p0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mCurProcState:I

    return p0
.end method

.method public getHasForegroundServices()Z
    .registers 1

    .line 244
    iget-boolean p0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mHasForegroundServices:Z

    return p0
.end method

.method public getLastBackgroundTime()J
    .registers 3

    .line 199
    iget-wide v0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mLastBackgroundTime:J

    return-wide v0
.end method

.method public getLastIdleTimeIfStillIdle()J
    .registers 3

    .line 209
    iget-wide v0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mLastIdleTimeIfStillIdle:J

    return-wide v0
.end method

.method public getProcAdjChanged()Z
    .registers 1

    .line 169
    iget-boolean p0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mProcAdjChanged:Z

    return p0
.end method

.method public getRealLastIdleTime()J
    .registers 3

    .line 214
    iget-wide v0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mRealLastIdleTime:J

    return-wide v0
.end method

.method public getSetCapability()I
    .registers 1

    .line 189
    iget p0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mSetCapability:I

    return p0
.end method

.method public getSetProcState()I
    .registers 1

    .line 159
    iget p0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mSetProcState:I

    return p0
.end method

.method public getUid()I
    .registers 1

    .line 144
    iget p0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mUid:I

    return p0
.end method

.method public isCurAllowListed()Z
    .registers 1

    .line 254
    iget-boolean p0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mCurAllowList:Z

    return p0
.end method

.method public isEphemeral()Z
    .registers 1

    .line 234
    iget-boolean p0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mEphemeral:Z

    return p0
.end method

.method public isIdle()Z
    .registers 1

    .line 274
    iget-boolean p0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mIdle:Z

    return p0
.end method

.method public isSetAllowListed()Z
    .registers 1

    .line 264
    iget-boolean p0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mSetAllowList:Z

    return p0
.end method

.method public isSetIdle()Z
    .registers 1

    .line 284
    iget-boolean p0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mSetIdle:Z

    return p0
.end method

.method public reset()V
    .registers 2

    const/16 v0, 0x13

    .line 138
    iput v0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mCurProcState:I

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mHasForegroundServices:Z

    .line 140
    iput v0, p0, Lcom/android/server/am/psc/UidRecordInternal;->mCurCapability:I

    return-void
.end method

.method public setCurAllowListed(Z)V
    .registers 2

    .line 259
    iput-boolean p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mCurAllowList:Z

    return-void
.end method

.method public setCurCapability(I)V
    .registers 2

    .line 184
    iput p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mCurCapability:I

    return-void
.end method

.method public setCurProcState(I)V
    .registers 2

    .line 154
    iput p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mCurProcState:I

    return-void
.end method

.method public setEphemeral(Z)V
    .registers 2

    .line 239
    iput-boolean p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mEphemeral:Z

    return-void
.end method

.method public setHasForegroundServices(Z)V
    .registers 2

    .line 249
    iput-boolean p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mHasForegroundServices:Z

    return-void
.end method

.method public setIdle(Z)V
    .registers 2

    .line 279
    iput-boolean p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mIdle:Z

    return-void
.end method

.method public setLastBackgroundTime(J)V
    .registers 3

    .line 204
    iput-wide p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mLastBackgroundTime:J

    return-void
.end method

.method public setLastIdleTime(J)V
    .registers 5

    .line 226
    iput-wide p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mLastIdleTimeIfStillIdle:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_a

    .line 228
    iput-wide p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mRealLastIdleTime:J

    :cond_a
    return-void
.end method

.method public setProcAdjChanged(Z)V
    .registers 2

    .line 174
    iput-boolean p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mProcAdjChanged:Z

    return-void
.end method

.method public setSetAllowListed(Z)V
    .registers 2

    .line 269
    iput-boolean p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mSetAllowList:Z

    return-void
.end method

.method public setSetCapability(I)V
    .registers 2

    .line 194
    iput p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mSetCapability:I

    return-void
.end method

.method public setSetIdle(Z)V
    .registers 2

    .line 289
    iput-boolean p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mSetIdle:Z

    return-void
.end method

.method public setSetProcState(I)V
    .registers 2

    .line 164
    iput p1, p0, Lcom/android/server/am/psc/UidRecordInternal;->mSetProcState:I

    return-void
.end method
