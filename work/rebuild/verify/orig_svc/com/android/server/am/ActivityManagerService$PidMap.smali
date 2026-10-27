.class public final Lcom/android/server/am/ActivityManagerService$PidMap;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# instance fields
.field public final mPidMap:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public doAddInternal(ILcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 961
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public doRemoveInternal(ILcom/android/server/am/ProcessRecord;)Z
    .registers 7

    .line 965
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1d

    .line 966
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_1d

    .line 967
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public get(I)Lcom/android/server/am/ProcessRecord;
    .registers 2

    .line 941
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public indexOfKey(I)I
    .registers 2

    .line 957
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    return p0
.end method

.method public keyAt(I)I
    .registers 2

    .line 953
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public size()I
    .registers 1

    .line 945
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public valueAt(I)Lcom/android/server/am/ProcessRecord;
    .registers 2

    .line 949
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method
