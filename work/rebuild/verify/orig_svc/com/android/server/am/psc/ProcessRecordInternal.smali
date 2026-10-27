.class public abstract Lcom/android/server/am/psc/ProcessRecordInternal;
.super Ljava/lang/Object;
.source "ProcessRecordInternal.java"


# instance fields
.field public final isSdkSandbox:Z

.field public final isolated:Z

.field public mActivityStateFlags:I

.field public mAdjSeq:I

.field public mAdjSource:Ljava/lang/Object;

.field public mAdjSourceProcState:I

.field public mAdjTarget:Ljava/lang/Object;

.field public mAdjType:Ljava/lang/String;

.field public mAdjTypeCode:I

.field public mBackgroundRestricted:Z

.field public mCacheOomRankerUseCount:I

.field public mCachedAdj:I

.field public mCachedAdjType:Ljava/lang/String;

.field public mCachedCompatChanges:[I

.field public mCachedForegroundActivities:Z

.field public mCachedHasActivities:I

.field public mCachedHasRecentTasks:I

.field public mCachedHasVisibleActivities:I

.field public mCachedIsHeavyWeight:I

.field public mCachedIsHomeProcess:I

.field public mCachedIsPreviousProcess:I

.field public mCachedIsReceivingBroadcast:I

.field public mCachedProcState:I

.field public mCachedSchedGroup:I

.field public mCompletedAdjSeq:I

.field public mCurAdj:I

.field public mCurBoundByNonBgRestrictedApp:Z

.field public mCurCapability:I

.field public mCurCpuTimeReasons:I

.field public mCurImplicitCpuTimeReasons:I

.field public mCurProcState:I

.field public mCurRawAdj:I

.field public mCurRawProcState:I

.field public mCurSchedGroup:I

.field public mFgInteractionTime:J

.field public mFollowupUpdateUptimeMs:J

.field public mForcingToImportant:Ljava/lang/Object;

.field public mHasActivities:Z

.field public mHasForegroundActivities:Z

.field public mHasOverlayUi:Z

.field public mHasRecentTask:Z

.field public mHasReportedInteraction:Z

.field public mHasShownUi:Z

.field public mHasStartedServices:Z

.field public mHasTopUi:Z

.field public mInteractionEventTime:J

.field public mIsolatedEntryPoint:Ljava/lang/String;

.field public mKilled:Z

.field public mKilledByAm:Z

.field public mLastActivityTime:J

.field public mLastCachedTime:J

.field public mLastInvisibleTime:J

.field public mLastStateTime:J

.field public mLastTopTime:J

.field public final mLinkedNodes:[Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

.field public mLruSeq:I

.field public mMaxAdj:I

.field public mObserver:Lcom/android/server/am/psc/ProcessRecordInternal$Observer;

.field public mPendingFinishAttach:Z

.field public mPerceptibleTaskStoppedTimeMillis:J

.field public final mProcLock:Ljava/lang/Object;

.field public mReachable:Z

.field public mRenderThreadTid:I

.field public mRepForegroundActivities:Z

.field public mRepProcState:I

.field public mRunningRemoteAnimation:Z

.field public mSavedPriority:I

.field public mScheduleLikeTopApp:Z

.field public mServiceB:Z

.field public mServiceHighRam:Z

.field public final mServiceLock:Ljava/lang/Object;

.field public mSetAdj:I

.field public mSetBoundByNonBgRestrictedApp:Z

.field public mSetCached:Z

.field public mSetCapability:I

.field public mSetCpuTimeReasons:I

.field public mSetImplicitCpuTimeReasons:I

.field public mSetProcState:I

.field public mSetRawAdj:I

.field public mSetSchedGroup:I

.field public mStartedServiceObserver:Lcom/android/server/am/psc/ProcessRecordInternal$StartedServiceObserver;

.field public mSystemNoUi:Z

.field public mVerifiedAdj:I

.field public mWaitingToKill:Ljava/lang/String;

.field public mWhenUnimportant:J

.field public final processName:Ljava/lang/String;

.field public final uid:I

.field public final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e9

    .line 414
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mMaxAdj:I

    const/16 v0, -0x2710

    .line 420
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurRawAdj:I

    .line 426
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetRawAdj:I

    .line 432
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurAdj:I

    .line 438
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetAdj:I

    .line 444
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mVerifiedAdj:I

    const/4 v1, 0x0

    .line 451
    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurCpuTimeReasons:I

    .line 459
    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetCpuTimeReasons:I

    .line 467
    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurImplicitCpuTimeReasons:I

    .line 475
    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetImplicitCpuTimeReasons:I

    .line 483
    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurCapability:I

    .line 489
    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetCapability:I

    .line 495
    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurSchedGroup:I

    .line 501
    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetSchedGroup:I

    const/16 v2, 0x14

    .line 507
    iput v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurProcState:I

    .line 513
    iput v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mRepProcState:I

    .line 519
    iput v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurRawProcState:I

    .line 525
    iput v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetProcState:I

    const-wide/high16 v2, -0x8000000000000000L

    .line 663
    iput-wide v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastTopTime:J

    .line 675
    iput-boolean v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mBackgroundRestricted:Z

    .line 681
    iput-boolean v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurBoundByNonBgRestrictedApp:Z

    .line 687
    iput-boolean v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetBoundByNonBgRestrictedApp:Z

    .line 772
    iput-boolean v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasActivities:Z

    const v4, 0xffff

    .line 775
    iput v4, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mActivityStateFlags:I

    .line 778
    iput-wide v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mPerceptibleTaskStoppedTimeMillis:J

    .line 781
    iput-boolean v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasRecentTask:Z

    const/4 v2, -0x1

    .line 793
    iput v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedHasActivities:I

    .line 795
    iput v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedIsHeavyWeight:I

    .line 797
    iput v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedHasVisibleActivities:I

    .line 799
    iput v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedIsHomeProcess:I

    .line 801
    iput v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedIsPreviousProcess:I

    .line 803
    iput v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedHasRecentTasks:I

    .line 805
    iput v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedIsReceivingBroadcast:I

    .line 811
    filled-new-array {v2, v2, v2}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedCompatChanges:[I

    const/4 v2, 0x0

    .line 818
    iput-object v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedAdjType:Ljava/lang/String;

    .line 820
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedAdj:I

    .line 822
    iput-boolean v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedForegroundActivities:Z

    const/16 v0, 0x13

    .line 824
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedProcState:I

    .line 826
    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedSchedGroup:I

    .line 829
    iput-boolean v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mScheduleLikeTopApp:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 832
    iput-wide v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mFollowupUpdateUptimeMs:J

    const/4 v0, 0x2

    .line 853
    new-array v0, v0, [Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    iput-object v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    .line 857
    iput-object p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 858
    iput p2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 859
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    .line 860
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    .line 861
    invoke-static {p2}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    .line 862
    iput-object p3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mServiceLock:Ljava/lang/Object;

    .line 863
    iput-object p4, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mProcLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addCurCpuTimeReasons(I)V
    .registers 3

    .line 1025
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurCpuTimeReasons:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurCpuTimeReasons:I

    return-void
.end method

.method public addCurImplicitCpuTimeReasons(I)V
    .registers 3

    .line 1050
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurImplicitCpuTimeReasons:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurImplicitCpuTimeReasons:I

    return-void
.end method

.method public clearCurCpuTimeReasons()V
    .registers 2

    const/4 v0, 0x0

    .line 1031
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurCpuTimeReasons:I

    return-void
.end method

.method public clearCurImplicitCpuTimeReasons()V
    .registers 2

    const/4 v0, 0x0

    .line 1056
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurImplicitCpuTimeReasons:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 12

    .line 1890
    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasReportedInteraction:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_c

    iget-wide v3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mFgInteractionTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_45

    .line 1891
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "reportedInteraction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1892
    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasReportedInteraction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1893
    iget-wide v3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mInteractionEventTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2e

    .line 1894
    const-string v0, " time="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1895
    iget-wide v3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mInteractionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1897
    :cond_2e
    iget-wide v3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mFgInteractionTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_42

    .line 1898
    const-string v0, " fgInteractionTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1899
    iget-wide v3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mFgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1901
    :cond_42
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1903
    :cond_45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "adjSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mAdjSeq:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1904
    const-string v0, " lruSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLruSeq:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1905
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "oom adj: max="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mMaxAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1906
    const-string v0, " curRaw="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurRawAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1907
    const-string v0, " setRaw="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetRawAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1908
    const-string v0, " cur="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1909
    const-string v0, " set="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1910
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurSchedGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurSchedGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1911
    const-string v0, " setSchedGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetSchedGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1912
    const-string v0, " systemNoUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSystemNoUi:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1913
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1914
    const-string v0, " mRepProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mRepProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1915
    const-string v0, " setProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1916
    const-string v0, " lastStateTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1917
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastStateTime()J

    move-result-wide v3

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1918
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1919
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curCapability="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1920
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurCapability:I

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 1921
    const-string v0, " setCapability="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1922
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetCapability:I

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 1923
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1925
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1926
    const-string v0, "curCpuTimeReasons=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurCpuTimeReasons:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1927
    const-string v0, " setCpuTimeReasons=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetCpuTimeReasons:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1928
    const-string v0, " curImplicitCpuTimeReasons=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1929
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurImplicitCpuTimeReasons:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1930
    const-string v0, " setImplicitCpuTimeReasons=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1931
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetImplicitCpuTimeReasons:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1934
    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mBackgroundRestricted:Z

    if-eqz v0, :cond_156

    .line 1935
    const-string v0, " backgroundRestricted="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1936
    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mBackgroundRestricted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1937
    const-string v0, " boundByNonBgRestrictedApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1938
    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetBoundByNonBgRestrictedApp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1940
    :cond_156
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1941
    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasShownUi:Z

    if-eqz v0, :cond_16a

    .line 1942
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasShownUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasShownUi:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1944
    :cond_16a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "cached="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCached()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1945
    const-string v0, " empty="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isEmpty()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1946
    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mServiceB:Z

    if-eqz v0, :cond_1a1

    .line 1947
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "serviceb="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mServiceB:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1948
    const-string v0, " serviceHighRam="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mServiceHighRam:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1950
    :cond_1a1
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasTopUi()Z

    move-result v0

    if-nez v0, :cond_1b1

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasOverlayUi()Z

    move-result v0

    if-nez v0, :cond_1b1

    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mRunningRemoteAnimation:Z

    if-eqz v0, :cond_1d6

    .line 1951
    :cond_1b1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasTopUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasTopUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1952
    const-string v0, " hasOverlayUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasOverlayUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1953
    const-string v0, " runningRemoteAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mRunningRemoteAnimation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1955
    :cond_1d6
    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasForegroundActivities:Z

    if-nez v0, :cond_1de

    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mRepForegroundActivities:Z

    if-eqz v0, :cond_1fa

    .line 1956
    :cond_1de
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1957
    const-string v0, "foregroundActivities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasForegroundActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1958
    const-string v0, " (rep="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mRepForegroundActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1960
    :cond_1fa
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetProcState:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_212

    .line 1961
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1962
    const-string/jumbo v0, "whenUnimportant="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1963
    iget-wide v3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mWhenUnimportant:J

    sub-long/2addr v3, p3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1964
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1966
    :cond_212
    iget-wide v3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastTopTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_229

    .line 1967
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastTopTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1968
    iget-wide v3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastTopTime:J

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1969
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1971
    :cond_229
    iget-wide p3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastInvisibleTime:J

    cmp-long v0, p3, v1

    if-lez v0, :cond_254

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p3, p3, v0

    if-gez p3, :cond_254

    .line 1972
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "lastInvisibleTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1973
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 1974
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long p3, v0, p3

    .line 1975
    iget-wide v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastInvisibleTime:J

    add-long/2addr p3, v2

    .line 1977
    invoke-static {p1, p3, p4, v0, v1}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 1978
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1980
    :cond_254
    iget-boolean p3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasStartedServices:Z

    if-eqz p3, :cond_265

    .line 1981
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "hasStartedServices="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasStartedServices:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_265
    return-void
.end method

.method public getActivityStateFlags()I
    .registers 1

    .line 1460
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mActivityStateFlags:I

    return p0
.end method

.method public getAdjSeq()I
    .registers 1

    .line 1316
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mAdjSeq:I

    return p0
.end method

.method public getAdjSource()Ljava/lang/Object;
    .registers 1

    .line 1420
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mAdjSource:Ljava/lang/Object;

    return-object p0
.end method

.method public getAdjSourceProcState()I
    .registers 1

    .line 1430
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mAdjSourceProcState:I

    return p0
.end method

.method public getAdjTarget()Ljava/lang/Object;
    .registers 1

    .line 1440
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mAdjTarget:Ljava/lang/Object;

    return-object p0
.end method

.method public getAdjType()Ljava/lang/String;
    .registers 1

    .line 1400
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mAdjType:Ljava/lang/String;

    return-object p0
.end method

.method public getAdjTypeCode()I
    .registers 1

    .line 1410
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mAdjTypeCode:I

    return p0
.end method

.method public abstract getApplicationUid()I
.end method

.method public getCachedAdj()I
    .registers 1

    .line 1656
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedAdj:I

    return p0
.end method

.method public getCachedAdjType()Ljava/lang/String;
    .registers 1

    .line 1696
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedAdjType:Ljava/lang/String;

    return-object p0
.end method

.method public getCachedCompatChange(I)Z
    .registers 5

    .line 1647
    iget-object v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedCompatChanges:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 1649
    invoke-virtual {p0, p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->hasCompatChange(I)Z

    move-result v1

    aput v1, v0, p1

    .line 1651
    :cond_d
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedCompatChanges:[I

    aget p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_15

    return p1

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public getCachedForegroundActivities()Z
    .registers 1

    .line 1666
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedForegroundActivities:Z

    return p0
.end method

.method public getCachedProcState()I
    .registers 1

    .line 1676
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedProcState:I

    return p0
.end method

.method public getCachedSchedGroup()I
    .registers 1

    .line 1686
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedSchedGroup:I

    return p0
.end method

.method public getCompletedAdjSeq()I
    .registers 1

    .line 1326
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCompletedAdjSeq:I

    return p0
.end method

.method public getCurAdj()I
    .registers 1

    .line 953
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurAdj:I

    return p0
.end method

.method public getCurCapability()I
    .registers 1

    .line 998
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurCapability:I

    return p0
.end method

.method public getCurCpuTimeReasons()I
    .registers 1

    .line 1019
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurCpuTimeReasons:I

    return p0
.end method

.method public getCurImplicitCpuTimeReasons()I
    .registers 1

    .line 1043
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurImplicitCpuTimeReasons:I

    return p0
.end method

.method public getCurProcState()I
    .registers 1

    .line 1090
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurProcState:I

    return p0
.end method

.method public getCurRawAdj()I
    .registers 1

    .line 931
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurRawAdj:I

    return p0
.end method

.method public getCurRawProcState()I
    .registers 1

    .line 1118
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurRawProcState:I

    return p0
.end method

.method public getCurrentSchedulingGroup()I
    .registers 1

    .line 1068
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurSchedGroup:I

    return p0
.end method

.method public getFgInteractionTime()J
    .registers 3

    .line 1296
    iget-wide v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mFgInteractionTime:J

    return-wide v0
.end method

.method public getFollowupUpdateUptimeMs()J
    .registers 3

    .line 1716
    iget-wide v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mFollowupUpdateUptimeMs:J

    return-wide v0
.end method

.method public getForcingToImportant()Ljava/lang/Object;
    .registers 1

    .line 1306
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mForcingToImportant:Ljava/lang/Object;

    return-object p0
.end method

.method public getHasActivities()Z
    .registers 1

    .line 1519
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasActivities:Z

    return p0
.end method

.method public getHasForegroundActivities()Z
    .registers 1

    .line 1205
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasForegroundActivities:Z

    return p0
.end method

.method public getHasOverlayUi()Z
    .registers 1

    .line 1249
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasOverlayUi:Z

    return p0
.end method

.method public getHasRecentTasks()Z
    .registers 1

    .line 1610
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasRecentTask:Z

    return p0
.end method

.method public getHasRepForegroundActivities()Z
    .registers 1

    .line 1215
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mRepForegroundActivities:Z

    return p0
.end method

.method public getHasReportedInteraction()Z
    .registers 1

    .line 1269
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasReportedInteraction:Z

    return p0
.end method

.method public getHasShownUi()Z
    .registers 1

    .line 1225
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasShownUi:Z

    return p0
.end method

.method public getHasStartedServices()Z
    .registers 1

    .line 1195
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasStartedServices:Z

    return p0
.end method

.method public getHasTopUi()Z
    .registers 1

    .line 1237
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasTopUi:Z

    return p0
.end method

.method public getHasVisibleActivities()Z
    .registers 2

    .line 1562
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mActivityStateFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getInteractionEventTime()J
    .registers 3

    .line 1281
    iget-wide v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mInteractionEventTime:J

    return-wide v0
.end method

.method public getIsolatedEntryPoint()Ljava/lang/String;
    .registers 1

    .line 1832
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mIsolatedEntryPoint:Ljava/lang/String;

    return-object p0
.end method

.method public getLastActivityTime()J
    .registers 3

    .line 1852
    iget-wide v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastActivityTime:J

    return-wide v0
.end method

.method public getLastCachedTime()J
    .registers 3

    .line 1827
    iget-wide v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastCachedTime:J

    return-wide v0
.end method

.method public getLastInvisibleTime()J
    .registers 3

    .line 1806
    iget-wide v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastInvisibleTime:J

    return-wide v0
.end method

.method public abstract getLastPss()J
.end method

.method public abstract getLastRss()J
.end method

.method public getLastStateTime()J
    .registers 3

    .line 1155
    iget-wide v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastStateTime:J

    return-wide v0
.end method

.method public getLastTopTime()J
    .registers 3

    .line 1361
    iget-wide v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastTopTime:J

    return-wide v0
.end method

.method public getLruSeq()I
    .registers 1

    .line 1331
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLruSeq:I

    return p0
.end method

.method public getMaxAdj()I
    .registers 1

    .line 901
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mMaxAdj:I

    return p0
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public getPerceptibleTaskStoppedTimeMillis()J
    .registers 3

    .line 1470
    iget-wide v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mPerceptibleTaskStoppedTimeMillis:J

    return-wide v0
.end method

.method public abstract getPid()I
.end method

.method public abstract getProcessPackageNames()[Ljava/lang/String;
.end method

.method public abstract getProviders()Lcom/android/server/am/psc/ProcessProviderRecordInternal;
.end method

.method public abstract getReceivers()Lcom/android/server/am/psc/ProcessReceiverRecordInternal;
.end method

.method public getRenderThreadTid()I
    .registers 1

    .line 1862
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mRenderThreadTid:I

    return p0
.end method

.method public getReportedProcState()I
    .registers 1

    .line 1130
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mRepProcState:I

    return p0
.end method

.method public getSavedPriority()I
    .registers 1

    .line 1165
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSavedPriority:I

    return p0
.end method

.method public getScheduleLikeTopApp()Z
    .registers 1

    .line 1706
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mScheduleLikeTopApp:Z

    return p0
.end method

.method public abstract getServices()Lcom/android/server/am/psc/ProcessServiceRecordInternal;
.end method

.method public getSetAdj()I
    .registers 1

    .line 963
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetAdj:I

    return p0
.end method

.method public getSetAdjWithServices()I
    .registers 3

    .line 973
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_d

    .line 974
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasStartedServices:Z

    if-eqz p0, :cond_d

    const/16 p0, 0x320

    return p0

    :cond_d
    return v0
.end method

.method public getSetCapability()I
    .registers 1

    .line 1008
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetCapability:I

    return p0
.end method

.method public getSetProcState()I
    .registers 1

    .line 1145
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetProcState:I

    return p0
.end method

.method public getSetRawAdj()I
    .registers 1

    .line 941
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetRawAdj:I

    return p0
.end method

.method public getSetSchedGroup()I
    .registers 1

    .line 1078
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetSchedGroup:I

    return p0
.end method

.method public abstract getUidRecord()Lcom/android/server/am/psc/UidRecordInternal;
.end method

.method public getVerifiedAdj()I
    .registers 1

    .line 988
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mVerifiedAdj:I

    return p0
.end method

.method public getWaitingToKill()Ljava/lang/String;
    .registers 1

    .line 1842
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mWaitingToKill:Ljava/lang/String;

    return-object p0
.end method

.method public getWhenUnimportant()J
    .registers 3

    .line 1351
    iget-wide v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mWhenUnimportant:J

    return-wide v0
.end method

.method public abstract hasActiveInstrumentation()Z
.end method

.method public abstract hasCompatChange(I)Z
.end method

.method public init(Lcom/android/server/am/psc/ProcessRecordInternal$Observer;Lcom/android/server/am/psc/ProcessRecordInternal$StartedServiceObserver;J)V
    .registers 5

    .line 868
    iput-object p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mObserver:Lcom/android/server/am/psc/ProcessRecordInternal$Observer;

    .line 869
    iput-object p2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mStartedServiceObserver:Lcom/android/server/am/psc/ProcessRecordInternal$StartedServiceObserver;

    .line 870
    iput-wide p3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastStateTime:J

    return-void
.end method

.method public isBackgroundRestricted()Z
    .registers 1

    .line 1761
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mBackgroundRestricted:Z

    return p0
.end method

.method public isCached()Z
    .registers 2

    .line 1371
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurAdj:I

    const/16 v0, 0x384

    if-lt p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isCurBoundByNonBgRestrictedApp()Z
    .registers 1

    .line 1771
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurBoundByNonBgRestrictedApp:Z

    return p0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1366
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurProcState:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public abstract isFrozen()Z
.end method

.method public abstract isInstantApp()Z
.end method

.method public isKilled()Z
    .registers 1

    .line 875
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mKilled:Z

    return p0
.end method

.method public isKilledByAm()Z
    .registers 1

    .line 885
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mKilledByAm:Z

    return p0
.end method

.method public isPendingFinishAttach()Z
    .registers 1

    .line 1731
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mPendingFinishAttach:Z

    return p0
.end method

.method public abstract isPendingFreeze()Z
.end method

.method public abstract isProcessRunning()Z
.end method

.method public isReachable()Z
    .registers 1

    .line 1445
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mReachable:Z

    return p0
.end method

.method public isRunningRemoteAnimation()Z
    .registers 1

    .line 1254
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mRunningRemoteAnimation:Z

    return p0
.end method

.method public isServiceB()Z
    .registers 1

    .line 1175
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mServiceB:Z

    return p0
.end method

.method public isSetBoundByNonBgRestrictedApp()Z
    .registers 1

    .line 1781
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetBoundByNonBgRestrictedApp:Z

    return p0
.end method

.method public isSetCached()Z
    .registers 1

    .line 1816
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetCached:Z

    return p0
.end method

.method public isSystemNoUi()Z
    .registers 1

    .line 1381
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSystemNoUi:Z

    return p0
.end method

.method public killLocked(Ljava/lang/String;IIZ)V
    .registers 12

    const/4 v6, 0x1

    move-object v2, p1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 324
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public killLocked(Ljava/lang/String;IIZZ)V
    .registers 13

    move-object v2, p1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 358
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public killLocked(Ljava/lang/String;IZ)V
    .registers 10

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 308
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 341
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public abstract killLocked(Ljava/lang/String;Ljava/lang/String;IIZZ)V
.end method

.method public abstract notifyTopProcChanged()V
.end method

.method public onCleanupApplicationRecordLSP()V
    .registers 5

    const/4 v0, 0x0

    .line 1743
    invoke-virtual {p0, v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->setHasForegroundActivities(Z)V

    .line 1744
    iput-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasShownUi:Z

    const/4 v1, 0x0

    .line 1745
    iput-object v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mForcingToImportant:Ljava/lang/Object;

    const/16 v1, -0x2710

    .line 1746
    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mVerifiedAdj:I

    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetAdj:I

    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurAdj:I

    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetRawAdj:I

    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurRawAdj:I

    .line 1747
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetCapability:I

    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurCapability:I

    .line 1748
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetSchedGroup:I

    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurSchedGroup:I

    const/16 v1, 0x14

    .line 1749
    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetProcState:I

    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurRawProcState:I

    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurProcState:I

    move v1, v0

    .line 1750
    :goto_26
    iget-object v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedCompatChanges:[I

    array-length v3, v2

    if-ge v1, v3, :cond_31

    const/4 v3, -0x1

    .line 1751
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1753
    :cond_31
    iput-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasActivities:Z

    const v1, 0xffff

    .line 1754
    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mActivityStateFlags:I

    const-wide/high16 v1, -0x8000000000000000L

    .line 1755
    iput-wide v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mPerceptibleTaskStoppedTimeMillis:J

    .line 1756
    iput-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasRecentTask:Z

    return-void
.end method

.method public resetCachedInfo()V
    .registers 3

    const/4 v0, -0x1

    .line 1486
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedHasActivities:I

    .line 1487
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedIsHeavyWeight:I

    .line 1488
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedHasVisibleActivities:I

    .line 1489
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedIsHomeProcess:I

    .line 1490
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedIsPreviousProcess:I

    .line 1491
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedHasRecentTasks:I

    .line 1492
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedIsReceivingBroadcast:I

    const/16 v0, -0x2710

    .line 1493
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedAdj:I

    const/4 v0, 0x0

    .line 1494
    iput-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedForegroundActivities:Z

    const/16 v1, 0x13

    .line 1495
    iput v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedProcState:I

    .line 1496
    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedSchedGroup:I

    const/4 v0, 0x0

    .line 1497
    iput-object v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedAdjType:Ljava/lang/String;

    return-void
.end method

.method public setActivityStateFlags(I)V
    .registers 2

    .line 1465
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mActivityStateFlags:I

    return-void
.end method

.method public setAdjSeq(I)V
    .registers 2

    .line 1311
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mAdjSeq:I

    return-void
.end method

.method public setAdjSource(Ljava/lang/Object;)V
    .registers 2

    .line 1415
    iput-object p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mAdjSource:Ljava/lang/Object;

    return-void
.end method

.method public setAdjSourceProcState(I)V
    .registers 2

    .line 1425
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mAdjSourceProcState:I

    return-void
.end method

.method public setAdjTarget(Ljava/lang/Object;)V
    .registers 2

    .line 1435
    iput-object p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mAdjTarget:Ljava/lang/Object;

    return-void
.end method

.method public setAdjType(Ljava/lang/String;)V
    .registers 2

    .line 1395
    iput-object p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mAdjType:Ljava/lang/String;

    return-void
.end method

.method public setAdjTypeCode(I)V
    .registers 2

    .line 1405
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mAdjTypeCode:I

    return-void
.end method

.method public setBackgroundRestricted(Z)V
    .registers 2

    .line 1766
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mBackgroundRestricted:Z

    return-void
.end method

.method public setCachedAdj(I)V
    .registers 2

    .line 1661
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedAdj:I

    return-void
.end method

.method public setCachedAdjType(Ljava/lang/String;)V
    .registers 2

    .line 1701
    iput-object p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedAdjType:Ljava/lang/String;

    return-void
.end method

.method public setCachedForegroundActivities(Z)V
    .registers 2

    .line 1671
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedForegroundActivities:Z

    return-void
.end method

.method public setCachedHasVisibleActivities(Z)V
    .registers 2

    .line 1551
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedHasVisibleActivities:I

    return-void
.end method

.method public setCachedProcState(I)V
    .registers 2

    .line 1681
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedProcState:I

    return-void
.end method

.method public setCachedSchedGroup(I)V
    .registers 2

    .line 1691
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCachedSchedGroup:I

    return-void
.end method

.method public setCompletedAdjSeq(I)V
    .registers 2

    .line 1321
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCompletedAdjSeq:I

    return-void
.end method

.method public setCurAdj(I)V
    .registers 2

    .line 947
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurAdj:I

    .line 948
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mObserver:Lcom/android/server/am/psc/ProcessRecordInternal$Observer;

    invoke-interface {p0, p1}, Lcom/android/server/am/psc/ProcessRecordInternal$Observer;->onCurAdjChanged(I)V

    return-void
.end method

.method public setCurBoundByNonBgRestrictedApp(Z)V
    .registers 2

    .line 1776
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurBoundByNonBgRestrictedApp:Z

    return-void
.end method

.method public setCurCapability(I)V
    .registers 2

    .line 993
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurCapability:I

    return-void
.end method

.method public setCurProcState(I)V
    .registers 2

    .line 1084
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurProcState:I

    .line 1085
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mObserver:Lcom/android/server/am/psc/ProcessRecordInternal$Observer;

    invoke-interface {p0, p1}, Lcom/android/server/am/psc/ProcessRecordInternal$Observer;->onCurProcStateChanged(I)V

    return-void
.end method

.method public setCurRawAdj(I)V
    .registers 2

    .line 907
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurRawAdj:I

    .line 908
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mObserver:Lcom/android/server/am/psc/ProcessRecordInternal$Observer;

    invoke-interface {p0, p1}, Lcom/android/server/am/psc/ProcessRecordInternal$Observer;->onCurRawAdjChanged(I)V

    return-void
.end method

.method public setCurRawAdj(IZ)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 923
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurRawAdj:I

    if-le p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    return v0

    .line 925
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawAdj(I)V

    return v0
.end method

.method public setCurRawProcState(I)V
    .registers 2

    .line 1095
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurRawProcState:I

    return-void
.end method

.method public setCurRawProcState(IZ)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 1110
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurRawProcState:I

    if-le p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    return v0

    .line 1112
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawProcState(I)V

    return v0
.end method

.method public setCurrentSchedulingGroup(I)V
    .registers 2

    .line 1062
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCurSchedGroup:I

    .line 1063
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mObserver:Lcom/android/server/am/psc/ProcessRecordInternal$Observer;

    invoke-interface {p0, p1}, Lcom/android/server/am/psc/ProcessRecordInternal$Observer;->onCurrentSchedulingGroupChanged(I)V

    return-void
.end method

.method public setFgInteractionTime(J)V
    .registers 3

    .line 1290
    iput-wide p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mFgInteractionTime:J

    .line 1291
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mObserver:Lcom/android/server/am/psc/ProcessRecordInternal$Observer;

    invoke-interface {p0, p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal$Observer;->onFgInteractionTimeChanged(J)V

    return-void
.end method

.method public setFollowupUpdateUptimeMs(J)V
    .registers 3

    .line 1721
    iput-wide p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mFollowupUpdateUptimeMs:J

    return-void
.end method

.method public setForcingToImportant(Ljava/lang/Object;)V
    .registers 2

    .line 1301
    iput-object p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mForcingToImportant:Ljava/lang/Object;

    return-void
.end method

.method public setHasActivities(Z)V
    .registers 2

    .line 1455
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasActivities:Z

    return-void
.end method

.method public setHasForegroundActivities(Z)V
    .registers 2

    .line 1200
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasForegroundActivities:Z

    return-void
.end method

.method public setHasOverlayUi(Z)V
    .registers 2

    .line 1243
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasOverlayUi:Z

    .line 1244
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mObserver:Lcom/android/server/am/psc/ProcessRecordInternal$Observer;

    invoke-interface {p0, p1}, Lcom/android/server/am/psc/ProcessRecordInternal$Observer;->onHasOverlayUiChanged(Z)V

    return-void
.end method

.method public setHasRecentTask(Z)V
    .registers 2

    .line 1480
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasRecentTask:Z

    return-void
.end method

.method public setHasReportedInteraction(Z)V
    .registers 2

    .line 1264
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasReportedInteraction:Z

    return-void
.end method

.method public setHasShownUi(Z)V
    .registers 2

    .line 1220
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasShownUi:Z

    return-void
.end method

.method public setHasStartedServices(Z)V
    .registers 2

    .line 1189
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasStartedServices:Z

    .line 1190
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mStartedServiceObserver:Lcom/android/server/am/psc/ProcessRecordInternal$StartedServiceObserver;

    invoke-interface {p0, p1}, Lcom/android/server/am/psc/ProcessRecordInternal$StartedServiceObserver;->onHasStartedServicesChanged(Z)V

    return-void
.end method

.method public setHasTopUi(Z)V
    .registers 2

    .line 1231
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mHasTopUi:Z

    .line 1232
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mObserver:Lcom/android/server/am/psc/ProcessRecordInternal$Observer;

    invoke-interface {p0, p1}, Lcom/android/server/am/psc/ProcessRecordInternal$Observer;->onHasTopUiChanged(Z)V

    return-void
.end method

.method public setInteractionEventTime(J)V
    .registers 3

    .line 1275
    iput-wide p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mInteractionEventTime:J

    .line 1276
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mObserver:Lcom/android/server/am/psc/ProcessRecordInternal$Observer;

    invoke-interface {p0, p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal$Observer;->onInteractionEventTimeChanged(J)V

    return-void
.end method

.method public setIsRunningRemoteAnimation(Z)V
    .registers 2

    .line 1259
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mRunningRemoteAnimation:Z

    return-void
.end method

.method public setIsolatedEntryPoint(Ljava/lang/String;)V
    .registers 2

    .line 1837
    iput-object p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mIsolatedEntryPoint:Ljava/lang/String;

    return-void
.end method

.method public setKilled(Z)V
    .registers 2

    .line 880
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mKilled:Z

    return-void
.end method

.method public setKilledByAm(Z)V
    .registers 2

    .line 890
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mKilledByAm:Z

    return-void
.end method

.method public setLastActivityTime(J)V
    .registers 3

    .line 1857
    iput-wide p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastActivityTime:J

    return-void
.end method

.method public setLastCachedTime(J)V
    .registers 3

    .line 1821
    iput-wide p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastCachedTime:J

    return-void
.end method

.method public abstract setLastCpuTime(J)V
.end method

.method public setLastStateTime(J)V
    .registers 3

    .line 1150
    iput-wide p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastStateTime:J

    return-void
.end method

.method public setLastTopTime(J)V
    .registers 3

    .line 1356
    iput-wide p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastTopTime:J

    return-void
.end method

.method public setLruSeq(I)V
    .registers 2

    .line 1336
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLruSeq:I

    return-void
.end method

.method public setMaxAdj(I)V
    .registers 2

    .line 896
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mMaxAdj:I

    return-void
.end method

.method public setPendingFinishAttach(Z)V
    .registers 2

    .line 1726
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mPendingFinishAttach:Z

    return-void
.end method

.method public abstract setPendingUiClean(Z)V
.end method

.method public setPerceptibleTaskStoppedTimeMillis(J)V
    .registers 3

    .line 1475
    iput-wide p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mPerceptibleTaskStoppedTimeMillis:J

    return-void
.end method

.method public abstract setProcessStateToThread(I)V
.end method

.method public setReachable(Z)V
    .registers 2

    .line 1450
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mReachable:Z

    return-void
.end method

.method public setRenderThreadTid(I)V
    .registers 2

    .line 1867
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mRenderThreadTid:I

    return-void
.end method

.method public setRepForegroundActivities(Z)V
    .registers 2

    .line 1210
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mRepForegroundActivities:Z

    return-void
.end method

.method public setReportedProcState(I)V
    .registers 2

    .line 1124
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mRepProcState:I

    .line 1125
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mObserver:Lcom/android/server/am/psc/ProcessRecordInternal$Observer;

    invoke-interface {p0, p1}, Lcom/android/server/am/psc/ProcessRecordInternal$Observer;->onReportedProcStateChanged(I)V

    return-void
.end method

.method public setSavedPriority(I)V
    .registers 2

    .line 1160
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSavedPriority:I

    return-void
.end method

.method public setScheduleLikeTopApp(Z)V
    .registers 2

    .line 1711
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mScheduleLikeTopApp:Z

    return-void
.end method

.method public setServiceB(Z)V
    .registers 2

    .line 1170
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mServiceB:Z

    return-void
.end method

.method public setServiceHighRam(Z)V
    .registers 2

    .line 1180
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mServiceHighRam:Z

    return-void
.end method

.method public setSetAdj(I)V
    .registers 2

    .line 958
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetAdj:I

    return-void
.end method

.method public setSetBoundByNonBgRestrictedApp(Z)V
    .registers 2

    .line 1786
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetBoundByNonBgRestrictedApp:Z

    return-void
.end method

.method public setSetCached(Z)V
    .registers 2

    .line 1811
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetCached:Z

    return-void
.end method

.method public setSetCapability(I)V
    .registers 2

    .line 1003
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetCapability:I

    return-void
.end method

.method public setSetCpuTimeReasons(I)V
    .registers 2

    .line 1013
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetCpuTimeReasons:I

    return-void
.end method

.method public setSetImplicitCpuTimeReasons(I)V
    .registers 2

    .line 1037
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetImplicitCpuTimeReasons:I

    return-void
.end method

.method public setSetProcState(I)V
    .registers 3

    .line 1136
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetProcState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1137
    invoke-static {p1}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1138
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCacheOomRankerUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mCacheOomRankerUseCount:I

    .line 1140
    :cond_14
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetProcState:I

    return-void
.end method

.method public setSetRawAdj(I)V
    .registers 2

    .line 936
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetRawAdj:I

    return-void
.end method

.method public setSetSchedGroup(I)V
    .registers 2

    .line 1073
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSetSchedGroup:I

    return-void
.end method

.method public abstract setShouldNotFreeze(ZZII)Z
.end method

.method public setSystemNoUi(Z)V
    .registers 2

    .line 1376
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mSystemNoUi:Z

    return-void
.end method

.method public setVerifiedAdj(I)V
    .registers 2

    .line 983
    iput p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mVerifiedAdj:I

    return-void
.end method

.method public setWaitingToKill(Ljava/lang/String;)V
    .registers 2

    .line 1847
    iput-object p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mWaitingToKill:Ljava/lang/String;

    return-void
.end method

.method public setWhenUnimportant(J)V
    .registers 3

    .line 1345
    iput-wide p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mWhenUnimportant:J

    .line 1346
    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mObserver:Lcom/android/server/am/psc/ProcessRecordInternal$Observer;

    invoke-interface {p0, p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal$Observer;->onWhenUnimportantChanged(J)V

    return-void
.end method

.method public abstract shouldNotFreeze()Z
.end method

.method public abstract shouldNotFreezeAdjSeq()I
.end method

.method public abstract shouldNotFreezeReason()I
.end method

.method public updateLastInvisibleTime(Z)V
    .registers 6

    const-wide v0, 0x7fffffffffffffffL

    if-eqz p1, :cond_a

    .line 1797
    iput-wide v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastInvisibleTime:J

    return-void

    .line 1798
    :cond_a
    iget-wide v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastInvisibleTime:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_16

    .line 1799
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLastInvisibleTime:J

    :cond_16
    return-void
.end method

.method public abstract useFifoUiScheduling()Z
.end method
