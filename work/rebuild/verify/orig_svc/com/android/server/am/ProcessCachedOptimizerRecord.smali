.class public final Lcom/android/server/am/ProcessCachedOptimizerRecord;
.super Ljava/lang/Object;
.source "ProcessCachedOptimizerRecord.java"


# static fields
.field static final IS_FROZEN:Ljava/lang/String; = "isFrozen"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mEarliestFreezableTimeMillis:J

.field public mForceCompact:Z

.field public mFreezeSticky:Z

.field public mFreezeUnfreezeTime:J

.field public mFreezerOverride:Z

.field public mFrozen:Z

.field public final mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mHasCollectedFrozenPSS:Z

.field public mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public mLastCompactTime:J

.field public mLastOomAdjChangeReason:I

.field public mLastUsedTimeout:J

.field public mPendingCompact:Z

.field public mPendingFreeze:Z

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

.field public mShouldNotFreeze:Z

.field public mShouldNotFreezeAdjSeq:I

.field public mShouldNotFreezeReason:I


# direct methods
.method public static synthetic $r8$lambda$6e1WKBdmUHOww6OyL-WUh31gNYE(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->lambda$dispatchFrozenEvent$1(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HBmyY4u0xa6PxtuMQNuHUc2IWu0(Ljava/io/PrintWriter;Landroid/util/Pair;)V
    .registers 3

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LTcRtyqLvcipvWyqTX8k356MCns(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->lambda$dispatchUnfrozenEvent$2(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lZHn3tWVRvIRmtdxS9KMoU_F4R4(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->lambda$dispatchFrozenEvent$0(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-6XxJyWq6MDe_Td30gYfonqo00(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->lambda$dispatchUnfrozenEvent$3(Landroid/util/Pair;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 400
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 401
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-void
.end method


# virtual methods
.method public addFrozenProcessListener(Ljava/util/concurrent/Executor;Landroid/app/ActivityManagerInternal$FrozenProcessListener;)V
    .registers 4

    .line 384
    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchFrozenEvent()V
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessCachedOptimizerRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchUnfrozenEvent()V
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessCachedOptimizerRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 411
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastCompactTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 412
    const-string v0, " lastCompactProfile="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 414
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    const-string v0, "hasPendingCompaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 417
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    const-string/jumbo v0, "isPendingFreeze="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 419
    const-string v0, " isFrozen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 420
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "earliestFreezableTimeMs="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    invoke-static {v0, v1, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 422
    iget-object p2, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_61

    .line 423
    const-string p2, " mFrozenProcessListeners="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p2, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 426
    :cond_61
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getEarliestFreezableTime()J
    .registers 3

    .line 355
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    return-wide v0
.end method

.method public getFreezeUnfreezeTime()J
    .registers 3

    .line 298
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-wide v0
.end method

.method public getLastCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-nez v0, :cond_8

    .line 217
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    iput-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 220
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-object p0
.end method

.method public getLastCompactTime()J
    .registers 3

    .line 174
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    return-wide v0
.end method

.method public getLastOomAdjChangeReason()I
    .registers 1

    .line 210
    iget p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastOomAdjChangeReason:I

    return p0
.end method

.method public getLastUsedTimeout()J
    .registers 3

    .line 365
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastUsedTimeout:J

    return-wide v0
.end method

.method public getReqCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-object p0
.end method

.method public getReqCompactSource()Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    return-object p0
.end method

.method public hasFreezerOverride()Z
    .registers 1

    .line 288
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    return p0
.end method

.method public hasPendingCompact()Z
    .registers 1

    .line 230
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    return p0
.end method

.method public init(J)V
    .registers 3

    .line 405
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-void
.end method

.method public isForceCompact()Z
    .registers 1

    .line 240
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    return p0
.end method

.method public isFreezeSticky()Z
    .registers 1

    .line 264
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    return p0
.end method

.method public isFrozen()Z
    .registers 1

    .line 250
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    return p0
.end method

.method public isPendingFreeze()Z
    .registers 1

    .line 380
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    return p0
.end method

.method public final synthetic lambda$dispatchFrozenEvent$0(Landroid/util/Pair;)V
    .registers 2

    .line 389
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManagerInternal$FrozenProcessListener;

    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-interface {p1, p0}, Landroid/app/ActivityManagerInternal$FrozenProcessListener;->onProcessFrozen(I)V

    return-void
.end method

.method public final synthetic lambda$dispatchFrozenEvent$1(Landroid/util/Pair;)V
    .registers 4

    .line 389
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$dispatchUnfrozenEvent$2(Landroid/util/Pair;)V
    .registers 2

    .line 395
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManagerInternal$FrozenProcessListener;

    iget-object p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-interface {p1, p0}, Landroid/app/ActivityManagerInternal$FrozenProcessListener;->onProcessUnfrozen(I)V

    return-void
.end method

.method public final synthetic lambda$dispatchUnfrozenEvent$3(Landroid/util/Pair;)V
    .registers 4

    .line 395
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessCachedOptimizerRecord;Landroid/util/Pair;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEarliestFreezableTime(J)V
    .registers 3

    .line 360
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    return-void
.end method

.method public setForceCompact(Z)V
    .registers 2

    .line 245
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    return-void
.end method

.method public setFreezeSticky(Z)V
    .registers 2

    .line 259
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    return-void
.end method

.method public setFreezeUnfreezeTime(J)V
    .registers 3

    .line 303
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-void
.end method

.method public setFreezerOverride(Z)V
    .registers 2

    .line 293
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    return-void
.end method

.method public setFrozen(Z)V
    .registers 2

    .line 255
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    return-void
.end method

.method public setHasCollectedFrozenPSS(Z)V
    .registers 2

    .line 283
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    return-void
.end method

.method public setHasPendingCompact(Z)V
    .registers 2

    .line 235
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    return-void
.end method

.method public setLastCompactProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-void
.end method

.method public setLastCompactTime(J)V
    .registers 3

    .line 179
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    return-void
.end method

.method public setLastUsedTimeout(J)V
    .registers 3

    .line 370
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastUsedTimeout:J

    return-void
.end method

.method public setPendingFreeze(Z)V
    .registers 2

    .line 375
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    return-void
.end method

.method public setReqCompactProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-void
.end method

.method public setReqCompactSource(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    return-void
.end method

.method public setShouldNotFreeze(ZZII)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_a

    .line 335
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eq p0, p1, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    if-eqz p1, :cond_e

    and-int/lit8 v1, p3, -0x2

    .line 344
    :cond_e
    iget p2, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    if-ne v1, p2, :cond_16

    iget-boolean p2, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eq p1, p2, :cond_18

    .line 345
    :cond_16
    iput p4, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeAdjSeq:I

    .line 347
    :cond_18
    iput v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    .line 349
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    return v0
.end method

.method public shouldNotFreeze()Z
    .registers 1

    .line 308
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    return p0
.end method

.method public shouldNotFreezeAdjSeq()I
    .registers 1

    .line 318
    iget p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeAdjSeq:I

    return p0
.end method

.method public shouldNotFreezeReason()I
    .registers 1

    .line 313
    iget p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    return p0
.end method

.method public skipPSSCollectionBecauseFrozen()Z
    .registers 3

    .line 268
    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    .line 272
    iget-boolean v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-nez v1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 v1, 0x1

    .line 278
    iput-boolean v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    return v0
.end method
