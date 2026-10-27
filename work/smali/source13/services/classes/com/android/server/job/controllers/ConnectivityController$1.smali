.class Lcom/android/server/job/controllers/ConnectivityController$1;
.super Ljava/lang/Object;
.source "ConnectivityController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/job/controllers/ConnectivityController$UidStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ConnectivityController;

    .line 130
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$1;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private prioritizeExistenceOver(III)I
    .registers 5
    .param p1, "threshold"    # I
    .param p2, "v1"    # I
    .param p3, "v2"    # I

    .line 133
    if-le p2, p1, :cond_4

    if-gt p3, p1, :cond_8

    :cond_4
    if-gt p2, p1, :cond_a

    if-gt p3, p1, :cond_a

    .line 134
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 137
    :cond_a
    if-le p2, p1, :cond_e

    .line 138
    const/4 v0, -0x1

    return v0

    .line 140
    :cond_e
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public compare(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Lcom/android/server/job/controllers/ConnectivityController$UidStats;)I
    .registers 19
    .param p1, "us1"    # Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    .param p2, "us2"    # Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    .line 158
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 157
    const/4 v5, 0x0

    invoke-direct {v0, v5, v3, v4}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v3

    .line 159
    .local v3, "runningPriority":I
    if-eqz v3, :cond_1a

    .line 160
    return v3

    .line 163
    :cond_1a
    iget v4, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    iget v6, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    invoke-direct {v0, v5, v4, v6}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v4

    .line 165
    .local v4, "readyWithConnPriority":I
    if-eqz v4, :cond_25

    .line 166
    return v4

    .line 170
    :cond_25
    iget v6, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    iget v7, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v6

    .line 172
    .local v6, "reqAvailPriority":I
    if-eqz v6, :cond_30

    .line 173
    return v6

    .line 177
    :cond_30
    const/16 v7, 0x27

    iget v8, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v9, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    invoke-direct {v0, v7, v8, v9}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v7

    .line 179
    .local v7, "topPriority":I
    if-eqz v7, :cond_3d

    .line 180
    return v7

    .line 184
    :cond_3d
    iget v8, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    iget v9, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    invoke-direct {v0, v5, v8, v9}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v8

    .line 185
    .local v8, "ejPriority":I
    if-eqz v8, :cond_48

    .line 186
    return v8

    .line 191
    :cond_48
    const/16 v9, 0x22

    iget v10, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v11, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    invoke-direct {v0, v9, v10, v11}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v9

    .line 193
    .local v9, "fgsPriority":I
    if-eqz v9, :cond_55

    .line 194
    return v9

    .line 197
    :cond_55
    iget-wide v10, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iget-wide v12, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    cmp-long v10, v10, v12

    const/4 v11, -0x1

    if-gez v10, :cond_5f

    .line 198
    return v11

    .line 199
    :cond_5f
    iget-wide v12, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iget-wide v14, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    cmp-long v10, v12, v14

    const/4 v12, 0x1

    if-lez v10, :cond_69

    .line 200
    return v12

    .line 203
    :cond_69
    iget v10, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v13, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    if-eq v10, v13, :cond_75

    .line 204
    iget v5, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v10, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    sub-int/2addr v5, v10

    return v5

    .line 207
    :cond_75
    iget-wide v13, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    move v10, v6

    .end local v6    # "reqAvailPriority":I
    .local v10, "reqAvailPriority":I
    iget-wide v5, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    cmp-long v5, v13, v5

    if-gez v5, :cond_7f

    .line 208
    return v11

    .line 210
    :cond_7f
    iget-wide v5, v1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    iget-wide v13, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    cmp-long v5, v5, v13

    if-lez v5, :cond_89

    move v5, v12

    goto :goto_8a

    :cond_89
    const/4 v5, 0x0

    :goto_8a
    return v5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 130
    check-cast p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    check-cast p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController$1;->compare(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Lcom/android/server/job/controllers/ConnectivityController$UidStats;)I

    move-result p1

    return p1
.end method
