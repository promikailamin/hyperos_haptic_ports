.class public Lcom/android/internal/widget/LinearLayoutManager;
.super Lcom/android/internal/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;
.implements Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LinearLayoutManager$SavedState;,
        Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;,
        Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;,
        Lcom/android/internal/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z = false

.field public static final blacklist HORIZONTAL:I = 0x0

.field public static final blacklist INVALID_OFFSET:I = -0x80000000

.field private static final blacklist MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final blacklist TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final blacklist VERTICAL:I = 0x1


# instance fields
.field final blacklist mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

.field private blacklist mInitialItemPrefetchCount:I

.field private blacklist mLastStackFromEnd:Z

.field private final blacklist mLayoutChunkResult:Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

.field private blacklist mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

.field blacklist mOrientation:I

.field blacklist mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

.field blacklist mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

.field blacklist mPendingScrollPosition:I

.field blacklist mPendingScrollPositionOffset:I

.field private blacklist mRecycleChildrenOnDetach:Z

.field private blacklist mReverseLayout:Z

.field blacklist mShouldReverseLayout:Z

.field private blacklist mSmoothScrollbarEnabled:Z

.field private blacklist mStackFromEnd:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 153
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 154
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IZ)V
    .registers 5

    .line 162
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;-><init>()V

    .line 93
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 100
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 107
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 113
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 125
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 135
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;-><init>(Lcom/android/internal/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 140
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutChunkResult:Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    .line 145
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    .line 163
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->setOrientation(I)V

    .line 164
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 166
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 173
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 125
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 135
    new-instance v1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;-><init>(Lcom/android/internal/widget/LinearLayoutManager;)V

    iput-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 140
    new-instance v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v1}, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutChunkResult:Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    .line 145
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    .line 174
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 175
    iget p2, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->setOrientation(I)V

    .line 176
    iget-boolean p2, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 177
    iget-boolean p1, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 179
    return-void
.end method

.method private blacklist computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 8

    .line 1093
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 1094
    const/4 p1, 0x0

    return p1

    .line 1096
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1097
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1098
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v3, v2

    .line 1099
    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1097
    move-object v4, p0

    move-object v2, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/ScrollbarHelper;->computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;Z)I

    move-result p1

    return p1
.end method

.method private blacklist computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 9

    .line 1082
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 1083
    const/4 p1, 0x0

    return p1

    .line 1085
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1086
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1087
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v3, v2

    .line 1088
    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1086
    move-object v4, p0

    move-object v2, v0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/ScrollbarHelper;->computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;ZZ)I

    move-result p1

    return p1
.end method

.method private blacklist computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 8

    .line 1104
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 1105
    const/4 p1, 0x0

    return p1

    .line 1107
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1108
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1109
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v3, v2

    .line 1110
    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1108
    move-object v4, p0

    move-object v2, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/ScrollbarHelper;->computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;Z)I

    move-result p1

    return p1
.end method

.method private blacklist findFirstReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .registers 9

    .line 1741
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private blacklist findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .registers 5

    .line 1697
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_e

    .line 1698
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1701
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private blacklist findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .registers 5

    .line 1679
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_10

    .line 1680
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1683
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private blacklist findLastReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .registers 10

    .line 1745
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, -0x1

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private blacklist findReferenceChildClosestToEnd(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .registers 4

    .line 1719
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_d

    .line 1720
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findLastReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    .line 1719
    :goto_d
    return-object p1
.end method

.method private blacklist findReferenceChildClosestToStart(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .registers 4

    .line 1736
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findLastReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_d

    .line 1737
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    .line 1736
    :goto_d
    return-object p1
.end method

.method private blacklist fixLayoutEndGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I
    .registers 6

    .line 878
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    .line 879
    nop

    .line 880
    if-lez v0, :cond_24

    .line 881
    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    .line 886
    add-int/2addr p1, p2

    .line 887
    if-eqz p4, :cond_23

    .line 889
    iget-object p3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p3}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    .line 890
    if-lez p3, :cond_23

    .line 891
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/OrientationHelper;->offsetChildren(I)V

    .line 892
    add-int/2addr p3, p2

    return p3

    .line 895
    :cond_23
    return p2

    .line 883
    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist fixLayoutStartGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I
    .registers 6

    .line 903
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    .line 904
    nop

    .line 905
    if-lez v0, :cond_25

    .line 907
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    .line 911
    add-int/2addr p1, p2

    .line 912
    if-eqz p4, :cond_24

    .line 914
    iget-object p3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p3}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    .line 915
    if-lez p1, :cond_24

    .line 916
    iget-object p3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Lcom/android/internal/widget/OrientationHelper;->offsetChildren(I)V

    .line 917
    sub-int/2addr p2, p1

    return p2

    .line 920
    :cond_24
    return p2

    .line 909
    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist getChildClosestToEnd()Landroid/view/View;
    .registers 2

    .line 1667
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getChildClosestToStart()Landroid/view/View;
    .registers 2

    .line 1657
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private blacklist layoutForPredictiveAnimations(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V
    .registers 19

    .line 672
    move-object/from16 v1, p2

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_b6

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_b6

    .line 673
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_b6

    .line 677
    :cond_1c
    nop

    .line 678
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v2

    .line 679
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 680
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    .line 681
    move v6, v4

    move v7, v6

    move v8, v7

    :goto_31
    if-ge v6, v3, :cond_6a

    .line 682
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 683
    invoke-virtual {v9}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v10

    if-eqz v10, :cond_40

    .line 684
    goto :goto_67

    .line 686
    :cond_40
    invoke-virtual {v9}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v10

    .line 687
    const/4 v11, 0x1

    if-ge v10, v5, :cond_49

    move v10, v11

    goto :goto_4a

    :cond_49
    move v10, v4

    :goto_4a
    iget-boolean v12, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v13, -0x1

    if-eq v10, v12, :cond_51

    .line 688
    move v11, v13

    goto :goto_52

    :cond_51
    nop

    .line 689
    :goto_52
    if-ne v11, v13, :cond_5e

    .line 690
    iget-object v10, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    iget-object v9, v9, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v9}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_67

    .line 692
    :cond_5e
    iget-object v10, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    iget-object v9, v9, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v9}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    add-int/2addr v8, v9

    .line 681
    :goto_67
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 700
    :cond_6a
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput-object v2, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 701
    if-lez v7, :cond_8f

    .line 702
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 703
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    move/from16 v3, p3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 704
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v7, v2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 705
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v4, v2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 706
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v2}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 707
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v2, v1, v4}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 710
    :cond_8f
    if-lez v8, :cond_b0

    .line 711
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .line 712
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    move/from16 v3, p4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 713
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v8, v2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 714
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v4, v2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 715
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v2}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 716
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v2, v1, v4}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 718
    :cond_b0
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 719
    return-void

    .line 674
    :cond_b6
    :goto_b6
    return-void
