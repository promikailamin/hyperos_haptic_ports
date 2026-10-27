.class Landroid/app/PropertyInvalidatedCache$CacheMap;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Query:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedHashMap<",
            "TQuery;TResult;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mIsolated:Z

.field private final blacklist mSelfUid:I

.field private final blacklist mTestMode:Z

.field final synthetic blacklist this$0:Landroid/app/PropertyInvalidatedCache;


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache;ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 492
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    .line 493
    iput-boolean p2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mIsolated:Z

    .line 494
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    iput p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mSelfUid:I

    .line 495
    iput-boolean p3, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mTestMode:Z

    .line 496
    return-void
.end method

.method private blacklist callerUid()I
    .registers 2

    .line 501
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mIsolated:Z

    if-nez v0, :cond_6

    .line 502
    const/4 v0, 0x0

    return v0

    .line 503
    :cond_6
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mTestMode:Z

    if-eqz v0, :cond_f

    .line 504
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v0

    return v0

    .line 506
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private blacklist createMap()Ljava/util/LinkedHashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "TQuery;TResult;>;"
        }
    .end annotation

    .line 455
    new-instance v0, Landroid/app/PropertyInvalidatedCache$CacheMap$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v1, v2}, Landroid/app/PropertyInvalidatedCache$CacheMap$1;-><init>(Landroid/app/PropertyInvalidatedCache$CacheMap;IFZ)V

    return-object v0
.end method


# virtual methods
.method blacklist clear()V
    .registers 2

    .line 576
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 577
    return-void
.end method

.method blacklist containsKey(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)Z"
        }
    .end annotation

    .line 527
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    .line 528
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 529
    if-eqz v0, :cond_13

    .line 530
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 532
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method blacklist dumpDetailed(Ljava/io/PrintWriter;)V
    .registers 7

    .line 581
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 582
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 583
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 585
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 586
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_22

    .line 587
    goto :goto_69

    .line 590
    :cond_22
    const-string v3, "    Contents:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "      Uid: %d\n"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 593
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 594
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 596
    const-string v4, "      Key: %s\n      Value: %s\n"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    goto :goto_3c

    .line 581
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 599
    :cond_69
    :goto_69
    return-void
.end method

.method blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 514
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    .line 515
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 516
    if-eqz v0, :cond_13

    .line 517
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 519
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method blacklist put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;TResult;)V"
        }
    .end annotation

    .line 551
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    .line 552
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 553
    if-nez v1, :cond_17

    .line 554
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->createMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 555
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 557
    :cond_17
    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    return-void
.end method

.method blacklist remove(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)V"
        }
    .end annotation

    .line 540
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    .line 541
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 542
    if-eqz v0, :cond_11

    .line 543
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_11
    return-void
.end method

.method blacklist size()I
    .registers 4

    .line 564
    nop

    .line 565
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 566
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 567
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 569
    :cond_1b
    return v1
.end method
