.class public final Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager$HistoricalOpsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mBeginTimeMillis:J

.field private final blacklist mEndTimeMillis:J

.field private blacklist mFilter:I

.field private blacklist mFlags:I

.field private blacklist mHistoryFlags:I

.field private blacklist mOpNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUid:I


# direct methods
.method public constructor whitelist <init>(JJ)V
    .registers 8

    .line 5629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5608
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mUid:I

    .line 5616
    const/16 v0, 0x1f

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFlags:I

    .line 5630
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_17

    cmp-long v0, p1, p3

    if-gez v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    const-string v2, "beginTimeMillis must be non negative and lesser than endTimeMillis"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5632
    iput-wide p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mBeginTimeMillis:J

    .line 5633
    iput-wide p3, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mEndTimeMillis:J

    .line 5634
    iput v1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mHistoryFlags:I

    .line 5635
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .registers 14

    .line 5749
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOpsRequest;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mUid:I

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mAttributionTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mOpNames:Ljava/util/List;

    iget v5, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mHistoryFlags:I

    iget v6, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    iget-wide v7, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mBeginTimeMillis:J

    iget-wide v9, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mEndTimeMillis:J

    iget v11, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFlags:I

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/app/AppOpsManager$HistoricalOpsRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/app/AppOpsManager-IA;)V

    return-object v0
.end method

.method public whitelist setAttributionTag(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .registers 2

    .line 5682
    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mAttributionTag:Ljava/lang/String;

    .line 5683
    iget p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    .line 5685
    return-object p0
.end method

.method public whitelist setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .registers 3

    .line 5725
    const/16 v0, 0x1f

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 5726
    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFlags:I

    .line 5727
    return-object p0
.end method

.method public whitelist setHistoryFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .registers 3

    .line 5739
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 5741
    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mHistoryFlags:I

    .line 5742
    return-object p0
.end method

.method public whitelist setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;"
        }
    .end annotation

    .line 5695
    if-eqz p1, :cond_21

    .line 5696
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 5697
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_21

    .line 5698
    nop

    .line 5699
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5698
    invoke-static {v3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1a

    const/4 v3, 0x1

    goto :goto_1b

    :cond_1a
    move v3, v1

    :goto_1b
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 5697
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5702
    :cond_21
    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mOpNames:Ljava/util/List;

    .line 5704
    iget-object p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mOpNames:Ljava/util/List;

    if-nez p1, :cond_2e

    .line 5705
    iget p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    goto :goto_34

    .line 5707
    :cond_2e
    iget p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    .line 5710
    :goto_34
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .registers 2

    .line 5664
    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mPackageName:Ljava/lang/String;

    .line 5666
    if-nez p1, :cond_b

    .line 5667
    iget p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    goto :goto_11

    .line 5669
    :cond_b
    iget p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    .line 5672
    :goto_11
    return-object p0
.end method

.method public whitelist setUid(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .registers 6

    .line 5644
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_9

    if-ltz p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 v2, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    move v2, v0

    :goto_a
    const-string/jumbo v3, "uid must be -1 or non negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5646
    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mUid:I

    .line 5648
    if-ne p1, v1, :cond_1b

    .line 5649
    iget p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    goto :goto_20

    .line 5651
    :cond_1b
    iget p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    .line 5654
    :goto_20
    return-object p0
.end method
