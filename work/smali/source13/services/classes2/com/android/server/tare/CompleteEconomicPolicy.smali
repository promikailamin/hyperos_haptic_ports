.class public Lcom/android/server/tare/CompleteEconomicPolicy;
.super Lcom/android/server/tare/EconomicPolicy;
.source "CompleteEconomicPolicy.java"


# instance fields
.field private final mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tare/EconomicPolicy$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mConsumptionLimit:J

.field private final mCostModifiers:[I

.field private final mEnabledEconomicPolicies:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/tare/EconomicPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSatiatedBalance:J

.field private final mRewards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tare/EconomicPolicy$Reward;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 9
    .param p1, "irs"    # Lcom/android/server/tare/InternalResourceService;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/tare/EconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 31
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    .line 33
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    .line 35
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    .line 42
    new-instance v1, Lcom/android/server/tare/AlarmManagerEconomicPolicy;

    invoke-direct {v1, p1}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/android/server/tare/JobSchedulerEconomicPolicy;

    invoke-direct {v1, p1}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 46
    .local v0, "costModifiers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_55

    .line 47
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v2}, Lcom/android/server/tare/EconomicPolicy;->getCostModifiers()[I

    move-result-object v2

    .line 48
    .local v2, "sm":[I
    array-length v3, v2

    const/4 v4, 0x0

    :goto_44
    if-ge v4, v3, :cond_52

    aget v5, v2, v4

    .line 49
    .local v5, "s":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v5    # "s":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 46
    .end local v2    # "sm":[I
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 52
    .end local v1    # "i":I
    :cond_55
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mCostModifiers:[I

    .line 53
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5e
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_75

    .line 54
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mCostModifiers:[I

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 57
    .end local v1    # "i":I
    :cond_75
    invoke-direct {p0}, Lcom/android/server/tare/CompleteEconomicPolicy;->updateMaxBalances()V

    .line 58
    return-void
.end method

.method private updateMaxBalances()V
    .registers 6

    .line 70
    const-wide/16 v0, 0x0

    .line 71
    .local v0, "max":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 72
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v3}, Lcom/android/server/tare/EconomicPolicy;->getMaxSatiatedBalance()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 74
    .end local v2    # "i":I
    :cond_1b
    iput-wide v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mMaxSatiatedBalance:J

    .line 76
    const-wide/16 v0, 0x0

    .line 77
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_20
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 78
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v3}, Lcom/android/server/tare/EconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 80
    .end local v2    # "i":I
    :cond_38
    iput-wide v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mConsumptionLimit:J

    .line 81
    return-void
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 161
    invoke-static {p1}, Lcom/android/server/tare/CompleteEconomicPolicy;->dumpActiveModifiers(Landroid/util/IndentingPrintWriter;)V

    .line 163
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 167
    const-string v0, "Cached actions:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_46

    .line 170
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy$Action;

    invoke-static {p1, v2}, Lcom/android/server/tare/CompleteEconomicPolicy;->dumpAction(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Action;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 172
    .end local v0    # "i":I
    :cond_46
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 174
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 175
    const-string v0, "Cached rewards:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 177
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_55
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_6b

    .line 178
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy$Reward;

    invoke-static {p1, v2}, Lcom/android/server/tare/CompleteEconomicPolicy;->dumpReward(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Reward;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 180
    .end local v0    # "i":I
    :cond_6b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 182
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6f
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_af

    .line 183
    iget-object v2, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy;

    .line 184
    .local v2, "economicPolicy":Lcom/android/server/tare/EconomicPolicy;
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 185
    const-string v3, "(Includes) "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 188
    invoke-virtual {v2, p1}, Lcom/android/server/tare/EconomicPolicy;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 189
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 182
    .end local v2    # "economicPolicy":Lcom/android/server/tare/EconomicPolicy;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 191
    .end local v0    # "i":I
    :cond_af
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 192
    return-void
.end method

.method getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;
    .registers 14
    .param p1, "actionId"    # I

    .line 116
    iget-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 117
    iget-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomicPolicy$Action;

    return-object v0

    .line 120
    :cond_11
    const-wide/16 v0, 0x0

    .local v0, "ctp":J
    const-wide/16 v2, 0x0

    .line 121
    .local v2, "price":J
    const/4 v4, 0x0

    .line 122
    .local v4, "exists":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    iget-object v6, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_37

    .line 123
    iget-object v6, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v6, p1}, Lcom/android/server/tare/EconomicPolicy;->getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;

    move-result-object v6

    .line 124
    .local v6, "a":Lcom/android/server/tare/EconomicPolicy$Action;
    if-eqz v6, :cond_34

    .line 125
    const/4 v4, 0x1

    .line 126
    iget-wide v7, v6, Lcom/android/server/tare/EconomicPolicy$Action;->costToProduce:J

    add-long/2addr v0, v7

    .line 127
    iget-wide v7, v6, Lcom/android/server/tare/EconomicPolicy$Action;->basePrice:J

    add-long/2addr v2, v7

    .line 122
    .end local v6    # "a":Lcom/android/server/tare/EconomicPolicy$Action;
    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 130
    .end local v5    # "i":I
    :cond_37
    if-eqz v4, :cond_43

    new-instance v5, Lcom/android/server/tare/EconomicPolicy$Action;

    move-object v6, v5

    move v7, p1

    move-wide v8, v0

    move-wide v10, v2

    invoke-direct/range {v6 .. v11}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    goto :goto_44

    :cond_43
    const/4 v5, 0x0

    .line 131
    .local v5, "action":Lcom/android/server/tare/EconomicPolicy$Action;
    :goto_44
    iget-object v6, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    return-object v5
.end method

.method getCostModifiers()[I
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mCostModifiers:[I

    if-nez v0, :cond_6

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    :cond_6
    return-object v0
.end method

.method getHardSatiatedConsumptionLimit()J
    .registers 3

    .line 104
    iget-wide v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mConsumptionLimit:J

    return-wide v0
.end method

.method getInitialSatiatedConsumptionLimit()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mConsumptionLimit:J

    return-wide v0
.end method

.method getMaxSatiatedBalance()J
    .registers 3

    .line 94
    iget-wide v0, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mMaxSatiatedBalance:J

    return-wide v0
.end method

.method getMinSatiatedBalance(ILjava/lang/String;)J
    .registers 8
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 85
    const-wide/16 v0, 0x0

    .line 86
    .local v0, "min":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 87
    iget-object v3, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/tare/EconomicPolicy;->getMinSatiatedBalance(ILjava/lang/String;)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 89
    .end local v2    # "i":I
    :cond_1b
    return-wide v0
.end method

.method getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;
    .registers 20
    .param p1, "rewardId"    # I

    .line 138
    move-object/from16 v0, p0

    move/from16 v9, p1

    iget-object v1, v0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 139
    iget-object v1, v0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomicPolicy$Reward;

    return-object v1

    .line 142
    :cond_15
    const-wide/16 v1, 0x0

    .local v1, "instantReward":J
    const-wide/16 v3, 0x0

    .local v3, "ongoingReward":J
    const-wide/16 v5, 0x0

    .line 143
    .local v5, "maxReward":J
    const/4 v7, 0x0

    .line 144
    .local v7, "exists":Z
    const/4 v8, 0x0

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move/from16 v16, v7

    .end local v1    # "instantReward":J
    .end local v3    # "ongoingReward":J
    .end local v5    # "maxReward":J
    .end local v7    # "exists":Z
    .local v8, "i":I
    .local v10, "instantReward":J
    .local v12, "ongoingReward":J
    .local v14, "maxReward":J
    .local v16, "exists":Z
    :goto_22
    iget-object v1, v0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v8, v1, :cond_47

    .line 145
    iget-object v1, v0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v1, v9}, Lcom/android/server/tare/EconomicPolicy;->getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;

    move-result-object v1

    .line 146
    .local v1, "r":Lcom/android/server/tare/EconomicPolicy$Reward;
    if-eqz v1, :cond_44

    .line 147
    const/4 v2, 0x1

    .line 148
    .end local v16    # "exists":Z
    .local v2, "exists":Z
    iget-wide v3, v1, Lcom/android/server/tare/EconomicPolicy$Reward;->instantReward:J

    add-long/2addr v10, v3

    .line 149
    iget-wide v3, v1, Lcom/android/server/tare/EconomicPolicy$Reward;->ongoingRewardPerSecond:J

    add-long/2addr v12, v3

    .line 150
    iget-wide v3, v1, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    add-long/2addr v14, v3

    move/from16 v16, v2

    .line 144
    .end local v1    # "r":Lcom/android/server/tare/EconomicPolicy$Reward;
    .end local v2    # "exists":Z
    .restart local v16    # "exists":Z
    :cond_44
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 153
    .end local v8    # "i":I
    :cond_47
    if-eqz v16, :cond_56

    .line 154
    new-instance v17, Lcom/android/server/tare/EconomicPolicy$Reward;

    move-object/from16 v1, v17

    move/from16 v2, p1

    move-wide v3, v10

    move-wide v5, v12

    move-wide v7, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    goto :goto_58

    :cond_56
    const/16 v17, 0x0

    :goto_58
    move-object/from16 v1, v17

    .line 155
    .local v1, "reward":Lcom/android/server/tare/EconomicPolicy$Reward;
    iget-object v2, v0, Lcom/android/server/tare/CompleteEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v2, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    return-object v1
.end method

.method setup(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 62
    invoke-super {p0, p1}, Lcom/android/server/tare/EconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 64
    iget-object v1, p0, Lcom/android/server/tare/CompleteEconomicPolicy;->mEnabledEconomicPolicies:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/tare/EconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 66
    .end local v0    # "i":I
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/tare/CompleteEconomicPolicy;->updateMaxBalances()V

    .line 67
    return-void
.end method
