.class public Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
.super Ljava/lang/Object;
.source "DiscreteOpsSqlRegistry.java"


# instance fields
.field public final mAccessTime:J

.field public final mAttributionFlags:I

.field public final mAttributionTag:Ljava/lang/String;

.field public final mChainId:J

.field public final mDeviceId:Ljava/lang/String;

.field public final mDiscretizedAccessTime:J

.field public final mDiscretizedDuration:J

.field public final mDuration:J

.field public final mOpCode:I

.field public final mOpFlags:I

.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I

.field public final mUidState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDiscretizedAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    return-wide v0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V
    .registers 15

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    .line 584
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    .line 585
    iput-object p3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    .line 586
    iput-object p4, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    .line 587
    iput p5, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    .line 588
    iput p6, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    .line 589
    iput p7, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    .line 590
    iput p8, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    .line 591
    iput-wide p9, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    .line 592
    iput-wide p11, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAccessTime:J

    .line 593
    invoke-static {p11, p12}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeTimeStamp(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    .line 594
    iput-wide p13, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDuration:J

    .line 595
    invoke-static {p13, p14}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeDuration(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 601
    :cond_4
    instance-of v1, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    const/4 v2, 0x0

    if-eqz v1, :cond_6a

    check-cast p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 603
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    if-eq v1, v3, :cond_12

    return v2

    .line 604
    :cond_12
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    if-eq v1, v3, :cond_19

    return v2

    .line 605
    :cond_19
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    if-eq v1, v3, :cond_20

    return v2

    .line 606
    :cond_20
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    if-eq v1, v3, :cond_27

    return v2

    .line 607
    :cond_27
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    if-eq v1, v3, :cond_2e

    return v2

    .line 608
    :cond_2e
    iget-wide v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    iget-wide v5, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_37

    return v2

    .line 609
    :cond_37
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    .line 612
    :cond_42
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    return v2

    .line 615
    :cond_4d
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    return v2

    .line 618
    :cond_58
    iget-wide v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    iget-wide v5, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_61

    return v2

    .line 621
    :cond_61
    iget-wide v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    iget-wide p0, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_6a

    return v0

    :cond_6a
    return v2
.end method

.method public getAccessTime()J
    .registers 3

    .line 719
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAccessTime:J

    return-wide v0
.end method

.method public getAttributionFlags()I
    .registers 1

    .line 706
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    return p0
.end method

.method public getAttributionTag()Ljava/lang/String;
    .registers 1

    .line 687
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public getChainId()J
    .registers 3

    .line 715
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 1

    .line 691
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .registers 3

    .line 723
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDuration:J

    return-wide v0
.end method

.method public getOpCode()I
    .registers 1

    .line 695
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    return p0
.end method

.method public getOpFlags()I
    .registers 1

    .line 700
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 683
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 679
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    return p0
.end method

.method public getUidState()I
    .registers 1

    .line 711
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    .line 626
    iget v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    mul-int/lit8 v0, v0, 0x1f

    .line 627
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 628
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 629
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_27
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 630
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 631
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 632
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 633
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 634
    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 635
    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 636
    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscreteOp{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", attributionTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", opCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    .line 666
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", opFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    .line 667
    invoke-static {v1}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attributionFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uidState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    .line 669
    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", accessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDiscretizedAccessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDiscretizedDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
