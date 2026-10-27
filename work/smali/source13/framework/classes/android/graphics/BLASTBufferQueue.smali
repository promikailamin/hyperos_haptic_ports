.class public final Landroid/graphics/BLASTBufferQueue;
.super Ljava/lang/Object;
.source "BLASTBufferQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;
    }
.end annotation


# instance fields
.field public blacklist mNativeObject:J

.field private blacklist mPixelScale:F


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sc"    # Landroid/view/SurfaceControl;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    .line 63
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/view/SurfaceControl;IIIF)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sc"    # Landroid/view/SurfaceControl;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I
    .param p6, "pixelScale"    # F

    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p0, p6}, Landroid/graphics/BLASTBufferQueue;->setPixelScale(F)V

    .line 77
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "updateDestinationFrame"    # Z

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/BLASTBufferQueue;->mPixelScale:F

    .line 94
    invoke-static {p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeCreate(Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    .line 95
    return-void
.end method

.method private static native blacklist nSetPixelScale(JF)V
.end method

.method private static native blacklist nativeAdjustMaxDequeuedBufferCount(JI)Z
.end method

.method private static native blacklist nativeApplyPendingTransactions(JJ)V
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

.method private static native blacklist nativeGetUndequeuedBufferCount(J)I
.end method

.method private static native blacklist nativeIsSameSurfaceControl(JJ)Z
.end method

.method private static native blacklist nativeMergeWithNextTransaction(JJJ)V
.end method

.method private static native blacklist nativeSetDynamicLog(JI)Z
.end method

.method private static native blacklist nativeSetTransactionHangCallback(JLandroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V
.end method

.method private static native blacklist nativeSetUndequeuedBufferCount(JI)V
.end method

.method private static native blacklist nativeStopContinuousSyncTransaction(J)V
.end method

.method private static native blacklist nativeSyncNextTransaction(JLjava/util/function/Consumer;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;Z)V"
        }
    .end annotation
.end method

.method private static native blacklist nativeUpdate(JJJJI)V
.end method


# virtual methods
.method public blacklist adjustMaxDequeuedBufferCount(I)Z
    .registers 4
    .param p1, "count"    # I

    .line 247
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeAdjustMaxDequeuedBufferCount(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist applyPendingTransactions(J)V
    .registers 5
    .param p1, "frameNumber"    # J

    .line 214
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeApplyPendingTransactions(JJ)V

    .line 215
    return-void
.end method

.method public blacklist createSurface()Landroid/view/Surface;
    .registers 4

    .line 106
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BLASTBufferQueue;->nativeGetSurface(JZ)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createSurfaceWithHandle()Landroid/view/Surface;
    .registers 4

    .line 114
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/BLASTBufferQueue;->nativeGetSurface(JZ)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist destroy()V
    .registers 3

    .line 98
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeDestroy(J)V

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    .line 100
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 181
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 182
    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeDestroy(J)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_10

    .line 185
    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 186
    nop

    .line 187
    return-void

    .line 185
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 186
    throw v0
.end method

.method public blacklist gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "frameNumber"    # J

    .line 238
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeGatherPendingTransactions(JJ)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLastAcquiredFrameNum()J
    .registers 3

    .line 218
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeGetLastAcquiredFrameNum(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUndequeuedBufferCount()I
    .registers 3

    .line 128
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeGetUndequeuedBufferCount(J)I

    move-result v0

    return v0
.end method

.method public blacklist isSameSurfaceControl(Landroid/view/SurfaceControl;)Z
    .registers 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 225
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BLASTBufferQueue;->nativeIsSameSurfaceControl(JJ)Z

    move-result v0

    return v0
.end method

.method public blacklist mergeWithNextTransaction(JJ)V
    .registers 11
    .param p1, "nativeTransaction"    # J
    .param p3, "frameNumber"    # J

    .line 203
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/BLASTBufferQueue;->nativeMergeWithNextTransaction(JJJ)V

    .line 204
    return-void
.end method

.method public blacklist mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 10
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "frameNumber"    # J

    .line 195
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/BLASTBufferQueue;->nativeMergeWithNextTransaction(JJJ)V

    .line 196
    return-void
.end method

.method public blacklist setDynamicLog(I)Z
    .registers 4
    .param p1, "dynamic"    # I

    .line 253
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetDynamicLog(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist setPixelScale(F)V
    .registers 4
    .param p1, "pixelScale"    # F

    .line 84
    iget v0, p0, Landroid/graphics/BLASTBufferQueue;->mPixelScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_d

    .line 85
    iput p1, p0, Landroid/graphics/BLASTBufferQueue;->mPixelScale:F

    .line 86
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nSetPixelScale(JF)V

    .line 88
    :cond_d
    return-void
.end method

.method public blacklist setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V
    .registers 4
    .param p1, "hangCallback"    # Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    .line 242
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetTransactionHangCallback(JLandroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    .line 243
    return-void
.end method

.method public blacklist setUndequeuedBufferCount(I)V
    .registers 4
    .param p1, "count"    # I

    .line 121
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetUndequeuedBufferCount(JI)V

    .line 122
    return-void
.end method

.method public blacklist stopContinuousSyncTransaction()V
    .registers 3

    .line 164
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeStopContinuousSyncTransaction(J)V

    .line 165
    return-void
.end method

.method public blacklist syncNextTransaction(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(ZLjava/util/function/Consumer;)V

    .line 156
    return-void
.end method

.method public blacklist syncNextTransaction(ZLjava/util/function/Consumer;)V
    .registers 5
    .param p1, "acquireSingleBuffer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p2, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSyncNextTransaction(JLjava/util/function/Consumer;Z)V

    .line 145
    return-void
.end method

.method public blacklist update(Landroid/view/SurfaceControl;III)V
    .registers 14
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I

    .line 175
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    int-to-long v4, p2

    int-to-long v6, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/BLASTBufferQueue;->nativeUpdate(JJJJI)V

    .line 176
    return-void
.end method
