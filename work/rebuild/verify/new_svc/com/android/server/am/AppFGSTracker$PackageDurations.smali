.class public Lcom/android/server/am/AppFGSTracker$PackageDurations;
.super Lcom/android/server/am/BaseAppStateDurations;
.source "AppFGSTracker.java"


# static fields
.field public static final DEFAULT_INDEX:I


# instance fields
.field public mForegroundServiceTypes:I

.field public mIsLongRunning:Z

.field public final mTracker:Lcom/android/server/am/AppFGSTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 649
    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v0

    sput v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;Lcom/android/server/am/AppFGSTracker;)V
    .registers 11

    const/16 v3, 0x1f

    .line 653
    const-string v4, "ActivityManager"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurations;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    .line 655
    iget-object p0, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    sget p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    aput-object p2, p0, p1

    .line 656
    iput-object p4, v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppFGSTracker$PackageDurations;)V
    .registers 3

    .line 660
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateDurations;-><init>(Lcom/android/server/am/BaseAppStateDurations;)V

    .line 661
    iget-boolean v0, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    iput-boolean v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    .line 662
    iget v0, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    iput v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    .line 663
    iget-object p1, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    return-void
.end method


# virtual methods
.method public addEvent(ZJ)V
    .registers 7

    .line 670
    new-instance v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v0, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    sget v1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    const/4 v0, 0x0

    if-nez p1, :cond_15

    .line 671
    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v1

    if-nez v1, :cond_15

    .line 672
    iput-boolean v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    :cond_15
    if-nez p1, :cond_44

    .line 675
    iget p1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    if-eqz p1, :cond_44

    const/4 p1, 0x1

    .line 677
    :goto_1c
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v2, v1

    if-ge p1, v2, :cond_42

    .line 678
    aget-object v1, v1, p1

    if-nez v1, :cond_26

    goto :goto_3f

    .line 681
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 682
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v1, v1, p1

    new-instance v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v2, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-static {p1}, Lcom/android/server/am/AppFGSTracker;->indexToForegroundServiceType(I)I

    move-result v1

    .line 683
    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(ZJI)V

    :cond_3f
    :goto_3f
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 687
    :cond_42
    iput v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    :cond_44
    return-void
.end method

.method public formatEventTypeLabel(I)Ljava/lang/String;
    .registers 2

    .line 756
    sget p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    if-ne p1, p0, :cond_7

    .line 757
    const-string p0, "Overall foreground services: "

    return-object p0

    .line 759
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/am/AppFGSTracker;->indexToForegroundServiceType(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasForegroundServices()Z
    .registers 2

    .line 751
    sget v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result p0

    return p0
.end method

.method public isLongRunning()Z
    .registers 1

    .line 747
    iget-boolean p0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    return p0
.end method

.method public final notifyListenersOnStateChangeIfNecessary(ZJI)V
    .registers 13

    const/4 v0, 0x2

    if-eq p4, v0, :cond_9

    const/16 v0, 0x8

    if-eq p4, v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x4

    :cond_9
    move v7, v0

    .line 739
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget v2, p0, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    move v4, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    return-void
.end method

.method public setForegroundServiceType(IJ)V
    .registers 9

    .line 695
    iget v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    if-eq p1, v0, :cond_66

    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_66

    .line 699
    :cond_b
    iget v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    xor-int/2addr v0, p1

    .line 700
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    :goto_12
    if-eqz v1, :cond_64

    .line 701
    invoke-static {v1}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v2

    .line 702
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v4, v3

    if-ge v2, v4, :cond_5d

    and-int v4, p1, v1

    if-eqz v4, :cond_43

    .line 705
    aget-object v4, v3, v2

    if-nez v4, :cond_2c

    .line 706
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    aput-object v4, v3, v2

    .line 708
    :cond_2c
    invoke-virtual {p0, v2}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 709
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v2, v3, v2

    new-instance v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v3, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 710
    invoke-virtual {p0, v2, p2, p3, v1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(ZJI)V

    goto :goto_5d

    .line 714
    :cond_43
    aget-object v3, v3, v2

    if-eqz v3, :cond_5d

    invoke-virtual {p0, v2}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 715
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v2, v3, v2

    new-instance v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v3, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 716
    invoke-virtual {p0, v2, p2, p3, v1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(ZJI)V

    :cond_5d
    :goto_5d
    not-int v1, v1

    and-int/2addr v0, v1

    .line 721
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    goto :goto_12

    .line 723
    :cond_64
    iput p1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    :cond_66
    :goto_66
    return-void
.end method

.method public setIsLongRunning(Z)V
    .registers 2

    .line 743
    iput-boolean p1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    return-void
.end method
