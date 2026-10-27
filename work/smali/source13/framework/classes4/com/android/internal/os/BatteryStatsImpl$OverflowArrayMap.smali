.class public abstract Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OverflowArrayMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final greylist-max-o OVERFLOW_NAME:Ljava/lang/String; = "*overflow*"


# instance fields
.field greylist-max-o mActiveOverflow:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mCurOverflow:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field blacklist mLastCleanupTimeMs:J

.field blacklist mLastClearTimeMs:J

.field blacklist mLastOverflowFinishTimeMs:J

.field blacklist mLastOverflowTimeMs:J

.field final greylist-max-o mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field final greylist-max-o mUid:I

.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I

    .line 3511
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3503
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 3512
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mUid:I

    .line 3513
    return-void
.end method


# virtual methods
.method public greylist-max-o add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 3527
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    .line 3528
    const-string p1, ""

    .line 3530
    :cond_4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3531
    const-string v0, "*overflow*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3532
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 3534
    :cond_13
    return-void
.end method

.method public blacklist cleanup(J)V
    .registers 8
    .param p1, "elapsedRealtimeMs"    # J

    .line 3537
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTimeMs:J

    .line 3538
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 3539
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 3540
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 3543
    :cond_f
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    const-string v2, "BatteryStatsImpl"

    const-string v3, "*overflow*"

    if-nez v0, :cond_43

    .line 3546
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 3547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up with no active overflow, but have overflow entry "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 3548
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3547
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3551
    :cond_40
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    goto :goto_77

    .line 3554
    :cond_43
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 3555
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleaning up with active overflow, but no overflow entry: cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " map="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 3556
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3555
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    :cond_77
    :goto_77
    return-void
.end method

.method public greylist-max-o clear()V
    .registers 3

    .line 3520
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTimeMs:J

    .line 3521
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 3523
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 3524
    return-void
.end method

.method public greylist-max-o getMap()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 3516
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public abstract greylist-max-o instantiateObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public blacklist startObject(Ljava/lang/String;J)Ljava/lang/Object;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 3562
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    if-nez p1, :cond_4

    .line 3563
    const-string p1, ""

    .line 3565
    :cond_4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3566
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_d

    .line 3567
    return-object v0

    .line 3572
    :cond_d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    const-string v3, "*overflow*"

    if-eqz v1, :cond_50

    .line 3573
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/MutableInt;

    .line 3574
    .local v1, "over":Landroid/util/MutableInt;
    if-eqz v1, :cond_50

    .line 3576
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 3577
    if-nez v0, :cond_4a

    .line 3579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Have active overflow "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but null overflow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatteryStatsImpl"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    move-object v0, v4

    .line 3581
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3583
    :cond_4a
    iget v3, v1, Landroid/util/MutableInt;->value:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/util/MutableInt;->value:I

    .line 3584
    return-object v0

    .line 3590
    .end local v1    # "over":Landroid/util/MutableInt;
    :cond_50
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3591
    .local v1, "N":I
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$sfgetMAX_WAKELOCKS_PER_UID()I

    move-result v4

    if-lt v1, v4, :cond_84

    .line 3594
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 3595
    if-nez v0, :cond_6c

    .line 3597
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    move-object v0, v4

    .line 3598
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3600
    :cond_6c
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-nez v3, :cond_77

    .line 3601
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 3603
    :cond_77
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/MutableInt;

    invoke-direct {v4, v2}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3604
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTimeMs:J

    .line 3605
    return-object v0

    .line 3609
    :cond_84
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    .line 3610
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3611
    return-object v0
.end method

.method public blacklist stopObject(Ljava/lang/String;J)Ljava/lang/Object;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 3615
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    if-nez p1, :cond_4

    .line 3616
    const-string p1, ""

    .line 3618
    :cond_4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3619
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_d

    .line 3620
    return-object v0

    .line 3625
    :cond_d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2f

    .line 3626
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/MutableInt;

    .line 3627
    .local v1, "over":Landroid/util/MutableInt;
    if-eqz v1, :cond_2f

    .line 3629
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 3630
    if-eqz v0, :cond_2f

    .line 3631
    iget v2, v1, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/util/MutableInt;->value:I

    .line 3632
    iget v2, v1, Landroid/util/MutableInt;->value:I

    if-gtz v2, :cond_2e

    .line 3633
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3634
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTimeMs:J

    .line 3636
    :cond_2e
    return-object v0

    .line 3643
    .end local v1    # "over":Landroid/util/MutableInt;
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3644
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Unable to find object for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3645
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3646
    const-string v2, " in uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3647
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3648
    const-string v2, " mapsize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3649
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3650
    const-string v2, " activeoverflow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3651
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3652
    const-string v2, " curoverflow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3653
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3654
    move-wide v2, p2

    .line 3655
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTimeMs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7c

    .line 3656
    const-string v4, " lastOverflowTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3657
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTimeMs:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3659
    :cond_7c
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTimeMs:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8d

    .line 3660
    const-string v4, " lastOverflowFinishTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3661
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTimeMs:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3663
    :cond_8d
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTimeMs:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9e

    .line 3664
    const-string v4, " lastClearTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3665
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTimeMs:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3667
    :cond_9e
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTimeMs:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_af

    .line 3668
    const-string v4, " lastCleanupTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3669
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTimeMs:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3671
    :cond_af
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatteryStatsImpl"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    const/4 v4, 0x0

    return-object v4
.end method
