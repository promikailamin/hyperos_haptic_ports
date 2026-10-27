.class public abstract Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private blacklist mCacheSpanIndices:Z

.field final blacklist mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method blacklist findReferenceIndexFromCache(I)I
    .registers 6

    .line 929
    nop

    .line 930
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 931
    :goto_a
    if-gt v1, v0, :cond_20

    .line 932
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 933
    iget-object v3, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 934
    if-ge v3, p1, :cond_1c

    .line 935
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_1f

    .line 937
    :cond_1c
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    .line 939
    :goto_1f
    goto :goto_a

    .line 940
    :cond_20
    add-int/lit8 v1, v1, -0x1

    .line 941
    if-ltz v1, :cond_33

    iget-object p1, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_33

    .line 942
    iget-object p1, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    return p1

    .line 944
    :cond_33
    const/4 p1, -0x1

    return p1
.end method

.method blacklist getCachedSpanIndex(II)I
    .registers 5

    .line 862
    iget-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v0, :cond_9

    .line 863
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result p1

    return p1

    .line 865
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 866
    if-eq v0, v1, :cond_13

    .line 867
    return v0

    .line 869
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result p2

    .line 870
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 871
    return p2
.end method

.method public blacklist getSpanGroupIndex(II)I
    .registers 9

    .line 958
    nop

    .line 959
    nop

    .line 960
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    .line 961
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_a
    if-ge v2, p1, :cond_21

    .line 962
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    .line 963
    add-int/2addr v3, v5

    .line 964
    if-ne v3, p2, :cond_18

    .line 965
    nop

    .line 966
    add-int/lit8 v4, v4, 0x1

    move v3, v1

    goto :goto_1e

    .line 967
    :cond_18
    if-le v3, p2, :cond_1e

    .line 969
    nop

    .line 970
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    .line 961
    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 973
    :cond_21
    add-int/2addr v3, v0

    if-le v3, p2, :cond_26

    .line 974
    add-int/lit8 v4, v4, 0x1

    .line 976
    :cond_26
    return v4
.end method

.method public blacklist getSpanIndex(II)I
    .registers 8

    .line 898
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    .line 899
    const/4 v1, 0x0

    if-ne v0, p2, :cond_8

    .line 900
    return v1

    .line 902
    :cond_8
    nop

    .line 903
    nop

    .line 905
    iget-boolean v2, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_2a

    .line 906
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v2

    .line 907
    if-ltz v2, :cond_2a

    .line 908
    iget-object v3, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 909
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 912
    :cond_2a
    move v2, v1

    move v3, v2

    :goto_2c
    nop

    :goto_2d
    if-ge v2, p1, :cond_3e

    .line 913
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    .line 914
    add-int/2addr v3, v4

    .line 915
    if-ne v3, p2, :cond_38

    .line 916
    move v3, v1

    goto :goto_3b

    .line 917
    :cond_38
    if-le v3, p2, :cond_3b

    .line 919
    move v3, v4

    .line 912
    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 922
    :cond_3e
    add-int/2addr v0, v3

    if-gt v0, p2, :cond_42

    .line 923
    return v3

    .line 925
    :cond_42
    return v1
.end method

.method public abstract blacklist getSpanSize(I)I
.end method

.method public blacklist invalidateSpanIndexCache()V
    .registers 2

    .line 849
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 850
    return-void
.end method

.method public blacklist isSpanIndexCacheEnabled()Z
    .registers 2

    .line 858
    iget-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return v0
.end method

.method public blacklist setSpanIndexCacheEnabled(Z)V
    .registers 2

    .line 841
    iput-boolean p1, p0, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 842
    return-void
.end method
