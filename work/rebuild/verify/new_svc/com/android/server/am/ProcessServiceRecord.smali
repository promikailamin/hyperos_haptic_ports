.class public final Lcom/android/server/am/ProcessServiceRecord;
.super Lcom/android/server/am/psc/ProcessServiceRecordInternal;
.source "ProcessServiceRecord.java"


# instance fields
.field public mAllowlistManager:Z

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBoundClientUids:Landroid/util/ArraySet;

.field public final mConnections:Landroid/util/ArraySet;

.field public final mExecutingServices:Landroid/util/ArraySet;

.field public mFgServiceTypes:I

.field public mHasClientActivities:Z

.field public mHasForegroundServices:Z

.field public mHasTopStartedAlmostPerceptibleServices:Z

.field public mHasTypeNoneFgs:Z

.field public mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

.field public mRepHasForegroundServices:Z

.field public mScheduleServiceTimeoutPending:Z

.field public mSdkSandboxConnections:Landroid/util/ArraySet;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mServices:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 124
    invoke-direct {p0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;-><init>()V

    .line 93
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 98
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 103
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 113
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 125
    iput-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 126
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public addBoundClientUid(ILjava/lang/String;J)V
    .registers 7

    .line 446
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    .line 448
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;J)V

    return-void
.end method

