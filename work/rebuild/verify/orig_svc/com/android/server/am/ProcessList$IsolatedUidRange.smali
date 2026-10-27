.class public final Lcom/android/server/am/ProcessList$IsolatedUidRange;
.super Ljava/lang/Object;
.source "ProcessList.java"


# instance fields
.field public final mFirstUid:I

.field public final mLastUid:I

.field public mNextUid:I

.field public final mUidUsed:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList;II)V
    .registers 4

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    .line 682
    iput p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    .line 683
    iput p3, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    .line 684
    iput p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    return-void
.end method


# virtual methods
.method public allocateIsolatedUidLocked(I)I
    .registers 9

    .line 690
    iget v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    iget v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v0, :cond_33

    .line 692
    iget v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    iget v5, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    if-lt v4, v5, :cond_15

    iget v6, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    if-le v4, v6, :cond_17

    .line 693
    :cond_15
    iput v5, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 695
    :cond_17
    iget v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    invoke-static {p1, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 696
    iget v5, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 697
    iget-object v5, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-nez v5, :cond_30

    .line 698
    iget-object p0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v4

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_33
    const/4 p0, -0x1

    return p0
.end method

.method public freeIsolatedUidLocked(I)V
    .registers 2

    .line 707
    iget-object p0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method
