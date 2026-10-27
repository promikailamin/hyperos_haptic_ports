.class final Lcom/android/server/tare/Agent$ActionAffordabilityNote;
.super Ljava/lang/Object;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionAffordabilityNote"
.end annotation


# instance fields
.field private final mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field private mCtp:J

.field private mIsAffordable:Z

.field private final mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

.field private mModifiedPrice:J


# direct methods
.method static bridge synthetic -$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->getCachedModifiedPrice()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->getCtp()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->setNewAffordability(Z)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomicPolicy;)V
    .registers 11
    .param p1, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    .param p2, "listener"    # Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;
    .param p3, "economicPolicy"    # Lcom/android/server/tare/EconomicPolicy;

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    iput-object p1, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 1104
    nop

    .line 1105
    invoke-virtual {p1}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->getAnticipatedActions()Ljava/util/List;

    move-result-object v0

    .line 1106
    .local v0, "anticipatedActions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 1107
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    .line 1108
    .local v2, "aa":Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
    iget v3, v2, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {p3, v3}, Lcom/android/server/tare/EconomicPolicy;->getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;

    move-result-object v3

    .line 1109
    .local v3, "action":Lcom/android/server/tare/EconomicPolicy$Action;
    if-eqz v3, :cond_22

    .line 1106
    .end local v2    # "aa":Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
    .end local v3    # "action":Lcom/android/server/tare/EconomicPolicy$Action;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1110
    .restart local v2    # "aa":Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
    .restart local v3    # "action":Lcom/android/server/tare/EconomicPolicy$Action;
    :cond_22
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid action id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1113
    .end local v1    # "i":I
    .end local v2    # "aa":Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
    .end local v3    # "action":Lcom/android/server/tare/EconomicPolicy$Action;
    :cond_3d
    iput-object p2, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    .line 1114
    return-void
.end method

.method private getCachedModifiedPrice()J
    .registers 3

    .line 1127
    iget-wide v0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mModifiedPrice:J

    return-wide v0
.end method

.method private getCtp()J
    .registers 3

    .line 1131
    iget-wide v0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mCtp:J

    return-wide v0
.end method

.method private setNewAffordability(Z)V
    .registers 2
    .param p1, "isAffordable"    # Z

    .line 1160
    iput-boolean p1, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mIsAffordable:Z

    .line 1161
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1165
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1166
    :cond_4
    instance-of v1, p1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1167
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 1168
    .local v1, "other":Lcom/android/server/tare/Agent$ActionAffordabilityNote;
    iget-object v3, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    iget-object v4, v1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {v3, v4}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    iget-object v4, v1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    .line 1169
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 1168
    :goto_23
    return v0
.end method

.method getActionBill()Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    .registers 2

    .line 1118
    iget-object v0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object v0
.end method

.method getListener()Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;
    .registers 2

    .line 1123
    iget-object v0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 1174
    const/4 v0, 0x0

    .line 1175
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1176
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {v2}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1177
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method isCurrentlyAffordable()Z
    .registers 2

    .line 1156
    iget-boolean v0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mIsAffordable:Z

    return v0
.end method

.method recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V
    .registers 22
    .param p1, "economicPolicy"    # Lcom/android/server/tare/EconomicPolicy;
    .param p2, "userId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 1137
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 1138
    .local v1, "modifiedPrice":J
    const-wide/16 v3, 0x0

    .line 1139
    .local v3, "ctp":J
    iget-object v5, v0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 1140
    invoke-virtual {v5}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->getAnticipatedActions()Ljava/util/List;

    move-result-object v5

    .line 1141
    .local v5, "anticipatedActions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_48

    .line 1142
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    .line 1144
    .local v7, "aa":Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
    iget v8, v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    .line 1145
    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/tare/EconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v8

    .line 1146
    .local v8, "actionCost":Lcom/android/server/tare/EconomicPolicy$Cost;
    iget-wide v12, v8, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    iget v14, v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->numInstantaneousCalls:I

    int-to-long v14, v14

    mul-long/2addr v12, v14

    iget-wide v14, v8, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    iget-wide v9, v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->ongoingDurationMs:J

    const-wide/16 v16, 0x3e8

    div-long v9, v9, v16

    mul-long/2addr v14, v9

    add-long/2addr v12, v14

    add-long/2addr v1, v12

    .line 1148
    iget-wide v9, v8, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    iget v12, v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->numInstantaneousCalls:I

    int-to-long v12, v12

    mul-long/2addr v9, v12

    iget-wide v12, v8, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    iget-wide v14, v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->ongoingDurationMs:J

    div-long v14, v14, v16

    mul-long/2addr v12, v14

    add-long/2addr v9, v12

    add-long/2addr v3, v9

    .line 1141
    .end local v7    # "aa":Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
    .end local v8    # "actionCost":Lcom/android/server/tare/EconomicPolicy$Cost;
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_48
    move-object/from16 v11, p3

    .line 1151
    .end local v6    # "i":I
    iput-wide v1, v0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mModifiedPrice:J

    .line 1152
    iput-wide v3, v0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mCtp:J

    .line 1153
    return-void
.end method
