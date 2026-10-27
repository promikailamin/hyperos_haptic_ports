.class final Lcom/android/server/am/ProcessServiceRecord;
.super Ljava/lang/Object;
.source "ProcessServiceRecord.java"


# instance fields
.field mAllowlistManager:Z

.field final mApp:Lcom/android/server/am/ProcessRecord;

.field private mBoundClientUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionGroup:I

.field private mConnectionImportance:I

.field private mConnectionService:Lcom/android/server/am/ServiceRecord;

.field private final mConnections:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mExecServicesFg:Z

.field private final mExecutingServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFgServiceTypes:I

.field private mHasAboveClient:Z

.field private mHasClientActivities:Z

.field private mHasForegroundServices:Z

.field private mHasTopStartedAlmostPerceptibleServices:Z

.field private mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

.field private mRepFgServiceTypes:I

.field private mRepHasForegroundServices:Z

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field final mServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTreatLikeActivity:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 119
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 124
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 129
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 136
    iput-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 137
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 138
    return-void
.end method

.method private isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z
    .registers 11
    .param p1, "record"    # Lcom/android/server/am/ServiceRecord;

    .line 199
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 200
    return v1

    .line 202
    :cond_a
    nop

    .line 203
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    .line 204
    .local v0, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "m":I
    :goto_15
    if-ltz v2, :cond_38

    .line 205
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 207
    .local v4, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "c":I
    :goto_22
    if-ltz v5, :cond_35

    .line 208
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    .line 209
    .local v6, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v7, v6, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v8, 0x10000

    and-int/2addr v7, v8

    if-eqz v7, :cond_32

    .line 210
    return v3

    .line 207
    .end local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_32
    add-int/lit8 v5, v5, -0x1

    goto :goto_22

    .line 204
    .end local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5    # "c":I
    :cond_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 214
    .end local v2    # "m":I
    :cond_38
    return v1
.end method


# virtual methods
.method addBoundClientUid(ILjava/lang/String;I)V
    .registers 6
    .param p1, "clientUid"    # I
    .param p2, "clientPackageName"    # Ljava/lang/String;
    .param p3, "bindFlags"    # I

    .line 419
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 421
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;I)V

    .line 422
    return-void
.end method

.method addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V
    .registers 11
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;

    .line 450
    if-nez p1, :cond_3

    .line 451
    return-void

    .line 453
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    .line 454
    .local v0, "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "conni":I
    :goto_d
    if-ltz v1, :cond_42

    .line 455
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 456
    .local v2, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3f

    .line 457
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 458
    .local v4, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v5, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    iget v6, v4, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v5, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    iget v6, v4, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    .line 460
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;I)V

    .line 456
    .end local v4    # "cr":Lcom/android/server/am/ConnectionRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 454
    .end local v2    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    :cond_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 464
    .end local v1    # "conni":I
    :cond_42
    return-void
.end method

.method addConnection(Lcom/android/server/am/ConnectionRecord;)V
    .registers 3
    .param p1, "connection"    # Lcom/android/server/am/ConnectionRecord;

    .line 399
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 400
    return-void
.end method

