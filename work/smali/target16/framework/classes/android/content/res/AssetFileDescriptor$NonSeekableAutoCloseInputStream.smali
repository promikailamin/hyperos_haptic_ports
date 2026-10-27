.class Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonSeekableAutoCloseInputStream"
.end annotation


# instance fields
.field private blacklist mRemaining:J


# direct methods
.method constructor blacklist <init>(Landroid/content/res/AssetFileDescriptor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 306
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->skipRaw(J)J

    .line 307
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v0, p1

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    .line 308
    return-void
.end method

.method private blacklist skipRaw(J)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-super {p0, p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private blacklist skipRaw$ravenwood(J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    const-wide/16 v0, 0x400

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [B

    .line 318
    const-wide/16 v2, 0x0

    .line 319
    :goto_b
    cmp-long v4, v2, p1

    if-gez v4, :cond_23

    .line 320
    sub-long v4, p1, v2

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 321
    const/4 v5, 0x0

    invoke-super {p0, v1, v5, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v4

    .line 322
    const/4 v5, -0x1

    if-ne v4, v5, :cond_20

    .line 323
    goto :goto_23

    .line 325
    :cond_20
    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 326
    goto :goto_b

    .line 327
    :cond_23
    :goto_23
    return-wide v2
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_19

    .line 333
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    long-to-int v0, v0

    goto :goto_1d

    :cond_15
    const v0, 0x7fffffff

    goto :goto_1d

    .line 334
    :cond_19
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v0

    .line 332
    :goto_1d
    return v0
.end method

.method public whitelist test-api mark(I)V
    .registers 6

    .line 377
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    .line 379
    return-void

    .line 381
    :cond_9
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mark(I)V

    .line 382
    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 5

    .line 386
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    .line 387
    const/4 v0, 0x0

    return v0

    .line 389
    :cond_a
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 340
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->read([BII)I

    move-result v0

    .line 341
    const/4 v3, -0x1

    if-ne v0, v3, :cond_c

    goto :goto_10

    :cond_c
    aget-byte v0, v1, v2

    and-int/lit16 v3, v0, 0xff

    :goto_10
    return v3
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public whitelist test-api read([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_27

    .line 347
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 p1, -0x1

    return p1

    .line 348
    :cond_10
    int-to-long v0, p3

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    long-to-int p3, v0

    .line 349
    :cond_1a
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result p1

    .line 350
    if-ltz p1, :cond_26

    iget-wide p2, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    .line 351
    :cond_26
    return p1

    .line 354
    :cond_27
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 394
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b

    .line 396
    monitor-exit p0

    return-void

    .line 398
    :cond_b
    :try_start_b
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->reset()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    .line 399
    monitor-exit p0

    return-void

    .line 393
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_27

    .line 365
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    .line 366
    :cond_11
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_19

    iget-wide p1, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    .line 367
    :cond_19
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->skipRaw(J)J

    move-result-wide p1

    .line 368
    cmp-long v0, p1, v2

    if-ltz v0, :cond_26

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    .line 369
    :cond_26
    return-wide p1

    .line 372
    :cond_27
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->skipRaw(J)J

    move-result-wide p1

    return-wide p1
.end method
