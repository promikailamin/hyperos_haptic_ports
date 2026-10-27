.class public final Landroid/graphics/BLASTBufferQueue;
.super Ljava/lang/Object;
.source "BLASTBufferQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;,
        Landroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;,
        Landroid/graphics/BLASTBufferQueue$CornerRadiiCallback;
    }
.end annotation


# instance fields
.field public blacklist mNativeObject:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeCreate(Ljava/lang/String;Z)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    .line 87
    return-void
.end method

.method private static native blacklist nativeApplyPendingTransactions(JJ)V
.end method

.method private static native blacklist nativeClearSyncTransaction(J)V
.end method

.method private static native blacklist nativeCreate(Ljava/lang/String;Z)J
.end method

.method private static native blacklist nativeDestroy(J)V
.end method

.method private static native blacklist nativeGatherPendingTransactions(JJ)Landroid/view/SurfaceControl$Transaction;
.end method

.method private static native blacklist nativeGetLastAcquiredFrameNum(J)J
.end method

.method private static native blacklist nativeGetSurface(JZ)Landroid/view/Surface;
.end method

.method private static native blacklist nativeIsSameSurfaceControl(JJ)Z
.end method

.method private static native blacklist nativeMergeWithNextTransaction(JJJ)V
.end method

.method private static native blacklist nativeSetApplyToken(JLandroid/os/IBinder;)V
.end method

.method private static native blacklist nativeSetCornerRadiiCallback(JLandroid/graphics/BLASTBufferQueue$CornerRadiiCallback;)V
.end method

.method private static native blacklist nativeSetTransactionHangCallback(JLandroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V
.end method

.method private static native blacklist nativeSetWaitForBufferReleaseCallback(JLandroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;)V
.end method

.method private static native blacklist nativeStopContinuousSyncTransaction(J)V
.end method

.method private static native blacklist nativeSyncNextTransaction(JLjava/util/function/Consumer;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method private static native blacklist nativeUpdate(JJJJI)V
.end method


# virtual methods
.method public blacklist applyPendingTransactions(J)V
    .registers 5

    .line 200
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeApplyPendingTransactions(JJ)V

    .line 201
    return-void
.end method

.method public blacklist clearSyncTransaction()V
    .registers 3

    .line 150
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeClearSyncTransaction(J)V

    .line 151
    return-void
.end method

.method public blacklist createSurface()Landroid/view/Surface;
    .registers 4

    .line 98
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BLASTBufferQueue;->nativeGetSurface(JZ)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createSurfaceWithHandle()Landroid/view/Surface;
    .registers 4

    .line 106
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/BLASTBufferQueue;->nativeGetSurface(JZ)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist destroy()V
    .registers 3

    .line 90
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeDestroy(J)V

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    .line 92
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 167
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 168
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeDestroy(J)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_12

    .line 171
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 172
    nop

    .line 173
    return-void

    .line 171
    :catchall_12
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 172
    throw v0
.end method

.method public blacklist gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;
    .registers 5

    .line 224
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeGatherPendingTransactions(JJ)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getLastAcquiredFrameNum()J
    .registers 3

    .line 204
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeGetLastAcquiredFrameNum(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist isSameSurfaceControl(Landroid/view/SurfaceControl;)Z
    .registers 6

    .line 211
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BLASTBufferQueue;->nativeIsSameSurfaceControl(JJ)Z

    move-result p1

    return p1
.end method

.method public blacklist mergeWithNextTransaction(JJ)V
    .registers 11

    .line 189
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/BLASTBufferQueue;->nativeMergeWithNextTransaction(JJJ)V

    .line 190
    return-void
.end method

.method public blacklist mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 10

    .line 181
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/BLASTBufferQueue;->nativeMergeWithNextTransaction(JJJ)V

    .line 182
    return-void
.end method

.method public blacklist setApplyToken(Landroid/os/IBinder;)V
    .registers 4

    .line 232
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetApplyToken(JLandroid/os/IBinder;)V

    .line 233
    return-void
.end method

.method public blacklist setCornerRadiiCallback(Landroid/graphics/BLASTBufferQueue$CornerRadiiCallback;)V
    .registers 4

    .line 246
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetCornerRadiiCallback(JLandroid/graphics/BLASTBufferQueue$CornerRadiiCallback;)V

    .line 247
    return-void
.end method

.method public blacklist setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V
    .registers 4

    .line 228
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetTransactionHangCallback(JLandroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    .line 229
    return-void
.end method

.method public blacklist setWaitForBufferReleaseCallback(Landroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;)V
    .registers 4

    .line 239
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetWaitForBufferReleaseCallback(JLandroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;)V

    .line 240
    return-void
.end method

.method public blacklist stopContinuousSyncTransaction()V
    .registers 3

    .line 142
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeStopContinuousSyncTransaction(J)V

    .line 143
    return-void
.end method

.method public blacklist syncNextTransaction(Ljava/util/function/Consumer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)Z"
        }
    .end annotation

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(ZLjava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public blacklist syncNextTransaction(ZLjava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)Z"
        }
    .end annotation

    .line 122
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p2, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSyncNextTransaction(JLjava/util/function/Consumer;Z)Z

    move-result p1

    return p1
.end method

.method public blacklist update(Landroid/view/SurfaceControl;III)V
    .registers 14

    .line 161
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    int-to-long v4, p2

    int-to-long v6, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/BLASTBufferQueue;->nativeUpdate(JJJJI)V

    .line 162
    return-void
.end method
