.class public Landroid/widget/L1CacheWorker;
.super Ljava/lang/Object;
.source "L1CacheWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final blacklist SLIDE_JITTER_THRESHOLD:I

.field private blacklist mAbsListViewStub:Landroid/widget/AbsListViewStub;

.field private blacklist mPosition:I

.field private blacklist mPreparedPosition:I


# direct methods
.method public constructor blacklist <init>(Landroid/widget/AbsListViewStub;)V
    .registers 3
    .param p1, "absListViewStub"    # Landroid/widget/AbsListViewStub;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/L1CacheWorker;->SLIDE_JITTER_THRESHOLD:I

    .line 30
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/L1CacheWorker;->mPreparedPosition:I

    .line 36
    iput v0, p0, Landroid/widget/L1CacheWorker;->mPosition:I

    .line 39
    iput-object p1, p0, Landroid/widget/L1CacheWorker;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    .line 40
    return-void
.end method

.method private blacklist invalidatePosition(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 102
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist prefetch(I)V
    .registers 8
    .param p1, "nextPostion"    # I

    .line 89
    const-wide/16 v0, 0x8

    const-string v2, "prefetch"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 90
    iget-object v2, p0, Landroid/widget/L1CacheWorker;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    invoke-interface {v2}, Landroid/widget/AbsListViewStub;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v2

    .line 91
    .local v2, "absListView":Landroid/widget/AbsListView;
    iget-object v3, v2, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    .line 94
    .local v3, "scrapView":Landroid/view/View;
    iget-object v4, v2, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1, v3, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 97
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/L1CacheWorker;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    invoke-interface {v5, p1, v4, v3}, Landroid/widget/AbsListViewStub;->addView(ILandroid/view/View;Landroid/view/View;)V

    .line 98
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 99
    return-void
.end method


# virtual methods
.method public blacklist postFromTraversal(I)V
    .registers 6
    .param p1, "deltaY"    # I

    .line 49
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_8

    .line 53
    return-void

    .line 60
    :cond_8
    iget v0, p0, Landroid/widget/L1CacheWorker;->mPosition:I

    invoke-direct {p0, v0}, Landroid/widget/L1CacheWorker;->invalidatePosition(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 61
    const-wide/16 v0, 0x8

    const-string v2, "LV Post Task"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 62
    iget-object v2, p0, Landroid/widget/L1CacheWorker;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    invoke-interface {v2}, Landroid/widget/AbsListViewStub;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 63
    iget v2, p0, Landroid/widget/L1CacheWorker;->mPosition:I

    iput v2, p0, Landroid/widget/L1CacheWorker;->mPreparedPosition:I

    .line 64
    const/high16 v2, -0x80000000

    iput v2, p0, Landroid/widget/L1CacheWorker;->mPosition:I

    .line 65
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 68
    :cond_2b
    iget-object v0, p0, Landroid/widget/L1CacheWorker;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    invoke-interface {v0}, Landroid/widget/AbsListViewStub;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v0

    .line 71
    .local v0, "absListView":Landroid/widget/AbsListView;
    if-lez p1, :cond_38

    iget v1, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_3f

    .line 72
    :cond_38
    iget v1, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    :goto_3f
    nop

    .line 75
    .local v1, "nextPosition":I
    iget-object v2, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, "transientView":Landroid/view/View;
    if-ltz v1, :cond_60

    iget v3, v0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_60

    iget-object v3, p0, Landroid/widget/L1CacheWorker;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    .line 79
    invoke-interface {v3, v1}, Landroid/widget/AbsListViewStub;->hasL1CacheInfo(I)Z

    move-result v3

    if-nez v3, :cond_60

    iget v3, p0, Landroid/widget/L1CacheWorker;->mPreparedPosition:I

    if-eq v1, v3, :cond_60

    if-eqz v2, :cond_5d

    goto :goto_60

    .line 85
    :cond_5d
    iput v1, p0, Landroid/widget/L1CacheWorker;->mPosition:I

    .line 86
    return-void

    .line 82
    :cond_60
    :goto_60
    return-void
.end method

.method public whitelist test-api run()V
    .registers 7

    .line 108
    const-wide/16 v0, 0x8

    :try_start_2
    const-string v2, "LV Prefetch"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 109
    iget v2, p0, Landroid/widget/L1CacheWorker;->mPreparedPosition:I

    invoke-direct {p0, v2}, Landroid/widget/L1CacheWorker;->invalidatePosition(I)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_3c

    if-nez v2, :cond_13

    .line 125
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 110
    return-void

    .line 113
    :cond_13
    :try_start_13
    iget-object v2, p0, Landroid/widget/L1CacheWorker;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    invoke-interface {v2}, Landroid/widget/AbsListViewStub;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v2

    .line 114
    .local v2, "absListView":Landroid/widget/AbsListView;
    iget v3, p0, Landroid/widget/L1CacheWorker;->mPreparedPosition:I

    iget v4, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lt v3, v4, :cond_2e

    iget v3, p0, Landroid/widget/L1CacheWorker;->mPreparedPosition:I

    iget v4, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 115
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_3c

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_2e

    .line 125
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 119
    return-void

    .line 122
    :cond_2e
    :try_start_2e
    iget v3, p0, Landroid/widget/L1CacheWorker;->mPreparedPosition:I

    invoke-direct {p0, v3}, Landroid/widget/L1CacheWorker;->prefetch(I)V

    .line 123
    const/high16 v3, -0x80000000

    iput v3, p0, Landroid/widget/L1CacheWorker;->mPreparedPosition:I
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_3c

    .line 125
    .end local v2    # "absListView":Landroid/widget/AbsListView;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 126
    nop

    .line 127
    return-void

    .line 125
    :catchall_3c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 126
    throw v2
.end method
