.class public final Lcom/android/server/AppStateTrackerImpl$StandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "AppStateTrackerImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 777
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 6

    .line 785
    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    const/4 p5, 0x5

    if-ne p4, p5, :cond_15

    .line 788
    :try_start_a
    iget-object p4, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object p4, p4, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {p4, p2, p1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result p1

    goto :goto_1d

    :catchall_13
    move-exception p0

    goto :goto_2a

    .line 790
    :cond_15
    iget-object p4, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object p4, p4, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {p4, p2, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result p1

    :goto_1d
    if-eqz p1, :cond_28

    .line 793
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyExemptedBucketChanged()V

    .line 795
    :cond_28
    monitor-exit p3

    return-void

    :goto_2a
    monitor-exit p3
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_13

    throw p0
.end method
