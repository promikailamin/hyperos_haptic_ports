.class Lcom/android/server/tare/Agent$TrendCalculator;
.super Ljava/lang/Object;
.source "Agent.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrendCalculator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/tare/Agent$OngoingEvent;",
        ">;"
    }
.end annotation


# static fields
.field static final WILL_NOT_CROSS_THRESHOLD:J = -0x1L


# instance fields
.field private mCtpThreshold:J

.field private mCurBalance:J

.field private mLowerThreshold:J

.field private mMaxDeltaPerSecToCtpThreshold:J

.field private mMaxDeltaPerSecToLowerThreshold:J

.field private mMaxDeltaPerSecToUpperThreshold:J

.field private mRemainingConsumableCredits:J

.field private mUpperThreshold:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/tare/Agent$OngoingEvent;)V
    .registers 13
    .param p1, "ongoingEvent"    # Lcom/android/server/tare/Agent$OngoingEvent;

    .line 852
    invoke-virtual {p1}, Lcom/android/server/tare/Agent$OngoingEvent;->getDeltaPerSec()J

    move-result-wide v0

    .line 853
    .local v0, "deltaPerSec":J
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x0

    if-ltz v4, :cond_18

    cmp-long v4, v0, v5

    if-gez v4, :cond_18

    .line 854
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToLowerThreshold:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToLowerThreshold:J

    goto :goto_27

    .line 855
    :cond_18
    iget-wide v7, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    cmp-long v2, v2, v7

    if-gez v2, :cond_27

    cmp-long v2, v0, v5

    if-lez v2, :cond_27

    .line 856
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToUpperThreshold:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToUpperThreshold:J

    .line 858
    :cond_27
    :goto_27
    invoke-virtual {p1}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide v2

    .line 859
    .local v2, "ctpPerSec":J
    iget-wide v7, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mRemainingConsumableCredits:J

    iget-wide v9, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    cmp-long v4, v7, v9

    if-ltz v4, :cond_3c

    cmp-long v4, v0, v5

    if-gez v4, :cond_3c

    .line 860
    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    .line 862
    :cond_3c
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 749
    check-cast p1, Lcom/android/server/tare/Agent$OngoingEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/Agent$TrendCalculator;->accept(Lcom/android/server/tare/Agent$OngoingEvent;)V

    return-void
.end method

.method getTimeToCrossLowerThresholdMs()J
    .registers 11

    .line 813
    iget-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToLowerThreshold:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_11

    .line 815
    const-wide/16 v0, -0x1

    return-wide v0

    .line 817
    :cond_11
    const-wide v4, 0x7fffffffffffffffL

    .line 818
    .local v4, "minSeconds":J
    cmp-long v6, v0, v2

    if-eqz v6, :cond_21

    .line 821
    iget-wide v6, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    iget-wide v8, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    sub-long/2addr v6, v8

    div-long v4, v6, v0

    .line 823
    :cond_21
    iget-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_31

    .line 824
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    iget-wide v6, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mRemainingConsumableCredits:J

    sub-long/2addr v2, v6

    div-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 830
    :cond_31
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v4

    return-wide v0
.end method

.method getTimeToCrossUpperThresholdMs()J
    .registers 7

    .line 841
    iget-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToUpperThreshold:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 843
    const-wide/16 v0, -0x1

    return-wide v0

    .line 845
    :cond_b
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    .line 847
    .local v2, "minSeconds":J
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method reset(JJLandroid/util/ArraySet;)V
    .registers 23
    .param p1, "curBalance"    # J
    .param p3, "remainingConsumableCredits"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/tare/Agent$ActionAffordabilityNote;",
            ">;)V"
        }
    .end annotation

    .line 779
    .local p5, "actionAffordabilityNotes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$ActionAffordabilityNote;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v2, p1

    iput-wide v2, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    .line 780
    move-wide/from16 v4, p3

    iput-wide v4, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mRemainingConsumableCredits:J

    .line 781
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToLowerThreshold:J

    iput-wide v6, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToUpperThreshold:J

    .line 782
    iput-wide v6, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    .line 783
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    .line 784
    const-wide v10, 0x7fffffffffffffffL

    iput-wide v10, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    .line 785
    iput-wide v6, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    .line 786
    if-eqz v1, :cond_6e

    .line 787
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_24
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_6e

    .line 788
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 789
    .local v7, "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    invoke-static {v7}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v12

    .line 790
    .local v12, "price":J
    iget-wide v14, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    cmp-long v14, v12, v14

    if-gtz v14, :cond_49

    .line 791
    iget-wide v14, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    cmp-long v16, v14, v10

    if-nez v16, :cond_42

    .line 792
    move-wide v14, v12

    goto :goto_46

    :cond_42
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    :goto_46
    iput-wide v14, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    goto :goto_57

    .line 794
    :cond_49
    iget-wide v14, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    cmp-long v16, v14, v8

    if-nez v16, :cond_51

    .line 795
    move-wide v14, v12

    goto :goto_55

    :cond_51
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :goto_55
    iput-wide v14, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    .line 797
    :goto_57
    invoke-static {v7}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v14

    .line 798
    .local v14, "ctp":J
    iget-wide v8, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mRemainingConsumableCredits:J

    cmp-long v8, v14, v8

    if-gtz v8, :cond_69

    .line 799
    iget-wide v8, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    .line 787
    .end local v7    # "note":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    .end local v12    # "price":J
    .end local v14    # "ctp":J
    :cond_69
    add-int/lit8 v6, v6, 0x1

    const-wide/high16 v8, -0x8000000000000000L

    goto :goto_24

    .line 803
    .end local v6    # "i":I
    :cond_6e
    return-void
.end method
