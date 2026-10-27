.class final Lcom/android/server/am/ActivityManagerService$PidMap;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PidMap"
.end annotation


# instance fields
.field private final mPidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method doAddInternal(ILcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 935
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 936
    return-void
.end method

.method doRemoveIfNoThreadInternal(ILcom/android/server/am/ProcessRecord;)Z
    .registers 4
    .param p1, "pid"    # I
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 948
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_e

    .line 951
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->doRemoveInternal(ILcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    .line 949
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method doRemoveInternal(ILcom/android/server/am/ProcessRecord;)Z
    .registers 8
    .param p1, "pid"    # I
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 939
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 940
    .local v0, "existingApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1d

    .line 941
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 942
    const/4 v1, 0x1

    return v1

    .line 944
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method get(I)Lcom/android/server/am/ProcessRecord;
    .registers 3
    .param p1, "pid"    # I

    .line 915
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method indexOfKey(I)I
    .registers 3
    .param p1, "key"    # I

    .line 931
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 927
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method size()I
    .registers 2

    .line 919
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method valueAt(I)Lcom/android/server/am/ProcessRecord;
    .registers 3
    .param p1, "index"    # I

    .line 923
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method
