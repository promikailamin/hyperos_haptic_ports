.class public Lcom/android/server/job/controllers/ConnectivityController$1;
.super Ljava/lang/Object;
.source "ConnectivityController.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Lcom/android/server/job/controllers/ConnectivityController$UidStats;)I
    .registers 11

    .line 210
    iget-object v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    .line 211
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iget-object v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 216
    :cond_14
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_1f

    return v0

    .line 223
    :cond_1f
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_2a

    return v0

    .line 230
    :cond_2a
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    const/16 v3, 0x27

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_37

    return v0

    .line 237
    :cond_37
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_42

    return v0

    .line 242
    :cond_42
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_4d

    return v0

    .line 249
    :cond_4d
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    const/16 v3, 0x22

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result p0

    if-eqz p0, :cond_5a

    return p0

    .line 255
    :cond_5a
    iget-wide v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    iget-wide v3, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    cmp-long p0, v0, v3

    const/4 v5, -0x1

    if-gez p0, :cond_64

    return v5

    :cond_64
    cmp-long p0, v0, v3

    const/4 v0, 0x1

    if-lez p0, :cond_6a

    return v0

    .line 261
    :cond_6a
    iget-wide v3, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iget-wide v6, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    cmp-long p0, v3, v6

    if-gez p0, :cond_73

    return v5

    :cond_73
    cmp-long p0, v3, v6

    if-lez p0, :cond_78

    return v0

    .line 267
    :cond_78
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    if-eq p0, v1, :cond_80

    sub-int/2addr v1, p0

    return v1

    .line 271
    :cond_80
    iget-wide p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    iget-wide v3, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    cmp-long p2, p0, v3

    if-gez p2, :cond_89

    return v5

    :cond_89
    cmp-long p0, p0, v3

    if-lez p0, :cond_8e

    return v0

    :cond_8e
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 181
    check-cast p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    check-cast p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController$1;->compare(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Lcom/android/server/job/controllers/ConnectivityController$UidStats;)I

    move-result p0

    return p0
.end method

.method public final prioritizeExistenceOver(III)I
    .registers 4

    .line 0
    if-le p2, p1, :cond_4

    if-gt p3, p1, :cond_8

    :cond_4
    if-gt p2, p1, :cond_a

    if-gt p3, p1, :cond_a

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    if-le p2, p1, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method
