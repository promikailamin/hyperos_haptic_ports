.class Lcom/android/server/am/AppFGSTracker$PackageDurations;
.super Lcom/android/server/am/BaseAppStateDurations;
.source "AppFGSTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppFGSTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageDurations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateDurations<",
        "Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_INDEX:I


# instance fields
.field private mForegroundServiceTypes:I

.field private mIsLongRunning:Z

.field private final mTracker:Lcom/android/server/am/AppFGSTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 644
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v0

    sput v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;Lcom/android/server/am/AppFGSTracker;)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "maxTrackingDurationConfig"    # Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;
    .param p4, "tracker"    # Lcom/android/server/am/AppFGSTracker;

    .line 648
    const/16 v3, 0x9

    const-string v4, "ActivityManager"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurations;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    .line 650
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mEvents:[Ljava/util/LinkedList;

    sget v1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    aput-object v2, v0, v1

    .line 651
    iput-object p4, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    .line 652
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/AppFGSTracker$PackageDurations;)V
    .registers 3
    .param p1, "other"    # Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 655
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateDurations;-><init>(Lcom/android/server/am/BaseAppStateDurations;)V

    .line 656
    iget-boolean v0, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    iput-boolean v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    .line 657
    iget v0, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    iput v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    .line 658
    iget-object v0, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iput-object v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    .line 659
    return-void
.end method

.method private notifyListenersOnStateChangeIfNecessary(ZJI)V
    .registers 13
    .param p1, "start"    # Z
    .param p2, "now"    # J
    .param p4, "serviceType"    # I

    .line 724
    sparse-switch p4, :sswitch_data_16

    .line 732
    return-void

    .line 729
    :sswitch_4
    const/4 v0, 0x4

    .line 730
    .local v0, "stateType":I
    goto :goto_8

    .line 726
    .end local v0    # "stateType":I
    :sswitch_6
    const/4 v0, 0x2

    .line 727
    .restart local v0    # "stateType":I
    nop

    .line 734
    :goto_8
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget v2, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mUid:I

    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mPackageName:Ljava/lang/String;

    move v4, p1

    move-wide v5, p2

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppFGSTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    .line 735
    return-void

    nop

    :sswitch_data_16
    .sparse-switch
        0x2 -> :sswitch_6
        0x8 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method addEvent(ZJ)V
    .registers 8
    .param p1, "startFgs"    # Z
    .param p2, "now"    # J

    .line 665
    new-instance v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v0, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    sget v1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    .line 666
    const/4 v0, 0x0

    if-nez p1, :cond_15

    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v1

    if-nez v1, :cond_15

    .line 667
    iput-boolean v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    .line 670
    :cond_15
    if-nez p1, :cond_47

    iget v1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    if-eqz v1, :cond_47

    .line 672
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1c
    iget-object v2, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mEvents:[Ljava/util/LinkedList;

    array-length v2, v2

    if-ge v1, v2, :cond_45

    .line 673
    iget-object v2, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mEvents:[Ljava/util/LinkedList;

    aget-object v2, v2, v1

    if-nez v2, :cond_28

    .line 674
    goto :goto_42

    .line 676
    :cond_28
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->isActive(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 677
    iget-object v2, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mEvents:[Ljava/util/LinkedList;

    aget-object v2, v2, v1

    new-instance v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v3, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 678
    nop

    .line 679
    invoke-static {v1}, Lcom/android/server/am/AppFGSTracker;->indexToForegroundServiceType(I)I

    move-result v2

    .line 678
    invoke-direct {p0, v0, p2, p3, v2}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(ZJI)V

    .line 672
    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 682
    .end local v1    # "i":I
    :cond_45
    iput v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    .line 684
    :cond_47
    return-void
.end method

.method formatEventTypeLabel(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 751
    sget v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    if-ne p1, v0, :cond_7

    .line 752
    const-string v0, "Overall foreground services: "

    return-object v0

    .line 754
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/am/AppFGSTracker;->indexToForegroundServiceType(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasForegroundServices()Z
    .registers 2

    .line 746
    sget v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->isActive(I)Z

    move-result v0

    return v0
.end method

.method isLongRunning()Z
    .registers 2

    .line 742
    iget-boolean v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    return v0
.end method

.method setForegroundServiceType(IJ)V
    .registers 9
    .param p1, "serviceTypes"    # I
    .param p2, "now"    # J

    .line 690
    iget v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    if-eq p1, v0, :cond_6d

    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6d

    .line 694
    :cond_b
    iget v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    xor-int/2addr v0, p1

    .line 695
    .local v0, "changes":I
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .local v1, "serviceType":I
    :goto_12
    if-eqz v1, :cond_6a

    .line 696
    invoke-static {v1}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v2

    .line 697
    .local v2, "i":I
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mEvents:[Ljava/util/LinkedList;

    array-length v3, v3

    if-ge v2, v3, :cond_63

    .line 698
    and-int v3, p1, v1

    if-eqz v3, :cond_47

    .line 700
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mEvents:[Ljava/util/LinkedList;

    aget-object v3, v3, v2

    if-nez v3, :cond_30

    .line 701
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mEvents:[Ljava/util/LinkedList;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    aput-object v4, v3, v2

    .line 703
    :cond_30
    invoke-virtual {p0, v2}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->isActive(I)Z

    move-result v3

    if-nez v3, :cond_63

    .line 704
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mEvents:[Ljava/util/LinkedList;

    aget-object v3, v3, v2

    new-instance v4, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v4, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 705
    const/4 v3, 0x1

    invoke-direct {p0, v3, p2, p3, v1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(ZJI)V

    goto :goto_63

    .line 709
    :cond_47
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mEvents:[Ljava/util/LinkedList;

    aget-object v3, v3, v2

    if-eqz v3, :cond_63

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->isActive(I)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 710
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mEvents:[Ljava/util/LinkedList;

    aget-object v3, v3, v2

    new-instance v4, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v4, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 711
    const/4 v3, 0x0

    invoke-direct {p0, v3, p2, p3, v1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(ZJI)V

    .line 715
    :cond_63
    :goto_63
    not-int v3, v1

    and-int/2addr v0, v3

    .line 716
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 717
    .end local v2    # "i":I
    goto :goto_12

    .line 718
    .end local v1    # "serviceType":I
    :cond_6a
    iput p1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    .line 719
    return-void

    .line 692
    .end local v0    # "changes":I
    :cond_6d
    :goto_6d
    return-void
.end method

.method setIsLongRunning(Z)V
    .registers 2
    .param p1, "isLongRunning"    # Z

    .line 738
    iput-boolean p1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    .line 739
    return-void
.end method
