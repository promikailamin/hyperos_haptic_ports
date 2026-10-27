.class final Lcom/android/server/am/ProcessCachedOptimizerRecord;
.super Ljava/lang/Object;
.source "ProcessCachedOptimizerRecord.java"


# static fields
.field static final IS_FROZEN:Ljava/lang/String; = "isFrozen"


# instance fields
.field private final mApp:Lcom/android/server/am/ProcessRecord;

.field private mForceCompact:Z

.field private mFreezeExempt:Z

.field private mFreezeUnfreezeTime:J

.field mFreezerOverride:Z

.field private mFrozen:Z

.field private mLastCompactAction:I

.field private mLastCompactTime:J

.field private mPendingCompact:Z

.field private mPendingFreeze:Z

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private mReqCompactAction:I

.field private mShouldNotFreeze:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 209
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 210
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowUptime"    # J

    .line 218
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastCompactTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 219
    const-string v0, " lastCompactAction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactAction:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 220
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v0, "hasPendingCompaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 223
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isFreezeExempt="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 224
    const-string v0, " isPendingFreeze="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 225
    const-string v0, " isFrozen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 226
    return-void
.end method

.method getFreezeUnfreezeTime()J
    .registers 3

    .line 169
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-wide v0
.end method

.method getLastCompactAction()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactAction:I

    return v0
.end method

.method getLastCompactTime()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    return-wide v0
.end method

.method getReqCompactAction()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactAction:I

    return v0
.end method

.method hasFreezerOverride()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    return v0
.end method

.method hasPendingCompact()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    return v0
.end method

.method init(J)V
    .registers 3
    .param p1, "nowUptime"    # J

    .line 213
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 214
    return-void
.end method

.method isForceCompact()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    return v0
.end method

.method isFreezeExempt()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    return v0
.end method

.method isFrozen()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    return v0
.end method

.method isPendingFreeze()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    return v0
.end method

.method setForceCompact(Z)V
    .registers 2
    .param p1, "forceCompact"    # Z

    .line 144
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    .line 145
    return-void
.end method

.method setFreezeExempt(Z)V
    .registers 2
    .param p1, "exempt"    # Z

    .line 204
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    .line 205
    return-void
.end method

.method setFreezeUnfreezeTime(J)V
    .registers 3
    .param p1, "freezeUnfreezeTime"    # J

    .line 174
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 175
    return-void
.end method

.method setFreezerOverride(Z)V
    .registers 2
    .param p1, "freezerOverride"    # Z

    .line 164
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    .line 165
    return-void
.end method

.method setFrozen(Z)V
    .registers 2
    .param p1, "frozen"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 155
    return-void
.end method

.method setHasPendingCompact(Z)V
    .registers 2
    .param p1, "pendingCompact"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    .line 135
    return-void
.end method

.method setLastCompactAction(I)V
    .registers 2
    .param p1, "lastCompactAction"    # I

    .line 124
    iput p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactAction:I

    .line 125
    return-void
.end method

.method setLastCompactTime(J)V
    .registers 3
    .param p1, "lastCompactTime"    # J

    .line 104
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    .line 105
    return-void
.end method

.method setPendingFreeze(Z)V
    .registers 2
    .param p1, "freeze"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    .line 195
    return-void
.end method

.method setReqCompactAction(I)V
    .registers 2
    .param p1, "reqCompactAction"    # I

    .line 114
    iput p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactAction:I

    .line 115
    return-void
.end method

.method setShouldNotFreeze(Z)V
    .registers 2
    .param p1, "shouldNotFreeze"    # Z

    .line 184
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    .line 185
    return-void
.end method

.method shouldNotFreeze()Z
    .registers 2

    .line 179
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    return v0
.end method