.method clearBoundClientUids()V
    .registers 2

    .line 467
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 468
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->clearBoundClientUids()V

    .line 469
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowUptime"    # J

    .line 522
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 523
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasForegroundServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 524
    const-string v0, " forcingToImportant="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 526
    :cond_2c
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v0, :cond_38

    iget-wide v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_50

    .line 528
    :cond_38
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasTopStartedAlmostPerceptibleServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 529
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 530
    const-string v0, " mLastTopStartedAlmostPerceptibleBindRequestUptimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 531
    iget-wide v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 533
    :cond_50
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-nez v0, :cond_5c

    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    if-nez v0, :cond_5c

    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    if-eqz v0, :cond_7e

    .line 534
    :cond_5c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "hasClientActivities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 535
    const-string v0, " hasAboveClient="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 536
    const-string v0, " treatLikeActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 538
    :cond_7e
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    if-nez v0, :cond_86

    iget v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    if-eqz v0, :cond_a7

    .line 539
    :cond_86
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "connectionGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 540
    const-string v0, " Importance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 541
    const-string v0, " Service="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 543
    :cond_a7
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    if-eqz v0, :cond_b8

    .line 544
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allowlistManager="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 546
    :cond_b8
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const-string v1, "  - "

    if-lez v0, :cond_e5

    .line 547
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Services:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .local v2, "size":I
    :goto_d1
    if-ge v0, v2, :cond_e5

    .line 549
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    .line 552
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_e5
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_11a

    .line 553
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Executing Services (fg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 554
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .restart local v2    # "size":I
    :goto_106
    if-ge v0, v2, :cond_11a

    .line 556
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_106

    .line 559
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_11a
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_146

    .line 560
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mConnections:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .restart local v2    # "size":I
    :goto_132
    if-ge v0, v2, :cond_146

    .line 562
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_132

    .line 565
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_146
    return-void
.end method

.method getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;
    .registers 3
    .param p1, "index"    # I

    .line 411
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    return-object v0
.end method

.method getConnectionGroup()I
    .registers 2

    .line 233
    iget v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    return v0
.end method

.method getConnectionImportance()I
    .registers 2

    .line 241
    iget v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    return v0
.end method

.method getConnectionService()Lcom/android/server/am/ServiceRecord;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    return-object v0
.end method

.method getExecutingServiceAt(I)Lcom/android/server/am/ServiceRecord;
    .registers 3
    .param p1, "index"    # I

    .line 391
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    return-object v0
.end method

.method getForegroundServiceTypes()I
    .registers 2

    .line 173
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mFgServiceTypes:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method getReportedForegroundServiceTypes()I
    .registers 2

    .line 177
    iget v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mRepFgServiceTypes:I

    return v0
.end method

.method getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;
    .registers 3
    .param p1, "index"    # I

    .line 375
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    return-object v0
.end method

.method hasAboveClient()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    return v0
.end method

.method hasClientActivities()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    return v0
.end method

.method hasForegroundServices()Z
    .registers 2

    .line 161
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    return v0
.end method

.method hasReportedForegroundServices()Z
    .registers 2

    .line 169
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mRepHasForegroundServices:Z

    return v0
.end method

.method hasTopStartedAlmostPerceptibleServices()Z
    .registers 5

    .line 218
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v0, :cond_20

    iget-wide v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    .line 218
    :goto_21
    return v0
.end method

.method incServiceCrashCountLocked(J)Z
    .registers 12
    .param p1, "now"    # J

    .line 490
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 492
    .local v0, "procIsBoundForeground":Z
    :goto_f
    const/4 v2, 0x0

    .line 494
    .local v2, "tryAgain":Z
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_15
    if-ltz v3, :cond_44

    .line 497
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    .line 499
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    iget-wide v5, v4, Lcom/android/server/am/ServiceRecord;->restartTime:J

    sget v7, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    cmp-long v5, p1, v5

    if-lez v5, :cond_28

    .line 500
    iput v1, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_2d

    .line 502
    :cond_28
    iget v5, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/2addr v5, v1

    iput v5, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 506
    :goto_2d
    iget v5, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v5, v5

    iget-object v7, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_41

    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v5, :cond_40

    if-eqz v0, :cond_41

    .line 508
    :cond_40
    const/4 v2, 0x1

    .line 494
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    .line 511
    .end local v3    # "i":I
    :cond_44
    return v2
.end method

.method isTreatedLikeActivity()Z
    .registers 2

    .line 292
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    return v0
.end method

.method modifyRawOomAdj(I)I
    .registers 3
    .param p1, "adj"    # I

    .line 268
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    if-eqz v0, :cond_29

    .line 274
    if-gez p1, :cond_7

    goto :goto_29

    .line 276
    :cond_7
    const/16 v0, 0x64

    if-ge p1, v0, :cond_e

    .line 277
    const/16 p1, 0x64

    goto :goto_29

    .line 278
    :cond_e
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_15

    .line 279
    const/16 p1, 0xc8

    goto :goto_29

    .line 280
    :cond_15
    const/16 v0, 0xfa

    if-ge p1, v0, :cond_1c

    .line 281
    const/16 p1, 0xfa

    goto :goto_29

    .line 282
    :cond_1c
    const/16 v0, 0x384

    if-ge p1, v0, :cond_23

    .line 283
    const/16 p1, 0x384

    goto :goto_29

    .line 284
    :cond_23
    const/16 v0, 0x3e7

    if-ge p1, v0, :cond_29

    .line 285
    add-int/lit8 p1, p1, 0x1

    .line 288
    :cond_29
    :goto_29
    return p1
.end method

.method numberOfConnections()I
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method numberOfExecutingServices()I
    .registers 2

    .line 395
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method numberOfRunningServices()I
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method onCleanupApplicationRecordLocked()V
    .registers 2

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 517
    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    .line 518
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessServiceRecord;->setHasClientActivities(Z)V

    .line 519
    return-void
.end method

.method removeAllConnections()V
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 408
    return-void
.end method

.method removeConnection(Lcom/android/server/am/ConnectionRecord;)V
    .registers 3
    .param p1, "connection"    # Lcom/android/server/am/ConnectionRecord;

    .line 403
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 404
    return-void
.end method

.method setConnectionGroup(I)V
    .registers 2
    .param p1, "connectionGroup"    # I

    .line 237
    iput p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    .line 238
    return-void
.end method

.method setConnectionImportance(I)V
    .registers 2
    .param p1, "connectionImportance"    # I

    .line 245
    iput p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    .line 246
    return-void
.end method

.method setConnectionService(Lcom/android/server/am/ServiceRecord;)V
    .registers 2
    .param p1, "connectionService"    # Lcom/android/server/am/ServiceRecord;

    .line 229
    iput-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    .line 230
    return-void
.end method

.method setExecServicesFg(Z)V
    .registers 2
    .param p1, "execServicesFg"    # Z

    .line 304
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    .line 305
    return-void
.end method

.method setHasAboveClient(Z)V
    .registers 2
    .param p1, "hasAboveClient"    # Z

    .line 260
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    .line 261
    return-void
.end method

.method setHasClientActivities(Z)V
    .registers 3
    .param p1, "hasClientActivities"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    .line 142
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasClientActivities(Z)V

    .line 143
    return-void
.end method

.method setHasForegroundServices(ZI)V
    .registers 5
    .param p1, "hasForegroundServices"    # Z
    .param p2, "fgServiceTypes"    # I

    .line 150
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 151
    iput p2, p0, Lcom/android/server/am/ProcessServiceRecord;->mFgServiceTypes:I

    .line 152
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasForegroundServices(Z)V

    .line 153
    const/16 v0, 0x100

    if-eqz p1, :cond_19

    .line 154
    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_20

    .line 156
    :cond_19
    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 158
    :goto_20
    return-void
.end method

.method setHasReportedForegroundServices(Z)V
    .registers 2
    .param p1, "hasForegroundServices"    # Z

    .line 165
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mRepHasForegroundServices:Z

    .line 166
    return-void
.end method

.method setReportedForegroundServiceTypes(I)V
    .registers 2
    .param p1, "foregroundServiceTypes"    # I

    .line 181
    iput p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mRepFgServiceTypes:I

    .line 182
    return-void
.end method

.method setTreatLikeActivity(Z)V
    .registers 2
    .param p1, "treatLikeActivity"    # Z

    .line 296
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 297
    return-void
.end method

.method shouldExecServicesFg()Z
    .registers 2

    .line 300
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    return v0
.end method

.method startExecutingService(Lcom/android/server/am/ServiceRecord;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    .line 379
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method startService(Lcom/android/server/am/ServiceRecord;)Z
    .registers 7
    .param p1, "record"    # Lcom/android/server/am/ServiceRecord;

    .line 314
    if-nez p1, :cond_4

    .line 315
    const/4 v0, 0x0

    return v0

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 318
    .local v0, "added":Z
    if-eqz v0, :cond_1e

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_1e

    .line 319
    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessController;->onServiceStarted(Landroid/content/pm/ServiceInfo;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    .line 322
    :cond_1e
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3a

    .line 323
    iget-wide v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    iget-wide v3, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 326
    iget-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v1, :cond_3a

    .line 327
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    .line 330
    :cond_3a
    return v0
.end method

.method stopAllExecutingServices()V
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 388
    return-void
.end method

.method stopAllServices()V
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 355
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    .line 356
    return-void
.end method

.method stopExecutingService(Lcom/android/server/am/ServiceRecord;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    .line 383
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 384
    return-void
.end method

.method stopService(Lcom/android/server/am/ServiceRecord;)Z
    .registers 7
    .param p1, "record"    # Lcom/android/server/am/ServiceRecord;

    .line 340
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 341
    .local v0, "removed":Z
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_11

    .line 342
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    .line 344
    :cond_11
    if-eqz v0, :cond_16

    .line 345
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    .line 347
    :cond_16
    return v0
.end method

.method updateBoundClientUids()V
    .registers 14

    .line 425
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->clearBoundClientUids()V

    .line 426
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 427
    return-void

    .line 430
    :cond_c
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 431
    .local v0, "boundClientUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 432
    .local v1, "serviceCount":I
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 433
    .local v2, "controller":Lcom/android/server/wm/WindowProcessController;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1e
    if-ge v3, v1, :cond_61

    .line 434
    iget-object v4, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 435
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v4

    .line 436
    .local v4, "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 437
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "conni":I
    :goto_31
    if-ge v6, v5, :cond_5e

    .line 438
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 439
    .local v7, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_5b

    .line 440
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    .line 441
    .local v9, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v10, v9, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 442
    iget v10, v9, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    iget-object v11, v9, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    iget v12, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    invoke-virtual {v2, v10, v11, v12}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;I)V

    .line 439
    .end local v9    # "cr":Lcom/android/server/am/ConnectionRecord;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    .line 437
    .end local v7    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v8    # "i":I
    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 433
    .end local v4    # "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v5    # "size":I
    .end local v6    # "conni":I
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 446
    .end local v3    # "j":I
    :cond_61
    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 447
    return-void
.end method

.method updateHasAboveClientLocked()V
    .registers 5

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    .line 250
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_21

    .line 251
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 252
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v3, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1e

    .line 253
    iput-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    .line 254
    goto :goto_21

    .line 250
    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 257
    .end local v0    # "i":I
    :cond_21
    :goto_21
    return-void
.end method

.method updateHasTopStartedAlmostPerceptibleServices()V
    .registers 8

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 187
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "s":I
    :goto_f
    if-ltz v0, :cond_32

    .line 188
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 189
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    iget-wide v5, v2, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 192
    iget-boolean v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v3, :cond_2f

    invoke-direct {p0, v2}, Lcom/android/server/am/ProcessServiceRecord;->isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 193
    iput-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    .line 187
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 196
    .end local v0    # "s":I
    :cond_32
    return-void
.end method

.method updateHostingComonentTypeForBindingsLocked()V
    .registers 5

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "hasBoundClient":Z
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_1e

    .line 475
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    .line 476
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 477
    const/4 v0, 0x1

    .line 478
    goto :goto_1e

    .line 474
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 481
    .end local v1    # "i":I
    :cond_1e
    :goto_1e
    const/16 v1, 0x200

    if-eqz v0, :cond_2a

    .line 482
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_31

    .line 484
    :cond_2a
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 486
    :goto_31
    return-void
.end method
