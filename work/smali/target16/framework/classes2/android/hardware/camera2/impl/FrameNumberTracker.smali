.class public Landroid/hardware/camera2/impl/FrameNumberTracker;
.super Ljava/lang/Object;
.source "FrameNumberTracker.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FrameNumberTracker"


# instance fields
.field private blacklist mCompletedFrameNumber:[J

.field private final blacklist mFutureErrorMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPartialResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mPendingFrameNumbers:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 6

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x3

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    .line 45
    new-array v1, v0, [Ljava/util/LinkedList;

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    .line 50
    new-array v1, v0, [Ljava/util/LinkedList;

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    .line 54
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    .line 59
    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_3c

    .line 60
    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const-wide/16 v3, -0x1

    aput-wide v3, v2, v1

    .line 61
    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v1

    .line 62
    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 64
    :cond_3c
    return-void
.end method

.method private blacklist update()V
    .registers 14

    .line 67
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 71
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 72
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 73
    iget-object v5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v5, v5, v1

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    cmp-long v5, v2, v5

    const/4 v6, 0x1

    if-nez v5, :cond_3f

    .line 74
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 78
    :cond_3f
    iget-object v5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_68

    .line 79
    iget-object v5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v2, v7

    if-nez v5, :cond_d8

    .line 80
    iget-object v4, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 81
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_d8

    .line 84
    :cond_68
    move v5, v6

    :goto_69
    const/4 v9, 0x3

    if-ge v5, v9, :cond_9a

    .line 85
    add-int v10, v1, v5

    rem-int/2addr v10, v9

    .line 86
    iget-object v11, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v11, v11, v10

    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_97

    iget-object v11, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v11, v11, v10

    .line 87
    invoke-virtual {v11}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v2, v11

    if-nez v11, :cond_97

    .line 88
    iget-object v4, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 89
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 90
    goto :goto_9a

    .line 84
    :cond_97
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    .line 94
    :cond_9a
    :goto_9a
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_d8

    .line 97
    add-int/lit8 v5, v1, 0x1

    rem-int/2addr v5, v9

    .line 98
    add-int/lit8 v10, v1, 0x2

    rem-int/2addr v10, v9

    .line 99
    iget-object v9, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d8

    iget-object v9, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v9, v9, v10

    .line 100
    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d8

    .line 101
    iget-object v9, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v11, v9, v5

    iget-object v5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v9, v5, v10

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    add-long/2addr v9, v7

    .line 103
    iget-object v5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v11, v5, v1

    add-long/2addr v11, v7

    cmp-long v5, v9, v11

    if-lez v5, :cond_d8

    cmp-long v5, v9, v2

    if-nez v5, :cond_d8

    .line 105
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 110
    :cond_d8
    :goto_d8
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 111
    iget-object v4, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aput-wide v2, v4, v1

    .line 112
    iget-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 115
    :cond_ee
    goto/16 :goto_a

    .line 116
    :cond_f0
    return-void
.end method

.method private blacklist updateCompletedFrameNumber(JI)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v0, v0, p3

    cmp-long v0, p1, v0

    const-string v1, " is a repeat"

    const-string v2, "frame number "

    if-lez v0, :cond_11b

    .line 216
    add-int/lit8 v0, p3, 0x1

    rem-int/lit8 v0, v0, 0x3

    .line 217
    add-int/lit8 v3, p3, 0x2

    rem-int/lit8 v3, v3, 0x3

    .line 218
    iget-object v4, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v4, v4, v0

    iget-object v6, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v6, v6, v3

    .line 219
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 220
    cmp-long v6, p1, v4

    if-gez v6, :cond_fa

    .line 225
    iget-object v4, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v4, v4, p3

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8d

    .line 228
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 229
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_49

    .line 233
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 242
    goto/16 :goto_116

    .line 234
    :cond_49
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p3, p1, v3

    if-gez p3, :cond_6c

    .line 235
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 238
    :cond_6c
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " comes out of order. Expecting "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 244
    :cond_8d
    iget-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v1, v1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 245
    iget-object v4, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v4, v4, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 246
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v5, :cond_ac

    move v8, v7

    goto :goto_ad

    :cond_ac
    move v8, v6

    .line 247
    :goto_ad
    if-eq v4, v5, :cond_b0

    goto :goto_b1

    :cond_b0
    move v7, v6

    .line 248
    :goto_b1
    xor-int v5, v8, v7

    if-eqz v5, :cond_dd

    .line 263
    if-eqz v8, :cond_c0

    .line 264
    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v0, v2, v0

    .line 265
    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v2, v2, v3

    .line 266
    goto :goto_ca

    .line 268
    :cond_c0
    iget-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v1, v1, v3

    .line 269
    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v2, v2, v0

    .line 270
    move-object v0, v1

    move v1, v4

    .line 272
    :goto_ca
    nop

    :goto_cb
    if-ge v6, v1, :cond_d9

    .line 273
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v6, v6, 0x1

    goto :goto_cb

    .line 277
    :cond_d9
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 278
    goto :goto_116

    .line 249
    :cond_dd
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is a repeat or invalid"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 282
    :cond_fa
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v0, v0, p3

    .line 283
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 284
    :goto_105
    cmp-long v4, v0, p1

    if-gez v4, :cond_116

    .line 285
    iget-object v4, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v4, v4, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 284
    add-long/2addr v0, v2

    goto :goto_105

    .line 289
    :cond_116
    :goto_116
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aput-wide p1, v0, p3

    .line 290
    return-void

    .line 212
    :cond_11b
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method public blacklist getCompletedFrameNumber()J
    .registers 3

    .line 188
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getCompletedReprocessFrameNumber()J
    .registers 3

    .line 192
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getCompletedZslStillFrameNumber()J
    .registers 3

    .line 196
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist popPartialResults(J)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public blacklist updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V
    .registers 6

    .line 150
    if-nez p4, :cond_7

    .line 152
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JZI)V

    .line 154
    return-void

    .line 157
    :cond_7
    if-nez p3, :cond_a

    .line 160
    return-void

    .line 164
    :cond_a
    iget-object p4, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    .line 165
    if-nez p4, :cond_26

    .line 166
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object p5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p5, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_26
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public blacklist updateTracker(JZI)V
    .registers 5

    .line 125
    if-eqz p3, :cond_10

    .line 126
    iget-object p3, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 129
    :cond_10
    :try_start_10
    invoke-direct {p0, p1, p2, p4}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateCompletedFrameNumber(JI)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_14

    .line 132
    goto :goto_1e

    .line 130
    :catch_14
    move-exception p1

    .line 131
    const-string p2, "FrameNumberTracker"

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_1e
    invoke-direct {p0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->update()V

    .line 135
    return-void
.end method
