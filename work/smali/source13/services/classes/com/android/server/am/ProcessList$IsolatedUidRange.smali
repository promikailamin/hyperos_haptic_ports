.class final Lcom/android/server/am/ProcessList$IsolatedUidRange;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IsolatedUidRange"
.end annotation


# instance fields
.field public final mFirstUid:I

.field public final mLastUid:I

.field private mNextUid:I

.field private final mUidUsed:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList;II)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ProcessList;
    .param p2, "firstUid"    # I
    .param p3, "lastUid"    # I

    .line 575
    iput-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    .line 576
    iput p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    .line 577
    iput p3, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    .line 578
    iput p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 579
    return-void
.end method


# virtual methods
.method allocateIsolatedUidLocked(I)I
    .registers 8
    .param p1, "userId"    # I

    .line 584
    iget v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    iget v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 585
    .local v0, "stepsLeft":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_33

    .line 586
    iget v3, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    iget v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    if-lt v3, v4, :cond_14

    iget v5, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    if-le v3, v5, :cond_16

    .line 587
    :cond_14
    iput v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 589
    :cond_16
    iget v3, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 590
    .local v3, "uid":I
    iget v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 591
    iget-object v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_30

    .line 592
    iget-object v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 593
    return v3

    .line 585
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 596
    .end local v2    # "i":I
    .end local v3    # "uid":I
    :cond_33
    const/4 v1, -0x1

    return v1
.end method

.method freeIsolatedUidLocked(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 601
    iget-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 602
    return-void
.end method
