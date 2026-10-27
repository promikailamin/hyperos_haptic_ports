.class public Lcom/android/server/am/BroadcastDispatcher;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;,
        Lcom/android/server/am/BroadcastDispatcher$Dumper;,
        Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastDispatcher"


# instance fields
.field private mAlarm:Lcom/android/server/AlarmManagerInternal;

.field private final mAlarmBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

.field final mAlarmUids:Landroid/util/SparseIntArray;

.field private final mConstants:Lcom/android/server/am/BroadcastConstants;

.field private mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

.field private final mDeferredBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mOrderedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueue:Lcom/android/server/am/BroadcastQueue;

.field private mRecheckScheduled:Z

.field final mScheduleRunnable:Ljava/lang/Runnable;

.field private mUser2Deferred:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlarmBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeferredBroadcasts(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/BroadcastDispatcher;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueue(Lcom/android/server/am/BroadcastDispatcher;)Lcom/android/server/am/BroadcastQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRecheckScheduled(Lcom/android/server/am/BroadcastDispatcher;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sminsertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 6
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "constants"    # Lcom/android/server/am/BroadcastConstants;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "lock"    # Ljava/lang/Object;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    .line 172
    new-instance v0, Lcom/android/server/am/BroadcastDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastDispatcher$1;-><init>(Lcom/android/server/am/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

    .line 218
    new-instance v0, Lcom/android/server/am/BroadcastDispatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastDispatcher$2;-><init>(Lcom/android/server/am/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    .line 243
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    .line 494
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    .line 495
    iput-object p2, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 496
    iput-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    .line 497
    iput-object p4, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    .line 498
    return-void
.end method

.method private calculateDeferral(J)J
    .registers 7
    .param p1, "previous"    # J

    .line 1088
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    long-to-float v2, p1

    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v3, v3, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 10
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 766
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    .local p3, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 767
    .local v0, "didSomething":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 768
    .local v2, "br":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v3

    or-int/2addr v0, v3

    .line 770
    if-nez p5, :cond_1c

    if-eqz v0, :cond_1c

    .line 771
    const/4 v1, 0x1

    return v1

    .line 773
    .end local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_1c
    goto :goto_5

    .line 774
    :cond_1d
    return v0
.end method

.method private cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 15
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 752
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    .local p3, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 753
    .local v0, "didSomething":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 754
    .local v2, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget-object v4, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    .line 756
    if-nez p5, :cond_22

    if-eqz v0, :cond_22

    .line 757
    const/4 v1, 0x1

    return v1

    .line 759
    .end local v2    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_22
    goto :goto_5

    .line 760
    :cond_23
    return v0
.end method

.method private dequeueDeferredBootCompletedBroadcast()Lcom/android/server/am/BroadcastRecord;
    .registers 6

    .line 477
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 479
    .local v0, "isAllUidReady":Z
    :goto_d
    const/4 v1, 0x0

    .line 480
    .local v1, "next":Lcom/android/server/am/BroadcastRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_15
    if-ge v2, v3, :cond_29

    .line 481
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-virtual {v4, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dequeueDeferredBootCompletedBroadcast(Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 482
    if-eqz v1, :cond_26

    .line 483
    goto :goto_29

    .line 480
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 486
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_29
    :goto_29
    return-object v1
.end method

.method private findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    .registers 4
    .param p1, "uid"    # I

    .line 1023
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v0

    .line 1025
    .local v0, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    if-nez v0, :cond_e

    .line 1026
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v0

    .line 1028
    :cond_e
    return-object v0
.end method

.method private static findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    .registers 6
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;"
        }
    .end annotation

    .line 1047
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1048
    .local v0, "numElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 1049
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1050
    .local v2, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    if-ne p0, v3, :cond_12

    .line 1051
    return-object v2

    .line 1048
    .end local v2    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1054
    .end local v1    # "i":I
    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method private getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I
    .registers 6
    .param p1, "action"    # Ljava/lang/String;

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "s":I
    :goto_8
    if-ge v1, v2, :cond_1a

    .line 646
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-static {v3, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->-$$Nest$mgetBootCompletedBroadcastsReceiversSize(Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 645
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 648
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_1a
    return v0
.end method

.method private getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I
    .registers 6
    .param p1, "action"    # Ljava/lang/String;

    .line 633
    const/4 v0, 0x0

    .line 634
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "s":I
    :goto_8
    if-ge v1, v2, :cond_1a

    .line 635
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-static {v3, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->-$$Nest$mgetBootCompletedBroadcastsUidsSize(Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 634
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 637
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_1a
    return v0
.end method

.method private getDeferredPerUser(I)Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;
    .registers 4
    .param p1, "userId"    # I

    .line 457
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 458
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    return-object v0

    .line 460
    :cond_11
    new-instance v0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-direct {v0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;-><init>(I)V

    .line 462
    .local v0, "temp":Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    return-object v0
.end method

.method private static insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V
    .registers 8
    .param p1, "d"    # Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ")V"
        }
    .end annotation

    .line 1074
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1075
    .local v0, "numElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_19

    .line 1076
    iget-wide v2, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget-wide v4, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    .line 1077
    goto :goto_19

    .line 1075
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1080
    :cond_19
    :goto_19
    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1081
    return-void
.end method

.method private static isDeferralsListEmpty(Ljava/util/ArrayList;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)Z"
        }
    .end annotation

    .line 546
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    invoke-static {p0}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static pendingInDeferralsList(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)I"
        }
    .end annotation

    .line 537
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    const/4 v0, 0x0

    .line 538
    .local v0, "pending":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 539
    .local v1, "numEntries":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_16

    .line 540
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 542
    .end local v2    # "i":I
    :cond_16
    return v0
.end method

.method private static popLocked(Ljava/util/ArrayList;)Lcom/android/server/am/BroadcastRecord;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 1062
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1063
    .local v1, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget-object v2, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v0, 0x0

    goto :goto_19

    :cond_11
    iget-object v2, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    :goto_19
    return-object v0
.end method

.method private removeDeferral(Lcom/android/server/am/BroadcastDispatcher$Deferrals;)Z
    .registers 4
    .param p1, "d"    # Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1036
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1037
    .local v0, "didRemove":Z
    if-nez v0, :cond_e

    .line 1038
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1040
    :cond_e
    return v0
.end method

.method private replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .registers 9
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "typeForLogging"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 683
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 686
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_5d

    .line 687
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 688
    .local v2, "old":Lcom/android/server/am/BroadcastRecord;
    iget v3, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v3, v4, :cond_5a

    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 689
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_52

    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** Replacing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v4, v4, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BroadcastDispatcher"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_52
    iget-boolean v3, v2, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    iput-boolean v3, p2, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    .line 695
    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 696
    return-object v2

    .line 686
    :cond_5a
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 699
    .end local v1    # "i":I
    .end local v2    # "old":Lcom/android/server/am/BroadcastRecord;
    :cond_5d
    const/4 v1, 0x0

    return-object v1
.end method

.method private replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .registers 8
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "typeForLogging"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 669
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 670
    .local v0, "numEntries":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_19

    .line 671
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 672
    .local v2, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget-object v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v3

    .line 673
    .local v3, "old":Lcom/android/server/am/BroadcastRecord;
    if-eqz v3, :cond_16

    .line 674
    return-object v3

    .line 670
    .end local v2    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 677
    .end local v1    # "i":I
    .end local v3    # "old":Lcom/android/server/am/BroadcastRecord;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method private static zeroDeferralTimes(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)V"
        }
    .end annotation

    .line 1007
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1008
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1009
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1011
    .local v2, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    iput-wide v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    .line 1008
    .end local v2    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1013
    .end local v1    # "i":I
    :cond_16
    return-void
.end method


# virtual methods
.method public addDeferredBroadcast(ILcom/android/server/am/BroadcastRecord;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "br"    # Lcom/android/server/am/BroadcastRecord;

    .line 959
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v0, :cond_1c

    .line 960
    const-string v0, "BroadcastDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enqueuing deferred broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 963
    :try_start_1f
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v1

    .line 964
    .local v1, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    if-nez v1, :cond_3e

    .line 965
    const-string v2, "BroadcastDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding deferred broadcast but not tracking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 967
    :cond_3e
    if-nez p2, :cond_59

    .line 968
    const-string v2, "BroadcastDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deferring null broadcast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 970
    :cond_59
    const/4 v2, 0x1

    iput-boolean v2, p2, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    .line 971
    invoke-virtual {v1, p2}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->add(Lcom/android/server/am/BroadcastRecord;)V

    .line 974
    .end local v1    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :goto_5f
    monitor-exit v0

    .line 975
    return-void

    .line 974
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_1f .. :try_end_63} :catchall_61

    throw v1
.end method

.method public cancelDeferralsLocked()V
    .registers 2

    .line 1002
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->zeroDeferralTimes(Ljava/util/ArrayList;)V

    .line 1003
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->zeroDeferralTimes(Ljava/util/ArrayList;)V

    .line 1004
    return-void
.end method

.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 706
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    .line 708
    .local v0, "didSomething":Z
    if-nez p4, :cond_f

    if-nez v0, :cond_47

    .line 709
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v1, "lockedBootCompletedBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    const/4 v2, 0x0

    .local v2, "u":I
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "usize":I
    :goto_1b
    if-ge v2, v3, :cond_3d

    .line 711
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    .line 712
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    iget-object v4, v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 713
    .local v4, "brs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    .local v6, "size":I
    :goto_2c
    if-ge v5, v6, :cond_3a

    .line 714
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 710
    .end local v4    # "brs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    .end local v5    # "i":I
    .end local v6    # "size":I
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 717
    .end local v2    # "u":I
    .end local v3    # "usize":I
    :cond_3d
    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    .line 721
    .end local v1    # "lockedBootCompletedBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    :cond_47
    if-nez p4, :cond_4b

    if-nez v0, :cond_83

    .line 722
    :cond_4b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v1, "bootCompletedBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    const/4 v2, 0x0

    .restart local v2    # "u":I
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .restart local v3    # "usize":I
    :goto_57
    if-ge v2, v3, :cond_79

    .line 724
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    .line 725
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    iget-object v4, v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 726
    .restart local v4    # "brs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    .restart local v6    # "size":I
    :goto_68
    if-ge v5, v6, :cond_76

    .line 727
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    .line 723
    .end local v4    # "brs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    .end local v5    # "i":I
    .end local v6    # "size":I
    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 730
    .end local v2    # "u":I
    .end local v3    # "usize":I
    :cond_79
    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    .line 733
    .end local v1    # "bootCompletedBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    :cond_83
    if-nez p4, :cond_87

    if-nez v0, :cond_93

    .line 734
    :cond_87
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 737
    :cond_93
    if-nez p4, :cond_97

    if-nez v0, :cond_a3

    .line 738
    :cond_97
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 741
    :cond_a3
    if-nez p4, :cond_a7

    if-nez v0, :cond_b0

    :cond_a7
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_b0

    .line 742
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 746
    :cond_b0
    return v0
.end method

.method public describeStateLocked()Ljava/lang/String;
    .registers 7

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 555
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_10

    .line 556
    const-string v1, "1 in flight, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    const-string v1, " ordered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result v1

    .line 561
    .local v1, "n":I
    const-string v2, ", "

    if-lez v1, :cond_33

    .line 562
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    const-string v3, " deferrals in alarm recipients"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_33
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result v1

    .line 567
    if-lez v1, :cond_46

    .line 568
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    const-string v3, " deferred"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_46
    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {p0, v3}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result v1

    .line 573
    const-string v4, " receivers"

    if-lez v1, :cond_65

    .line 574
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    const-string v5, " deferred LOCKED_BOOT_COMPLETED/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-direct {p0, v3}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_65
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p0, v3}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result v1

    .line 582
    if-lez v1, :cond_82

    .line 583
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    const-string v2, " deferred BOOT_COMPLETED/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-direct {p0, v3}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 781
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_7

    .line 782
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 784
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 785
    .local v1, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 786
    .end local v1    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    goto :goto_d

    .line 787
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 788
    .local v1, "br":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 789
    .end local v1    # "br":Lcom/android/server/am/BroadcastRecord;
    goto :goto_23

    .line 790
    :cond_33
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 791
    .local v1, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 792
    .end local v1    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    goto :goto_39

    .line 794
    :cond_49
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_50
    if-ge v0, v1, :cond_60

    .line 795
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 797
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_60
    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)Z
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "queueName"    # Ljava/lang/String;
    .param p4, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 1096
    new-instance v6, Lcom/android/server/am/BroadcastDispatcher$Dumper;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BroadcastDispatcher$Dumper;-><init>(Lcom/android/server/am/BroadcastDispatcher;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 1097
    .local v0, "dumper":Lcom/android/server/am/BroadcastDispatcher$Dumper;
    const/4 v1, 0x0

    .line 1099
    .local v1, "printed":Z
    const-string v2, "Currently in flight"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    .line 1100
    const-string v2, "In-Flight Ordered Broadcast"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1101
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v2, :cond_1e

    .line 1102
    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_23

    .line 1104
    :cond_1e
    const-string v2, "  (null)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    :goto_23
    const-string v2, "Active ordered broadcasts"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    .line 1108
    const-string v2, "Active Ordered Broadcast"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1109
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1110
    .local v3, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    invoke-virtual {v3, v0}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpLocked(Lcom/android/server/am/BroadcastDispatcher$Dumper;)V

    .line 1111
    .end local v3    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    goto :goto_33

    .line 1112
    :cond_43
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result v2

    or-int/2addr v1, v2

    .line 1114
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    .line 1115
    .local v3, "br":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    .line 1116
    .end local v3    # "br":Lcom/android/server/am/BroadcastRecord;
    goto :goto_4e

    .line 1117
    :cond_5e
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result v2

    or-int/2addr v1, v2

    .line 1119
    const-string v2, "Deferred ordered broadcasts"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    .line 1120
    const-string v2, "Deferred Ordered Broadcast"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1121
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 1122
    .local v3, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    invoke-virtual {v3, v0}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpLocked(Lcom/android/server/am/BroadcastDispatcher$Dumper;)V

    .line 1123
    .end local v3    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    goto :goto_73

    .line 1124
    :cond_83
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result v2

    or-int/2addr v1, v2

    .line 1126
    const-string v2, "Deferred LOCKED_BOOT_COMPLETED broadcasts"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    .line 1127
    const-string v2, "Deferred LOCKED_BOOT_COMPLETED Broadcast"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1128
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_99
    if-ge v2, v3, :cond_ab

    .line 1129
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    const-string v5, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dump(Lcom/android/server/am/BroadcastDispatcher$Dumper;Ljava/lang/String;)V

    .line 1128
    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    .line 1131
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_ab
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result v2

    or-int/2addr v1, v2

    .line 1133
    const-string v2, "Deferred BOOT_COMPLETED broadcasts"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    .line 1134
    const-string v2, "Deferred BOOT_COMPLETED Broadcast"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 1135
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .restart local v3    # "size":I
    :goto_c1
    if-ge v2, v3, :cond_d3

    .line 1136
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mUser2Deferred:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dump(Lcom/android/server/am/BroadcastDispatcher$Dumper;Ljava/lang/String;)V

    .line 1135
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    .line 1138
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_d3
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result v2

    or-int/2addr v1, v2

    .line 1140
    return v1
.end method

.method enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 595
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v0, :cond_84

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_84

    .line 600
    :cond_e
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 602
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 603
    invoke-virtual {p1, v0, v2}, Lcom/android/server/am/BroadcastRecord;->splitDeferredBootCompletedBroadcastLocked(Landroid/app/ActivityManagerInternal;I)Landroid/util/SparseArray;

    move-result-object v0

    .line 605
    .local v0, "deferred":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/am/BroadcastDispatcher;->getDeferredPerUser(I)Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->enqueueBootCompletedBroadcasts(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 607
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    .line 609
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    return-void

    .line 612
    .end local v0    # "deferred":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    :cond_45
    goto :goto_83

    :cond_46
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 614
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    .line 615
    invoke-virtual {p1, v0, v2}, Lcom/android/server/am/BroadcastRecord;->splitDeferredBootCompletedBroadcastLocked(Landroid/app/ActivityManagerInternal;I)Landroid/util/SparseArray;

    move-result-object v0

    .line 617
    .restart local v0    # "deferred":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/am/BroadcastDispatcher;->getDeferredPerUser(I)Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->enqueueBootCompletedBroadcasts(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 619
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 621
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    return-void

    .line 624
    .end local v0    # "deferred":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    :cond_7d
    goto :goto_83

    .line 625
    :cond_7e
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    :goto_83
    return-void

    .line 596
    :cond_84
    :goto_84
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    return-void
.end method

.method public getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;
    .registers 2

    .line 803
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    return-object v0
.end method

.method public getNextBroadcastLocked(J)Lcom/android/server/am/BroadcastRecord;
    .registers 13
    .param p1, "now"    # J

    .line 815
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_5

    .line 816
    return-object v0

    .line 819
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 821
    .local v0, "someQueued":Z
    const/4 v1, 0x0

    .line 823
    .local v1, "next":Lcom/android/server/am/BroadcastRecord;
    if-nez v1, :cond_14

    .line 824
    invoke-direct {p0}, Lcom/android/server/am/BroadcastDispatcher;->dequeueDeferredBootCompletedBroadcast()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 827
    :cond_14
    const-string v2, "BroadcastDispatcher"

    if-nez v1, :cond_42

    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_42

    .line 828
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/server/am/BroadcastDispatcher;->popLocked(Ljava/util/ArrayList;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 829
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v3, :cond_42

    if-eqz v1, :cond_42

    .line 830
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next broadcast from alarm targets: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_42
    const/4 v3, 0x0

    if-nez v1, :cond_bb

    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_bb

    .line 840
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4e
    iget-object v5, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_bb

    .line 841
    iget-object v5, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 842
    .local v5, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget-wide v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v6, p1, v6

    if-gez v6, :cond_67

    if-eqz v0, :cond_67

    .line 847
    goto :goto_bb

    .line 850
    :cond_67
    iget-object v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b8

    .line 851
    iget-object v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 854
    iget-object v6, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 855
    iget-wide v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/BroadcastDispatcher;->calculateDeferral(J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    .line 856
    iget-wide v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    iget-wide v8, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    .line 857
    iget-object v6, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    .line 858
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v6, :cond_bb

    .line 859
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next broadcast from deferrals "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", deferUntil now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 840
    .end local v5    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_b8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 867
    .end local v4    # "i":I
    :cond_bb
    :goto_bb
    if-nez v1, :cond_e2

    if-eqz v0, :cond_e2

    .line 868
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 869
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v3, :cond_e2

    .line 870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next broadcast from main queue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_e2
    iput-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 875
    return-object v1
.end method

.method public isDeferringLocked(I)Z
    .registers 8
    .param p1, "uid"    # I

    .line 896
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v0

    .line 897
    .local v0, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    iget-object v2, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 901
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3b

    .line 902
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_37

    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No longer deferring broadcasts to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BroadcastDispatcher"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_37
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastDispatcher;->removeDeferral(Lcom/android/server/am/BroadcastDispatcher$Deferrals;)Z

    .line 906
    return v1

    .line 909
    :cond_3b
    if-eqz v0, :cond_3e

    const/4 v1, 0x1

    :cond_3e
    return v1
.end method

.method public isEmpty()Z
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastDispatcher;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 516
    invoke-direct {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 517
    invoke-direct {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    monitor-exit v0

    .line 515
    return v1

    .line 518
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public isIdle()Z
    .registers 3

    .line 528
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 530
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    .line 531
    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->isDeferralsListEmpty(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    .line 532
    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->isDeferralsListEmpty(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    monitor-exit v0

    .line 529
    return v1

    .line 533
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method replaceBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "typeForLogging"    # Ljava/lang/String;

    .line 654
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 657
    .local v0, "old":Lcom/android/server/am/BroadcastRecord;
    if-nez v0, :cond_e

    .line 658
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 660
    :cond_e
    if-nez v0, :cond_16

    .line 661
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 663
    :cond_16
    return-object v0
.end method

.method public retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 884
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eq p1, v0, :cond_28

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retiring broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t match current outgoing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastDispatcher"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 889
    return-void
.end method

.method public scheduleDeferralCheckLocked(Z)V
    .registers 7
    .param p1, "force"    # Z

    .line 984
    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    if-nez v0, :cond_50

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 985
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 986
    .local v0, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget-object v1, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    .line 987
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 988
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    iget-wide v3, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 989
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    .line 990
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v1, :cond_50

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling deferred broadcast recheck at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastDispatcher"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    .end local v0    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_50
    return-void
.end method

.method public start()V
    .registers 3

    .line 506
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarm:Lcom/android/server/AlarmManagerInternal;

    .line 507
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v0, v1}, Lcom/android/server/AlarmManagerInternal;->registerInFlightListener(Lcom/android/server/AlarmManagerInternal$InFlightListener;)V

    .line 508
    return-void
.end method

.method public startDeferring(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 918
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 919
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v1

    .line 922
    .local v1, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    if-nez v1, :cond_5c

    .line 924
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 925
    .local v4, "now":J
    new-instance v9, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v6, v2, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    .line 928
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    move-object v2, v9

    move v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;-><init>(IJJI)V

    move-object v1, v9

    .line 929
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_48

    .line 930
    const-string v2, "BroadcastDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Now deferring broadcasts to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " until "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_48
    iget v2, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->alarmCount:I

    if-nez v2, :cond_56

    .line 936
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    .line 937
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/BroadcastDispatcher;->scheduleDeferralCheckLocked(Z)V

    goto :goto_5b

    .line 940
    :cond_56
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    .end local v4    # "now":J
    :goto_5b
    goto :goto_8a

    .line 945
    :cond_5c
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    iput-wide v2, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    .line 946
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_8a

    .line 947
    const-string v2, "BroadcastDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slow again, deferral interval reset to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    .end local v1    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_8a
    :goto_8a
    monitor-exit v0

    .line 952
    return-void

    .line 951
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method public updateUidReadyForBootCompletedBroadcastLocked(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 473
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastDispatcher;->getDeferredPerUser(I)Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->updateUidReady(I)V

    .line 474
    return-void
.end method
