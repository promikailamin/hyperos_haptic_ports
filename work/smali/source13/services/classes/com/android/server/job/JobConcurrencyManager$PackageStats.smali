.class Lcom/android/server/job/JobConcurrencyManager$PackageStats;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobConcurrencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageStats"
.end annotation


# instance fields
.field public numRunningEj:I

.field public numRunningRegular:I

.field public numStagedEj:I

.field public numStagedRegular:I

.field public packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method static bridge synthetic -$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->adjustRunningCount(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->adjustStagedCount(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpLocked(Lcom/android/server/job/JobConcurrencyManager$PackageStats;Landroid/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->resetStagedCount()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPackage(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->setPackage(ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 2233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adjustRunningCount(ZZ)V
    .registers 7
    .param p1, "add"    # Z
    .param p2, "forEj"    # Z

    .line 2253
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_13

    .line 2254
    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    if-eqz p1, :cond_a

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    goto :goto_20

    .line 2256
    :cond_13
    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    .line 2258
    :goto_20
    return-void
.end method

.method private adjustStagedCount(ZZ)V
    .registers 7
    .param p1, "add"    # Z
    .param p2, "forEj"    # Z

    .line 2261
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_13

    .line 2262
    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    if-eqz p1, :cond_a

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    goto :goto_20

    .line 2264
    :cond_13
    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    .line 2266
    :goto_20
    return-void
.end method

.method private dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 2270
    const-string v0, "PackageStats{"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2271
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2272
    const-string v0, "-"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2273
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2274
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#runEJ"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2275
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#runReg"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2276
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#stagedEJ"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2277
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#stagedReg"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2278
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2279
    return-void
.end method

.method private resetStagedCount()V
    .registers 2

    .line 2249
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    .line 2250
    return-void
.end method

.method private setPackage(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2242
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    .line 2243
    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    .line 2244
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    .line 2245
    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->resetStagedCount()V

    .line 2246
    return-void
.end method
