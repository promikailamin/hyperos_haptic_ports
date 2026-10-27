.class final Lcom/android/server/AppStateTrackerImpl$StandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StandbyTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AppStateTrackerImpl;

    .line 794
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "bucket"    # I
    .param p5, "reason"    # I

    .line 802
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 804
    const/4 v1, 0x5

    if-ne p4, v1, :cond_13

    .line 805
    :try_start_a
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result v1

    .local v1, "changed":Z
    goto :goto_1b

    .line 807
    .end local v1    # "changed":Z
    :cond_13
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result v1

    .line 809
    .restart local v1    # "changed":Z
    :goto_1b
    if-eqz v1, :cond_26

    .line 810
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v2}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyExemptedBucketChanged()V

    .line 812
    .end local v1    # "changed":Z
    :cond_26
    monitor-exit v0

    .line 813
    return-void

    .line 812
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_28

    throw v1
.end method
