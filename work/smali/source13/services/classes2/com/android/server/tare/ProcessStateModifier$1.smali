.class Lcom/android/server/tare/ProcessStateModifier$1;
.super Landroid/app/IUidObserver$Stub;
.source "ProcessStateModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/ProcessStateModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tare/ProcessStateModifier;


# direct methods
.method constructor <init>(Lcom/android/server/tare/ProcessStateModifier;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/tare/ProcessStateModifier;

    .line 64
    iput-object p1, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 91
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 99
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 79
    iget-object v0, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {v0}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$fgetmLock(Lcom/android/server/tare/ProcessStateModifier;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 80
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {v1}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$fgetmUidProcStateBucketCache(Lcom/android/server/tare/ProcessStateModifier;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_35

    .line 81
    invoke-static {}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " marked gone but wasn\'t in cache."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    monitor-exit v0

    return-void

    .line 84
    :cond_35
    iget-object v1, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {v1}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$fgetmUidProcStateBucketCache(Lcom/android/server/tare/ProcessStateModifier;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 85
    iget-object v1, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {v1, p1}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$mnotifyStateChangedLocked(Lcom/android/server/tare/ProcessStateModifier;I)V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public onUidIdle(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 95
    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 103
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 67
    iget-object v0, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {v0, p2}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$mgetProcStateBucket(Lcom/android/server/tare/ProcessStateModifier;I)I

    move-result v0

    .line 68
    .local v0, "newBucket":I
    iget-object v1, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {v1}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$fgetmLock(Lcom/android/server/tare/ProcessStateModifier;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 69
    :try_start_d
    iget-object v2, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {v2}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$fgetmUidProcStateBucketCache(Lcom/android/server/tare/ProcessStateModifier;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 70
    .local v2, "curBucket":I
    if-eq v2, v0, :cond_22

    .line 71
    iget-object v3, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {v3}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$fgetmUidProcStateBucketCache(Lcom/android/server/tare/ProcessStateModifier;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    :cond_22
    iget-object v3, p0, Lcom/android/server/tare/ProcessStateModifier$1;->this$0:Lcom/android/server/tare/ProcessStateModifier;

    invoke-static {v3, p1}, Lcom/android/server/tare/ProcessStateModifier;->-$$Nest$mnotifyStateChangedLocked(Lcom/android/server/tare/ProcessStateModifier;I)V

    .line 74
    .end local v2    # "curBucket":I
    monitor-exit v1

    .line 75
    return-void

    .line 74
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_29

    throw v2
.end method
