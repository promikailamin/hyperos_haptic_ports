.class final Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PatternExploreByTouchHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    }
.end annotation


# instance fields
.field private final blacklist mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTempRect:Landroid/graphics/Rect;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2019
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    .line 2020
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 2009
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 2010
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    .line 2021
    const/4 p1, 0x1

    :goto_14
    const/16 p2, 0xa

    if-ge p1, p2, :cond_29

    .line 2022
    iget-object p2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;-><init>(Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2021
    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    .line 2024
    :cond_29
    return-void
.end method

.method private blacklist getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .registers 6

    .line 2140
    add-int/lit8 p1, p1, -0x1

    .line 2141
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 2142
    div-int/lit8 v1, p1, 0x3

    .line 2143
    rem-int/lit8 p1, p1, 0x3

    .line 2144
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v2, p1}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$mgetCenterXForColumn(Lcom/android/internal/widget/LockPatternView;I)F

    move-result p1

    .line 2145
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v2, v1}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$mgetCenterYForRow(Lcom/android/internal/widget/LockPatternView;I)F

    move-result v1

    .line 2146
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fgetmDotHitRadius(Lcom/android/internal/widget/LockPatternView;)F

    move-result v2

    .line 2147
    sub-float v3, p1, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2148
    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 2149
    sub-float p1, v1, v2

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 2150
    add-float/2addr v1, v2

    float-to-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2151
    return-object v0
.end method

.method private blacklist getTextForVirtualView(I)Ljava/lang/CharSequence;
    .registers 4

    .line 2155
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2156
    nop

    .line 2157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2156
    const v1, 0x10405d5

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getVirtualViewIdForHit(FF)I
    .registers 5

    .line 2169
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$mdetectCellHit(Lcom/android/internal/widget/LockPatternView;FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p1

    .line 2170
    const/high16 p2, -0x80000000

    if-nez p1, :cond_b

    .line 2171
    return p2

    .line 2173
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fgetmPatternDrawLookup(Lcom/android/internal/widget/LockPatternView;)[[Z

    move-result-object v0

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v0, v0, v1

    .line 2174
    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    mul-int/lit8 v1, v1, 0x3

    iget p1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    .line 2175
    if-eqz v0, :cond_25

    move p2, v1

    .line 2178
    :cond_25
    return p2
.end method

.method private blacklist isClickable(I)Z
    .registers 4

    .line 2093
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_19

    .line 2094
    add-int/lit8 p1, p1, -0x1

    div-int/lit8 v0, p1, 0x3

    .line 2095
    const/4 v1, 0x3

    rem-int/2addr p1, v1

    .line 2096
    if-ge v0, v1, :cond_19

    .line 2097
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fgetmPatternDrawLookup(Lcom/android/internal/widget/LockPatternView;)[[Z

    move-result-object v1

    aget-object v0, v1, v0

    aget-boolean p1, v0, p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 2100
    :cond_19
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected blacklist getVirtualViewAt(FF)I
    .registers 3

    .line 2030
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getVirtualViewIdForHit(FF)I

    move-result p1

    return p1
.end method

.method protected blacklist getVisibleVirtualViews(Landroid/util/IntArray;)V
    .registers 4

    .line 2036
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fgetmPatternInProgress(Lcom/android/internal/widget/LockPatternView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2037
    return-void

    .line 2039
    :cond_9
    const/4 v0, 0x1

    :goto_a
    const/16 v1, 0xa

    if-ge v0, v1, :cond_14

    .line 2042
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    .line 2039
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2044
    :cond_14
    return-void
.end method

.method blacklist onItemClicked(I)Z
    .registers 3

    .line 2129
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 2134
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 2136
    return v0
.end method

.method protected blacklist onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 4

    .line 2108
    packed-switch p2, :pswitch_data_a

    .line 2119
    const/4 p1, 0x0

    return p1

    .line 2113
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->onItemClicked(I)Z

    move-result p1

    return p1

    :pswitch_data_a
    .packed-switch 0x10
        :pswitch_5
    .end packed-switch
.end method

.method public whitelist onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 2058
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2059
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fgetmPatternInProgress(Lcom/android/internal/widget/LockPatternView;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 2060
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x10405d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2062
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2064
    :cond_1b
    return-void
.end method

.method protected blacklist onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 2050
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    .line 2051
    if-eqz p1, :cond_13

    .line 2052
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    iget-object p1, p1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2054
    :cond_13
    return-void
.end method

.method protected blacklist onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .line 2072
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2073
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2075
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView;->-$$Nest$fgetmPatternInProgress(Lcom/android/internal/widget/LockPatternView;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2076
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 2078
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2080
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2081
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2086
    :cond_2c
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 2088
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2089
    return-void
.end method