.method public addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V
    .registers 11

    if-nez p1, :cond_3

    goto :goto_44

    .line 480
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_44

    .line 482
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 483
    :goto_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 484
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 485
    iget-object v4, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    iget v5, v3, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v4, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    iget v5, v3, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    iget-object v6, v3, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 487
    invoke-virtual {v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getFlags()J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_44
    :goto_44
    return-void
.end method

.method public addConnection(Lcom/android/server/am/ConnectionRecord;)V
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->addSdkSandboxConnectionIfNecessary(Lcom/android/server/am/ConnectionRecord;)V

    return-void
.end method

.method public final addSdkSandboxConnectionIfNecessary(Lcom/android/server/am/ConnectionRecord;)V
    .registers 4

    .line 411
    iget-object p0, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, p0, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_20

    .line 412
    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-boolean p0, p0, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    if-eqz p0, :cond_20

    .line 413
    iget-object p0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-nez v1, :cond_19

    .line 414
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    .line 416
    :cond_19
    iget-object p0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method public areAllShortForegroundServicesProcstateTimedOut(J)Z
    .registers 5

    .line 215
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 218
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 223
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->hasUndemotedShortForegroundService(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public areForegroundServiceTypesSame(IZ)Z
    .registers 4

    .line 181
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->getForegroundServiceTypes()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_d

    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTypeNoneFgs:Z

    if-ne p0, p2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public clearBoundClientUids()V
    .registers 2

    .line 494
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 495
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->clearBoundClientUids()V

    return-void
.end method

.method public containsAnyForegroundServiceTypes(I)Z
    .registers 2

    .line 190
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->getForegroundServiceTypes()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 8

    .line 583
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-nez p3, :cond_c

    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getForcingToImportant()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_28

    .line 584
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mHasForegroundServices="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 585
    const-string p3, " forcingToImportant="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getForcingToImportant()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 587
    :cond_28
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez p3, :cond_34

    iget-wide p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-lez p3, :cond_4c

    .line 589
    :cond_34
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mHasTopStartedAlmostPerceptibleServices="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 591
    const-string p3, " mLastTopStartedAlmostPerceptibleBindRequestUptimeMs="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 592
    iget-wide p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    invoke-virtual {p1, p3, p4}, Ljava/io/PrintWriter;->println(J)V

    .line 594
    :cond_4c
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-nez p3, :cond_5c

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isHasAboveClient()Z

    move-result p3

    if-nez p3, :cond_5c

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isTreatLikeActivity()Z

    move-result p3

    if-eqz p3, :cond_81

    .line 595
    :cond_5c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "hasClientActivities="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 596
    const-string p3, " hasAboveClient="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isHasAboveClient()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 597
    const-string p3, " treatLikeActivity="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isTreatLikeActivity()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 599
    :cond_81
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionGroup()I

    move-result p3

    if-eqz p3, :cond_a2

    .line 600
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "connectionGroup="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionGroup()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 601
    const-string p3, " Importance="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionImportance()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 603
    :cond_a2
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    if-eqz p3, :cond_b3

    .line 604
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "allowlistManager="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 606
    :cond_b3
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    const-string p4, "  - "

    const/4 v0, 0x0

    if-lez p3, :cond_e1

    .line 607
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Services:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    move v1, v0

    :goto_cd
    if-ge v1, p3, :cond_e1

    .line 609
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_cd

    .line 612
    :cond_e1
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    if-lez p3, :cond_118

    .line 613
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Executing Services (fg="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isExecServicesFg()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    move v1, v0

    :goto_104
    if-ge v1, p3, :cond_118

    .line 616
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_104

    .line 619
    :cond_118
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    if-lez p3, :cond_143

    .line 620
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mConnections:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    :goto_12f
    if-ge v0, p3, :cond_143

    .line 622
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12f

    .line 625
    :cond_143
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    const-string/jumbo p2, "scheduleServiceTimeoutPending="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 627
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mScheduleServiceTimeoutPending:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;
    .registers 2

    .line 402
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ConnectionRecord;

    return-object p0
.end method

.method public bridge synthetic getConnectionAt(I)Lcom/android/server/am/psc/ConnectionRecordInternal;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object p0

    return-object p0
.end method

.method public getExecutingServiceAt(I)Lcom/android/server/am/ServiceRecord;
    .registers 2

    .line 371
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ServiceRecord;

    return-object p0
.end method

.method public getForegroundServiceTypes()I
    .registers 2

    .line 176
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz v0, :cond_7

    iget p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mFgServiceTypes:I

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public getNumForegroundServices()I
    .registers 5

    .line 242
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_1d

    .line 243
    iget-object v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v3}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v3

    if-eqz v3, :cond_1a

    add-int/lit8 v2, v2, 0x1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1d
    return v2
.end method

.method public getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;
    .registers 2

    .line 355
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ServiceRecord;

    return-object p0
.end method

.method public bridge synthetic getRunningServiceAt(I)Lcom/android/server/am/psc/ServiceRecordInternal;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object p0

    return-object p0
.end method

.method public getSdkSandboxConnectionAt(I)Lcom/android/server/am/ConnectionRecord;
    .registers 2

    .line 437
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ConnectionRecord;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSdkSandboxConnectionAt(I)Lcom/android/server/am/psc/ConnectionRecordInternal;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->getSdkSandboxConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object p0

    return-object p0
.end method

.method public hasClientActivities()Z
    .registers 1

    .line 135
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    return p0
.end method

.method public hasExecutingServices()Z
    .registers 1

    .line 380
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasForegroundServices()Z
    .registers 1

    .line 160
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    return p0
.end method

.method public hasNonShortForegroundServices()Z
    .registers 4

    .line 197
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 201
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTypeNoneFgs:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    return v2

    .line 205
    :cond_c
    iget p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mFgServiceTypes:I

    const/16 v0, 0x800

    if-eq p0, v0, :cond_13

    return v2

    :cond_13
    return v1
.end method

.method public hasReportedForegroundServices()Z
    .registers 1

    .line 168
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mRepHasForegroundServices:Z

    return p0
.end method

.method public hasTopStartedAlmostPerceptibleServices()Z
    .registers 5

    .line 265
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v0, :cond_20

    iget-wide v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    sub-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p0, 0x0

    return p0

    :cond_20
    :goto_20
    const/4 p0, 0x1

    return p0
.end method

.method public hasUndemotedShortForegroundService(J)Z
    .registers 7

    .line 227
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_2f

    .line 228
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 229
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->hasShortFgsInfo()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_2c

    .line 232
    :cond_1f
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_2c

    return v1

    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public incServiceCrashCountLocked(J)Z
    .registers 12

    .line 517
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_d

    move v0, v3

    goto :goto_e

    :cond_d
    move v0, v2

    .line 521
    :goto_e
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_13
    if-ltz v1, :cond_44

    .line 524
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    .line 526
    iget-wide v5, v4, Lcom/android/server/am/ServiceRecord;->restartTime:J

    sget v7, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    cmp-long v5, p1, v5

    if-lez v5, :cond_26

    .line 527
    iput v3, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_2b

    .line 529
    :cond_26
    iget v5, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/2addr v5, v3

    iput v5, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 533
    :goto_2b
    iget v5, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v5, v5

    iget-object v7, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_41

    .line 534
    invoke-virtual {v4}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v4

    if-nez v4, :cond_40

    if-eqz v0, :cond_41

    :cond_40
    move v2, v3

    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_44
    return v2
.end method

.method public noteScheduleServiceTimeoutPending(Z)V
    .registers 2

    .line 550
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mScheduleServiceTimeoutPending:Z

    return-void
.end method

.method public numberOfConnections()I
    .registers 1

    .line 407
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public numberOfExecutingServices()I
    .registers 1

    .line 375
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public numberOfRunningServices()I
    .registers 1

    .line 345
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public numberOfSdkSandboxConnections()I
    .registers 1

    .line 442
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onCleanupApplicationRecordLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, v0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->setTreatLikeActivity(Z)V

    .line 544
    invoke-virtual {p0, v0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->setHasAboveClient(Z)V

    .line 545
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessServiceRecord;->setHasClientActivities(Z)V

    return-void
.end method

.method public onProcessFrozenCancelled()V
    .registers 2

    .line 565
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 566
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->scheduleServiceTimeoutIfNeededLocked()V

    .line 567
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onProcessUnfrozen()V
    .registers 2

    .line 559
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 560
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->scheduleServiceTimeoutIfNeededLocked()V

    .line 561
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeAllConnections()V
    .registers 4

    .line 394
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 395
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessServiceRecord;->removeSdkSandboxConnectionIfNecessary(Lcom/android/server/am/ConnectionRecord;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 397
    :cond_17
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public removeAllSdkSandboxConnections()V
    .registers 1

    .line 430
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-eqz p0, :cond_7

    .line 431
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    :cond_7
    return-void
.end method

.method public removeConnection(Lcom/android/server/am/ConnectionRecord;)V
    .registers 3

    .line 389
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->removeSdkSandboxConnectionIfNecessary(Lcom/android/server/am/ConnectionRecord;)V

    return-void
.end method

.method public final removeSdkSandboxConnectionIfNecessary(Lcom/android/server/am/ConnectionRecord;)V
    .registers 3

    .line 421
    iget-object p0, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, p0, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_15

    .line 422
    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-boolean p0, p0, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    if-eqz p0, :cond_15

    .line 423
    iget-object p0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-eqz p0, :cond_15

    .line 424
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method public final scheduleServiceTimeoutIfNeededLocked()V
    .registers 6

    .line 572
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mScheduleServiceTimeoutPending:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 573
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 575
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 576
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_2f

    .line 577
    iget-object v4, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    iput-wide v0, v4, Lcom/android/server/am/ServiceRecord;->executingStart:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2f
    return-void
.end method

.method public setHasClientActivities(Z)V
    .registers 2

    .line 130
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    .line 131
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasClientActivities(Z)V

    return-void
.end method

.method public setHasForegroundServices(ZIZ)V
    .registers 4

    .line 147
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 148
    iput p2, p0, Lcom/android/server/am/ProcessServiceRecord;->mFgServiceTypes:I

    .line 149
    iput-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTypeNoneFgs:Z

    .line 150
    iget-object p2, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowProcessController;->setHasForegroundServices(Z)V

    const/16 p2, 0x100

    if-eqz p1, :cond_1b

    .line 152
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    return-void

    .line 154
    :cond_1b
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    return-void
.end method

.method public setHasReportedForegroundServices(Z)V
    .registers 2

    .line 164
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mRepHasForegroundServices:Z

    return-void
.end method

.method public startExecutingService(Lcom/android/server/am/ServiceRecord;)V
    .registers 2

    .line 359
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startService(Lcom/android/server/am/ServiceRecord;)Z
    .registers 7

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 295
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 296
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_1e

    .line 297
    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessController;->onServiceStarted(Landroid/content/pm/ServiceInfo;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    .line 300
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->getLastTopAlmostPerceptibleBindRequestUptimeMs()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3e

    .line 301
    iget-wide v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 303
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->getLastTopAlmostPerceptibleBindRequestUptimeMs()J

    move-result-wide v3

    .line 301
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 304
    iget-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v1, :cond_3e

    .line 305
    invoke-static {p1}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isAlmostPerceptible(Lcom/android/server/am/psc/ServiceRecordInternal;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    :cond_3e
    return v0
.end method

.method public stopAllExecutingServices()V
    .registers 1

    .line 367
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public stopAllServices()V
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 333
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    return-void
.end method

.method public stopExecutingService(Lcom/android/server/am/ServiceRecord;)V
    .registers 2

    .line 363
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public stopService(Lcom/android/server/am/ServiceRecord;)Z
    .registers 7

    .line 318
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 319
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->getLastTopAlmostPerceptibleBindRequestUptimeMs()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_13

    .line 320
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    :cond_13
    if-eqz v0, :cond_18

    .line 323
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    :cond_18
    return v0
.end method

.method public updateBoundClientUids()V
    .registers 16

    .line 452
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->clearBoundClientUids()V

    .line 453
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 457
    :cond_c
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 458
    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 459
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1f
    if-ge v4, v1, :cond_64

    .line 461
    iget-object v5, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 462
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v5

    .line 463
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v3

    :goto_32
    if-ge v7, v6, :cond_61

    .line 465
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    move v9, v3

    .line 466
    :goto_3b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_5e

    .line 467
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    .line 468
    iget v11, v10, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 469
    iget v11, v10, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    iget-object v12, v10, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getFlags()J

    move-result-wide v13

    invoke-virtual {v2, v11, v12, v13, v14}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    :cond_5e
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 473
    :cond_64
    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    return-void
.end method

.method public updateHasAboveClientLocked()V
    .registers 5

    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->setHasAboveClient(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_c
    if-ltz v0, :cond_32

    .line 274
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 276
    iget-object v3, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_23

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    if-ne v3, p0, :cond_23

    goto :goto_2f

    :cond_23
    const/16 v3, 0x8

    .line 278
    invoke-virtual {v2, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 279
    invoke-virtual {p0, v1}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->setHasAboveClient(Z)V

    return-void

    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_32
    return-void
.end method

.method public updateHasTopStartedAlmostPerceptibleServices()V
    .registers 8

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    const-wide/16 v0, 0x0

    .line 252
    iput-wide v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 253
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_f
    if-ltz v0, :cond_34

    .line 254
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/psc/ServiceRecordInternal;

    .line 255
    iget-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 257
    invoke-virtual {v2}, Lcom/android/server/am/psc/ServiceRecordInternal;->getLastTopAlmostPerceptibleBindRequestUptimeMs()J

    move-result-wide v5

    .line 255
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 258
    iget-boolean v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v3, :cond_31

    invoke-static {v2}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isAlmostPerceptible(Lcom/android/server/am/psc/ServiceRecordInternal;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 259
    iput-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_34
    return-void
.end method

.method public updateHostingComonentTypeForBindingsLocked()V
    .registers 4

    .line 501
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    const/16 v1, 0x200

    if-ltz v0, :cond_25

    .line 502
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 503
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 509
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    return-void

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 511
    :cond_25
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    return-void
.end method
