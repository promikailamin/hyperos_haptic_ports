.class Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;
.super Ljava/util/PriorityQueue;
.source "AlarmQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/AlarmQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlarmPriorityQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/PriorityQueue<",
        "Landroid/util/Pair<",
        "TQ;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 62
    .local p0, "this":Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;, "Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue<TQ;>;"
    new-instance v0, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 63
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 6
    .param p0, "o1"    # Landroid/util/Pair;
    .param p1, "o2"    # Landroid/util/Pair;

    .line 62
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public removeKey(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQ;)Z"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;, "Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue<TQ;>;"
    .local p1, "key":Ljava/lang/Object;, "TQ;"
    const/4 v0, 0x0

    .line 72
    .local v0, "removed":Z
    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p0, v1}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Pair;

    .line 73
    .local v1, "alarms":[Landroid/util/Pair;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_25

    .line 74
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 75
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 76
    const/4 v0, 0x1

    .line 73
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 79
    .end local v2    # "i":I
    :cond_25
    return v0
.end method
