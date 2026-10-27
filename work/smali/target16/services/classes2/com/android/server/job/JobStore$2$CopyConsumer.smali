.class public Lcom/android/server/job/JobStore$2$CopyConsumer;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mCopyAllJobs:Z

.field public final mJobStoreCopy:Landroid/util/SparseArray;

.field public final synthetic this$1:Lcom/android/server/job/JobStore$2;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmJobStoreCopy(Lcom/android/server/job/JobStore$2$CopyConsumer;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mprepare(Lcom/android/server/job/JobStore$2$CopyConsumer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobStore$2$CopyConsumer;->prepare()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreset(Lcom/android/server/job/JobStore$2$CopyConsumer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobStore$2$CopyConsumer;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobStore$2;)V
    .registers 2

    .line 648
    iput-object p1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4

    .line 694
    iget-object v0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v0, v0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmUseSplitFiles(Lcom/android/server/job/JobStore;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    .line 695
    :goto_10
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-boolean v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mCopyAllJobs:Z

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPendingJobWriteUids(Lcom/android/server/job/JobStore;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 696
    :cond_28
    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_3c

    .line 698
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 699
    iget-object p0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 701
    :cond_3c
    new-instance p0, Lcom/android/server/job/controllers/JobStatus;

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 648
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$2$CopyConsumer;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public final prepare()V
    .registers 7

    .line 653
    const-string v0, "JobStore"

    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmUseSplitFiles(Lcom/android/server/job/JobStore;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPendingJobWriteUids(Lcom/android/server/job/JobStore;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    move v1, v2

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    :goto_20
    iput-boolean v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mCopyAllJobs:Z

    .line 654
    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmUseSplitFiles(Lcom/android/server/job/JobStore;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 657
    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPendingJobWriteUids(Lcom/android/server/job/JobStore;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 664
    :try_start_3a
    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_46
    .catch Ljava/lang/SecurityException; {:try_start_3a .. :try_end_46} :catch_67

    if-nez v1, :cond_4e

    .line 670
    const-string p0, "Couldn\'t get job file list"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 672
    :cond_4e
    array-length v0, v1

    :goto_4f
    if-ge v2, v0, :cond_95

    aget-object v3, v1, v2

    .line 673
    invoke-static {v3}, Lcom/android/server/job/JobStore;->extractUidFromJobFileName(Ljava/io/File;)I

    move-result v3

    const/4 v4, -0x2

    if-eq v3, v4, :cond_64

    .line 675
    iget-object v4, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :catch_67
    move-exception p0

    .line 666
    const-string v1, "Not allowed to read job file directory"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 680
    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v0, v0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPendingJobWriteUids(Lcom/android/server/job/JobStore;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_95

    .line 681
    iget-object v0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPendingJobWriteUids(Lcom/android/server/job/JobStore;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    :cond_95
    return-void

    .line 688
    :cond_96
    iget-object p0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final reset()V
    .registers 1

    .line 706
    iget-object p0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
