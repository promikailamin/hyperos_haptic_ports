.class public final Lcom/android/server/am/PhantomProcessList;
.super Ljava/lang/Object;
.source "PhantomProcessList.java"


# instance fields
.field public final mAppPhantomProcessMap:Landroid/util/SparseArray;

.field public final mCgroupProcsFds:Landroid/util/SparseArray;

.field public final mDataBuffer:[B

.field mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

.field public final mKillHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mPhantomProcesses:Landroid/util/SparseArray;

.field public final mPhantomProcessesPidFds:Landroid/util/SparseArray;

.field public final mPhantomToAppProcessMap:Landroid/util/SparseArray;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTempPhantomProcesses:Ljava/util/ArrayList;

.field public mTrimPhantomProcessScheduled:Z

.field public mUpdateSeq:I

.field public final mZombiePhantomProcesses:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$K2qOooafJjVfXzmG2th1X66pCMg(Lcom/android/server/am/PhantomProcessList;Ljava/io/FileDescriptor;I)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/PhantomProcessList;->onPhantomProcessFdEvent(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$N7SwL_pByAFT7sgXncsbcUgdS-o(Lcom/android/server/am/PhantomProcessList;Lcom/android/server/am/PhantomProcessRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/PhantomProcessList;->onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$te76WicnMtQQTu_mz9uIam9K-b8(Lcom/android/server/am/PhantomProcessList;Lcom/android/server/am/PhantomProcessRecord;Lcom/android/server/am/PhantomProcessRecord;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/PhantomProcessList;->lambda$trimPhantomProcessesIfNecessary$0(Lcom/android/server/am/PhantomProcessRecord;Lcom/android/server/am/PhantomProcessRecord;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    const/16 v0, 0x1000

    .line 99
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mDataBuffer:[B

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    .line 115
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 116
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Landroid/os/Handler;

    .line 117
    new-instance p1, Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-direct {p1}, Lcom/android/server/am/PhantomProcessList$Injector;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    return-void
.end method

.method public static getProcessName(I)Ljava/lang/String;
    .registers 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1f

    const/4 p0, 0x0

    return-object p0

    :cond_1f
    const/16 v0, 0x2f

    .line 213
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_35

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_35

    add-int/lit8 v0, v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_35
    return-object p0
.end method

.method private static native nativeGetCgroupProcsPath(II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method


# virtual methods
.method public final addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V
    .registers 5

    if-eq p3, p2, :cond_44

    .line 224
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p3, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p3

    if-eqz p3, :cond_d

    return-void

    .line 236
    :cond_d
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p3

    if-ltz p3, :cond_26

    .line 238
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-ne p1, v0, :cond_20

    goto :goto_44

    .line 243
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_2b

    .line 245
    :cond_26
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    :goto_2b
    invoke-static {p2}, Landroid/os/Process;->getUidForPid(I)I

    move-result p1

    .line 250
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-virtual {p3, p2}, Lcom/android/server/am/PhantomProcessList$Injector;->getProcessName(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3f

    if-gez p1, :cond_3a

    goto :goto_3f

    :cond_3a
    const/4 v0, 0x1

    .line 255
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/server/am/PhantomProcessList;->getOrCreatePhantomProcessIfNeededLocked(Ljava/lang/String;IIZ)Lcom/android/server/am/PhantomProcessRecord;

    return-void

    .line 252
    :cond_3f
    :goto_3f
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->delete(I)V

    :cond_44
    :goto_44
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 574
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_3
    const-string v1, "All Active App Child Processes:"

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/am/PhantomProcessList;->dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 577
    const-string v1, "All Zombie App Child Processes:"

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/am/PhantomProcessList;->dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 579
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 8

    .line 584
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_7

    goto :goto_47

    .line 588
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 589
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    :goto_11
    if-ge p3, p0, :cond_47

    .line 592
    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PhantomProcessRecord;

    .line 593
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    const-string v1, "  proc #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 596
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/PhantomProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    :cond_47
    :goto_47
    return-void
.end method

.method public forEachPhantomProcessOfApp(Lcom/android/server/am/ProcessRecord;Ljava/util/function/Function;)V
    .registers 5

    .line 515
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/PhantomProcessList;->getPhantomProcessOfAppLocked(Lcom/android/server/am/ProcessRecord;)Landroid/util/SparseArray;

    move-result-object p0

    if-nez p0, :cond_d

    .line 518
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_2d

    .line 520
    :cond_d
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_13
    if-ltz p1, :cond_2b

    .line 521
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    .line 522
    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 p1, p1, -0x1

    goto :goto_13

    .line 526
    :cond_2b
    :goto_2b
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_b

    throw p0
.end method

.method public getCgroupFilePath(II)Ljava/lang/String;
    .registers 3

    .line 204
    invoke-static {p1, p2}, Lcom/android/server/am/PhantomProcessList;->nativeGetCgroupProcsPath(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreatePhantomProcessIfNeededLocked(Ljava/lang/String;IIZ)Lcom/android/server/am/PhantomProcessRecord;
    .registers 14

    .line 280
    invoke-virtual {p0, p3}, Lcom/android/server/am/PhantomProcessList;->isAppProcess(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 285
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3e

    .line 287
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PhantomProcessRecord;

    .line 288
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/PhantomProcessRecord;->equals(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v0

    .line 292
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/server/am/PhantomProcessList;->onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V

    goto :goto_5a

    .line 296
    :cond_3e
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_5a

    .line 298
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PhantomProcessRecord;

    .line 299
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/am/PhantomProcessRecord;->equals(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_55

    return-object v2

    .line 304
    :cond_55
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_5a
    :goto_5a
    if-nez p4, :cond_5d

    return-object v1

    .line 312
    :cond_5d
    iget-object p4, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/ProcessRecord;

    if-eqz p4, :cond_c2

    .line 317
    :try_start_67
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    .line 318
    new-instance v2, Lcom/android/server/am/PhantomProcessRecord;

    iget-object v7, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/PhantomProcessRecord;-><init>(Ljava/lang/String;IIILcom/android/server/am/ActivityManagerService;Ljava/util/function/Consumer;)V

    .line 321
    iget p1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    iput p1, v2, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    .line 322
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {p1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_97

    .line 325
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 326
    iget-object p2, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p2, v6, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 328
    :cond_97
    invoke-virtual {p1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    iget-object p1, v2, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_be

    .line 330
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iget-object p2, v2, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    new-instance p3, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    const/4 p4, 0x5

    invoke-virtual {p1, p2, p4, p3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 333
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    iget-object p2, v2, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p2

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    :cond_be
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->scheduleTrimPhantomProcessesLocked()V
    :try_end_c1
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_c1} :catch_c2

    return-object v2

    :catch_c2
    :cond_c2
    return-object v1
.end method

.method public final getPhantomProcessOfAppLocked(Lcom/android/server/am/ProcessRecord;)Landroid/util/SparseArray;
    .registers 3

    .line 502
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_15

    .line 504
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAppProcess(I)Z
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 346
    :try_start_5
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 347
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public killPhantomProcessGroupLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/PhantomProcessRecord;IILjava/lang/String;)V
    .registers 12

    .line 481
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    iget v2, p2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_43

    .line 484
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 485
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 486
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1b
    if-ltz v1, :cond_43

    .line 487
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PhantomProcessRecord;

    if-ne v3, p2, :cond_2b

    .line 489
    invoke-virtual {v3, p5, v2}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    goto :goto_40

    :catchall_29
    move-exception p0

    goto :goto_59

    .line 491
    :cond_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caused by sibling process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    :goto_40
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 495
    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_29

    .line 497
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caused by child process: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p3, p4, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    return-void

    .line 495
    :goto_59
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_29

    throw p0
.end method

.method public final synthetic lambda$trimPhantomProcessesIfNecessary$0(Lcom/android/server/am/PhantomProcessRecord;Lcom/android/server/am/PhantomProcessRecord;)I
    .registers 8

    .line 420
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    return v1

    .line 425
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v2, p2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    const/4 v2, -0x1

    if-nez p0, :cond_1c

    return v2

    .line 430
    :cond_1c
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v4

    if-eq v3, v4, :cond_30

    .line 431
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    .line 433
    :cond_30
    iget-wide p0, p1, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    iget-wide v3, p2, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    cmp-long p2, p0, v3

    if-eqz p2, :cond_3e

    cmp-long p0, p0, v3

    if-gez p0, :cond_3d

    return v1

    :cond_3d
    return v2

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public lookForPhantomProcessesLocked()V
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 124
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 126
    :try_start_9
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_31

    .line 127
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_2a

    .line 128
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/server/am/PhantomProcessList;->lookForPhantomProcessesLocked(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :catchall_28
    move-exception p0

    goto :goto_2f

    .line 131
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_28

    .line 133
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    .line 131
    :goto_2f
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_28

    :try_start_30
    throw p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 133
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 134
    throw p0
.end method

.method public final lookForPhantomProcessesLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 13

    .line 139
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-nez v0, :cond_89

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v0

    if-nez v0, :cond_89

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_89

    .line 143
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    if-nez v1, :cond_33

    .line 148
    :try_start_20
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/PhantomProcessList;->getCgroupFilePath(II)Ljava/lang/String;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-virtual {v2, v1}, Lcom/android/server/am/PhantomProcessList$Injector;->openCgroupProcs(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_2e} :catch_89
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_2e} :catch_89
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_2e} :catch_89

    .line 162
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    :cond_33
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mDataBuffer:[B

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v6, v3

    .line 170
    :cond_39
    :try_start_39
    iget-object v7, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    array-length v8, v2

    invoke-virtual {v7, v1, v2, v3, v8}, Lcom/android/server/am/PhantomProcessList$Injector;->readCgroupProcs(Ljava/io/InputStream;[BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_44

    goto :goto_61

    :cond_44
    int-to-long v8, v7

    add-long/2addr v4, v8

    move v8, v3

    :goto_47
    if-ge v8, v7, :cond_5e

    .line 176
    aget-byte v9, v2, v8

    const/16 v10, 0xa

    if-ne v9, v10, :cond_56

    .line 178
    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/am/PhantomProcessList;->addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V

    move v6, v3

    goto :goto_5b

    :catch_54
    move-exception v2

    goto :goto_6b

    :cond_56
    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v6, v9

    :goto_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    .line 184
    :cond_5e
    array-length v8, v2

    if-ge v7, v8, :cond_39

    :goto_61
    if-eqz v6, :cond_66

    .line 191
    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/am/PhantomProcessList;->addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V

    :cond_66
    neg-long v2, v4

    .line 194
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_6a} :catch_54

    return-void

    .line 196
    :goto_6b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in reading cgroup procs from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ActivityManager"

    invoke-static {v3, p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 198
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->delete(I)V

    :catch_89
    :cond_89
    :goto_89
    return-void
.end method

.method public onAppDied(I)V
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_1e

    .line 264
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 265
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 266
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_20

    .line 268
    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1c

    throw p0
.end method

.method public final onPhantomProcessFdEvent(Ljava/io/FileDescriptor;I)I
    .registers 5

    .line 351
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/PhantomProcessRecord;

    const/4 p1, 0x0

    if-nez p0, :cond_16

    .line 354
    monitor-exit v0

    return p1

    :catchall_14
    move-exception p0

    goto :goto_25

    :cond_16
    const/4 v1, 0x1

    and-int/2addr p2, v1

    if-eqz p2, :cond_1e

    .line 357
    invoke-virtual {p0, v1}, Lcom/android/server/am/PhantomProcessRecord;->onProcDied(Z)V

    goto :goto_23

    .line 360
    :cond_1e
    const-string p2, "Process error"

    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    .line 362
    :goto_23
    monitor-exit v0

    return p1

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_14

    throw p0
.end method

.method public final onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V
    .registers 5

    .line 368
    iget-object v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 369
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    .line 370
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 371
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 372
    iget-object v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 374
    :cond_29
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 375
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_3b

    return-void

    .line 379
    :cond_3b
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 380
    iget v2, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 381
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_53

    .line 382
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 384
    :cond_53
    iget-boolean v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mZombie:Z

    if-eqz v0, :cond_5f

    .line 386
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 389
    :cond_5f
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public pruneStaleProcessesLocked()V
    .registers 6

    .line 456
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_20

    .line 457
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PhantomProcessRecord;

    .line 458
    iget v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    iget v4, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    if-ge v3, v4, :cond_1d

    .line 462
    const-string v3, "Stale process"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 465
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_27
    if-ltz v0, :cond_36

    .line 466
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    .line 467
    iget v1, v1, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    :cond_36
    return-void
.end method

.method public final scheduleTrimPhantomProcessesLocked()V
    .registers 3

    .line 395
    iget-boolean v0, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    .line 397
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method public setProcessGroupForPhantomProcessOfApp(Lcom/android/server/am/ProcessRecord;I)V
    .registers 8

    .line 533
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/PhantomProcessList;->lookForPhantomProcessesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/server/am/PhantomProcessList;->getPhantomProcessOfAppLocked(Lcom/android/server/am/ProcessRecord;)Landroid/util/SparseArray;

    move-result-object p1

    if-nez p1, :cond_10

    .line 537
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_2e

    .line 539
    :cond_10
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_16
    if-ltz v1, :cond_2c

    .line 540
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PhantomProcessRecord;

    .line 541
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v4, v2, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    iget-object v2, v2, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4, p2, v2}, Lcom/android/server/am/OomAdjuster;->setProcessGroup(IILjava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 543
    :cond_2c
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_e

    throw p0
.end method

.method public trimPhantomProcessesIfNecessary()V
    .registers 7

    .line 407
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "settings_enable_monitor_phantom_procs"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_94

    .line 411
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 412
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_8b

    const/4 v2, 0x0

    .line 413
    :try_start_21
    iput-boolean v2, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    .line 414
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_85

    .line 415
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_39
    if-ltz v2, :cond_4d

    .line 416
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PhantomProcessRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_39

    :catchall_4b
    move-exception p0

    goto :goto_8d

    .line 418
    :cond_4d
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_52
    .catchall {:try_start_21 .. :try_end_52} :catchall_4b

    .line 419
    :try_start_52
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 439
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_82

    .line 440
    :try_start_5d
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .line 441
    :goto_64
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v4, v4, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    if-lt v2, v4, :cond_7c

    .line 442
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PhantomProcessRecord;

    .line 443
    const-string v5, "Trimming phantom processes"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_64

    .line 445
    :cond_7c
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_81
    .catchall {:try_start_5d .. :try_end_81} :catchall_4b

    goto :goto_85

    :catchall_82
    move-exception p0

    .line 439
    :try_start_83
    monitor-exit v2
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    :try_start_84
    throw p0

    .line 447
    :cond_85
    :goto_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_84 .. :try_end_86} :catchall_4b

    .line 448
    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_8b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_8b
    move-exception p0

    goto :goto_8f

    .line 447
    :goto_8d
    :try_start_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_4b

    :try_start_8e
    throw p0

    .line 448
    :goto_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_8e .. :try_end_90} :catchall_8b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_94
    :goto_94
    return-void
.end method

.method public updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V
    .registers 12

    .line 548
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_3
    iget v1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    .line 553
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->lookForPhantomProcessesLocked()V

    .line 555
    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_47

    .line 556
    invoke-virtual {p1, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    .line 557
    iget-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v6, 0x0

    .line 558
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/am/PhantomProcessList;->getOrCreatePhantomProcessIfNeededLocked(Ljava/lang/String;IIZ)Lcom/android/server/am/PhantomProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 560
    iget v4, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    iput v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    .line 561
    iget-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    iget v6, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    .line 562
    iget-wide v6, v3, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_41

    .line 563
    iput-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    goto :goto_41

    :catchall_3f
    move-exception p0

    goto :goto_4c

    .line 565
    :cond_41
    :goto_41
    invoke-virtual {v3}, Lcom/android/server/am/PhantomProcessRecord;->updateAdjLocked()V

    :cond_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 569
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->pruneStaleProcessesLocked()V

    .line 570
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_3f

    throw p0
.end method
