.class public Lcom/android/server/utils/WatchedSparseBooleanMatrix;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedSparseBooleanMatrix.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# static fields
.field private static final PACKING:I = 0x20

.field static final STEP:I = 0x40

.field static final STRING_INUSE_INDEX:I = 0x2

.field static final STRING_KEY_INDEX:I = 0x0

.field static final STRING_MAP_INDEX:I = 0x1


# instance fields
.field private mInUse:[Z

.field private mKeys:[I

.field private mMap:[I

.field private mOrder:I

.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 141
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>(I)V

    .line 142
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "initialCapacity"    # I

    .line 149
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 150
    iput p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 151
    const/16 v0, 0x40

    if-ge p1, v0, :cond_b

    .line 152
    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 154
    :cond_b
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 155
    div-int/lit8 v1, p1, 0x40

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 157
    :cond_17
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-lt v1, v0, :cond_44

    rem-int/lit8 v0, v1, 0x40

    if-nez v0, :cond_44

    .line 161
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 162
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 163
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 164
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v0, v0

    div-int/lit8 v0, v0, 0x20

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 166
    return-void

    .line 158
    :cond_44
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOrder is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initCap is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/android/server/utils/WatchedSparseBooleanMatrix;)V
    .registers 2
    .param p1, "r"    # Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 171
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->copyFrom(Lcom/android/server/utils/WatchedSparseBooleanMatrix;)V

    .line 173
    return-void
.end method

.method private static binarySearch([III)I
    .registers 7
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .line 742
    const/4 v0, 0x0

    .line 743
    .local v0, "lo":I
    add-int/lit8 v1, p1, -0x1

    .line 745
    .local v1, "hi":I
    :goto_3
    if-gt v0, v1, :cond_16

    .line 746
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 747
    .local v2, "mid":I
    aget v3, p0, v2

    .line 749
    .local v3, "midVal":I
    if-ge v3, p2, :cond_10

    .line 750
    add-int/lit8 v0, v2, 0x1

    goto :goto_14

    .line 751
    :cond_10
    if-le v3, p2, :cond_15

    .line 752
    add-int/lit8 v1, v2, -0x1

    .line 756
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :goto_14
    goto :goto_3

    .line 754
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":I
    :cond_15
    return v2

    .line 757
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_16
    not-int v2, v0

    return v2
.end method

.method private growMatrix()V
    .registers 2

    .line 450
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    add-int/lit8 v0, v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    .line 451
    return-void
.end method

.method private indexOfKey(IZ)I
    .registers 12
    .param p1, "key"    # I
    .param p2, "grow"    # Z

    .line 402
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->binarySearch([III)I

    move-result v0

    .line 403
    .local v0, "i":I
    if-gez v0, :cond_5b

    if-eqz p2, :cond_5b

    .line 404
    not-int v0, v0

    .line 405
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-lt v1, v2, :cond_16

    .line 407
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->growMatrix()V

    .line 409
    :cond_16
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree(Z)I

    move-result v2

    .line 410
    .local v2, "newIndex":I
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v3, v4, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 411
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v3, v4, v0, v2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 412
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 415
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    div-int/lit8 v3, v3, 0x20

    .line 416
    .local v3, "valueRow":I
    div-int/lit8 v4, v2, 0x20

    .line 417
    .local v4, "offset":I
    rem-int/lit8 v5, v2, 0x20

    shl-int/2addr v1, v5

    not-int v1, v1

    .line 418
    .local v1, "mask":I
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    mul-int v6, v2, v3

    add-int/lit8 v7, v2, 0x1

    mul-int/2addr v7, v3

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 419
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_4a
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v5, v6, :cond_5b

    .line 420
    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    mul-int v7, v5, v3

    add-int/2addr v7, v4

    aget v8, v6, v7

    and-int/2addr v8, v1

    aput v8, v6, v7

    .line 419
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 425
    .end local v1    # "mask":I
    .end local v2    # "newIndex":I
    .end local v3    # "valueRow":I
    .end local v4    # "offset":I
    .end local v5    # "n":I
    :cond_5b
    return v0
.end method

.method private lastInuse()I
    .registers 4

    .line 503
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_24

    .line 504
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_21

    .line 505
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_d
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_1b

    .line 506
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_18

    .line 507
    return v1

    .line 505
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 510
    .end local v1    # "j":I
    :cond_1b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 503
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 513
    .end local v0    # "i":I
    :cond_24
    const/4 v0, -0x1

    return v0
.end method

.method private nextFree(Z)I
    .registers 5
    .param p1, "acquire"    # Z

    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 489
    aget-boolean v2, v1, v0

    if-nez v2, :cond_d

    .line 490
    aput-boolean p1, v1, v0

    .line 491
    return v0

    .line 488
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 494
    .end local v0    # "i":I
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private onChanged()V
    .registers 1

    .line 134
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 135
    return-void
.end method

.method private pack()V
    .registers 14

    .line 521
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-eqz v0, :cond_68

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ne v0, v1, :cond_9

    goto :goto_68

    .line 526
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree(Z)I

    move-result v1

    .local v1, "dst":I
    :goto_e
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_67

    .line 527
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 528
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->lastInuse()I

    move-result v2

    .line 529
    .local v2, "srcIndex":I
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v4, v2

    .line 530
    .local v5, "src":I
    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    aput-boolean v0, v6, v5

    .line 531
    aput v1, v4, v2

    .line 532
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int v7, v5, v6

    div-int/lit8 v7, v7, 0x20

    mul-int v8, v1, v6

    div-int/lit8 v8, v8, 0x20

    div-int/lit8 v6, v6, 0x20

    invoke-static {v4, v7, v4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    div-int/lit8 v4, v5, 0x20

    .line 536
    .local v4, "srcOffset":I
    rem-int/lit8 v6, v5, 0x20

    shl-int v6, v3, v6

    .line 537
    .local v6, "srcMask":I
    div-int/lit8 v7, v1, 0x20

    .line 538
    .local v7, "dstOffset":I
    rem-int/lit8 v8, v1, 0x20

    shl-int/2addr v3, v8

    .line 539
    .local v3, "dstMask":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_42
    iget v9, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v8, v9, :cond_62

    .line 540
    iget-object v10, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v11, v10, v4

    and-int/2addr v11, v6

    if-nez v11, :cond_54

    .line 541
    aget v11, v10, v7

    not-int v12, v3

    and-int/2addr v11, v12

    aput v11, v10, v7

    goto :goto_59

    .line 543
    :cond_54
    aget v11, v10, v7

    or-int/2addr v11, v3

    aput v11, v10, v7

    .line 545
    :goto_59
    div-int/lit8 v10, v9, 0x20

    add-int/2addr v4, v10

    .line 546
    div-int/lit8 v9, v9, 0x20

    add-int/2addr v7, v9

    .line 539
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 526
    .end local v2    # "srcIndex":I
    .end local v3    # "dstMask":I
    .end local v4    # "srcOffset":I
    .end local v5    # "src":I
    .end local v6    # "srcMask":I
    .end local v7    # "dstOffset":I
    .end local v8    # "i":I
    :cond_62
    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree(Z)I

    move-result v1

    goto :goto_e

    .line 549
    .end local v1    # "dst":I
    :cond_67
    return-void

    .line 522
    :cond_68
    :goto_68
    return-void
.end method

.method private resizeMatrix(I)V
    .registers 12
    .param p1, "newOrder"    # I

    .line 457
    rem-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_4f

    .line 461
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 463
    .local v0, "minOrder":I
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v1

    .line 464
    .local v1, "newInUse":[Z
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v2

    .line 466
    .local v2, "newMap":[I
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-static {v4, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v4

    .line 468
    .local v4, "newKeys":[I
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v5, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    mul-int v3, p1, p1

    div-int/lit8 v3, v3, 0x20

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v3

    .line 471
    .local v3, "newValues":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    if-ge v5, v0, :cond_44

    .line 472
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x20

    .line 473
    .local v6, "row":I
    mul-int v7, p1, v5

    div-int/lit8 v7, v7, 0x20

    .line 474
    .local v7, "newRow":I
    iget-object v8, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    div-int/lit8 v9, v0, 0x20

    invoke-static {v8, v6, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    .end local v6    # "row":I
    .end local v7    # "newRow":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 477
    .end local v5    # "i":I
    :cond_44
    iput-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 478
    iput-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 479
    iput-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 480
    iput-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 481
    iput p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 482
    return-void

    .line 458
    .end local v0    # "minOrder":I
    .end local v1    # "newInUse":[Z
    .end local v2    # "newMap":[I
    .end local v3    # "newValues":[I
    .end local v4    # "newKeys":[I
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "matrix order "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a multiple of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setValueAtInternal(IIZ)V
    .registers 10
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "value"    # Z

    .line 361
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    .line 362
    .local v0, "element":I
    div-int/lit8 v1, v0, 0x20

    .line 363
    .local v1, "offset":I
    rem-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 364
    .local v2, "mask":I
    if-eqz p3, :cond_15

    .line 365
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v4, v3, v1

    or-int/2addr v4, v2

    aput v4, v3, v1

    goto :goto_1d

    .line 367
    :cond_15
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v4, v3, v1

    not-int v5, v2

    and-int/2addr v4, v5

    aput v4, v3, v1

    .line 369
    :goto_1d
    return-void
.end method

.method private validateIndex(I)V
    .registers 3
    .param p1, "index"    # I

    .line 432
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge p1, v0, :cond_5

    .line 436
    return-void

    .line 434
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method private validateIndex(II)V
    .registers 3
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 442
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 443
    invoke-direct {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 444
    return-void
.end method

.method private valueAtInternal(II)Z
    .registers 8
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 338
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    .line 339
    .local v0, "element":I
    div-int/lit8 v1, v0, 0x20

    .line 340
    .local v1, "offset":I
    rem-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 341
    .local v2, "mask":I
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v4, v4, v1

    and-int/2addr v4, v2

    if-eqz v4, :cond_13

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    :goto_14
    return v3
.end method


# virtual methods
.method public capacity()I
    .registers 2

    .line 574
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    return v0
.end method

.method public clear()V
    .registers 3

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 313
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 314
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->onChanged()V

    .line 315
    return-void
.end method

.method public compact()V
    .registers 4

    .line 555
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->pack()V

    .line 556
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x40

    .line 557
    .local v1, "unused":I
    if-lez v1, :cond_13

    .line 558
    mul-int/lit8 v2, v1, 0x40

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    .line 560
    :cond_13
    return-void
.end method

.method public contains(I)Z
    .registers 3
    .param p1, "key"    # I

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public copyFrom(Lcom/android/server/utils/WatchedSparseBooleanMatrix;)V
    .registers 3
    .param p1, "src"    # Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 179
    iget v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 180
    iget v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 181
    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 182
    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 183
    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 184
    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 185
    return-void
.end method

.method public deleteKey(I)V
    .registers 3
    .param p1, "key"    # I

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v0

    .line 251
    .local v0, "i":I
    if-ltz v0, :cond_a

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeAt(I)V

    .line 254
    :cond_a
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "that"    # Ljava/lang/Object;

    .line 613
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 614
    return v0

    .line 617
    :cond_4
    instance-of v1, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 618
    return v2

    .line 621
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 622
    .local v1, "other":Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget v4, v1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-eq v3, v4, :cond_14

    .line 623
    return v2

    .line 625
    :cond_14
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget-object v4, v1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 628
    return v2

    .line 630
    :cond_1f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v3, v4, :cond_42

    .line 631
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v4, v4, v3

    .line 632
    .local v4, "row":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_29
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v5, v6, :cond_3f

    .line 633
    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v6, v6, v5

    .line 634
    .local v6, "col":I
    invoke-direct {p0, v4, v6}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v7

    invoke-direct {v1, v4, v6}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v8

    if-eq v7, v8, :cond_3c

    .line 635
    return v2

    .line 632
    .end local v6    # "col":I
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 630
    .end local v4    # "row":I
    .end local v5    # "j":I
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 639
    .end local v3    # "i":I
    :cond_42
    return v0
.end method

.method public get(II)Z
    .registers 4
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->get(IIZ)Z

    move-result v0

    return v0
.end method

.method public get(IIZ)Z
    .registers 7
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "valueIfKeyNotFound"    # Z

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v1

    .line 208
    .local v1, "r":I
    invoke-direct {p0, p2, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v0

    .line 209
    .local v0, "c":I
    if-ltz v1, :cond_12

    if-ltz v0, :cond_12

    .line 210
    invoke-virtual {p0, v1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAt(II)Z

    move-result v2

    return v2

    .line 212
    :cond_12
    return p3
.end method

.method public hashCode()I
    .registers 7

    .line 596
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 597
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 598
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 599
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_34

    .line 600
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v2, v2, v1

    .line 601
    .local v2, "row":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1e
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v3, v4, :cond_31

    .line 602
    mul-int/lit8 v4, v0, 0x1f

    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v5, v3

    invoke-direct {p0, v2, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v5

    add-int v0, v4, v5

    .line 601
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 599
    .end local v2    # "row":I
    .end local v3    # "j":I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 605
    .end local v1    # "i":I
    :cond_34
    return v0
.end method

.method public indexOfKey(I)I
    .registers 4
    .param p1, "key"    # I

    .line 387
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 329
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 330
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public keys()[I
    .registers 3

    .line 566
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public matrixToString(Z)[Ljava/lang/String;
    .registers 8
    .param p1, "raw"    # Z

    .line 715
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->matrixToStringMeta()[Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "meta":[Ljava/lang/String;
    if-eqz p1, :cond_b

    .line 718
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->matrixToStringRaw()[Ljava/lang/String;

    move-result-object v1

    .local v1, "data":[Ljava/lang/String;
    goto :goto_f

    .line 720
    .end local v1    # "data":[Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->matrixToStringCooked()[Ljava/lang/String;

    move-result-object v1

    .line 722
    .restart local v1    # "data":[Ljava/lang/String;
    :goto_f
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 723
    .local v2, "result":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 724
    array-length v3, v0

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 725
    return-object v2
.end method

.method matrixToStringCooked()[Ljava/lang/String;
    .registers 7

    .line 702
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    new-array v0, v0, [Ljava/lang/String;

    .line 703
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_37

    .line 704
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v3, v3, v1

    .line 705
    .local v3, "row":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v4

    .line 706
    .local v2, "line":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_14
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v4, v5, :cond_2d

    .line 707
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v5, v4

    invoke-direct {p0, v3, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v5

    if-eqz v5, :cond_25

    const-string v5, "1"

    goto :goto_27

    :cond_25
    const-string v5, "0"

    :goto_27
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 709
    .end local v4    # "j":I
    :cond_2d
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 703
    .end local v2    # "line":Ljava/lang/StringBuilder;
    .end local v3    # "row":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 711
    .end local v1    # "i":I
    :cond_37
    return-object v0
.end method

.method matrixToStringMeta()[Ljava/lang/String;
    .registers 9

    .line 649
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 651
    .local v0, "result":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    .local v1, "k":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    const-string v4, " "

    const/4 v5, 0x1

    if-ge v2, v3, :cond_22

    .line 653
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 654
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_1f

    .line 655
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 658
    .end local v2    # "i":I
    :cond_22
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .local v3, "m":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2f
    iget v7, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v6, v7, :cond_45

    .line 662
    iget-object v7, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v7, v7, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 663
    iget v7, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v7, v5

    if-ge v6, v7, :cond_42

    .line 664
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :cond_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 667
    .end local v6    # "i":I
    :cond_45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    .line 669
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .local v4, "u":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_51
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v5, v6, :cond_66

    .line 671
    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_5e

    const-string v6, "1"

    goto :goto_60

    :cond_5e
    const-string v6, "0"

    :goto_60
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 673
    .end local v5    # "i":I
    :cond_66
    const/4 v5, 0x2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 674
    return-object v0
.end method

.method matrixToStringRaw()[Ljava/lang/String;
    .registers 6

    .line 684
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    new-array v0, v0, [Ljava/lang/String;

    .line 685
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v1, v2, :cond_2f

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v3

    .line 687
    .local v2, "line":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_10
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v3, v4, :cond_25

    .line 688
    invoke-direct {p0, v1, v3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "1"

    goto :goto_1f

    :cond_1d
    const-string v4, "0"

    :goto_1f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 690
    .end local v3    # "j":I
    :cond_25
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 685
    .end local v2    # "line":Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 692
    .end local v1    # "i":I
    :cond_2f
    return-object v0
.end method

.method public put(IIZ)V
    .registers 8
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "value"    # Z

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    .line 222
    .local v0, "r":I
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v1

    .line 223
    .local v1, "c":I
    if-ltz v0, :cond_c

    if-gez v1, :cond_21

    .line 227
    :cond_c
    const/4 v2, 0x1

    if-gez v0, :cond_13

    .line 228
    invoke-direct {p0, p1, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v0

    .line 230
    :cond_13
    if-gez v1, :cond_19

    .line 231
    invoke-direct {p0, p2, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result v1

    .line 233
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    .line 234
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v1

    .line 236
    :cond_21
    if-ltz v0, :cond_29

    if-ltz v1, :cond_29

    .line 237
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->setValueAt(IIZ)V

    .line 242
    return-void

    .line 240
    :cond_29
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "matrix overflow"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeAt(I)V
    .registers 7
    .param p1, "index"    # I

    .line 261
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 262
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 265
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v3, v1, -0x1

    aput v2, v0, v3

    .line 267
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v1, v4

    invoke-static {v0, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v3, v1, -0x1

    aput v2, v0, v3

    .line 269
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 270
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->onChanged()V

    .line 271
    return-void
.end method

.method public removeRange(II)V
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 278
    if-lt p2, p1, :cond_47

    .line 281
    sub-int v0, p2, p1

    .line 282
    .local v0, "num":I
    if-nez v0, :cond_7

    .line 283
    return-void

    .line 285
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 286
    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 287
    move v1, p1

    .local v1, "i":I
    :goto_10
    const/4 v2, 0x0

    if-ge v1, p2, :cond_1e

    .line 288
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v4, v4, v1

    aput-boolean v2, v3, v4

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 290
    .end local v1    # "i":I
    :cond_1e
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v1, v0

    .restart local v1    # "i":I
    :goto_31
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v3, :cond_40

    .line 293
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    aput v2, v3, v1

    .line 294
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aput v2, v3, v1

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 296
    .end local v1    # "i":I
    :cond_40
    sub-int/2addr v3, v0

    iput v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 297
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->onChanged()V

    .line 298
    return-void

    .line 279
    .end local v0    # "num":I
    :cond_47
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCapacity(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 582
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-gt p1, v0, :cond_5

    .line 583
    return-void

    .line 585
    :cond_5
    rem-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_f

    .line 586
    div-int/lit8 v0, p1, 0x40

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 p1, v0, 0x40

    .line 588
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    .line 589
    return-void
.end method

.method public setValueAt(IIZ)V
    .registers 6
    .param p1, "rowIndex"    # I
    .param p2, "colIndex"    # I
    .param p3, "value"    # Z

    .line 375
    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(II)V

    .line 376
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v1, v0, p1

    .line 377
    .local v1, "r":I
    aget v0, v0, p2

    .line 378
    .local v0, "c":I
    invoke-direct {p0, v1, v0, p3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->setValueAtInternal(IIZ)V

    .line 379
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->onChanged()V

    .line 380
    return-void
.end method

.method public size()I
    .registers 2

    .line 305
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    return v0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    .registers 2

    .line 191
    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>(Lcom/android/server/utils/WatchedSparseBooleanMatrix;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->snapshot()Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(II)Z
    .registers 6
    .param p1, "rowIndex"    # I
    .param p2, "colIndex"    # I

    .line 350
    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(II)V

    .line 351
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v1, v0, p1

    .line 352
    .local v1, "r":I
    aget v0, v0, p2

    .line 353
    .local v0, "c":I
    invoke-direct {p0, v1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v2

    return v2
.end method
