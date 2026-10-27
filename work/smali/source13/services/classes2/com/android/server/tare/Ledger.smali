.class Lcom/android/server/tare/Ledger;
.super Ljava/lang/Object;
.source "Ledger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/Ledger$Transaction;
    }
.end annotation


# instance fields
.field private final mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

.field private mCurrentBalance:J

.field private mEarliestSumTime:J

.field private final mTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/tare/Ledger$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    .line 60
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    .line 64
    return-void
.end method

.method constructor <init>(JLjava/util/List;)V
    .registers 6
    .param p1, "currentBalance"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/android/server/tare/Ledger$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p3, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/Ledger$Transaction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    .line 60
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    .line 67
    iput-wide p1, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    .line 68
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    return-void
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;I)V
    .registers 10
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "numRecentTransactions"    # I

    .line 132
    invoke-virtual {p0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Current balance"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 134
    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 135
    .local v0, "size":I
    sub-int v1, v0, p2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_7a

    .line 136
    iget-object v2, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/Ledger$Transaction;

    .line 138
    .local v2, "transaction":Lcom/android/server/tare/Ledger$Transaction;
    iget-wide v3, v2, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    invoke-static {p1, v3, v4}, Lcom/android/server/tare/TareUtils;->dumpTime(Landroid/util/IndentingPrintWriter;J)V

    .line 139
    const-string v3, "--"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 140
    iget-wide v3, v2, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {p1, v3, v4}, Lcom/android/server/tare/TareUtils;->dumpTime(Landroid/util/IndentingPrintWriter;J)V

    .line 141
    const-string v3, ": "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 142
    iget v3, v2, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-static {v3}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 143
    iget-object v3, v2, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    const-string v4, ")"

    if-eqz v3, :cond_58

    .line 144
    const-string v3, "("

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 145
    iget-object v3, v2, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 148
    :cond_58
    const-string v3, " --> "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 149
    iget-wide v5, v2, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    invoke-static {v5, v6}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 150
    const-string v3, " (ctp="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 151
    iget-wide v5, v2, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    invoke-static {v5, v6}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 135
    .end local v2    # "transaction":Lcom/android/server/tare/Ledger$Transaction;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 154
    .end local v1    # "i":I
    :cond_7a
    return-void
.end method

.method get24HourSum(IJ)J
    .registers 16
    .param p1, "eventId"    # I
    .param p2, "now"    # J

    .line 98
    const-wide/32 v0, 0x5265c00

    sub-long v0, p2, v0

    .line 99
    .local v0, "windowStartTime":J
    iget-wide v2, p0, Lcom/android/server/tare/Ledger;->mEarliestSumTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_5a

    .line 101
    iget-object v2, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->clear()V

    .line 102
    iget-object v2, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_58

    .line 103
    iget-object v3, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/Ledger$Transaction;

    .line 104
    .local v3, "transaction":Lcom/android/server/tare/Ledger$Transaction;
    iget-wide v4, v3, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    cmp-long v4, v4, v0

    if-gtz v4, :cond_29

    .line 105
    goto :goto_58

    .line 107
    :cond_29
    iget-object v4, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    iget v5, v3, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    .line 108
    .local v4, "sum":J
    iget-wide v6, v3, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    cmp-long v6, v6, v0

    if-ltz v6, :cond_3b

    .line 109
    iget-wide v6, v3, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v4, v6

    goto :goto_4e

    .line 112
    :cond_3b
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-wide v8, v3, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    sub-long/2addr v8, v0

    long-to-double v8, v8

    mul-double/2addr v8, v6

    iget-wide v6, v3, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    long-to-double v6, v6

    mul-double/2addr v8, v6

    double-to-long v6, v8

    iget-wide v8, v3, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    iget-wide v10, v3, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    sub-long/2addr v8, v10

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 116
    :goto_4e
    iget-object v6, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    iget v7, v3, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-virtual {v6, v7, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 102
    .end local v3    # "transaction":Lcom/android/server/tare/Ledger$Transaction;
    .end local v4    # "sum":J
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 118
    .end local v2    # "i":I
    :cond_58
    :goto_58
    iput-wide v0, p0, Lcom/android/server/tare/Ledger;->mEarliestSumTime:J

    .line 120
    :cond_5a
    iget-object v2, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    return-wide v2
.end method

.method getCurrentBalance()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    return-wide v0
.end method

.method getEarliestTransaction()Lcom/android/server/tare/Ledger$Transaction;
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 78
    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/Ledger$Transaction;

    return-object v0

    .line 80
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method getTransactions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/tare/Ledger$Transaction;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    return-object v0
.end method

.method recordTransaction(Lcom/android/server/tare/Ledger$Transaction;)V
    .registers 8
    .param p1, "transaction"    # Lcom/android/server/tare/Ledger$Transaction;

    .line 89
    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    .line 92
    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    iget v1, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    .line 93
    .local v0, "sum":J
    iget-object v2, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    iget v3, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    iget-wide v4, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 94
    iget-wide v2, p0, Lcom/android/server/tare/Ledger;->mEarliestSumTime:J

    iget-wide v4, p1, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/tare/Ledger;->mEarliestSumTime:J

    .line 95
    return-void
.end method

.method removeOldTransactions(J)V
    .registers 9
    .param p1, "minAgeMs"    # J

    .line 125
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 126
    .local v0, "cutoff":J
    :goto_5
    iget-object v2, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_22

    iget-object v2, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v4, v2, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_22

    .line 127
    iget-object v2, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 129
    :cond_22
    return-void
.end method