.end method

.method private blacklist logChildren()V
    .registers 6

    .line 1933
    const-string v0, "internal representation of views on the screen"

    const-string v1, "LinearLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3f

    .line 1935
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1936
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1937
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1936
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1939
    :cond_3f
    const-string v0, "=============="

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    return-void
.end method

.method private blacklist recycleByLayoutState(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;)V
    .registers 5

    .line 1450
    iget-boolean v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v0, :cond_9

    goto :goto_1a

    .line 1453
    :cond_9
    iget v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 1454
    iget p2, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleViewsFromEnd(Lcom/android/internal/widget/RecyclerView$Recycler;I)V

    goto :goto_19

    .line 1456
    :cond_14
    iget p2, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleViewsFromStart(Lcom/android/internal/widget/RecyclerView$Recycler;I)V

    .line 1458
    :goto_19
    return-void

    .line 1451
    :cond_1a
    :goto_1a
    return-void
.end method

.method private blacklist recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V
    .registers 4

    .line 1333
    if-ne p2, p3, :cond_3

    .line 1334
    return-void

    .line 1339
    :cond_3
    if-le p3, p2, :cond_f

    .line 1340
    add-int/lit8 p3, p3, -0x1

    :goto_7
    if-lt p3, p2, :cond_18

    .line 1341
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 1340
    add-int/lit8 p3, p3, -0x1

    goto :goto_7

    .line 1344
    :cond_f
    nop

    :goto_10
    if-le p2, p3, :cond_18

    .line 1345
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 1344
    add-int/lit8 p2, p2, -0x1

    goto :goto_10

    .line 1348
    :cond_18
    return-void
.end method

.method private blacklist recycleViewsFromEnd(Lcom/android/internal/widget/RecyclerView$Recycler;I)V
    .registers 8

    .line 1406
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 1407
    if-gez p2, :cond_7

    .line 1412
    return-void

    .line 1414
    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    .line 1415
    iget-boolean p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p2, :cond_32

    .line 1416
    const/4 p2, 0x0

    move v2, p2

    :goto_14
    if-ge v2, v0, :cond_53

    .line 1417
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1418
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_2e

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1419
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_2b

    goto :goto_2e

    .line 1416
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1421
    :cond_2e
    :goto_2e
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V

    .line 1422
    return-void

    .line 1426
    :cond_32
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_35
    if-ltz p2, :cond_53

    .line 1427
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1428
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lt v3, v1, :cond_4f

    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1429
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_4c

    goto :goto_4f

    .line 1426
    :cond_4c
    add-int/lit8 p2, p2, -0x1

    goto :goto_35

    .line 1431
    :cond_4f
    :goto_4f
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V

    .line 1432
    return-void

    .line 1436
    :cond_53
    return-void
.end method

.method private blacklist recycleViewsFromStart(Lcom/android/internal/widget/RecyclerView$Recycler;I)V
    .registers 8

    .line 1361
    if-gez p2, :cond_3

    .line 1366
    return-void

    .line 1369
    :cond_3
    nop

    .line 1370
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 1371
    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_2d

    .line 1372
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_4d

    .line 1373
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1374
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_29

    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1375
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_26

    goto :goto_29

    .line 1372
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 1377
    :cond_29
    :goto_29
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V

    .line 1378
    return-void

    .line 1382
    :cond_2d
    const/4 v1, 0x0

    move v2, v1

    :goto_2f
    if-ge v2, v0, :cond_4d

    .line 1383
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1384
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_49

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1385
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_46

    goto :goto_49

    .line 1382
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 1387
    :cond_49
    :goto_49
    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V

    .line 1388
    return-void

    .line 1392
    :cond_4d
    return-void
.end method

.method private blacklist resolveShouldLayoutReverse()V
    .registers 3

    .line 344
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_12

    .line 347
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_16

    .line 345
    :cond_12
    :goto_12
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 349
    :goto_16
    return-void
.end method

