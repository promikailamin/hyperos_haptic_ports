.class Lcom/android/server/job/JobConcurrencyManager$PackageStats;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# instance fields
.field public numRunningEj:I

.field public numRunningRegular:I

.field public numStagedEj:I

.field public numStagedRegular:I

.field public packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method public static bridge synthetic -$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->adjustRunningCount(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->adjustStagedCount(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpLocked(Lcom/android/server/job/JobConcurrencyManager$PackageStats;Landroid/util/IndentingPrintWriter;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->resetStagedCount()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPackage(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->setPackage(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adjustRunningCount(ZZ)V
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_12

    .line 2894
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    if-eqz p1, :cond_a

    move v0, v1

    :cond_a
    add-int/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    return-void

    .line 2896
    :cond_12
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    if-eqz p1, :cond_17

    move v0, v1

    :cond_17
    add-int/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    return-void
.end method

.method public final adjustStagedCount(ZZ)V
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_12

    .line 2902
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    if-eqz p1, :cond_a

    move v0, v1

    :cond_a
    add-int/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    return-void

    .line 2904
    :cond_12
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    if-eqz p1, :cond_17

    move v0, v1

    :cond_17
    add-int/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    return-void
.end method

.method public final dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 2910
    const-string v0, "PackageStats{"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2911
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2912
    const-string v0, "-"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2913
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2914
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#runEJ"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2915
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#runReg"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2916
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#stagedEJ"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2917
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "#stagedReg"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2918
    const-string/jumbo p0, "}"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final resetStagedCount()V
    .registers 2

    const/4 v0, 0x0

    .line 2889
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    return-void
.end method

.method public final setPackage(ILjava/lang/String;)V
    .registers 3

    .line 2882
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    .line 2883
    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2884
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    .line 2885
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->resetStagedCount()V

    return-void
.end method
