.class public Landroid/filterfw/core/RoundRobinScheduler;
.super Landroid/filterfw/core/Scheduler;
.source "RoundRobinScheduler.java"


# instance fields
.field private greylist-max-o mLastPos:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/filterfw/core/FilterGraph;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Landroid/filterfw/core/Scheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    .line 30
    const/4 p1, -0x1

    iput p1, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 34
    return-void
.end method


# virtual methods
.method public greylist-max-o reset()V
    .registers 2

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 39
    return-void
.end method

.method public greylist-max-o scheduleNextNode()Landroid/filterfw/core/Filter;
    .registers 8

    .line 43
    invoke-virtual {p0}, Landroid/filterfw/core/RoundRobinScheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    move-result-object v0

    .line 44
    iget v1, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, -0x1

    if-lt v1, v2, :cond_13

    iput v3, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 45
    :cond_13
    nop

    .line 46
    nop

    .line 47
    nop

    .line 48
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/Filter;

    .line 49
    invoke-virtual {v5}, Landroid/filterfw/core/Filter;->canProcess()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 50
    iget v6, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    if-gt v2, v6, :cond_39

    .line 51
    if-nez v4, :cond_3c

    .line 53
    nop

    .line 54
    move v3, v2

    move-object v4, v5

    goto :goto_3c

    .line 58
    :cond_39
    iput v2, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 59
    return-object v5

    .line 62
    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    .line 63
    goto :goto_1d

    .line 65
    :cond_3f
    if-eqz v4, :cond_44

    .line 66
    iput v3, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 67
    return-object v4

    .line 71
    :cond_44
    return-object v1
.end method