.method private blacklist updateAnchorFromChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)Z
    .registers 8

    .line 751
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 752
    return v1

    .line 754
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 755
    const/4 v2, 0x1

    if-eqz v0, :cond_19

    invoke-virtual {p3, v0, p2}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 756
    invoke-virtual {p3, v0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    .line 757
    return v2

    .line 759
    :cond_19
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v0, v3, :cond_20

    .line 760
    return v1

    .line 762
    :cond_20
    iget-boolean v0, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_29

    .line 763
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_2d

    .line 764
    :cond_29
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    .line 765
    :goto_2d
    if-eqz p1, :cond_71

    .line 766
    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 769
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_70

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p2

    if-eqz p2, :cond_70

    .line 771
    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 772
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 773
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    if-ge p2, v0, :cond_5a

    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 774
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 775
    invoke-virtual {p2}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p2

    if-ge p1, p2, :cond_5b

    :cond_5a
    move v1, v2

    .line 776
    :cond_5b
    if-eqz v1, :cond_70

    .line 777
    iget-boolean p1, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_68

    .line 778
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    goto :goto_6e

    .line 779
    :cond_68
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    :goto_6e
    iput p1, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 782
    :cond_70
    return v2

    .line 784
    :cond_71
    return v1
.end method

.method private blacklist updateAnchorFromPendingData(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)Z
    .registers 7

    .line 792
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_107

    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    goto/16 :goto_107

    .line 796
    :cond_e
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v3, -0x80000000

    if-ltz v0, :cond_102

    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-lt v0, p1, :cond_1e

    goto/16 :goto_102

    .line 807
    :cond_1e
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 808
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    const/4 v0, 0x1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    invoke-virtual {p1}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 811
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iget-boolean p1, p1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 812
    iget-boolean p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_47

    .line 813
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr p1, v1

    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_54

    .line 816
    :cond_47
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 819
    :goto_54
    return v0

    .line 822
    :cond_55
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne p1, v3, :cond_e2

    .line 823
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    .line 824
    if-eqz p1, :cond_c2

    .line 825
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    .line 826
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    if-le v2, v3, :cond_73

    .line 828
    invoke-virtual {p2}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 829
    return v0

    .line 831
    :cond_73
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 832
    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    .line 833
    if-gez v2, :cond_8d

    .line 834
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 835
    iput-boolean v1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 836
    return v0

    .line 838
    :cond_8d
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 839
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 840
    if-gez v1, :cond_a7

    .line 841
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 842
    iput-boolean v0, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 843
    return v0

    .line 845
    :cond_a7
    iget-boolean v1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_b9

    .line 846
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 847
    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_bf

    .line 848
    :cond_b9
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    :goto_bf
    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 849
    goto :goto_e1

    .line 850
    :cond_c2
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_de

    .line 852
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 853
    iget v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v2, p1, :cond_d6

    move p1, v0

    goto :goto_d7

    :cond_d6
    move p1, v1

    :goto_d7
    iget-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v2, :cond_dc

    move v1, v0

    :cond_dc
    iput-boolean v1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 856
    :cond_de
    invoke-virtual {p2}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 858
    :goto_e1
    return v0

    .line 861
    :cond_e2
    iget-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 863
    iget-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p1, :cond_f6

    .line 864
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr p1, v1

    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_101

    .line 867
    :cond_f6
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 870
    :goto_101
    return v0

    .line 797
    :cond_102
    :goto_102
    iput v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 798
    iput v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 802
    return v1

    .line 793
    :cond_107
    :goto_107
    return v1
.end method

.method private blacklist updateAnchorInfoForLayout(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 5

    .line 723
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->updateAnchorFromPendingData(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 727
    return-void

    .line 730
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->updateAnchorFromChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 734
    return-void

    .line 739
    :cond_e
    invoke-virtual {p3}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 740
    iget-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz p1, :cond_1c

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    iput p1, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 741
    return-void
.end method

.method private blacklist updateLayoutState(IIZLcom/android/internal/widget/RecyclerView$State;)V
    .registers 9

    .line 1149
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 1150
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/LinearLayoutManager;->getExtraLayoutSpace(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p4

    iput p4, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1151
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p1, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1153
    const/4 p4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_58

    .line 1154
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v1, p1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/OrientationHelper;->getEndPadding()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1156
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    .line 1158
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_30

    goto :goto_31

    .line 1159
    :cond_30
    move p4, v0

    :goto_31
    iput p4, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1160
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1161
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1163
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1164
    invoke-virtual {p4}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p4

    sub-int/2addr p1, p4

    .line 1166
    goto :goto_99

    .line 1167
    :cond_58
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    .line 1168
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v2, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1169
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_71

    move p4, v0

    goto :goto_72

    .line 1170
    :cond_71
    nop

    :goto_72
    iput p4, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1171
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1172
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1173
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1174
    invoke-virtual {p4}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p4

    add-int/2addr p1, p4

    .line 1176
    :goto_99
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p2, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1177
    if-eqz p3, :cond_a6

    .line 1178
    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget p3, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr p3, p1

    iput p3, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1180
    :cond_a6
    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1181
    return-void
.end method

.method private blacklist updateLayoutStateToFillEnd(II)V
    .registers 6

    .line 928
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 929
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    goto :goto_15

    .line 930
    :cond_14
    move v1, v2

    :goto_15
    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 931
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 932
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v2, p1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 933
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p2, p1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 934
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    const/high16 p2, -0x80000000

    iput p2, p1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 935
    return-void
.end method

.method private blacklist updateLayoutStateToFillEnd(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 3

    .line 924
    iget v0, p1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 925
    return-void
.end method

.method private blacklist updateLayoutStateToFillStart(II)V
    .registers 5

    .line 942
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 943
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 944
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    .line 945
    :cond_19
    move v0, v1

    :goto_1a
    iput v0, p1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 946
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v1, p1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 947
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p2, p1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 948
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    const/high16 p2, -0x80000000

    iput p2, p1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 950
    return-void
.end method

.method private blacklist updateLayoutStateToFillStart(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 3

    .line 938
    iget v0, p1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 939
    return-void
.end method


# virtual methods
.method public blacklist assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3

    .line 1321
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_7

    .line 1322
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1324
    :cond_7
    return-void
.end method

.method public blacklist canScrollHorizontally()Z
    .registers 2

    .line 281
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist canScrollVertically()Z
    .registers 3

    .line 289
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist collectAdjacentPrefetchPositions(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 6

    .line 1281
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    move p1, p2

    .line 1282
    :goto_6
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_22

    if-nez p1, :cond_f

    goto :goto_22

    .line 1287
    :cond_f
    const/4 p2, 0x1

    if-lez p1, :cond_14

    move v0, p2

    goto :goto_15

    :cond_14
    const/4 v0, -0x1

    .line 1288
    :goto_15
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1289
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutState(IIZLcom/android/internal/widget/RecyclerView$State;)V

    .line 1290
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p3, p1, p4}, Lcom/android/internal/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 1291
    return-void

    .line 1284
    :cond_22
    :goto_22
    return-void
.end method

.method public blacklist collectInitialPrefetchPositions(ILcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 8

    .line 1201
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1203
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1204
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iget v3, v3, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_29

    .line 1206
    :cond_17
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1207
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1208
    iget v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v3, v1, :cond_27

    .line 1209
    if-eqz v0, :cond_25

    add-int/lit8 v3, p1, -0x1

    goto :goto_29

    :cond_25
    move v3, v2

    goto :goto_29

    .line 1211
    :cond_27
    iget v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1215
    :goto_29
    if-eqz v0, :cond_2c

    .line 1216
    goto :goto_2d

    .line 1217
    :cond_2c
    const/4 v1, 0x1

    .line 1218
    :goto_2d
    nop

    .line 1219
    move v0, v2

    :goto_2f
    iget v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    if-ge v0, v4, :cond_3e

    .line 1220
    if-ltz v3, :cond_3e

    if-ge v3, p1, :cond_3e

    .line 1221
    invoke-interface {p2, v3, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1225
    add-int/2addr v3, v1

    .line 1219
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1227
    :cond_3e
    return-void
.end method

.method blacklist collectPrefetchPositionsForLayoutState(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 5

    .line 1190
    iget v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1191
    if-ltz v0, :cond_f

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_f

    .line 1192
    iget p1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-interface {p3, v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1194
    :cond_f
    return-void
.end method

.method public blacklist computeHorizontalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 2

    .line 1063
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public blacklist computeHorizontalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 2

    .line 1053
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public blacklist computeHorizontalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 2

    .line 1073
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public blacklist computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 5

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 445
    const/4 p1, 0x0

    return-object p1

    .line 447
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 448
    const/4 v2, 0x1

    if-ge p1, v1, :cond_15

    move v0, v2

    :cond_15
    iget-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, p1, :cond_1a

    const/4 v2, -0x1

    .line 449
    :cond_1a
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    if-nez p1, :cond_26

    .line 450
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 452
    :cond_26
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public blacklist computeVerticalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 2

    .line 1068
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public blacklist computeVerticalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 2

    .line 1058
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public blacklist computeVerticalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 2

    .line 1078
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method blacklist convertFocusDirectionToLayoutDirection(I)I
    .registers 5

    .line 1612
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_40

    .line 1645
    return v1

    .line 1633
    :sswitch_8
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v2, :cond_e

    move v1, v2

    goto :goto_f

    .line 1634
    :cond_e
    nop

    .line 1633
    :goto_f
    return v1

    .line 1639
    :sswitch_10
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_16

    move v1, v2

    goto :goto_17

    .line 1640
    :cond_16
    nop

    .line 1639
    :goto_17
    return v1

    .line 1630
    :sswitch_18
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v2, :cond_1d

    goto :goto_1e

    .line 1631
    :cond_1d
    move v0, v1

    .line 1630
    :goto_1e
    return v0

    .line 1636
    :sswitch_1f
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_24

    goto :goto_25

    .line 1637
    :cond_24
    move v0, v1

    .line 1636
    :goto_25
    return v0

    .line 1622
    :sswitch_26
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v2, :cond_2b

    .line 1623
    return v2

    .line 1624
    :cond_2b
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 1625
    return v0

    .line 1627
    :cond_32
    return v2

    .line 1614
    :sswitch_33
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v2, :cond_38

    .line 1615
    return v0

    .line 1616
    :cond_38
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 1617
    return v2

    .line 1619
    :cond_3f
    return v0

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_33
        0x2 -> :sswitch_26
        0x11 -> :sswitch_1f
        0x21 -> :sswitch_18
        0x42 -> :sswitch_10
        0x82 -> :sswitch_8
    .end sparse-switch
.end method

.method blacklist createLayoutState()Lcom/android/internal/widget/LinearLayoutManager$LayoutState;
    .registers 2

    .line 971
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method blacklist ensureLayoutState()V
    .registers 2

    .line 957
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_a

    .line 958
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->createLayoutState()Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 960
    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    if-nez v0, :cond_16

    .line 961
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/android/internal/widget/OrientationHelper;->createOrientationHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;I)Lcom/android/internal/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 963
    :cond_16
    return-void
.end method

.method blacklist fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I
    .registers 12

    .line 1474
    iget v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1475
    iget v1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_16

    .line 1477
    iget v1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v1, :cond_13

    .line 1478
    iget v1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v3, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v1, v3

    iput v1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1480
    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleByLayoutState(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;)V

    .line 1482
    :cond_16
    iget v1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v3, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    add-int/2addr v1, v3

    .line 1483
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutChunkResult:Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    .line 1484
    :cond_1d
    iget-boolean v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v4, :cond_23

    if-lez v1, :cond_78

    :cond_23
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->hasMore(Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 1485
    invoke-virtual {v3}, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1486
    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/android/internal/widget/LinearLayoutManager;->layoutChunk(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1487
    iget-boolean v4, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v4, :cond_34

    .line 1488
    goto :goto_78

    .line 1490
    :cond_34
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v5, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v6, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1497
    iget-boolean v4, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-object v4, v4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_4e

    .line 1498
    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_58

    .line 1499
    :cond_4e
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v5, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v4, v5

    iput v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1501
    iget v4, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v4

    .line 1504
    :cond_58
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v4, v2, :cond_71

    .line 1505
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1506
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v4, :cond_6e

    .line 1507
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1509
    :cond_6e
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleByLayoutState(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;)V

    .line 1511
    :cond_71
    if-eqz p4, :cond_1d

    iget-boolean v4, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v4, :cond_1d

    .line 1512
    nop

    .line 1518
    :cond_78
    :goto_78
    iget p1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public blacklist findFirstCompletelyVisibleItemPosition()I
    .registers 4

    .line 1814
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1815
    if-nez v0, :cond_e

    const/4 v0, -0x1

    goto :goto_12

    :cond_e
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_12
    return v0
.end method

.method public blacklist findFirstVisibleItemPosition()I
    .registers 4

    .line 1797
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1798
    if-nez v0, :cond_e

    const/4 v0, -0x1

    goto :goto_12

    :cond_e
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_12
    return v0
.end method

.method public blacklist findLastCompletelyVisibleItemPosition()I
    .registers 5

    .line 1854
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1855
    if-nez v0, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    :goto_13
    return v3
.end method

.method public blacklist findLastVisibleItemPosition()I
    .registers 5

    .line 1837
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1838
    if-nez v0, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    :goto_13
    return v3
.end method

.method blacklist findOneVisibleChild(IIZZ)Landroid/view/View;
    .registers 12

    .line 1860
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1861
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1862
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 1863
    if-le p2, p1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, -0x1

    .line 1864
    :goto_14
    nop

    .line 1865
    const/4 v3, 0x0

    :goto_16
    if-eq p1, p2, :cond_3c

    .line 1866
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1867
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1868
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    .line 1869
    if-ge v5, v1, :cond_3a

    if-le v6, v0, :cond_3a

    .line 1870
    if-eqz p3, :cond_39

    .line 1871
    if-lt v5, v0, :cond_33

    if-gt v6, v1, :cond_33

    .line 1872
    return-object v4

    .line 1873
    :cond_33
    if-eqz p4, :cond_3a

    if-nez v3, :cond_3a

    .line 1874
    move-object v3, v4

    goto :goto_3a

    .line 1877
    :cond_39
    return-object v4

    .line 1865
    :cond_3a
    :goto_3a
    add-int/2addr p1, v2

    goto :goto_16

    .line 1881
    :cond_3c
    return-object v3
.end method

.method blacklist findReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;III)Landroid/view/View;
    .registers 11

    .line 1751
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1752
    nop

    .line 1753
    nop

    .line 1754
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    .line 1755
    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p2}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p2

    .line 1756
    if-le p4, p3, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, -0x1

    .line 1757
    :goto_16
    const/4 v1, 0x0

    move-object v2, v1

    :goto_18
    if-eq p3, p4, :cond_4d

    .line 1758
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1759
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1760
    if-ltz v4, :cond_4b

    if-ge v4, p5, :cond_4b

    .line 1761
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1762
    if-nez v2, :cond_4b

    .line 1763
    move-object v2, v3

    goto :goto_4b

    .line 1765
    :cond_36
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_48

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1766
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_47

    goto :goto_48

    .line 1771
    :cond_47
    return-object v3

    .line 1767
    :cond_48
    :goto_48
    if-nez v1, :cond_4b

    .line 1768
    move-object v1, v3

    .line 1757
    :cond_4b
    :goto_4b
    add-int/2addr p3, v0

    goto :goto_18

    .line 1775
    :cond_4d
    if-eqz v1, :cond_50

    goto :goto_51

    :cond_50
    move-object v1, v2

    :goto_51
    return-object v1
.end method

.method public blacklist findViewByPosition(I)Landroid/view/View;
    .registers 4

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 390
    if-nez v0, :cond_8

    .line 391
    const/4 p1, 0x0

    return-object p1

    .line 393
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 394
    sub-int v1, p1, v1

    .line 395
    if-ltz v1, :cond_22

    if-ge v1, v0, :cond_22

    .line 396
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 397
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_22

    .line 398
    return-object v0

    .line 402
    :cond_22
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public blacklist generateDefaultLayoutParams()Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .registers 3

    .line 186
    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected blacklist getExtraLayoutSpace(Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 2

    .line 426
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 427
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    return p1

    .line 429
    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getInitialItemPrefetchCount()I
    .registers 2

    .line 1275
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    return v0
.end method

.method public blacklist getOrientation()I
    .registers 2

    .line 315
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public blacklist getRecycleChildrenOnDetach()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public blacklist getReverseLayout()Z
    .registers 2

    .line 358
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public blacklist getStackFromEnd()Z
    .registers 2

    .line 305
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method protected blacklist isLayoutRTL()Z
    .registers 3

    .line 953
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public blacklist isSmoothScrollbarEnabled()Z
    .registers 2

    .line 1143
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method blacklist layoutChunk(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 11

    .line 1523
    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->next(Lcom/android/internal/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v1

    .line 1524
    const/4 p1, 0x1

    if-nez v1, :cond_a

    .line 1530
    iput-boolean p1, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1531
    return-void

    .line 1533
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 1534
    iget-object v0, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_29

    .line 1535
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v4, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v4, v2, :cond_1e

    move v4, p1

    goto :goto_1f

    :cond_1e
    move v4, v3

    :goto_1f
    if-ne v0, v4, :cond_25

    .line 1537
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_3b

    .line 1539
    :cond_25
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_3b

    .line 1542
    :cond_29
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v4, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v4, v2, :cond_31

    move v4, p1

    goto :goto_32

    :cond_31
    move v4, v3

    :goto_32
    if-ne v0, v4, :cond_38

    .line 1544
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_3b

    .line 1546
    :cond_38
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 1549
    :goto_3b
    invoke-virtual {p0, v1, v3, v3}, Lcom/android/internal/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1550
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1552
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, p1, :cond_8a

    .line 1553
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1554
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1555
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    sub-int v3, v0, v3

    goto :goto_6d

    .line 1557
    :cond_62
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v3

    .line 1558
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    .line 1560
    :goto_6d
    iget v4, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v4, v2, :cond_7d

    .line 1561
    iget v2, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1562
    iget p3, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr p3, v4

    move v4, v0

    move v5, v2

    move v2, v3

    move v3, p3

    goto :goto_af

    .line 1564
    :cond_7d
    iget v2, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1565
    iget p3, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr p3, v4

    move v4, v3

    move v3, v2

    move v2, v4

    move v5, p3

    move v4, v0

    goto :goto_af

    .line 1568
    :cond_8a
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v0

    .line 1569
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v0

    .line 1571
    iget v4, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v4, v2, :cond_a5

    .line 1572
    iget v2, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1573
    iget p3, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr p3, v4

    move v4, v2

    move v5, v3

    move v2, p3

    move v3, v0

    goto :goto_af

    .line 1575
    :cond_a5
    iget v2, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1576
    iget p3, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr p3, v4

    move v4, p3

    move v5, v3

    move v3, v0

    .line 1581
    :goto_af
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1588
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p3

    if-nez p3, :cond_bf

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result p2

    if-eqz p2, :cond_c1

    .line 1589
    :cond_bf
    iput-boolean p1, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1591
    :cond_c1
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result p1

    iput-boolean p1, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 1592
    return-void
.end method

.method blacklist onAnchorReady(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 5

    .line 661
    return-void
.end method

.method public blacklist onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .registers 3

    .line 220
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 221
    iget-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_d

    .line 222
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 223
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 225
    :cond_d
    return-void
.end method

.method public blacklist onFocusSearchFailed(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .registers 10

    .line 1887
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1888
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 1889
    return-object v0

    .line 1892
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result p1

    .line 1893
    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_14

    .line 1894
    return-object v0

    .line 1896
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1898
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1f

    .line 1899
    invoke-direct {p0, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    goto :goto_23

    .line 1901
    :cond_1f
    invoke-direct {p0, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    .line 1903
    :goto_23
    if-nez v2, :cond_26

    .line 1908
    return-object v0

    .line 1910
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1911
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3eaaaaab

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 1912
    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4, p4}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutState(IIZLcom/android/internal/widget/RecyclerView$State;)V

    .line 1913
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p2, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1914
    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput-boolean v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1915
    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    const/4 v3, 0x1

    invoke-virtual {p0, p3, p2, p4, v3}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 1917
    if-ne p1, v1, :cond_4e

    .line 1918
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    goto :goto_52

    .line 1920
    :cond_4e
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    .line 1922
    :goto_52
    if-eq p1, v2, :cond_5c

    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_5b

    goto :goto_5c

    .line 1925
    :cond_5b
    return-object p1

    .line 1923
    :cond_5c
    :goto_5c
    return-object v0
.end method

.method public blacklist onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 229
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_17

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 234
    :cond_17
    return-void
.end method

.method public blacklist onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 11

    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v1, :cond_13

    .line 472
    :cond_9
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 473
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 474
    return-void

    .line 477
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 478
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 481
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 482
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 484
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 486
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v0, v0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3f

    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_56

    .line 488
    :cond_3f
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 489
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v4, v5

    iput-boolean v4, v0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 491
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 492
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    iput-boolean v3, v0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 502
    :cond_56
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->getExtraLayoutSpace(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    .line 505
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v4, :cond_64

    .line 506
    nop

    .line 507
    move v4, v0

    move v0, v2

    goto :goto_66

    .line 509
    :cond_64
    nop

    .line 510
    move v4, v2

    .line 512
    :goto_66
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v0, v5

    .line 513
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/android/internal/widget/OrientationHelper;->getEndPadding()I

    move-result v5

    add-int/2addr v4, v5

    .line 514
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-eqz v5, :cond_b6

    iget v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v5, v1, :cond_b6

    iget v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_b6

    .line 519
    iget v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 520
    if-eqz v5, :cond_b6

    .line 523
    iget-boolean v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_a1

    .line 524
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 525
    invoke-virtual {v7, v5}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v6, v5

    .line 526
    iget v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v6, v5

    goto :goto_b1

    .line 528
    :cond_a1
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 529
    invoke-virtual {v6}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    sub-int/2addr v5, v6

    .line 530
    iget v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v6, v5

    .line 532
    :goto_b1
    if-lez v6, :cond_b5

    .line 533
    add-int/2addr v0, v6

    goto :goto_b6

    .line 535
    :cond_b5
    sub-int/2addr v4, v6

    .line 542
    :cond_b6
    :goto_b6
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v5, v5, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_c4

    .line 543
    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_c2

    move v1, v3

    goto :goto_c3

    .line 544
    :cond_c2
    nop

    :goto_c3
    goto :goto_cb

    .line 546
    :cond_c4
    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_c9

    goto :goto_ca

    .line 547
    :cond_c9
    move v1, v3

    :goto_ca
    nop

    .line 550
    :goto_cb
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, p1, p2, v5, v1}, Lcom/android/internal/widget/LinearLayoutManager;->onAnchorReady(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 551
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 552
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 553
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 554
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v1, v1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_142

    .line 556
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 557
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v0, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 558
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 559
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 560
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 561
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v5, :cond_10a

    .line 562
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v5

    .line 565
    :cond_10a
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v5}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 566
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v4, v5, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 567
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v5, v4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 568
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 569
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 571
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v5, :cond_141

    .line 573
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 574
    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 575
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v5, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 576
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 577
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 579
    :cond_141
    goto :goto_19a

    .line 581
    :cond_142
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 582
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v4, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 583
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 584
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v4, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 585
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 586
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v5, :cond_163

    .line 587
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v0, v5

    .line 590
    :cond_163
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v5}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 591
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v0, v5, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 592
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v5, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 593
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 594
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 596
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v5, :cond_19a

    .line 597
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 599
    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 600
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput v5, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 601
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 602
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v4, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 609
    :cond_19a
    :goto_19a
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1c0

    .line 613
    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v1, v5

    if-eqz v1, :cond_1b4

    .line 614
    invoke-direct {p0, v4, p1, p2, v3}, Lcom/android/internal/widget/LinearLayoutManager;->fixLayoutEndGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I

    move-result v1

    .line 615
    add-int/2addr v0, v1

    .line 616
    add-int/2addr v4, v1

    .line 617
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fixLayoutStartGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I

    move-result v1

    .line 618
    add-int/2addr v0, v1

    .line 619
    add-int/2addr v4, v1

    .line 620
    goto :goto_1c0

    .line 621
    :cond_1b4
    invoke-direct {p0, v0, p1, p2, v3}, Lcom/android/internal/widget/LinearLayoutManager;->fixLayoutStartGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I

    move-result v1

    .line 622
    add-int/2addr v0, v1

    .line 623
    add-int/2addr v4, v1

    .line 624
    invoke-direct {p0, v4, p1, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fixLayoutEndGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 626
    add-int/2addr v4, v1

    .line 629
    :cond_1c0
    :goto_1c0
    invoke-direct {p0, p1, p2, v0, v4}, Lcom/android/internal/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    .line 630
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_1cf

    .line 631
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->onLayoutComplete()V

    goto :goto_1d4

    .line 633
    :cond_1cf
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p1}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 635
    :goto_1d4
    iget-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 639
    return-void
.end method

.method public blacklist onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 2

    .line 643
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V

    .line 644
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 645
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 646
    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 647
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p1}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 648
    return-void
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 265
    instance-of v0, p1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_b

    .line 266
    check-cast p1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->requestLayout()V

    .line 274
    :cond_b
    return-void
.end method

.method public blacklist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_c

    .line 239
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;-><init>(Lcom/android/internal/widget/LinearLayoutManager$SavedState;)V

    return-object v0

    .line 241
    :cond_c
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_57

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 244
    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    .line 245
    iput-boolean v1, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 246
    if-eqz v1, :cond_3d

    .line 247
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 248
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 249
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 251
    goto :goto_56

    .line 252
    :cond_3d
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 253
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 254
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 255
    invoke-virtual {v2}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 257
    :goto_56
    goto :goto_5a

    .line 258
    :cond_57
    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 260
    :goto_5a
    return-object v0
.end method

.method public blacklist prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .registers 8

    .line 2002
    const-string p3, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2003
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2004
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 2005
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    .line 2006
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p4

    .line 2007
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ge p3, p4, :cond_19

    move p3, v0

    goto :goto_1a

    .line 2008
    :cond_19
    move p3, v1

    .line 2009
    :goto_1a
    iget-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_49

    .line 2010
    if-ne p3, v0, :cond_38

    .line 2011
    iget-object p3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2012
    invoke-virtual {p3}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2013
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2014
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    sub-int/2addr p3, p2

    .line 2011
    invoke-virtual {p0, p4, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_65

    .line 2016
    :cond_38
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2017
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget-object p3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2018
    invoke-virtual {p3, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 2016
    invoke-virtual {p0, p4, p1}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_65

    .line 2021
    :cond_49
    if-ne p3, v1, :cond_55

    .line 2022
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p4, p1}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_65

    .line 2024
    :cond_55
    iget-object p3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2025
    invoke-virtual {p3, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2026
    invoke-virtual {p3, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p2, p1

    .line 2024
    invoke-virtual {p0, p4, p2}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2029
    :goto_65
    return-void
.end method

.method blacklist resolveIsInfinite()Z
    .registers 2

    .line 1184
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getMode()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 1185
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEnd()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1184
    :goto_13
    return v0
.end method

.method blacklist scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 9

    .line 1294
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    if-nez p1, :cond_a

    goto :goto_3b

    .line 1297
    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1298
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1299
    if-lez p1, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    const/4 v0, -0x1

    .line 1300
    :goto_17
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1301
    invoke-direct {p0, v0, v3, v2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutState(IIZLcom/android/internal/widget/RecyclerView$State;)V

    .line 1302
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 1303
    invoke-virtual {p0, p2, v4, p3, v1}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    move-result p2

    add-int/2addr v2, p2

    .line 1304
    if-gez v2, :cond_2c

    .line 1308
    return v1

    .line 1310
    :cond_2c
    if-le v3, v2, :cond_30

    mul-int p1, v0, v2

    .line 1311
    :cond_30
    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/OrientationHelper;->offsetChildren(I)V

    .line 1315
    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 1316
    return p1

    .line 1295
    :cond_3b
    :goto_3b
    return v1
.end method

.method public blacklist scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 6

    .line 1033
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1034
    const/4 p1, 0x0

    return p1

    .line 1036
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public blacklist scrollToPosition(I)V
    .registers 2

    .line 990
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 991
    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 992
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_f

    .line 993
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    invoke-virtual {p1}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 995
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->requestLayout()V

    .line 996
    return-void
.end method

.method public blacklist scrollToPositionWithOffset(II)V
    .registers 3

    .line 1018
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1019
    iput p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1020
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_d

    .line 1021
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    invoke-virtual {p1}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1023
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->requestLayout()V

    .line 1024
    return-void
.end method

.method public blacklist scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 5

    .line 1045
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_6

    .line 1046
    const/4 p1, 0x0

    return p1

    .line 1048
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public blacklist setInitialPrefetchItemCount(I)V
    .registers 2

    .line 1259
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    .line 1260
    return-void
.end method

.method public blacklist setOrientation(I)V
    .registers 5

    .line 325
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 326
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 329
    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_28

    .line 330
    return-void

    .line 332
    :cond_28
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 333
    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->requestLayout()V

    .line 335
    return-void
.end method

.method public blacklist setRecycleChildrenOnDetach(Z)V
    .registers 2

    .line 215
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 216
    return-void
.end method

.method public blacklist setReverseLayout(Z)V
    .registers 3

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 377
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_9

    .line 378
    return-void

    .line 380
    :cond_9
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->requestLayout()V

    .line 382
    return-void
.end method

.method public blacklist setSmoothScrollbarEnabled(Z)V
    .registers 2

    .line 1132
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1133
    return-void
.end method

.method public blacklist setStackFromEnd(Z)V
    .registers 3

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 297
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_9

    .line 298
    return-void

    .line 300
    :cond_9
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->requestLayout()V

    .line 302
    return-void
.end method

.method blacklist shouldMeasureTwice()Z
    .registers 3

    .line 1596
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getHeightMode()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_16

    .line 1597
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getWidthMode()I

    move-result v0

    if-eq v0, v1, :cond_16

    .line 1598
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->hasFlexibleChildInBothOrientations()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1596
    :goto_17
    return v0
.end method

.method public blacklist smoothScrollToPosition(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;I)V
    .registers 4

    .line 436
    new-instance p2, Lcom/android/internal/widget/LinearSmoothScroller;

    .line 437
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 438
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 439
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->startSmoothScroll(Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V

    .line 440
    return-void
.end method

.method public blacklist supportsPredictiveItemAnimations()Z
    .registers 3

    .line 1994
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method blacklist validateChildOrder()V
    .registers 11

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "validating child count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinearLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_25

    .line 1955
    return-void

    .line 1957
    :cond_25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1958
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 1959
    iget-boolean v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const-string v5, "detected invalid location"

    const-string v6, "detected invalid position. loc invalid? "

    if-eqz v4, :cond_83

    .line 1960
    move v4, v1

    :goto_41
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_c6

    .line 1961
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1962
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 1963
    iget-object v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    .line 1964
    if-ge v8, v2, :cond_75

    .line 1965
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->logChildren()V

    .line 1966
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ge v7, v3, :cond_68

    goto :goto_69

    :cond_68
    move v1, v0

    :goto_69
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1969
    :cond_75
    if-gt v7, v3, :cond_7a

    .line 1960
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 1970
    :cond_7a
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->logChildren()V

    .line 1971
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1975
    :cond_83
    move v4, v1

    :goto_84
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_c6

    .line 1976
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1977
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 1978
    iget-object v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    .line 1979
    if-ge v8, v2, :cond_b8

    .line 1980
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->logChildren()V

    .line 1981
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ge v7, v3, :cond_ab

    goto :goto_ac

    :cond_ab
    move v1, v0

    :goto_ac
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1984
    :cond_b8
    if-lt v7, v3, :cond_bd

    .line 1975
    add-int/lit8 v4, v4, 0x1

    goto :goto_84

    .line 1985
    :cond_bd
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->logChildren()V

    .line 1986
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1990
    :cond_c6
    return-void
.end method
