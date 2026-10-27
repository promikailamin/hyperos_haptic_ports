.class public Lcom/android/server/am/ScoutAnrInfo;
.super Ljava/lang/Object;
.source "ScoutAnrInfo.java"


# static fields
.field public static final DEFAULT_PERIOD_MESSAGE_HISTORY_DUMP_DURATION:I = 0x4e20


# instance fields
.field private mBinderTransInfo:Ljava/lang/String;

.field private mHasDThread:Z

.field private mIsBgAnr:Z

.field private mIsBlockSystem:Z

.field private mPid:I

.field private mTimeStamp:J

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ScoutAnrInfo;->mPid:I

    .line 8
    iput v0, p0, Lcom/android/server/am/ScoutAnrInfo;->mUid:I

    .line 9
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/ScoutAnrInfo;->mTimeStamp:J

    .line 10
    iput-boolean v0, p0, Lcom/android/server/am/ScoutAnrInfo;->mIsBlockSystem:Z

    .line 11
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/am/ScoutAnrInfo;->mBinderTransInfo:Ljava/lang/String;

    .line 12
    iput-boolean v0, p0, Lcom/android/server/am/ScoutAnrInfo;->mIsBgAnr:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/server/am/ScoutAnrInfo;->mHasDThread:Z

    .line 16
    return-void
.end method


# virtual methods
.method public getBgAnr()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/android/server/am/ScoutAnrInfo;->mIsBgAnr:Z

    return v0
.end method

.method public getBinderTransInfo()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/server/am/ScoutAnrInfo;->mBinderTransInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockSystemState()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lcom/android/server/am/ScoutAnrInfo;->mIsBlockSystem:Z

    return v0
.end method

.method public getDThreadState()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/android/server/am/ScoutAnrInfo;->mHasDThread:Z

    return v0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/android/server/am/ScoutAnrInfo;->mTimeStamp:J

    return-wide v0
.end method

.method public getpid()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/android/server/am/ScoutAnrInfo;->mPid:I

    return v0
.end method

.method public getuid()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/android/server/am/ScoutAnrInfo;->mUid:I

    return v0
.end method

.method public setBgAnr(Z)V
    .registers 2
    .param p1, "mIsBgAnr"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/am/ScoutAnrInfo;->mIsBgAnr:Z

    .line 60
    return-void
.end method

.method public setBinderTransInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "mBinderTransInfo"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/android/server/am/ScoutAnrInfo;->mBinderTransInfo:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setBlockSystemState(Z)V
    .registers 2
    .param p1, "mIsBlockSystem"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/android/server/am/ScoutAnrInfo;->mIsBlockSystem:Z

    .line 44
    return-void
.end method

.method public setDThreadState(Z)V
    .registers 2
    .param p1, "mHasDThread"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/android/server/am/ScoutAnrInfo;->mHasDThread:Z

    .line 68
    return-void
.end method

.method public setPid(I)V
    .registers 2
    .param p1, "mPid"    # I

    .line 19
    iput p1, p0, Lcom/android/server/am/ScoutAnrInfo;->mPid:I

    .line 20
    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3
    .param p1, "mTimeStamp"    # J

    .line 35
    iput-wide p1, p0, Lcom/android/server/am/ScoutAnrInfo;->mTimeStamp:J

    .line 36
    return-void
.end method

.method public setuid(I)V
    .registers 2
    .param p1, "mUid"    # I

    .line 27
    iput p1, p0, Lcom/android/server/am/ScoutAnrInfo;->mUid:I

    .line 28
    return-void
.end method
