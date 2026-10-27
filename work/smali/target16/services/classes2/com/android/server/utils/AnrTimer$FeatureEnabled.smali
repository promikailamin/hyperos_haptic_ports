.class public Lcom/android/server/utils/AnrTimer$FeatureEnabled;
.super Lcom/android/server/utils/AnrTimer$FeatureSwitch;
.source "AnrTimer.java"


# instance fields
.field public mNative:J

.field public mTotalRestarted:I

.field public final synthetic this$0:Lcom/android/server/utils/AnrTimer;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/AnrTimer;)V
    .registers 11

    .line 612
    iput-object p1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;-><init>(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer-IA;)V

    const-wide/16 v0, 0x0

    .line 605
    iput-wide v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const/4 v2, 0x0

    .line 608
    iput v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    .line 613
    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLabel(Lcom/android/server/utils/AnrTimer;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmArgs(Lcom/android/server/utils/AnrTimer;)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/utils/AnrTimer$Args;->-$$Nest$fgetmExtend(Lcom/android/server/utils/AnrTimer$Args;)Z

    move-result v5

    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmArgs(Lcom/android/server/utils/AnrTimer;)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/utils/AnrTimer$Args;->getSplitPercentArray()[I

    move-result-object v6

    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmArgs(Lcom/android/server/utils/AnrTimer;)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v2

    .line 614
    invoke-virtual {v2}, Lcom/android/server/utils/AnrTimer$Args;->getSplitTokenArray()[I

    move-result-object v7

    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmArgs(Lcom/android/server/utils/AnrTimer;)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/utils/AnrTimer$Args;->-$$Nest$fgetmTestMode(Lcom/android/server/utils/AnrTimer$Args;)Z

    move-result v8

    move-object v3, p1

    .line 613
    invoke-static/range {v3 .. v8}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mnativeAnrTimerCreate(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Z[I[IZ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    cmp-long p1, v4, v0

    if-eqz p1, :cond_55

    .line 616
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;

    move-result-object p1

    monitor-enter p1

    .line 617
    :try_start_41
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 618
    monitor-exit p1

    return-void

    :catchall_51
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_54
    .catchall {:try_start_41 .. :try_end_54} :catchall_51

    throw p0

    .line 615
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unable to create native timer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$ExpiredTimer;
    .registers 7

    .line 676
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 677
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->removeLockedTimer(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$ExpiredTimer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 679
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-string v1, "accept"

    invoke-static {p0, v1, p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mnotFoundLocked(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 680
    monitor-exit v0

    return-object v2

    :catchall_17
    move-exception p0

    goto :goto_37

    .line 683
    :cond_19
    iget-wide p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-nez v3, :cond_23

    monitor-exit v0

    return-object v2

    .line 684
    :cond_23
    iget v3, v1, Lcom/android/server/utils/AnrTimer$ExpiredTimer;->mTimerId:I

    invoke-static {p0, p1, v3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerAccept(JI)Z

    move-result p0

    .line 685
    const-string p1, "accept"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smtrace(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_35

    move-object v1, v2

    .line 692
    :cond_35
    monitor-exit v0

    return-object v1

    .line 693
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_17

    throw p0
.end method

.method public cancel(Ljava/lang/Object;)Z
    .registers 9

    .line 651
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 652
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 654
    monitor-exit v0

    return v2

    :catchall_10
    move-exception p0

    goto :goto_3a

    .line 657
    :cond_12
    iget-wide v3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_1c

    monitor-exit v0

    return v2

    .line 658
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v4, v1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerCancel(JI)Z

    move-result v1

    if-nez v1, :cond_37

    .line 660
    iget-object v1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AnrTimer;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmWhat(Lcom/android/server/utils/AnrTimer;)I

    move-result p0

    invoke-virtual {v1, p0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 661
    monitor-exit v0

    return v2

    :cond_37
    const/4 p0, 0x1

    .line 663
    monitor-exit v0

    return p0

    .line 664
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_10

    throw p0
.end method

.method public close()V
    .registers 7

    .line 748
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;

    move-result-object v0

    monitor-enter v0

    .line 749
    :try_start_5
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 750
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_2a

    .line 751
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 752
    :try_start_16
    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_24

    invoke-static {v2, v3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerClose(J)I

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_28

    .line 753
    :cond_24
    :goto_24
    iput-wide v4, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    .line 754
    monitor-exit v1

    return-void

    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_22

    throw p0

    :catchall_2a
    move-exception p0

    .line 750
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public discard(Ljava/lang/Object;)Z
    .registers 7

    .line 703
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 704
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 706
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-string v1, "discard"

    invoke-static {p0, v1, p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mnotFoundLocked(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 707
    monitor-exit v0

    return v2

    :catchall_17
    move-exception p0

    goto :goto_36

    .line 710
    :cond_19
    iget-wide p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-nez v3, :cond_23

    monitor-exit v0

    return v2

    .line 711
    :cond_23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, p1, v2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerDiscard(JI)Z

    .line 712
    const-string p0, "discard"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smtrace(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 713
    monitor-exit v0

    return p0

    .line 714
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_17

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;Z)V
    .registers 7

    .line 726
    iget-object p2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 727
    :try_start_7
    iget-wide v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_18

    .line 728
    const-string p0, "closed"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 729
    monitor-exit p2

    return-void

    :catchall_16
    move-exception p0

    goto :goto_4b

    .line 731
    :cond_18
    invoke-static {v0, v1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerDump(J)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    .line 733
    const-string/jumbo p0, "no-data"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 734
    monitor-exit p2

    return-void

    .line 736
    :cond_26
    array-length v1, v0

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v1, :cond_32

    aget-object v3, v0, v2

    .line 737
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 740
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 741
    monitor-exit p2

    return-void

    :goto_4b
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_16

    throw p0
.end method

.method public final removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 4

    .line 778
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_28

    .line 780
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerArgMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 781
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmExpiredTimers(Lcom/android/server/utils/AnrTimer;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    :cond_28
    return-object p1
.end method

.method public final removeLockedTimer(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$ExpiredTimer;
    .registers 4

    .line 763
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2c

    .line 766
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerArgMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 767
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmExpiredTimers(Lcom/android/server/utils/AnrTimer;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/AnrTimer$ExpiredTimer;

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public setTime(J)V
    .registers 5

    .line 789
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmArgs(Lcom/android/server/utils/AnrTimer;)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer$Args;->-$$Nest$fgetmTestMode(Lcom/android/server/utils/AnrTimer$Args;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 791
    iget-wide v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerSetTime(JJ)Z

    move-result p0

    if-eqz p0, :cond_15

    return-void

    .line 792
    :cond_15
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "setTime failure"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 790
    :cond_1e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setTime called outside test mode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public start(Ljava/lang/Object;IIJ)V
    .registers 14

    .line 626
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 627
    :try_start_7
    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6d

    .line 631
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->cancel(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    goto :goto_1f

    :catchall_1c
    move-exception v0

    move-object p0, v0

    goto :goto_76

    .line 633
    :cond_1f
    :goto_1f
    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerStart(JIIJ)I

    move-result p2

    if-lez p2, :cond_64

    .line 635
    iget-object p3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object p3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerArgMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 637
    iget-object p1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTotalStarted(Lcom/android/server/utils/AnrTimer;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fputmTotalStarted(Lcom/android/server/utils/AnrTimer;I)V

    .line 638
    iget-object p1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmMaxStarted(Lcom/android/server/utils/AnrTimer;)I

    move-result p2

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fputmMaxStarted(Lcom/android/server/utils/AnrTimer;I)V

    .line 642
    monitor-exit v1

    return-void

    .line 640
    :cond_64
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unable to start timer"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 627
    :cond_6d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "timer service is closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 642
    :goto_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_7 .. :try_end_77} :catchall_1c

    throw p0
.end method
