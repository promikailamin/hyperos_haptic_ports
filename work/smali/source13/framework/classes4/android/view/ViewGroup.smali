.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$ViewLocationHolder;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;,
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final greylist-max-o ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final greylist-max-o CHILD_LEFT_INDEX:I = 0x0

.field private static final greylist-max-o CHILD_TOP_INDEX:I = 0x1

.field protected static final whitelist CLIP_TO_PADDING_MASK:I = 0x22

.field private static final greylist-max-r DBG:Z = false

.field private static final greylist-max-o DESCENDANT_FOCUSABILITY_FLAGS:[I

.field private static final greylist-max-o FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final greylist-max-o FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o FLAG_ANIMATION_CACHE:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist-max-o FLAG_ANIMATION_DONE:I = 0x10

.field private static final greylist-max-o FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist-max-o FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field static final greylist-max-o FLAG_CLIP_CHILDREN:I = 0x1

.field private static final greylist-max-o FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final greylist-max-p FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field static final greylist-max-o FLAG_INVALIDATE_REQUIRED:I = 0x4

.field static final greylist-max-o FLAG_IS_TRANSITION_GROUP:I = 0x1000000

.field static final greylist-max-o FLAG_IS_TRANSITION_GROUP_SET:I = 0x2000000

.field private static final greylist-max-o FLAG_LAYOUT_MODE_WAS_EXPLICITLY_SET:I = 0x800000

.field private static final greylist-max-o FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final greylist-max-o FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final greylist-max-o FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field static final greylist-max-o FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final greylist-max-o FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final greylist-max-o FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final greylist-max-o FLAG_RUN_ANIMATION:I = 0x8

.field private static final greylist-max-o FLAG_SHOW_CONTEXT_MENU_WITH_COORDS:I = 0x20000000

.field private static final greylist-max-o FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field private static final greylist-max-o FLAG_START_ACTION_MODE_FOR_CHILD_IS_NOT_TYPED:I = 0x10000000

.field private static final greylist-max-o FLAG_START_ACTION_MODE_FOR_CHILD_IS_TYPED:I = 0x8000000

.field protected static final greylist-max-p FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field static final greylist-max-o FLAG_TOUCHSCREEN_BLOCKS_FOCUS:I = 0x4000000

.field protected static final greylist-max-p FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final whitelist FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final whitelist FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final whitelist FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final whitelist LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static greylist-max-o LAYOUT_MODE_DEFAULT:I = 0x0

.field public static final whitelist LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1

.field private static final greylist-max-o LAYOUT_MODE_UNDEFINED:I = -0x1

.field public static final whitelist PERSISTENT_ALL_CACHES:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PERSISTENT_ANIMATION_CACHE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PERSISTENT_NO_CACHE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PERSISTENT_SCROLLING_CACHE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ViewGroup"

.field private static greylist-max-o sDebugLines:[F


# instance fields
.field private greylist-max-o mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field greylist-max-o mCachePaint:Landroid/graphics/Paint;

.field private greylist-max-o mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mChildTransformation:Landroid/view/animation/Transformation;

.field greylist-max-o mChildUnhandledKeyListeners:I

.field private greylist-max-p mChildren:[Landroid/view/View;

.field private greylist-max-p mChildrenCount:I

.field private greylist-max-o mChildrenInterestedInDrag:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCurrentDragChild:Landroid/view/View;

.field private greylist-max-o mCurrentDragStartEvent:Landroid/view/DragEvent;

.field private greylist-max-o mDefaultFocus:Landroid/view/View;

.field protected greylist mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private greylist mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private greylist-max-p mFocused:Landroid/view/View;

.field greylist-max-o mFocusedInCluster:Landroid/view/View;

.field protected greylist-max-p mGroupFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CLIP_CHILDREN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "CLIP_TO_PADDING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "PADDING_NOT_NULL"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private greylist-max-o mHoveredSelf:Z

.field private blacklist mInsetsAnimationDispatchMode:I

.field greylist-max-o mInvalidateRegion:Landroid/graphics/RectF;

.field greylist-max-o mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private greylist-max-o mIsInterestedInDrag:Z

.field private greylist-max-o mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private greylist-max-o mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private greylist-max-o mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private greylist-max-o mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private greylist-max-o mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private greylist-max-o mLayoutCalledWhileSuppressed:Z

.field private greylist-max-o mLayoutMode:I

.field private greylist-max-o mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private greylist-max-o mLocalPoint:Landroid/graphics/PointF;

.field private greylist-max-o mNestedScrollAxes:I

.field protected greylist-max-p mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected greylist mPersistentDrawingCache:I

.field private greylist-max-o mPreSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mSuppressLayout:Z

.field private blacklist mTempLocation:[I

.field private blacklist mTempPoint:Landroid/graphics/Point;

.field private blacklist mTempPosition:[F

.field private blacklist mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTooltipHoverTarget:Landroid/view/View;

.field private greylist-max-o mTooltipHoveredSelf:Z

.field private blacklist mTransientIndices:Landroid/util/IntArray;

.field private greylist-max-o mTransientViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTransition:Landroid/animation/LayoutTransition;

.field private greylist-max-o mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimationListener(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLayoutAnimationController(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLayoutCalledWhileSuppressed(Landroid/view/ViewGroup;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransitioningViews(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLayoutCalledWhileSuppressed(Landroid/view/ViewGroup;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyAnimationListener(Landroid/view/ViewGroup;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smfillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .registers 10

    invoke-static/range {p0 .. p9}, Landroid/view/ViewGroup;->fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 394
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    .line 564
    const/4 v0, 0x0

    sput v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    .line 652
    new-instance v0, Landroid/view/ViewGroup$1;

    invoke-direct {v0}, Landroid/view/ViewGroup$1;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-void

    nop

    :array_14
    .array-data 4
        0x20000
        0x40000
        0x60000
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 701
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 702
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 705
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 706
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 709
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 710
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 713
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 279
    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 592
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 619
    iput v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 630
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    .line 631
    iput-object v1, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 637
    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 644
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    .line 7308
    new-instance v0, Landroid/view/ViewGroup$4;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$4;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 715
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 716
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 717
    return-void
.end method

.method private greylist-max-o addDisappearingView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 7201
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7203
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_c

    .line 7204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object v0, v1

    .line 7207
    :cond_c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7208
    return-void
.end method

.method private greylist-max-o addInArray(Landroid/view/View;I)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 5416
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5417
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5418
    .local v1, "count":I
    array-length v2, v0

    .line 5419
    .local v2, "size":I
    const/4 v3, 0x0

    if-ne p2, v1, :cond_1e

    .line 5420
    if-ne v2, v1, :cond_15

    .line 5421
    add-int/lit8 v4, v2, 0xc

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5422
    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5423
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5425
    :cond_15
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    goto :goto_4e

    .line 5426
    :cond_1e
    if-ge p2, v1, :cond_4f

    .line 5427
    if-ne v2, v1, :cond_37

    .line 5428
    add-int/lit8 v4, v2, 0xc

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5429
    invoke-static {v0, v3, v4, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5430
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5431
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    goto :goto_3e

    .line 5433
    :cond_37
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5435
    :goto_3e
    aput-object p1, v0, p2

    .line 5436
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5437
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_4e

    .line 5438
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 5443
    :cond_4e
    :goto_4e
    return-void

    .line 5441
    :cond_4f
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private greylist-max-o addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerIdBits"    # I

    .line 2979
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 2980
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2981
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2982
    return-object v0
.end method

.method private greylist-max-o addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .line 5303
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_8

    .line 5306
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 5309
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_d9

    .line 5314
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_15

    .line 5315
    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5318
    :cond_15
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 5319
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 5322
    :cond_1f
    if-eqz p4, :cond_24

    .line 5323
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_27

    .line 5325
    :cond_24
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5328
    :goto_27
    if-gez p2, :cond_2b

    .line 5329
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5332
    :cond_2b
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 5335
    if-eqz p4, :cond_34

    .line 5336
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    goto :goto_36

    .line 5338
    :cond_34
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5340
    :goto_36
    invoke-virtual {p1}, Landroid/view/View;->hasUnhandledKeyListener()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 5341
    invoke-virtual {p0}, Landroid/view/ViewGroup;->incrementChildUnhandledKeyListeners()V

    .line 5344
    :cond_3f
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    .line 5345
    .local v0, "childHasFocus":Z
    if-eqz v0, :cond_4c

    .line 5346
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 5349
    :cond_4c
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5350
    .local v1, "ai":Landroid/view/View$AttachInfo;
    const/high16 v2, 0x400000

    const/4 v3, 0x1

    if-eqz v1, :cond_6f

    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v4, v2

    if-nez v4, :cond_6f

    .line 5351
    iget-boolean v4, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5352
    .local v4, "lastKeepOn":Z
    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5353
    iget-object v5, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    invoke-virtual {p1, v5, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 5354
    iget-boolean v5, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v5, :cond_6d

    .line 5355
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5357
    :cond_6d
    iput-boolean v4, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5360
    .end local v4    # "lastKeepOn":Z
    :cond_6f
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 5361
    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    .line 5364
    :cond_78
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewAdded(Landroid/view/View;)V

    .line 5366
    iget v4, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_87

    .line 5367
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x10000

    or-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5370
    :cond_87
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 5371
    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5374
    :cond_90
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_9b

    .line 5375
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5378
    :cond_9b
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-eqz v2, :cond_b8

    .line 5379
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    .line 5380
    .local v2, "transientCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a4
    if-ge v3, v2, :cond_b8

    .line 5381
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 5382
    .local v4, "oldIndex":I
    if-gt p2, v4, :cond_b5

    .line 5383
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/IntArray;->set(II)V

    .line 5380
    .end local v4    # "oldIndex":I
    :cond_b5
    add-int/lit8 v3, v3, 0x1

    goto :goto_a4

    .line 5388
    .end local v2    # "transientCount":I
    .end local v3    # "i":I
    :cond_b8
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_c5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_c5

    .line 5389
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 5392
    :cond_c5
    invoke-virtual {p1}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 5395
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    .line 5398
    :cond_ce
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->touchAccessibilityNodeProviderIfNeeded(Landroid/view/View;)V

    .line 5400
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewForceDarkStateStub;->markForceDarkDirtyRoot()V

    .line 5401
    return-void

    .line 5310
    .end local v0    # "childHasFocus":Z
    .end local v1    # "ai":Landroid/view/View$AttachInfo;
    :cond_d9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V
    .registers 12
    .param p0, "region"    # Landroid/graphics/Region;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .line 7437
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 7438
    .local v0, "locationInWindow":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7439
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 7440
    .local v1, "x":I
    const/4 v2, 0x1

    aget v8, v0, v2

    .line 7441
    .local v8, "y":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int v5, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v6, v8, v2

    move-object v2, p0

    move v3, v1

    move v4, v8

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 7442
    return-void
.end method

.method private greylist-max-o bindLayoutAnimation(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 5503
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 5504
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 5505
    return-void
.end method

.method private blacklist brokenDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 7458
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7459
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_19

    .line 7460
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 7461
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 7462
    goto :goto_19

    .line 7459
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7465
    .end local v1    # "i":I
    :cond_19
    :goto_19
    return-object p1
.end method

.method private greylist-max-o cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2939
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v0, :cond_37

    .line 2940
    const/4 v0, 0x0

    .line 2941
    .local v0, "syntheticEvent":Z
    if-nez p1, :cond_1b

    .line 2942
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2943
    .local v9, "now":J
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2945
    const/16 v1, 0x1002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2946
    const/4 v0, 0x1

    .line 2949
    .end local v9    # "now":J
    :cond_1b
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_1d
    if-eqz v1, :cond_2f

    .line 2950
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2951
    const/4 v2, 0x1

    iget-object v3, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v4, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v2, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 2949
    iget-object v1, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1d

    .line 2953
    .end local v1    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_2f
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2955
    if-eqz v0, :cond_37

    .line 2956
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2959
    .end local v0    # "syntheticEvent":Z
    :cond_37
    return-void
.end method

.method private greylist-max-o cancelHoverTarget(Landroid/view/View;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;

    .line 2321
    const/4 v0, 0x0

    .line 2322
    .local v0, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2323
    .local v1, "target":Landroid/view/ViewGroup$HoverTarget;
    :goto_3
    if-eqz v1, :cond_33

    .line 2324
    iget-object v2, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2325
    .local v2, "next":Landroid/view/ViewGroup$HoverTarget;
    iget-object v3, v1, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v3, p1, :cond_30

    .line 2326
    if-nez v0, :cond_10

    .line 2327
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_12

    .line 2329
    :cond_10
    iput-object v2, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2331
    :goto_12
    invoke-virtual {v1}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 2333
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2334
    .local v12, "now":J
    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 2336
    .local v3, "event":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2337
    invoke-virtual {p1, v3}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2338
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 2339
    return-void

    .line 2341
    .end local v3    # "event":Landroid/view/MotionEvent;
    .end local v12    # "now":J
    :cond_30
    move-object v0, v1

    .line 2342
    move-object v1, v2

    .line 2343
    .end local v2    # "next":Landroid/view/ViewGroup$HoverTarget;
    goto :goto_3

    .line 2344
    :cond_33
    return-void
.end method

.method private greylist cancelTouchTarget(Landroid/view/View;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;

    .line 3013
    const/4 v0, 0x0

    .line 3014
    .local v0, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 3015
    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_3
    if-eqz v1, :cond_32

    .line 3016
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3017
    .local v2, "next":Landroid/view/ViewGroup$TouchTarget;
    iget-object v3, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v3, p1, :cond_2f

    .line 3018
    if-nez v0, :cond_10

    .line 3019
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_12

    .line 3021
    :cond_10
    iput-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3023
    :goto_12
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 3025
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 3026
    .local v12, "now":J
    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 3028
    .local v3, "event":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 3029
    invoke-virtual {p1, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3030
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 3031
    return-void

    .line 3033
    .end local v3    # "event":Landroid/view/MotionEvent;
    .end local v12    # "now":J
    :cond_2f
    move-object v0, v1

    .line 3034
    move-object v1, v2

    .line 3035
    .end local v2    # "next":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_3

    .line 3036
    :cond_32
    return-void
.end method

.method private greylist-max-o clearCachedLayoutMode()V
    .registers 2

    .line 5220
    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 5221
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 5223
    :cond_b
    return-void
.end method

.method private greylist-max-o clearTouchTargets()V
    .registers 3

    .line 2924
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2925
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v0, :cond_f

    .line 2927
    :cond_4
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2928
    .local v1, "next":Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v0}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2929
    move-object v0, v1

    .line 2930
    .end local v1    # "next":Landroid/view/ViewGroup$TouchTarget;
    if-nez v0, :cond_4

    .line 2931
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2933
    :cond_f
    return-void
.end method

.method private greylist-max-o dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "child"    # Landroid/view/View;

    .line 2090
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2091
    invoke-direct {p0, p1, p3}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2092
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p3, v0, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    .line 2093
    .local v1, "pointerIcon":Landroid/view/PointerIcon;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2094
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_2b

    .line 2095
    .end local v1    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_12
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2096
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2097
    .local v1, "offsetY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2098
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v2

    .line 2099
    .local v2, "pointerIcon":Landroid/view/PointerIcon;
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object v1, v2

    .line 2101
    .end local v0    # "offsetX":F
    .end local v2    # "pointerIcon":Landroid/view/PointerIcon;
    .local v1, "pointerIcon":Landroid/view/PointerIcon;
    :goto_2b
    return-object v1
.end method

.method private greylist-max-o dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 2420
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2421
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2422
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2, v0}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2423
    .local v1, "result":Z
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2424
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_2b

    .line 2425
    .end local v1    # "result":Z
    :cond_12
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2426
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2427
    .local v1, "offsetY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2428
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2429
    .local v2, "result":Z
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move v1, v2

    .line 2431
    .end local v0    # "offsetX":F
    .end local v2    # "result":Z
    .local v1, "result":Z
    :goto_2b
    return v1
.end method

.method private greylist-max-o dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 2597
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2598
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2599
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2600
    .local v1, "handled":Z
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2601
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_2b

    .line 2602
    .end local v1    # "handled":Z
    :cond_12
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2603
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2604
    .local v1, "offsetY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2605
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2606
    .local v2, "handled":Z
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move v1, v2

    .line 2608
    .end local v0    # "offsetX":F
    .end local v2    # "handled":Z
    .local v1, "handled":Z
    :goto_2b
    return v1
.end method

.method private greylist-max-o dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "cancel"    # Z
    .param p3, "child"    # Landroid/view/View;
    .param p4, "desiredPointerIdBits"    # I

    .line 3103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3104
    .local v0, "oldAction":I
    const/4 v1, 0x3

    if-nez p2, :cond_b5

    if-ne v0, v1, :cond_b

    goto/16 :goto_b5

    .line 3122
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 3123
    .local v1, "oldPointerIdBits":I
    and-int v2, v1, p4

    .line 3127
    .local v2, "newPointerIdBits":I
    if-nez v2, :cond_15

    .line 3128
    const/4 v3, 0x0

    return v3

    .line 3136
    :cond_15
    if-ne v2, v1, :cond_70

    .line 3137
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_25

    .line 3165
    :cond_20
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_74

    .line 3138
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_25
    :goto_25
    if-nez p3, :cond_2c

    .line 3139
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .local v3, "handled":Z
    goto :goto_6f

    .line 3141
    .end local v3    # "handled":Z
    :cond_2c
    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v4, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 3142
    .local v3, "offsetX":F
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v5, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 3143
    .local v4, "offsetY":F
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3146
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v5

    invoke-interface {v5}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 3147
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v5

    invoke-interface {v5}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getMIUIAutoUI()Lcom/miui/autoui/MIUIAutoUIStub;

    move-result-object v5

    .line 3148
    invoke-interface {v5, p0, p3, p1}, Lcom/miui/autoui/MIUIAutoUIStub;->preDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 3152
    :cond_50
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 3154
    .local v5, "handled":Z
    neg-float v6, v3

    neg-float v7, v4

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3157
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v6

    invoke-interface {v6}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 3158
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v6

    invoke-interface {v6}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getMIUIAutoUI()Lcom/miui/autoui/MIUIAutoUIStub;

    move-result-object v6

    .line 3159
    invoke-interface {v6, p0, p3, p1}, Lcom/miui/autoui/MIUIAutoUIStub;->postDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 3163
    .end local v3    # "offsetX":F
    .end local v4    # "offsetY":F
    :cond_6e
    move v3, v5

    .end local v5    # "handled":Z
    .local v3, "handled":Z
    :goto_6f
    return v3

    .line 3167
    .end local v3    # "handled":Z
    :cond_70
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v3

    .line 3171
    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    :goto_74
    if-nez p3, :cond_7b

    .line 3172
    invoke-super {p0, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .local v4, "handled":Z
    goto :goto_b1

    .line 3174
    .end local v4    # "handled":Z
    :cond_7b
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v5, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 3175
    .local v4, "offsetX":F
    iget v5, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v6, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 3176
    .local v5, "offsetY":F
    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3177
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_97

    .line 3178
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 3182
    :cond_97
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v6

    invoke-interface {v6}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 3183
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v6

    invoke-interface {v6}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getMIUIAutoUI()Lcom/miui/autoui/MIUIAutoUIStub;

    move-result-object v6

    .line 3184
    invoke-interface {v6, p0, p3, p1}, Lcom/miui/autoui/MIUIAutoUIStub;->preDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 3188
    :cond_ac
    invoke-virtual {p3, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    move v4, v6

    .line 3192
    .end local v5    # "offsetY":F
    .local v4, "handled":Z
    :goto_b1
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 3193
    return v4

    .line 3105
    .end local v1    # "oldPointerIdBits":I
    .end local v2    # "newPointerIdBits":I
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    .end local v4    # "handled":Z
    :cond_b5
    :goto_b5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3106
    if-nez p3, :cond_bf

    .line 3107
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_d8

    .line 3110
    .end local v1    # "handled":Z
    :cond_bf
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 3111
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getMIUIAutoUI()Lcom/miui/autoui/MIUIAutoUIStub;

    move-result-object v1

    .line 3112
    invoke-interface {v1, p0, p3, p1}, Lcom/miui/autoui/MIUIAutoUIStub;->preDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 3115
    :cond_d4
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3117
    .restart local v1    # "handled":Z
    :goto_d8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3118
    return v1
.end method

.method private static greylist-max-o drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .registers 14
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "lw"    # I

    .line 4176
    add-int v4, p2, p4

    invoke-static {p5}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4177
    invoke-static {p4}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v5, p2, v0

    add-int v6, p3, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4178
    return-void
.end method

.method private static greylist-max-o drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .registers 9
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .line 9319
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    if-nez v0, :cond_a

    .line 9321
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    .line 9324
    :cond_a
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x0

    int-to-float v2, p2

    aput v2, v0, v1

    .line 9325
    const/4 v1, 0x1

    int-to-float v2, p3

    aput v2, v0, v1

    .line 9326
    const/4 v1, 0x2

    int-to-float v2, p4

    aput v2, v0, v1

    .line 9327
    const/4 v1, 0x3

    int-to-float v2, p3

    aput v2, v0, v1

    .line 9329
    const/4 v1, 0x4

    int-to-float v2, p4

    aput v2, v0, v1

    .line 9330
    const/4 v1, 0x5

    int-to-float v2, p3

    aput v2, v0, v1

    .line 9331
    const/4 v1, 0x6

    int-to-float v2, p4

    aput v2, v0, v1

    .line 9332
    const/4 v1, 0x7

    int-to-float v2, p5

    aput v2, v0, v1

    .line 9334
    const/16 v1, 0x8

    int-to-float v2, p4

    aput v2, v0, v1

    .line 9335
    const/16 v1, 0x9

    int-to-float v2, p5

    aput v2, v0, v1

    .line 9336
    const/16 v1, 0xa

    int-to-float v2, p2

    aput v2, v0, v1

    .line 9337
    const/16 v1, 0xb

    int-to-float v2, p5

    aput v2, v0, v1

    .line 9339
    const/16 v1, 0xc

    int-to-float v2, p2

    aput v2, v0, v1

    .line 9340
    const/16 v1, 0xd

    int-to-float v2, p5

    aput v2, v0, v1

    .line 9341
    const/16 v1, 0xe

    int-to-float v2, p2

    aput v2, v0, v1

    .line 9342
    const/16 v1, 0xf

    int-to-float v2, p3

    aput v2, v0, v1

    .line 9344
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 9345
    return-void
.end method

.method private static greylist-max-o drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V
    .registers 23
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "lineLength"    # I
    .param p7, "lineWidth"    # I

    .line 4182
    move/from16 v7, p6

    move-object v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p6

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4183
    neg-int v5, v7

    move/from16 v3, p4

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4184
    neg-int v4, v7

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v5, p6

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4185
    neg-int v12, v7

    neg-int v13, v7

    move-object v8, p0

    move-object/from16 v9, p5

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v14, p7

    invoke-static/range {v8 .. v14}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4186
    return-void
.end method

.method private greylist-max-o exitHoverTargets()V
    .registers 12

    .line 2310
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_22

    .line 2311
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2312
    .local v9, "now":J
    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2314
    .local v0, "event":Landroid/view/MotionEvent;
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2315
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2316
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2318
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v9    # "now":J
    :cond_22
    return-void
.end method

.method private greylist-max-o exitTooltipHoverTargets()V
    .registers 12

    .line 2435
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 2436
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2437
    .local v9, "now":J
    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2439
    .local v0, "event":Landroid/view/MotionEvent;
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2440
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2441
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2443
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v9    # "now":J
    :cond_22
    return-void
.end method

.method private static greylist-max-o fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .registers 20
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x2"    # I
    .param p2, "y2"    # I
    .param p3, "x3"    # I
    .param p4, "y3"    # I
    .param p5, "dx1"    # I
    .param p6, "dy1"    # I
    .param p7, "dx2"    # I
    .param p8, "dy2"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 4191
    sub-int v6, p1, p5

    .line 4192
    .local v6, "x1":I
    sub-int v7, p2, p6

    .line 4194
    .local v7, "y1":I
    add-int v8, p3, p7

    .line 4195
    .local v8, "x4":I
    add-int v9, p4, p8

    .line 4197
    .local v9, "y4":I
    move-object v0, p0

    move-object/from16 v1, p9

    move v2, v6

    move v3, v7

    move v4, v8

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4198
    move v3, p2

    move v4, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4199
    move v2, p3

    move v4, v8

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4200
    move v2, v6

    move v3, p4

    move v5, v9

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4201
    return-void
.end method

.method private static greylist-max-o fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .registers 12
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .line 4160
    if-eq p2, p4, :cond_17

    if-eq p3, p5, :cond_17

    .line 4161
    if-le p2, p4, :cond_9

    .line 4162
    move v0, p2

    .local v0, "tmp":I
    move p2, p4

    move p4, v0

    .line 4164
    .end local v0    # "tmp":I
    :cond_9
    if-le p3, p5, :cond_e

    .line 4165
    move v0, p3

    .restart local v0    # "tmp":I
    move p3, p5

    move p5, v0

    .line 4167
    .end local v0    # "tmp":I
    :cond_e
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4169
    :cond_17
    return-void
.end method

.method private greylist-max-o findChildWithAccessibilityFocus()Landroid/view/View;
    .registers 6

    .line 2876
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2877
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2878
    return-object v1

    .line 2881
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v2

    .line 2882
    .local v2, "current":Landroid/view/View;
    if-nez v2, :cond_f

    .line 2883
    return-object v1

    .line 2886
    :cond_f
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2887
    .local v3, "parent":Landroid/view/ViewParent;
    :goto_13
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_22

    .line 2888
    if-ne v3, p0, :cond_1a

    .line 2889
    return-object v2

    .line 2891
    :cond_1a
    move-object v2, v3

    check-cast v2, Landroid/view/View;

    .line 2892
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_13

    .line 2895
    :cond_22
    return-object v1
.end method

.method private greylist-max-o getAndVerifyPreorderedIndex(IIZ)I
    .registers 8
    .param p1, "childrenCount"    # I
    .param p2, "i"    # I
    .param p3, "customOrder"    # Z

    .line 2106
    if-eqz p3, :cond_33

    .line 2107
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 2108
    .local v0, "childIndex1":I
    if-ge v0, p1, :cond_a

    .line 2113
    nop

    .line 2114
    .local v0, "childIndex":I
    goto :goto_34

    .line 2109
    .local v0, "childIndex1":I
    :cond_a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChildDrawingOrder() returned invalid index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (child count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2115
    .end local v0    # "childIndex1":I
    :cond_33
    move v0, p2

    .line 2117
    .local v0, "childIndex":I
    :goto_34
    return v0
.end method

.method private static greylist-max-o getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;
    .registers 7
    .param p1, "children"    # [Landroid/view/View;
    .param p2, "childIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;[",
            "Landroid/view/View;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 3810
    .local p0, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_24

    .line 3811
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3812
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_b

    goto :goto_26

    .line 3813
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid preorderedList contained null child at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3817
    .end local v0    # "child":Landroid/view/View;
    :cond_24
    aget-object v0, p1, p2

    .line 3819
    .restart local v0    # "child":Landroid/view/View;
    :goto_26
    return-object v0
.end method

.method public static whitelist getChildMeasureSpec(III)I
    .registers 11
    .param p0, "spec"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I

    .line 7106
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7107
    .local v0, "specMode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 7109
    .local v1, "specSize":I
    sub-int v2, v1, p1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7111
    .local v2, "size":I
    const/4 v4, 0x0

    .line 7112
    .local v4, "resultSize":I
    const/4 v5, 0x0

    .line 7114
    .local v5, "resultMode":I
    const/4 v6, -0x2

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_5c

    goto :goto_56

    .line 7117
    :sswitch_17
    if-ltz p2, :cond_1d

    .line 7118
    move v4, p2

    .line 7119
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_56

    .line 7120
    :cond_1d
    if-ne p2, v7, :cond_23

    .line 7122
    move v4, v2

    .line 7123
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_56

    .line 7124
    :cond_23
    if-ne p2, v6, :cond_56

    .line 7127
    move v4, v2

    .line 7128
    const/high16 v5, -0x80000000

    goto :goto_56

    .line 7153
    :sswitch_29
    if-ltz p2, :cond_2f

    .line 7155
    move v4, p2

    .line 7156
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_56

    .line 7157
    :cond_2f
    if-ne p2, v7, :cond_3a

    .line 7160
    sget-boolean v6, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v6, :cond_36

    goto :goto_37

    :cond_36
    move v3, v2

    :goto_37
    move v4, v3

    .line 7161
    const/4 v5, 0x0

    goto :goto_56

    .line 7162
    :cond_3a
    if-ne p2, v6, :cond_56

    .line 7165
    sget-boolean v6, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v6, :cond_41

    goto :goto_42

    :cond_41
    move v3, v2

    :goto_42
    move v4, v3

    .line 7166
    const/4 v5, 0x0

    goto :goto_56

    .line 7134
    :sswitch_45
    if-ltz p2, :cond_4b

    .line 7136
    move v4, p2

    .line 7137
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_56

    .line 7138
    :cond_4b
    if-ne p2, v7, :cond_51

    .line 7141
    move v4, v2

    .line 7142
    const/high16 v5, -0x80000000

    goto :goto_56

    .line 7143
    :cond_51
    if-ne p2, v6, :cond_56

    .line 7146
    move v4, v2

    .line 7147
    const/high16 v5, -0x80000000

    .line 7171
    :cond_56
    :goto_56
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x80000000 -> :sswitch_45
        0x0 -> :sswitch_29
        0x40000000 -> :sswitch_17
    .end sparse-switch
.end method

.method private blacklist getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    .registers 3
    .param p1, "flags"    # I

    .line 3752
    invoke-static {}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->obtain()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3753
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    .line 3754
    return-object v0
.end method

.method private blacklist getChildrenForContentCapture()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    .registers 2

    .line 3781
    invoke-static {}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->obtain()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3782
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->populateChildrenForContentCapture(Ljava/util/ArrayList;)V

    .line 3783
    return-object v0
.end method

.method private greylist-max-o getLocalPoint()Landroid/graphics/PointF;
    .registers 2

    .line 1695
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 1696
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method private blacklist getTempLocationF()[F
    .registers 2

    .line 3046
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    if-nez v0, :cond_9

    .line 3047
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    .line 3049
    :cond_9
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    return-object v0
.end method

.method private blacklist getTempPoint()Landroid/graphics/Point;
    .registers 2

    .line 3053
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    if-nez v0, :cond_b

    .line 3054
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    .line 3056
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method private blacklist getTempRect()Landroid/graphics/Rect;
    .registers 2

    .line 3039
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 3040
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 3042
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private greylist-max-o getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 2966
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_2
    if-eqz v0, :cond_c

    .line 2967
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_9

    .line 2968
    return-object v0

    .line 2966
    :cond_9
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_2

    .line 2971
    .end local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 2621
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2622
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2623
    .local v1, "offsetY":F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 2624
    .local v2, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2625
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_20

    .line 2626
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2628
    :cond_20
    return-object v2
.end method

.method private greylist-max-o hasBooleanFlag(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 6737
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private greylist-max-o hasChildWithZ()Z
    .registers 4

    .line 4467
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_17

    .line 4468
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    return v1

    .line 4467
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4470
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 744
    sget-object v0, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 746
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->ViewGroup:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 749
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 750
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v1, :cond_a6

    .line 751
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 752
    .local v3, "attr":I
    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_aa

    goto/16 :goto_a2

    .line 796
    :pswitch_24
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    goto/16 :goto_a2

    .line 793
    :pswitch_2d
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 794
    goto/16 :goto_a2

    .line 790
    :pswitch_36
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 791
    goto :goto_a2

    .line 784
    :pswitch_3e
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 785
    .local v4, "animateLayoutChanges":Z
    if-eqz v4, :cond_a2

    .line 786
    new-instance v5, Landroid/animation/LayoutTransition;

    invoke-direct {v5}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_a2

    .line 781
    .end local v4    # "animateLayoutChanges":Z
    :pswitch_4d
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 782
    goto :goto_a2

    .line 778
    :pswitch_55
    sget-object v4, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 779
    goto :goto_a2

    .line 766
    :pswitch_61
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 767
    goto :goto_a2

    .line 769
    :pswitch_69
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 770
    goto :goto_a2

    .line 763
    :pswitch_71
    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    .line 764
    goto :goto_a2

    .line 760
    :pswitch_7a
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    .line 761
    goto :goto_a2

    .line 772
    :pswitch_82
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 773
    .local v4, "id":I
    if-lez v4, :cond_a2

    .line 774
    iget-object v5, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_a2

    .line 757
    .end local v4    # "id":I
    :pswitch_92
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 758
    goto :goto_a2

    .line 754
    :pswitch_9a
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 755
    nop

    .line 750
    .end local v3    # "attr":I
    :cond_a2
    :goto_a2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 801
    .end local v2    # "i":I
    :cond_a6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 802
    return-void

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_92
        :pswitch_82
        :pswitch_7a
        :pswitch_71
        :pswitch_69
        :pswitch_61
        :pswitch_55
        :pswitch_4d
        :pswitch_3e
        :pswitch_36
        :pswitch_2d
        :pswitch_24
    .end packed-switch
.end method

.method private greylist-max-o initViewGroup()V
    .registers 4

    .line 721
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingLayoutBounds()Z

    move-result v0

    if-nez v0, :cond_b

    .line 722
    const/16 v0, 0x80

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 724
    :cond_b
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 725
    const/4 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 726
    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 727
    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 728
    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 730
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_34

    .line 731
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 734
    :cond_34
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 736
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 737
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 739
    iput v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 740
    return-void
.end method

.method private blacklist newDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 7469
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7470
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 7471
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 7470
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7473
    .end local v1    # "i":I
    :cond_11
    return-object p1
.end method

.method private greylist-max-o notifyAnimationListener()V
    .registers 2

    .line 4511
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4512
    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4514
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_16

    .line 4515
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    .line 4521
    .local v0, "end":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 4524
    .end local v0    # "end":Ljava/lang/Runnable;
    :cond_16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4525
    return-void
.end method

.method private static greylist-max-o obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 2536
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_7

    .line 2537
    return-object p0

    .line 2539
    :cond_7
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o populateChildrenForAutofill(Ljava/util/ArrayList;I)V
    .registers 10
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 3759
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3760
    .local v0, "childrenCount":I
    if-gtz v0, :cond_5

    .line 3761
    return-void

    .line 3763
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3764
    .local v1, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v1, :cond_13

    .line 3765
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    .line 3766
    .local v2, "customOrder":Z
    :goto_14
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v0, :cond_44

    .line 3767
    invoke-direct {p0, v0, v3, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v4

    .line 3768
    .local v4, "childIndex":I
    if-nez v1, :cond_22

    .line 3769
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v4

    goto :goto_28

    :cond_22
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3770
    .local v5, "child":Landroid/view/View;
    :goto_28
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_3e

    .line 3771
    invoke-virtual {v5}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v6

    if-eqz v6, :cond_33

    goto :goto_3e

    .line 3773
    :cond_33
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_41

    .line 3774
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {v6, p1, p2}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    goto :goto_41

    .line 3772
    :cond_3e
    :goto_3e
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3766
    .end local v4    # "childIndex":I
    .end local v5    # "child":Landroid/view/View;
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 3777
    .end local v3    # "i":I
    :cond_44
    return-void
.end method

.method private blacklist populateChildrenForContentCapture(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 3788
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3789
    .local v0, "childrenCount":I
    if-gtz v0, :cond_5

    .line 3790
    return-void

    .line 3792
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3793
    .local v1, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v1, :cond_13

    .line 3794
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    .line 3795
    .local v2, "customOrder":Z
    :goto_14
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v0, :cond_3f

    .line 3796
    invoke-direct {p0, v0, v3, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v4

    .line 3797
    .local v4, "childIndex":I
    if-nez v1, :cond_22

    .line 3798
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v4

    goto :goto_28

    :cond_22
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3799
    .local v5, "child":Landroid/view/View;
    :goto_28
    invoke-virtual {v5}, Landroid/view/View;->isImportantForContentCapture()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 3800
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 3801
    :cond_32
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3c

    .line 3802
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {v6, p1}, Landroid/view/ViewGroup;->populateChildrenForContentCapture(Ljava/util/ArrayList;)V

    .line 3795
    .end local v4    # "childIndex":I
    .end local v5    # "child":Landroid/view/View;
    :cond_3c
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 3805
    .end local v3    # "i":I
    :cond_3f
    return-void
.end method

.method private greylist-max-o recreateChildDisplayList(Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .line 4568
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 4569
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4570
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    .line 4571
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 4572
    return-void
.end method

.method private greylist-max-o removeFromArray(I)V
    .registers 7
    .param p1, "index"    # I

    .line 5447
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5448
    .local v0, "children":[Landroid/view/View;
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    aget-object v3, v0, p1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 5449
    :cond_f
    aget-object v1, v0, p1

    iput-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5451
    :cond_13
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5452
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    if-ne p1, v3, :cond_22

    .line 5453
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v2, v0, v3

    goto :goto_37

    .line 5454
    :cond_22
    if-ltz p1, :cond_4a

    if-ge p1, v1, :cond_4a

    .line 5455
    add-int/lit8 v3, p1, 0x1

    sub-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5456
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v2, v0, v3

    .line 5460
    :goto_37
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_43

    .line 5461
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 5462
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_49

    .line 5463
    :cond_43
    if-le v2, p1, :cond_49

    .line 5464
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 5466
    :cond_49
    :goto_49
    return-void

    .line 5458
    :cond_4a
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private greylist-max-o removeFromArray(II)V
    .registers 9
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5470
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5471
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5473
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5474
    add-int v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5476
    .local v2, "end":I
    if-ne p1, v2, :cond_12

    .line 5477
    return-void

    .line 5480
    :cond_12
    const/4 v3, 0x0

    if-ne v2, v1, :cond_22

    .line 5481
    move v4, p1

    .local v4, "i":I
    :goto_16
    if-ge v4, v2, :cond_21

    .line 5482
    aget-object v5, v0, v4

    iput-object v3, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5483
    aput-object v3, v0, v4

    .line 5481
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .end local v4    # "i":I
    :cond_21
    goto :goto_3c

    .line 5486
    :cond_22
    move v4, p1

    .restart local v4    # "i":I
    :goto_23
    if-ge v4, v2, :cond_2c

    .line 5487
    aget-object v5, v0, v4

    iput-object v3, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5486
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 5492
    .end local v4    # "i":I
    :cond_2c
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5494
    sub-int v4, v2, p1

    sub-int v4, v1, v4

    .restart local v4    # "i":I
    :goto_35
    if-ge v4, v1, :cond_3c

    .line 5495
    aput-object v3, v0, v4

    .line 5494
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 5499
    .end local v4    # "i":I
    :cond_3c
    :goto_3c
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v4, v2, p1

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5500
    return-void
.end method

.method private greylist-max-o removePointersFromTouchTargets(I)V
    .registers 7
    .param p1, "pointerIdBits"    # I

    .line 2989
    const/4 v0, 0x0

    .line 2990
    .local v0, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2991
    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_3
    if-eqz v1, :cond_25

    .line 2992
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2993
    .local v2, "next":Landroid/view/ViewGroup$TouchTarget;
    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_22

    .line 2994
    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    not-int v4, p1

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2995
    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_22

    .line 2996
    if-nez v0, :cond_1b

    .line 2997
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1d

    .line 2999
    :cond_1b
    iput-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3001
    :goto_1d
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 3002
    move-object v1, v2

    .line 3003
    goto :goto_3

    .line 3006
    :cond_22
    move-object v0, v1

    .line 3007
    move-object v1, v2

    .line 3008
    .end local v2    # "next":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_3

    .line 3009
    :cond_25
    return-void
.end method

.method private greylist-max-o removeViewInternal(ILandroid/view/View;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 5615
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_7

    .line 5616
    invoke-virtual {v0, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5619
    :cond_7
    const/4 v0, 0x0

    .line 5620
    .local v0, "clearChildFocus":Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_11

    .line 5621
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5622
    const/4 v0, 0x1

    .line 5624
    :cond_11
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p2, v1, :cond_18

    .line 5625
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5628
    :cond_18
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5630
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5631
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5633
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_32

    .line 5634
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_3a

    .line 5636
    :cond_32
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3d

    .line 5637
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3d

    .line 5635
    :cond_3a
    :goto_3a
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 5640
    :cond_3d
    :goto_3d
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    .line 5641
    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5644
    :cond_47
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5646
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 5648
    invoke-virtual {p2}, Landroid/view/View;->hasUnhandledKeyListener()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 5649
    invoke-virtual {p0}, Landroid/view/ViewGroup;->decrementChildUnhandledKeyListeners()V

    .line 5652
    :cond_56
    iget-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p2, v1, :cond_5d

    .line 5653
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5655
    :cond_5d
    if-eqz v0, :cond_6b

    .line 5656
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 5657
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 5658
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5662
    :cond_6b
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5664
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_79

    .line 5665
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5668
    :cond_79
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v1, :cond_7e

    goto :goto_82

    :cond_7e
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    :goto_82
    move v1, v2

    .line 5669
    .local v1, "transientCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_84
    if-ge v2, v1, :cond_98

    .line 5670
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 5671
    .local v3, "oldIndex":I
    if-ge p1, v3, :cond_95

    .line 5672
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/IntArray;->set(II)V

    .line 5669
    .end local v3    # "oldIndex":I
    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 5676
    .end local v2    # "i":I
    :cond_98
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_a1

    .line 5677
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5679
    :cond_a1
    return-void
.end method

.method private greylist-max-o removeViewInternal(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 5606
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 5607
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 5608
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 5609
    const/4 v1, 0x1

    return v1

    .line 5611
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o removeViewsInternal(II)V
    .registers 13
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5721
    add-int v0, p1, p2

    .line 5723
    .local v0, "end":I
    if-ltz p1, :cond_83

    if-ltz p2, :cond_83

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gt v0, v1, :cond_83

    .line 5727
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 5728
    .local v1, "focused":Landroid/view/View;
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    move v2, v3

    .line 5729
    .local v2, "detach":Z
    :goto_14
    const/4 v4, 0x0

    .line 5730
    .local v4, "clearChildFocus":Z
    const/4 v5, 0x0

    .line 5732
    .local v5, "clearDefaultFocus":Landroid/view/View;
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5734
    .local v6, "children":[Landroid/view/View;
    move v7, p1

    .local v7, "i":I
    :goto_19
    if-ge v7, v0, :cond_6c

    .line 5735
    aget-object v8, v6, v7

    .line 5737
    .local v8, "view":Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v9, :cond_24

    .line 5738
    invoke-virtual {v9, p0, v8}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5741
    :cond_24
    if-ne v8, v1, :cond_2b

    .line 5742
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5743
    const/4 v4, 0x1

    .line 5745
    :cond_2b
    iget-object v9, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne v8, v9, :cond_30

    .line 5746
    move-object v5, v8

    .line 5748
    :cond_30
    iget-object v9, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne v8, v9, :cond_37

    .line 5749
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5752
    :cond_37
    invoke-virtual {v8}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5754
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5755
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5757
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_57

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v9, :cond_51

    .line 5758
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    goto :goto_57

    .line 5760
    :cond_51
    if-eqz v2, :cond_5a

    .line 5761
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_5a

    .line 5759
    :cond_57
    :goto_57
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 5764
    :cond_5a
    :goto_5a
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-eqz v9, :cond_63

    .line 5765
    invoke-virtual {p0, v8, v3}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5768
    :cond_63
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5770
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5734
    .end local v8    # "view":Landroid/view/View;
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 5773
    .end local v7    # "i":I
    :cond_6c
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 5775
    if-eqz v5, :cond_74

    .line 5776
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5778
    :cond_74
    if-eqz v4, :cond_82

    .line 5779
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 5780
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v3

    if-nez v3, :cond_82

    .line 5781
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5784
    :cond_82
    return-void

    .line 5724
    .end local v1    # "focused":Landroid/view/View;
    .end local v2    # "detach":Z
    .end local v4    # "clearChildFocus":Z
    .end local v5    # "clearDefaultFocus":Landroid/view/View;
    .end local v6    # "children":[Landroid/view/View;
    :cond_83
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method private static greylist-max-o resetCancelNextUpFlag(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2913
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 2914
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2915
    const/4 v0, 0x1

    return v0

    .line 2917
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o resetTouchState()V
    .registers 3

    .line 2902
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2903
    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2904
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2905
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 2906
    return-void
.end method

.method private greylist-max-o restoreFocusInClusterInternal(I)Z
    .registers 4
    .param p1, "direction"    # I

    .line 3460
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 3462
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3463
    const/4 v0, 0x1

    return v0

    .line 3465
    :cond_1e
    invoke-super {p0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o setBooleanFlag(IZ)V
    .registers 5
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 6741
    if-eqz p2, :cond_8

    .line 6742
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_e

    .line 6744
    :cond_8
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6746
    :goto_e
    return-void
.end method

.method private greylist-max-o setLayoutMode(IZ)V
    .registers 4
    .param p1, "layoutMode"    # I
    .param p2, "explicitly"    # Z

    .line 6818
    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 6819
    const/high16 v0, 0x800000

    invoke-direct {p0, v0, p2}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6820
    return-void
.end method

.method private greylist-max-o setTouchscreenBlocksFocusNoRefocus(Z)V
    .registers 4
    .param p1, "touchscreenBlocksFocus"    # Z

    .line 1430
    if-eqz p1, :cond_a

    .line 1431
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_12

    .line 1433
    :cond_a
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1435
    :goto_12
    return-void
.end method

.method private static greylist-max-o sign(I)I
    .registers 2
    .param p0, "x"    # I

    .line 4172
    if-ltz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    return v0
.end method

.method private greylist-max-o touchAccessibilityNodeProviderIfNeeded(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 5410
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isAutofillCompatibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5411
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 5413
    :cond_b
    return-void
.end method


# virtual methods
.method public whitelist addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2463
    .local p1, "outChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2464
    return-void

    .line 2466
    :cond_7
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v0

    .line 2468
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_c
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    .line 2469
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_2d

    .line 2470
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2471
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_2a

    .line 2472
    invoke-virtual {v3}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2473
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 2475
    :cond_27
    invoke-virtual {v3, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 2469
    .end local v3    # "child":Landroid/view/View;
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2480
    .end local v1    # "childrenCount":I
    .end local v2    # "i":I
    :cond_2d
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2481
    nop

    .line 2482
    return-void

    .line 2480
    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2481
    throw v1
.end method

.method public whitelist addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "extraDataKey"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 3871
    const-string v0, "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3873
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    move-result-object v0

    .line 3874
    .local v0, "extraRenderingInfo":Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->setLayoutSize(II)V

    .line 3875
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setExtraRenderingInfo(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V

    .line 3877
    .end local v0    # "extraRenderingInfo":Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    :cond_1e
    return-void
.end method

.method public whitelist addFocusables(Ljava/util/ArrayList;II)V
    .registers 14
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1320
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1322
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    .line 1323
    .local v1, "descendantFocusability":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v2

    .line 1324
    .local v2, "blockFocusForTouchscreen":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_18

    if-nez v2, :cond_16

    goto :goto_18

    :cond_16
    move v3, v4

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v3, 0x1

    .line 1326
    .local v3, "focusSelf":Z
    :goto_19
    const/high16 v5, 0x60000

    if-ne v1, v5, :cond_23

    .line 1327
    if-eqz v3, :cond_22

    .line 1328
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1330
    :cond_22
    return-void

    .line 1333
    :cond_23
    if-eqz v2, :cond_27

    .line 1334
    or-int/lit8 p3, p3, 0x1

    .line 1337
    :cond_27
    const/high16 v5, 0x20000

    if-ne v1, v5, :cond_30

    if-eqz v3, :cond_30

    .line 1338
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1341
    :cond_30
    const/4 v5, 0x0

    .line 1342
    .local v5, "count":I
    iget v6, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    new-array v6, v6, [Landroid/view/View;

    .line 1343
    .local v6, "children":[Landroid/view/View;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_36
    iget v8, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v7, v8, :cond_4c

    .line 1344
    iget-object v8, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v8, v8, v7

    .line 1345
    .local v8, "child":Landroid/view/View;
    iget v9, v8, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v9, v9, 0xc

    if-nez v9, :cond_49

    .line 1346
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "count":I
    .local v9, "count":I
    aput-object v8, v6, v5

    move v5, v9

    .line 1343
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "count":I
    .restart local v5    # "count":I
    :cond_49
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 1349
    .end local v7    # "i":I
    :cond_4c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v7

    invoke-static {v6, v4, v5, p0, v7}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 1350
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_54
    if-ge v4, v5, :cond_5e

    .line 1351
    aget-object v7, v6, v4

    invoke-virtual {v7, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1350
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 1358
    .end local v4    # "i":I
    :cond_5e
    const/high16 v4, 0x40000

    if-ne v1, v4, :cond_6d

    if-eqz v3, :cond_6d

    .line 1359
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v0, v4, :cond_6d

    .line 1360
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1362
    :cond_6d
    return-void
.end method

.method public whitelist addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    .registers 10
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1366
    .local p1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1368
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 1371
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v1

    .line 1373
    .local v1, "blockedFocus":Z
    :try_start_f
    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 1374
    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1a

    .line 1376
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 1377
    nop

    .line 1378
    .end local v1    # "blockedFocus":Z
    goto :goto_22

    .line 1376
    .restart local v1    # "blockedFocus":Z
    :catchall_1a
    move-exception v2

    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 1377
    throw v2

    .line 1379
    .end local v1    # "blockedFocus":Z
    :cond_1f
    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 1382
    :goto_22
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eq v0, v1, :cond_29

    .line 1384
    return-void

    .line 1387
    :cond_29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v3, 0x60000

    if-ne v1, v3, :cond_32

    .line 1388
    return-void

    .line 1391
    :cond_32
    const/4 v1, 0x0

    .line 1392
    .local v1, "count":I
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    new-array v3, v3, [Landroid/view/View;

    .line 1393
    .local v3, "visibleChildren":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v4, v5, :cond_4e

    .line 1394
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v4

    .line 1395
    .local v5, "child":Landroid/view/View;
    iget v6, v5, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_4b

    .line 1396
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "count":I
    .local v6, "count":I
    aput-object v5, v3, v1

    move v1, v6

    .line 1393
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .restart local v1    # "count":I
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 1399
    .end local v4    # "i":I
    :cond_4e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v4

    invoke-static {v3, v2, v1, p0, v4}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 1400
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_56
    if-ge v2, v1, :cond_60

    .line 1401
    aget-object v4, v3, v2

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 1400
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 1403
    .end local v2    # "i":I
    :cond_60
    return-void
.end method

.method public whitelist addStatesFromChildren()Z
    .registers 2

    .line 7744
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist addTouchables(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1528
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1530
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1531
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1533
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_18

    .line 1534
    aget-object v3, v1, v2

    .line 1535
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_15

    .line 1536
    invoke-virtual {v3, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1533
    .end local v3    # "child":Landroid/view/View;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1539
    .end local v2    # "i":I
    :cond_18
    return-void
.end method

.method public greylist addTransientView(Landroid/view/View;I)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 4920
    if-ltz p2, :cond_77

    if-nez p1, :cond_6

    goto/16 :goto_77

    .line 4923
    :cond_6
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_5c

    .line 4928
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v0, :cond_1c

    .line 4929
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    .line 4930
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 4932
    :cond_1c
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 4933
    .local v0, "oldSize":I
    if-lez v0, :cond_3e

    .line 4935
    const/4 v1, 0x0

    .local v1, "insertionIndex":I
    :goto_25
    if-ge v1, v0, :cond_33

    .line 4936
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    if-ge p2, v2, :cond_30

    .line 4937
    goto :goto_33

    .line 4935
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 4940
    :cond_33
    :goto_33
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/IntArray;->add(II)V

    .line 4941
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4942
    .end local v1    # "insertionIndex":I
    goto :goto_48

    .line 4943
    :cond_3e
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v1, p2}, Landroid/util/IntArray;->add(I)V

    .line 4944
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4946
    :goto_48
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4947
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_57

    .line 4948
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 4950
    :cond_57
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4951
    return-void

    .line 4924
    .end local v0    # "oldSize":I
    :cond_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified view already has a parent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4921
    :cond_77
    :goto_77
    return-void
.end method

.method public whitelist addView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 5046
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 5047
    return-void
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 5063
    if-eqz p1, :cond_1b

    .line 5066
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5067
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_17

    .line 5068
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5069
    if-eqz v0, :cond_f

    goto :goto_17

    .line 5070
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null  "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5074
    :cond_17
    :goto_17
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5075
    return-void

    .line 5064
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;II)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 5088
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5089
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5090
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5091
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5092
    return-void
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5125
    if-eqz p1, :cond_e

    .line 5132
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 5135
    return-void

    .line 5126
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5106
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5107
    return-void
.end method

.method protected whitelist addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected whitelist addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .line 5277
    if-eqz p1, :cond_14

    .line 5280
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5281
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 5282
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5283
    const/4 v0, 0x1

    return v0

    .line 5278
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .line 5519
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 5521
    .local v0, "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_c

    .line 5522
    new-instance v1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    invoke-direct {v1}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    move-object v0, v1

    .line 5523
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 5526
    :cond_c
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 5527
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 5528
    return-void
.end method

.method public blacklist attachMIUIViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5992
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 5993
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 5996
    :cond_a
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5997
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5998
    return-void
.end method

.method protected whitelist attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5954
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 5956
    if-gez p2, :cond_6

    .line 5957
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5960
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 5962
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5963
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5966
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDetached(Z)V

    .line 5967
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5969
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 5970
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 5972
    :cond_32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_46

    .line 5973
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v0, 0x1

    goto :goto_47

    :cond_46
    nop

    .line 5972
    :goto_47
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchVisibilityAggregated(Z)Z

    .line 5974
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5976
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewForceDarkStateStub;->isApplyForceDarkConfig()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 5977
    invoke-virtual {p1}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewForceDarkStateStub;->markForceDarkDirtyRoot()V

    .line 5980
    :cond_5e
    return-void
.end method

.method public whitelist bringChildToFront(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 1684
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1685
    .local v0, "index":I
    if-ltz v0, :cond_16

    .line 1686
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 1687
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 1688
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1689
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1690
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1692
    :cond_16
    return-void
.end method

.method greylist-max-o buildOrderedChildList()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 4482
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4483
    .local v0, "childrenCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_56

    invoke-direct {p0}, Landroid/view/ViewGroup;->hasChildWithZ()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_56

    .line 4485
    :cond_c
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    if-nez v1, :cond_18

    .line 4486
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    goto :goto_20

    .line 4489
    :cond_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4490
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 4493
    :goto_20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v1

    .line 4494
    .local v1, "customOrder":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_53

    .line 4496
    invoke-direct {p0, v0, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v3

    .line 4497
    .local v3, "childIndex":I
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v4, v4, v3

    .line 4498
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getZ()F

    move-result v5

    .line 4501
    .local v5, "currentZ":F
    move v6, v2

    .line 4502
    .local v6, "insertIndex":I
    :goto_34
    if-lez v6, :cond_4b

    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getZ()F

    move-result v7

    cmpl-float v7, v7, v5

    if-lez v7, :cond_4b

    .line 4503
    add-int/lit8 v6, v6, -0x1

    goto :goto_34

    .line 4505
    :cond_4b
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4494
    .end local v3    # "childIndex":I
    .end local v4    # "nextChild":Landroid/view/View;
    .end local v5    # "currentZ":F
    .end local v6    # "insertIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 4507
    .end local v2    # "i":I
    :cond_53
    iget-object v2, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    return-object v2

    .line 4483
    .end local v1    # "customOrder":Z
    :cond_56
    :goto_56
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o buildTouchDispatchChildList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 2867
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist canAnimate()Z
    .registers 2

    .line 6533
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o captureTransitioningViews(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 8092
    .local p1, "transitioningViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 8093
    return-void

    .line 8095
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8096
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 8098
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8099
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_22

    .line 8100
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8101
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 8099
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 8104
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_22
    :goto_22
    return-void
.end method

.method public whitelist captureWindowTransitioningViews(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 8108
    .local p1, "transitioningViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 8109
    return-void

    .line 8111
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8112
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_18

    .line 8113
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8114
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 8112
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 8116
    .end local v1    # "i":I
    :cond_18
    return-void
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5149
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public whitelist childDrawableStateChanged(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 7753
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_9

    .line 7754
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 7756
    :cond_9
    return-void
.end method

.method public whitelist childHasTransientStateChanged(Landroid/view/View;Z)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childHasTransientState"    # Z

    .line 1153
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v0

    .line 1154
    .local v0, "oldHasTransientState":Z
    if-eqz p2, :cond_d

    .line 1155
    iget v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    goto :goto_13

    .line 1157
    :cond_d
    iget v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 1160
    :goto_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v1

    .line 1161
    .local v1, "newHasTransientState":Z
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_46

    if-eq v0, v1, :cond_46

    .line 1163
    :try_start_1d
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, v1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_22
    .catch Ljava/lang/AbstractMethodError; {:try_start_1d .. :try_end_22} :catch_23

    .line 1167
    goto :goto_46

    .line 1164
    :catch_23
    move-exception v2

    .line 1165
    .local v2, "e":Ljava/lang/AbstractMethodError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not fully implement ViewParent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ViewGroup"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1169
    .end local v2    # "e":Ljava/lang/AbstractMethodError;
    :cond_46
    :goto_46
    return-void
.end method

.method protected whitelist cleanupLayoutState(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 5293
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_1d

    .line 5294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vg.cleanupLayoutState clear PFLAG_FORCE_LAYOUT for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5297
    :cond_1d
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5298
    return-void
.end method

.method public whitelist clearChildFocus(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1188
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1189
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_c

    .line 1190
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 1192
    :cond_c
    return-void
.end method

.method greylist-max-o clearDefaultFocus(Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .line 905
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eq v0, p1, :cond_d

    if-eqz v0, :cond_d

    .line 906
    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 907
    return-void

    .line 910
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 913
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_31

    .line 914
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    .line 915
    .local v1, "sibling":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 916
    iput-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 917
    return-void

    .line 918
    :cond_22
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-nez v2, :cond_2e

    invoke-virtual {v1}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 919
    iput-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 913
    .end local v1    # "sibling":Landroid/view/View;
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 923
    .end local v0    # "i":I
    :cond_31
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3e

    .line 924
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 926
    :cond_3e
    return-void
.end method

.method public whitelist clearDisappearingChildren()V
    .registers 6

    .line 7180
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7181
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_24

    .line 7182
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7183
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_1e

    .line 7184
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7185
    .local v3, "view":Landroid/view/View;
    iget-object v4, v3, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_18

    .line 7186
    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 7188
    :cond_18
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 7183
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 7190
    .end local v2    # "i":I
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7191
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7193
    .end local v1    # "count":I
    :cond_24
    return-void
.end method

.method public whitelist clearFocus()V
    .registers 3

    .line 1199
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1200
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    goto :goto_10

    .line 1202
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1203
    .local v0, "focused":Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1204
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1206
    .end local v0    # "focused":Landroid/view/View;
    :goto_10
    return-void
.end method

.method greylist-max-o clearFocusedInCluster()V
    .registers 5

    .line 951
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findKeyboardNavigationCluster()Landroid/view/View;

    move-result-object v0

    .line 952
    .local v0, "top":Landroid/view/View;
    move-object v1, p0

    .line 954
    .local v1, "parent":Landroid/view/ViewParent;
    :cond_5
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 955
    if-ne v1, v0, :cond_e

    .line 956
    goto :goto_16

    .line 958
    :cond_e
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 959
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_5

    .line 960
    :goto_16
    return-void
.end method

.method greylist-max-o clearFocusedInCluster(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 941
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eq v0, p1, :cond_5

    .line 942
    return-void

    .line 944
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocusedInCluster()V

    .line 945
    return-void
.end method

.method greylist-max-o computeOpticalInsets()Landroid/graphics/Insets;
    .registers 9

    .line 4138
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 4139
    const/4 v0, 0x0

    .line 4140
    .local v0, "left":I
    const/4 v1, 0x0

    .line 4141
    .local v1, "top":I
    const/4 v2, 0x0

    .line 4142
    .local v2, "right":I
    const/4 v3, 0x0

    .line 4143
    .local v3, "bottom":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v4, v5, :cond_38

    .line 4144
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4145
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_35

    .line 4146
    invoke-virtual {v5}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v6

    .line 4147
    .local v6, "insets":Landroid/graphics/Insets;
    iget v7, v6, Landroid/graphics/Insets;->left:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4148
    iget v7, v6, Landroid/graphics/Insets;->top:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4149
    iget v7, v6, Landroid/graphics/Insets;->right:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4150
    iget v7, v6, Landroid/graphics/Insets;->bottom:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4143
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "insets":Landroid/graphics/Insets;
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 4153
    .end local v4    # "i":I
    :cond_38
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    return-object v4

    .line 4155
    .end local v0    # "left":I
    .end local v1    # "top":I
    .end local v2    # "right":I
    .end local v3    # "bottom":I
    :cond_3d
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public greylist-max-o createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "canvasProvider"    # Landroid/view/ViewDebug$CanvasProvider;
    .param p2, "skipChildren"    # Z

    .line 4103
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4104
    .local v0, "count":I
    const/4 v1, 0x0

    .line 4106
    .local v1, "visibilities":[I
    if-eqz p2, :cond_23

    .line 4107
    new-array v1, v0, [I

    .line 4108
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_23

    .line 4109
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4110
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    aput v4, v1, v2

    .line 4111
    aget v4, v1, v2

    if-nez v4, :cond_20

    .line 4112
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, -0xd

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Landroid/view/View;->mViewFlags:I

    .line 4108
    .end local v3    # "child":Landroid/view/View;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4119
    .end local v2    # "i":I
    :cond_23
    :try_start_23
    invoke-super {p0, p1, p2}, Landroid/view/View;->createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_3f

    .line 4121
    if-eqz p2, :cond_3e

    .line 4122
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    if-ge v3, v0, :cond_3e

    .line 4123
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4124
    .local v4, "child":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    aget v6, v1, v3

    and-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/View;->mViewFlags:I

    .line 4122
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 4119
    .end local v3    # "i":I
    :cond_3e
    return-object v2

    .line 4121
    :catchall_3f
    move-exception v2

    if-eqz p2, :cond_57

    .line 4122
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_43
    if-ge v3, v0, :cond_57

    .line 4123
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4124
    .restart local v4    # "child":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    aget v6, v1, v3

    and-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/View;->mViewFlags:I

    .line 4122
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 4128
    .end local v3    # "i":I
    :cond_57
    throw v2
.end method

.method protected whitelist debug(I)V
    .registers 7
    .param p1, "depth"    # I

    .line 6935
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 6938
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    const-string v1, "View"

    if-eqz v0, :cond_2b

    .line 6939
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6940
    .local v0, "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mFocused"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6941
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6942
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->debug(I)V

    .line 6944
    .end local v0    # "output":Ljava/lang/String;
    :cond_2b
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_50

    .line 6945
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6946
    .restart local v0    # "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDefaultFocus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6947
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6948
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->debug(I)V

    .line 6950
    .end local v0    # "output":Ljava/lang/String;
    :cond_50
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v0, :cond_76

    .line 6951
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6952
    .restart local v0    # "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mFocusedInCluster"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6953
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6954
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->debug(I)V

    .line 6956
    .end local v0    # "output":Ljava/lang/String;
    :cond_76
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v0, :cond_95

    .line 6957
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6958
    .restart local v0    # "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6959
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6961
    .end local v0    # "output":Ljava/lang/String;
    :cond_95
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6962
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_98
    if-ge v2, v0, :cond_a6

    .line 6963
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v3, v3, v2

    .line 6964
    .local v3, "child":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->debug(I)V

    .line 6962
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 6967
    .end local v2    # "i":I
    :cond_a6
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v2, :cond_c5

    .line 6968
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    .line 6969
    .local v2, "output":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6970
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6972
    .end local v2    # "output":Ljava/lang/String;
    :cond_c5
    return-void
.end method

.method greylist-max-o decrementChildUnhandledKeyListeners()V
    .registers 2

    .line 8148
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 8149
    if-nez v0, :cond_15

    .line 8150
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_15

    .line 8151
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->decrementChildUnhandledKeyListeners()V

    .line 8154
    :cond_15
    return-void
.end method

.method protected greylist-max-o destroyHardwareResources()V
    .registers 4

    .line 5240
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 5241
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 5242
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 5243
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->destroyHardwareResources()V

    .line 5242
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 5245
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method protected whitelist detachAllViewsFromParent()V
    .registers 7

    .line 6090
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6091
    .local v0, "count":I
    if-gtz v0, :cond_5

    .line 6092
    return-void

    .line 6095
    :cond_5
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6096
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6098
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_1e

    .line 6099
    aget-object v3, v1, v2

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6100
    aget-object v3, v1, v2

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setDetached(Z)V

    .line 6101
    aput-object v4, v1, v2

    .line 6098
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 6103
    .end local v2    # "i":I
    :cond_1e
    return-void
.end method

.method public blacklist detachMIUIViewFromParent(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .line 5987
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 5988
    return-void
.end method

.method protected whitelist detachViewFromParent(I)V
    .registers 4
    .param p1, "index"    # I

    .line 6041
    if-ltz p1, :cond_e

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge p1, v0, :cond_e

    .line 6042
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDetached(Z)V

    .line 6044
    :cond_e
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 6045
    return-void
.end method

.method protected whitelist detachViewFromParent(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 6019
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDetached(Z)V

    .line 6020
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 6021
    return-void
.end method

.method protected whitelist detachViewsFromParent(II)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 6066
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6067
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6068
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1b

    .line 6069
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDetached(Z)V

    .line 6068
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 6071
    .end local v1    # "i":I
    :cond_1b
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 6072
    return-void
.end method

.method public greylist-max-o dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z
    .registers 10
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .line 1061
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1062
    return v1

    .line 1064
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1065
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_1d

    .line 1066
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1067
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1068
    return v1

    .line 1065
    .end local v3    # "child":Landroid/view/View;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1071
    .end local v2    # "i":I
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist dispatchAlphaChanged(F)V
    .registers 6
    .param p1, "alpha"    # F

    .line 9465
    invoke-super {p0, p1}, Landroid/view/View;->dispatchAlphaChanged(F)V

    .line 9466
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 9467
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 9468
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 9469
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchAlphaChanged(F)V

    .line 9468
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 9471
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 7446
    invoke-super {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 7447
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7448
    return-object p1

    .line 7450
    :cond_b
    sget-boolean v0, Landroid/view/View;->sBrokenInsetsDispatch:Z

    if-eqz v0, :cond_14

    .line 7451
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->brokenDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 7453
    :cond_14
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->newDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method greylist dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .registers 9
    .param p1, "info"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .line 3535
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3536
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3537
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3539
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3540
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3541
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v0, :cond_2a

    .line 3542
    aget-object v3, v1, v2

    .line 3543
    .local v3, "child":Landroid/view/View;
    nop

    .line 3544
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {p0, p2, v4}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v4

    .line 3543
    invoke-virtual {v3, p1, v4}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3541
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 3546
    .end local v2    # "i":I
    :cond_2a
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v2, :cond_30

    const/4 v2, 0x0

    goto :goto_34

    :cond_30
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    .line 3547
    .local v2, "transientCount":I
    :goto_34
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_35
    if-ge v3, v2, :cond_4e

    .line 3548
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3549
    .local v4, "view":Landroid/view/View;
    nop

    .line 3550
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {p0, p2, v5}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v5

    .line 3549
    invoke-virtual {v4, p1, v5}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3547
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 3552
    .end local v3    # "i":I
    :cond_4e
    return-void
.end method

.method greylist-max-o dispatchCancelPendingInputEvents()V
    .registers 5

    .line 4749
    invoke-super {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 4751
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4752
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4753
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 4754
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 4753
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4756
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2024
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_f

    .line 2026
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2027
    return v2

    .line 2029
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_23

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_23

    .line 2031
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2032
    return v2

    .line 2035
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .registers 8
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .line 1670
    and-int/lit8 v0, p2, 0xc

    if-nez v0, :cond_1b

    .line 1671
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1672
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1673
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1674
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_1b

    .line 1675
    aget-object v3, v1, v2

    .line 1676
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1674
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1680
    .end local v0    # "count":I
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method

.method public whitelist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1652
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1653
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1654
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1655
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1656
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1655
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1658
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V
    .registers 8
    .param p2, "supportedFormats"    # [I
    .param p3, "capability"    # Landroid/view/translation/TranslationCapability;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "[J>;[I",
            "Landroid/view/translation/TranslationCapability;",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 9404
    .local p1, "viewIds":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;[J>;"
    .local p4, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/view/translation/ViewTranslationRequest;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V

    .line 9405
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 9406
    .local v0, "childCount":I
    if-nez v0, :cond_a

    .line 9407
    return-void

    .line 9409
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 9410
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9411
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/view/View;->dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V

    .line 9409
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 9414
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method greylist-max-r dispatchDetachedFromWindow()V
    .registers 6

    .line 3974
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 3977
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 3978
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitTooltipHoverTargets()V

    .line 3981
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 3984
    iput-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 3985
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 3986
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_1a

    .line 3987
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    .line 3988
    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 3991
    :cond_1a
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3992
    .local v0, "count":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3993
    .local v2, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v0, :cond_29

    .line 3994
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3993
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 3996
    .end local v3    # "i":I
    :cond_29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 3997
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v3, :cond_31

    goto :goto_37

    :cond_31
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 3998
    .local v1, "transientCount":I
    :goto_37
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_38
    if-ge v3, v1, :cond_48

    .line 3999
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 4000
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3998
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 4002
    .end local v3    # "i":I
    :cond_48
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4003
    return-void
.end method

.method public whitelist dispatchDisplayHint(I)V
    .registers 6
    .param p1, "hint"    # I

    .line 1570
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1571
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1572
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1573
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1574
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1573
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1576
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method greylist-max-o dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 1701
    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 1707
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1708
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1710
    :cond_f
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v0, :cond_1b

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public whitelist dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 1716
    const/4 v0, 0x0

    .line 1717
    .local v0, "retval":Z
    iget v1, p1, Landroid/view/DragEvent;->mX:F

    .line 1718
    .local v1, "tx":F
    iget v2, p1, Landroid/view/DragEvent;->mY:F

    .line 1719
    .local v2, "ty":F
    iget-object v3, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1722
    .local v3, "td":Landroid/content/ClipData;
    invoke-direct {p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    move-result-object v4

    .line 1724
    .local v4, "localPoint":Landroid/graphics/PointF;
    iget v5, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_102

    goto/16 :goto_100

    .line 1766
    :pswitch_13
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 1767
    .local v5, "childrenInterestedInDrag":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    if-eqz v5, :cond_32

    .line 1768
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1770
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 1771
    const/4 v0, 0x1

    .line 1773
    .end local v8    # "child":Landroid/view/View;
    :cond_2e
    goto :goto_1b

    .line 1774
    :cond_2f
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1776
    :cond_32
    iget-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v7, :cond_3b

    .line 1777
    invoke-virtual {v7}, Landroid/view/DragEvent;->recycle()V

    .line 1778
    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1781
    :cond_3b
    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_49

    .line 1782
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 1783
    const/4 v0, 0x1

    .line 1785
    :cond_46
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 1787
    .end local v5    # "childrenInterestedInDrag":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    :cond_49
    goto/16 :goto_100

    .line 1792
    :pswitch_4b
    iget v5, p1, Landroid/view/DragEvent;->mX:F

    iget v7, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {p0, v5, v7, v4}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v5

    .line 1794
    .local v5, "target":Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eq v5, v7, :cond_82

    .line 1795
    sget-boolean v7, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v7, :cond_80

    .line 1800
    iget v7, p1, Landroid/view/DragEvent;->mAction:I

    .line 1803
    .local v7, "action":I
    const/4 v8, 0x0

    iput v8, p1, Landroid/view/DragEvent;->mX:F

    .line 1804
    iput v8, p1, Landroid/view/DragEvent;->mY:F

    .line 1805
    iput-object v6, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1807
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v6, :cond_70

    .line 1808
    const/4 v6, 0x6

    iput v6, p1, Landroid/view/DragEvent;->mAction:I

    .line 1809
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1812
    :cond_70
    if-eqz v5, :cond_78

    .line 1813
    const/4 v6, 0x5

    iput v6, p1, Landroid/view/DragEvent;->mAction:I

    .line 1814
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1817
    :cond_78
    iput v7, p1, Landroid/view/DragEvent;->mAction:I

    .line 1818
    iput v1, p1, Landroid/view/DragEvent;->mX:F

    .line 1819
    iput v2, p1, Landroid/view/DragEvent;->mY:F

    .line 1820
    iput-object v3, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1822
    .end local v7    # "action":I
    :cond_80
    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1825
    :cond_82
    if-nez v5, :cond_89

    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_89

    .line 1826
    move-object v5, p0

    .line 1830
    :cond_89
    if-eqz v5, :cond_100

    .line 1831
    if-eq v5, p0, :cond_b0

    .line 1832
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iput v6, p1, Landroid/view/DragEvent;->mX:F

    .line 1833
    iget v6, v4, Landroid/graphics/PointF;->y:F

    iput v6, p1, Landroid/view/DragEvent;->mY:F

    .line 1835
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1837
    iput v1, p1, Landroid/view/DragEvent;->mX:F

    .line 1838
    iput v2, p1, Landroid/view/DragEvent;->mY:F

    .line 1840
    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_100

    .line 1842
    sget-boolean v6, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v6, :cond_a7

    .line 1843
    move v6, v0

    .local v6, "eventWasConsumed":Z
    goto :goto_a9

    .line 1845
    .end local v6    # "eventWasConsumed":Z
    :cond_a7
    iget-boolean v6, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 1848
    .restart local v6    # "eventWasConsumed":Z
    :goto_a9
    if-nez v6, :cond_af

    .line 1849
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1851
    .end local v6    # "eventWasConsumed":Z
    :cond_af
    goto :goto_100

    .line 1853
    :cond_b0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_100

    .line 1727
    .end local v5    # "target":Landroid/view/View;
    :pswitch_b5
    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1730
    invoke-static {p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1731
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    if-nez v5, :cond_c9

    .line 1732
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    goto :goto_cc

    .line 1734
    :cond_c9
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1738
    :goto_cc
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1739
    .local v5, "count":I
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1740
    .local v7, "children":[Landroid/view/View;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_d1
    if-ge v8, v5, :cond_ed

    .line 1741
    aget-object v9, v7, v8

    .line 1742
    .local v9, "child":Landroid/view/View;
    iget v10, v9, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v10, v10, -0x4

    iput v10, v9, Landroid/view/View;->mPrivateFlags2:I

    .line 1743
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_ea

    .line 1744
    aget-object v10, v7, v8

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_ea

    .line 1745
    const/4 v0, 0x1

    .line 1740
    .end local v9    # "child":Landroid/view/View;
    :cond_ea
    add-int/lit8 v8, v8, 0x1

    goto :goto_d1

    .line 1751
    .end local v8    # "i":I
    :cond_ed
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 1752
    if-eqz v8, :cond_f6

    .line 1753
    const/4 v0, 0x1

    .line 1756
    :cond_f6
    if-nez v0, :cond_ff

    .line 1759
    iget-object v8, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    .line 1760
    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1762
    .end local v5    # "count":I
    .end local v7    # "children":[Landroid/view/View;
    :cond_ff
    nop

    .line 1859
    :cond_100
    :goto_100
    return v0

    nop

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_b5
        :pswitch_4b
        :pswitch_4b
        :pswitch_13
    .end packed-switch
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4266
    .local v2, "childrenCount":I
    iget-object v3, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4267
    .local v3, "children":[Landroid/view/View;
    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4269
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_52

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 4270
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    if-ge v5, v2, :cond_2c

    .line 4271
    aget-object v6, v3, v5

    .line 4272
    .local v6, "child":Landroid/view/View;
    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_29

    .line 4273
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 4274
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v6, v7, v5, v2}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 4275
    invoke-direct {v0, v6}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 4270
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 4279
    .end local v5    # "i":I
    :cond_2c
    iget-object v5, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4280
    .local v5, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 4281
    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4284
    :cond_3a
    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 4286
    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v6, v6, -0x9

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4287
    and-int/lit8 v6, v6, -0x11

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4289
    iget-object v6, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v6, :cond_52

    .line 4290
    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 4294
    .end local v5    # "controller":Landroid/view/animation/LayoutAnimationController;
    :cond_52
    const/4 v5, 0x0

    .line 4295
    .local v5, "clipSaveCount":I
    and-int/lit8 v6, v4, 0x22

    const/16 v7, 0x22

    const/4 v8, 0x0

    if-ne v6, v7, :cond_5c

    const/4 v6, 0x1

    goto :goto_5d

    :cond_5c
    move v6, v8

    .line 4296
    .local v6, "clipToPadding":Z
    :goto_5d
    if-eqz v6, :cond_9d

    .line 4297
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->save(I)I

    move-result v5

    .line 4302
    iget v7, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v10, v0, Landroid/view/ViewGroup;->mRight:I

    add-int/2addr v7, v10

    iget v10, v0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v7, v10

    iget v10, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v7, v10

    .line 4303
    .local v7, "right":I
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v10

    invoke-interface {v10}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v10

    if-eqz v10, :cond_85

    .line 4304
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v10

    invoke-interface {v10}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getMIUIAutoUI()Lcom/miui/autoui/MIUIAutoUIStub;

    move-result-object v10

    invoke-interface {v10, v7}, Lcom/miui/autoui/MIUIAutoUIStub;->getClipRight(I)I

    move-result v7

    .line 4306
    :cond_85
    iget v10, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v11, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int/2addr v10, v11

    iget v11, v0, Landroid/view/ViewGroup;->mScrollY:I

    iget v12, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int/2addr v11, v12

    iget v12, v0, Landroid/view/ViewGroup;->mScrollY:I

    iget v13, v0, Landroid/view/ViewGroup;->mBottom:I

    add-int/2addr v12, v13

    iget v13, v0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v12, v13

    iget v13, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v12, v13

    invoke-virtual {v1, v10, v11, v7, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4313
    .end local v7    # "right":I
    :cond_9d
    iget v7, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v7, v7, -0x41

    iput v7, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 4314
    iget v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, -0x5

    iput v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4316
    const/4 v7, 0x0

    .line 4317
    .local v7, "more":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v10

    .line 4319
    .local v10, "drawingTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->enableZ()V

    .line 4320
    iget-object v12, v0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v12, :cond_b7

    move v12, v8

    goto :goto_bb

    :cond_b7
    invoke-virtual {v12}, Landroid/util/IntArray;->size()I

    move-result v12

    .line 4321
    .local v12, "transientCount":I
    :goto_bb
    if-eqz v12, :cond_bf

    move v13, v8

    goto :goto_c0

    :cond_bf
    const/4 v13, -0x1

    .line 4324
    .local v13, "transientIndex":I
    :goto_c0
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->drawsWithRenderNode(Landroid/graphics/Canvas;)Z

    move-result v14

    if-eqz v14, :cond_c8

    .line 4325
    const/4 v14, 0x0

    goto :goto_cc

    :cond_c8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v14

    .line 4326
    .local v14, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_cc
    if-nez v14, :cond_d6

    .line 4327
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v15

    if-eqz v15, :cond_d6

    const/4 v8, 0x1

    goto :goto_d7

    :cond_d6
    nop

    .line 4328
    .local v8, "customOrder":Z
    :goto_d7
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_d8
    if-ge v15, v2, :cond_12e

    .line 4329
    :goto_da
    if-ltz v13, :cond_109

    iget-object v9, v0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v9, v13}, Landroid/util/IntArray;->get(I)I

    move-result v9

    if-ne v9, v15, :cond_109

    .line 4330
    iget-object v9, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 4331
    .local v9, "transientChild":Landroid/view/View;
    move/from16 v16, v4

    .end local v4    # "flags":I
    .local v16, "flags":I
    iget v4, v9, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_fa

    .line 4332
    invoke-virtual {v9}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_100

    .line 4333
    :cond_fa
    invoke-virtual {v0, v1, v9, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    or-int/2addr v4, v7

    move v7, v4

    .line 4335
    :cond_100
    add-int/lit8 v13, v13, 0x1

    .line 4336
    if-lt v13, v12, :cond_106

    .line 4337
    const/4 v4, -0x1

    move v13, v4

    .line 4339
    .end local v9    # "transientChild":Landroid/view/View;
    :cond_106
    move/from16 v4, v16

    goto :goto_da

    .line 4329
    .end local v16    # "flags":I
    .restart local v4    # "flags":I
    :cond_109
    move/from16 v16, v4

    .line 4341
    .end local v4    # "flags":I
    .restart local v16    # "flags":I
    invoke-direct {v0, v2, v15, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v4

    .line 4342
    .local v4, "childIndex":I
    invoke-static {v14, v3, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 4343
    .local v9, "child":Landroid/view/View;
    move/from16 v17, v2

    .end local v2    # "childrenCount":I
    .local v17, "childrenCount":I
    iget v2, v9, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_121

    invoke-virtual {v9}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_127

    .line 4344
    :cond_121
    invoke-virtual {v0, v1, v9, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    or-int/2addr v2, v7

    move v7, v2

    .line 4328
    .end local v4    # "childIndex":I
    .end local v9    # "child":Landroid/view/View;
    :cond_127
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move/from16 v2, v17

    goto :goto_d8

    .end local v16    # "flags":I
    .end local v17    # "childrenCount":I
    .restart local v2    # "childrenCount":I
    .local v4, "flags":I
    :cond_12e
    move/from16 v17, v2

    move/from16 v16, v4

    .line 4347
    .end local v2    # "childrenCount":I
    .end local v4    # "flags":I
    .end local v15    # "i":I
    .restart local v16    # "flags":I
    .restart local v17    # "childrenCount":I
    :goto_132
    if-ltz v13, :cond_154

    .line 4349
    iget-object v2, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4350
    .local v2, "transientChild":Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_148

    .line 4351
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_14e

    .line 4352
    :cond_148
    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    or-int/2addr v4, v7

    move v7, v4

    .line 4354
    :cond_14e
    add-int/lit8 v13, v13, 0x1

    .line 4355
    if-lt v13, v12, :cond_153

    .line 4356
    goto :goto_154

    .line 4358
    .end local v2    # "transientChild":Landroid/view/View;
    :cond_153
    goto :goto_132

    .line 4359
    :cond_154
    :goto_154
    if-eqz v14, :cond_159

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 4362
    :cond_159
    iget-object v2, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_177

    .line 4363
    iget-object v2, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4364
    .local v2, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    .line 4366
    .local v4, "disappearingCount":I
    move v9, v4

    .local v9, "i":I
    :goto_166
    if-ltz v9, :cond_177

    .line 4367
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 4368
    .local v15, "child":Landroid/view/View;
    invoke-virtual {v0, v1, v15, v10, v11}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v18

    or-int v7, v7, v18

    .line 4366
    .end local v15    # "child":Landroid/view/View;
    add-int/lit8 v9, v9, -0x1

    goto :goto_166

    .line 4371
    .end local v2    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "disappearingCount":I
    .end local v9    # "i":I
    :cond_177
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->disableZ()V

    .line 4373
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isShowingLayoutBounds()Z

    move-result v2

    if-eqz v2, :cond_183

    .line 4374
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    .line 4377
    :cond_183
    if-eqz v6, :cond_188

    .line 4378
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4382
    :cond_188
    iget v2, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4384
    .end local v16    # "flags":I
    .local v2, "flags":I
    and-int/lit8 v4, v2, 0x4

    const/4 v9, 0x4

    if-ne v4, v9, :cond_193

    .line 4385
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4388
    :cond_193
    and-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_1b3

    and-int/lit16 v4, v2, 0x200

    if-nez v4, :cond_1b3

    iget-object v4, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4389
    invoke-virtual {v4}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1b3

    if-nez v7, :cond_1b3

    .line 4393
    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4394
    new-instance v4, Landroid/view/ViewGroup$2;

    invoke-direct {v4, v0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 4400
    .local v4, "end":Ljava/lang/Runnable;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 4404
    .end local v4    # "end":Ljava/lang/Runnable;
    :cond_1b3
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Landroid/view/ForceDarkHelperStub;->dispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;)Z

    .line 4405
    return-void
.end method

.method public whitelist dispatchDrawableHotspotChanged(FF)V
    .registers 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 4725
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4726
    .local v0, "count":I
    if-nez v0, :cond_5

    .line 4727
    return-void

    .line 4730
    :cond_5
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4731
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_40

    .line 4732
    aget-object v3, v1, v2

    .line 4735
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1c

    invoke-virtual {v3}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1c

    move v4, v6

    goto :goto_1d

    :cond_1c
    move v4, v5

    .line 4736
    .local v4, "nonActionable":Z
    :goto_1d
    iget v7, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v8, 0x400000

    and-int/2addr v7, v8

    if-eqz v7, :cond_26

    move v7, v6

    goto :goto_27

    :cond_26
    move v7, v5

    .line 4737
    .local v7, "duplicatesState":Z
    :goto_27
    if-nez v4, :cond_2b

    if-eqz v7, :cond_3d

    .line 4738
    :cond_2b
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v8

    .line 4739
    .local v8, "point":[F
    aput p1, v8, v5

    .line 4740
    aput p2, v8, v6

    .line 4741
    invoke-virtual {p0, v8, v3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4742
    aget v5, v8, v5

    aget v6, v8, v6

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4731
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "nonActionable":Z
    .end local v7    # "duplicatesState":Z
    .end local v8    # "point":[F
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4745
    .end local v2    # "i":I
    :cond_40
    return-void
.end method

.method public whitelist dispatchFinishTemporaryDetach()V
    .registers 5

    .line 3524
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3525
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3526
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3527
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 3528
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3527
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3530
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public blacklist dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .registers 7
    .param p1, "action"    # I
    .param p2, "stackInfo"    # Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 9441
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    .line 9442
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 9443
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 9444
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 9445
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    .line 9444
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 9447
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method protected whitelist dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 4041
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 4042
    return-void
.end method

.method protected whitelist dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2577
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    .line 2579
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2580
    :cond_c
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1e

    .line 2582
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2584
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2545
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2546
    .local v0, "childrenCount":I
    if-eqz v0, :cond_4c

    .line 2547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2548
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2550
    .local v2, "y":F
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2551
    .local v3, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x1

    if-nez v3, :cond_1b

    .line 2552
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v5

    if-eqz v5, :cond_1b

    move v5, v4

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x0

    .line 2553
    .local v5, "customOrder":Z
    :goto_1c
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2554
    .local v6, "children":[Landroid/view/View;
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_20
    if-ltz v7, :cond_47

    .line 2555
    invoke-direct {p0, v0, v7, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v8

    .line 2556
    .local v8, "childIndex":I
    invoke-static {v3, v6, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 2557
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v10

    if-eqz v10, :cond_44

    const/4 v10, 0x0

    .line 2558
    invoke-virtual {p0, v1, v2, v9, v10}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v10

    if-nez v10, :cond_38

    .line 2559
    goto :goto_44

    .line 2562
    :cond_38
    invoke-direct {p0, p1, v9}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 2563
    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2564
    :cond_43
    return v4

    .line 2554
    .end local v8    # "childIndex":I
    .end local v9    # "child":Landroid/view/View;
    :cond_44
    :goto_44
    add-int/lit8 v7, v7, -0x1

    goto :goto_20

    .line 2567
    .end local v7    # "i":I
    :cond_47
    if-eqz v3, :cond_4c

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2571
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v3    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "customOrder":Z
    .end local v6    # "children":[Landroid/view/View;
    :cond_4c
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected greylist dispatchGetDisplayList()V
    .registers 8

    .line 4538
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4539
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4540
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_1b

    .line 4541
    aget-object v3, v1, v2

    .line 4542
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_15

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 4543
    :cond_15
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4540
    .end local v3    # "child":Landroid/view/View;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4546
    .end local v2    # "i":I
    :cond_1b
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v2, :cond_21

    const/4 v2, 0x0

    goto :goto_27

    :cond_21
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    .line 4547
    .local v2, "transientCount":I
    :goto_27
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-ge v3, v2, :cond_44

    .line 4548
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 4549
    .local v4, "child":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-eqz v5, :cond_3e

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_41

    .line 4550
    :cond_3e
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4547
    .end local v4    # "child":Landroid/view/View;
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 4553
    .end local v3    # "i":I
    :cond_44
    iget-object v3, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v3, :cond_51

    .line 4554
    iget-object v3, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v3}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 4555
    .local v3, "overlayView":Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4557
    .end local v3    # "overlayView":Landroid/view/View;
    :cond_51
    iget-object v3, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_6a

    .line 4558
    iget-object v3, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4559
    .local v3, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4560
    .local v4, "disappearingCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5c
    if-ge v5, v4, :cond_6a

    .line 4561
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 4562
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4560
    .end local v6    # "child":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 4565
    .end local v3    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "disappearingCount":I
    .end local v5    # "i":I
    :cond_6a
    return-void
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 27
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2126
    .local v2, "action":I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 2127
    .local v3, "interceptHover":Z
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2129
    move-object/from16 v4, p1

    .line 2130
    .local v4, "eventNoHistory":Landroid/view/MotionEvent;
    const/4 v5, 0x0

    .line 2134
    .local v5, "handled":Z
    iget-object v6, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2135
    .local v6, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/4 v7, 0x0

    iput-object v7, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2136
    const/16 v12, 0xa

    if-nez v3, :cond_f8

    if-eq v2, v12, :cond_f8

    .line 2137
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    .line 2138
    .local v13, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    .line 2139
    .local v14, "y":F
    iget v15, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2140
    .local v15, "childrenCount":I
    if-eqz v15, :cond_f5

    .line 2141
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v8

    .line 2142
    .local v8, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v8, :cond_38

    .line 2143
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v16

    if-eqz v16, :cond_38

    const/16 v16, 0x1

    goto :goto_3a

    :cond_38
    const/16 v16, 0x0

    :goto_3a
    move/from16 v17, v16

    .line 2144
    .local v17, "customOrder":Z
    iget-object v11, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2145
    .local v11, "children":[Landroid/view/View;
    const/16 v18, 0x0

    .line 2146
    .local v18, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v19, v15, -0x1

    move-object/from16 v12, v18

    move/from16 v10, v19

    .end local v18    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v10, "i":I
    .local v12, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :goto_46
    if-ltz v10, :cond_e9

    .line 2147
    move/from16 v9, v17

    .end local v17    # "customOrder":Z
    .local v9, "customOrder":Z
    invoke-direct {v0, v15, v10, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v7

    .line 2149
    .local v7, "childIndex":I
    move/from16 v20, v3

    .end local v3    # "interceptHover":Z
    .local v20, "interceptHover":Z
    invoke-static {v8, v11, v7}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2151
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v21

    if-eqz v21, :cond_d8

    .line 2152
    move/from16 v21, v7

    const/4 v7, 0x0

    .end local v7    # "childIndex":I
    .local v21, "childIndex":I
    invoke-virtual {v0, v13, v14, v3, v7}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v22

    if-nez v22, :cond_69

    .line 2153
    move-object/from16 v22, v6

    move/from16 v23, v9

    goto/16 :goto_de

    .line 2158
    :cond_69
    move-object v7, v6

    .line 2160
    .local v7, "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/16 v22, 0x0

    move-object/from16 v24, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v24

    .line 2161
    .local v6, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .local v22, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :goto_72
    if-nez v7, :cond_82

    .line 2162
    invoke-static {v3}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v7

    .line 2163
    const/16 v23, 0x0

    .line 2164
    .local v23, "wasHovered":Z
    move-object/from16 v6, v22

    move/from16 v17, v23

    move/from16 v23, v9

    const/4 v9, 0x0

    goto :goto_9a

    .line 2167
    .end local v23    # "wasHovered":Z
    :cond_82
    move/from16 v23, v9

    .end local v9    # "customOrder":Z
    .local v23, "customOrder":Z
    iget-object v9, v7, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v9, v3, :cond_d2

    .line 2168
    if-eqz v6, :cond_8f

    .line 2169
    iget-object v9, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    iput-object v9, v6, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_93

    .line 2171
    :cond_8f
    iget-object v9, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v22, v9

    .line 2173
    :goto_93
    const/4 v9, 0x0

    iput-object v9, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2174
    const/16 v17, 0x1

    .line 2175
    .local v17, "wasHovered":Z
    move-object/from16 v6, v22

    .line 2183
    .end local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v6, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :goto_9a
    if-eqz v12, :cond_9f

    .line 2184
    iput-object v7, v12, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_a1

    .line 2186
    :cond_9f
    iput-object v7, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2188
    :goto_a1
    move-object v12, v7

    .line 2191
    const/16 v9, 0x9

    if-ne v2, v9, :cond_ae

    .line 2192
    if-nez v17, :cond_cf

    .line 2194
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    or-int/2addr v5, v9

    goto :goto_cf

    .line 2197
    :cond_ae
    const/4 v9, 0x7

    if-ne v2, v9, :cond_cf

    .line 2198
    if-nez v17, :cond_ca

    .line 2200
    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2201
    const/16 v9, 0x9

    invoke-virtual {v4, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2202
    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    or-int/2addr v5, v9

    .line 2204
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2206
    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    or-int/2addr v5, v9

    goto :goto_cf

    .line 2210
    :cond_ca
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    or-int/2addr v5, v9

    .line 2213
    :cond_cf
    :goto_cf
    if-eqz v5, :cond_e0

    .line 2214
    goto :goto_ef

    .line 2178
    .end local v17    # "wasHovered":Z
    .local v6, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .restart local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_d2
    move-object v6, v7

    .line 2179
    iget-object v7, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move/from16 v9, v23

    goto :goto_72

    .line 2151
    .end local v21    # "childIndex":I
    .end local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v23    # "customOrder":Z
    .local v6, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v7, "childIndex":I
    .restart local v9    # "customOrder":Z
    :cond_d8
    move-object/from16 v22, v6

    move/from16 v21, v7

    move/from16 v23, v9

    .line 2146
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v7    # "childIndex":I
    .end local v9    # "customOrder":Z
    .restart local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v23    # "customOrder":Z
    :goto_de
    move-object/from16 v6, v22

    .end local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v6    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :cond_e0
    add-int/lit8 v10, v10, -0x1

    move/from16 v3, v20

    move/from16 v17, v23

    const/4 v7, 0x0

    goto/16 :goto_46

    .end local v20    # "interceptHover":Z
    .end local v23    # "customOrder":Z
    .local v3, "interceptHover":Z
    .local v17, "customOrder":Z
    :cond_e9
    move/from16 v20, v3

    move-object/from16 v22, v6

    move/from16 v23, v17

    .line 2217
    .end local v3    # "interceptHover":Z
    .end local v10    # "i":I
    .end local v17    # "customOrder":Z
    .restart local v20    # "interceptHover":Z
    .restart local v23    # "customOrder":Z
    :goto_ef
    if-eqz v8, :cond_fa

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_fa

    .line 2140
    .end local v8    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v11    # "children":[Landroid/view/View;
    .end local v12    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v20    # "interceptHover":Z
    .end local v23    # "customOrder":Z
    .restart local v3    # "interceptHover":Z
    :cond_f5
    move/from16 v20, v3

    .end local v3    # "interceptHover":Z
    .restart local v20    # "interceptHover":Z
    goto :goto_fa

    .line 2136
    .end local v13    # "x":F
    .end local v14    # "y":F
    .end local v15    # "childrenCount":I
    .end local v20    # "interceptHover":Z
    .restart local v3    # "interceptHover":Z
    :cond_f8
    move/from16 v20, v3

    .line 2222
    .end local v3    # "interceptHover":Z
    .restart local v20    # "interceptHover":Z
    :cond_fa
    :goto_fa
    if-eqz v6, :cond_12f

    .line 2223
    iget-object v3, v6, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 2226
    .local v3, "child":Landroid/view/View;
    const/16 v7, 0xa

    if-ne v2, v7, :cond_108

    .line 2228
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_128

    .line 2233
    :cond_108
    const/4 v7, 0x7

    if-ne v2, v7, :cond_119

    .line 2234
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    move-result v7

    .line 2235
    .local v7, "hoverExitPending":Z
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    .line 2236
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 2238
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    .line 2240
    .end local v7    # "hoverExitPending":Z
    :cond_119
    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2241
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2242
    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 2244
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2247
    :goto_128
    iget-object v7, v6, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2248
    .local v7, "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v6}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 2249
    move-object v6, v7

    .line 2250
    .end local v3    # "child":Landroid/view/View;
    .end local v7    # "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    goto :goto_fa

    .line 2254
    :cond_12f
    if-nez v5, :cond_13d

    const/16 v3, 0xa

    if-eq v2, v3, :cond_13d

    .line 2255
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    move-result v3

    if-nez v3, :cond_13d

    const/4 v3, 0x1

    goto :goto_13e

    :cond_13d
    const/4 v3, 0x0

    .line 2256
    .local v3, "newHoveredSelf":Z
    :goto_13e
    iget-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-ne v3, v7, :cond_14a

    .line 2257
    if-eqz v3, :cond_199

    .line 2259
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_199

    .line 2262
    :cond_14a
    if-eqz v7, :cond_16e

    .line 2264
    const/16 v7, 0xa

    if-ne v2, v7, :cond_156

    .line 2266
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_16b

    .line 2270
    :cond_156
    const/4 v7, 0x7

    if-ne v2, v7, :cond_15c

    .line 2271
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2273
    :cond_15c
    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2274
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2275
    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2276
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2278
    :goto_16b
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 2281
    :cond_16e
    if-eqz v3, :cond_199

    .line 2283
    const/16 v7, 0x9

    if-ne v2, v7, :cond_17d

    .line 2285
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 2286
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_199

    .line 2287
    :cond_17d
    const/4 v7, 0x7

    if-ne v2, v7, :cond_199

    .line 2289
    invoke-static {v4}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2290
    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2291
    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 2292
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2294
    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 2295
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 2301
    :cond_199
    :goto_199
    if-eq v4, v1, :cond_19e

    .line 2302
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 2306
    :cond_19e
    return v5
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1964
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1965
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 1968
    :cond_a
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v2, 0x12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_18

    .line 1970
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1971
    return v1

    .line 1973
    :cond_18
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2c

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2c

    .line 1975
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1976
    return v1

    .line 1980
    :cond_2c
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_35

    .line 1981
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1983
    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1952
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    .line 1954
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1955
    :cond_c
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1e

    .line 1957
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1959
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1988
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    .line 1990
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1991
    :cond_c
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1e

    .line 1993
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1995
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 3567
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 3569
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3570
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3571
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 3572
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 3571
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3574
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchPointerCaptureChanged(Z)V
    .registers 6
    .param p1, "hasCapture"    # Z

    .line 2040
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 2042
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 2043
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2044
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2045
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_15

    .line 2046
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 2045
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2048
    .end local v2    # "i":I
    :cond_15
    return-void
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3579
    const/4 v0, 0x0

    .line 3580
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->includeForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3581
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 3582
    if-eqz v0, :cond_e

    .line 3583
    return v0

    .line 3587
    :cond_e
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v1

    .line 3589
    .local v1, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_13
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v2

    .line 3590
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v2, :cond_33

    .line 3591
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3592
    .local v4, "child":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_30

    .line 3593
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_39

    move v0, v5

    .line 3594
    if-eqz v0, :cond_30

    .line 3595
    nop

    .line 3600
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3595
    return v0

    .line 3590
    .end local v4    # "child":Landroid/view/View;
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 3600
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_33
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3601
    nop

    .line 3602
    const/4 v2, 0x0

    return v2

    .line 3600
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3601
    throw v2
.end method

.method public whitelist dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .registers 8
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 3703
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 3705
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_a

    .line 3706
    return-void

    .line 3709
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 3710
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_3c

    .line 3711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchProvideAutofillStructure(): not laid out, ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " children of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3712
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3711
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    :cond_3c
    return-void

    .line 3717
    :cond_3d
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3718
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->size()I

    move-result v1

    .line 3719
    .local v1, "childrenCount":I
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3720
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_49
    if-ge v2, v1, :cond_5b

    .line 3721
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3722
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v4

    .line 3723
    .local v4, "cstructure":Landroid/view/ViewStructure;
    invoke-virtual {v3, v4, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 3720
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "cstructure":Landroid/view/ViewStructure;
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 3725
    .end local v2    # "i":I
    :cond_5b
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->recycle()V

    .line 3726
    return-void
.end method

.method public blacklist dispatchProvideContentCaptureStructure()V
    .registers 5

    .line 3731
    invoke-super {p0}, Landroid/view/View;->dispatchProvideContentCaptureStructure()V

    .line 3733
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 3735
    :cond_a
    invoke-direct {p0}, Landroid/view/ViewGroup;->getChildrenForContentCapture()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3736
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->size()I

    move-result v1

    .line 3737
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_21

    .line 3738
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3739
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->dispatchProvideContentCaptureStructure()V

    .line 3737
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3741
    .end local v2    # "i":I
    :cond_21
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->recycle()V

    .line 3742
    return-void
.end method

.method public whitelist dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .registers 18
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .line 3612
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 3613
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAssistBlocked()Z

    move-result v0

    if-nez v0, :cond_107

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_107

    .line 3616
    :cond_15
    iget v3, v1, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3617
    .local v3, "childrenCount":I
    if-gtz v3, :cond_1a

    .line 3618
    return-void

    .line 3621
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 3622
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_4a

    .line 3623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchProvideStructure(): not laid out, ignoring "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " children of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3624
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getAccessibilityViewId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3623
    const-string v4, "View"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    :cond_4a
    return-void

    .line 3629
    :cond_4b
    invoke-virtual {v2, v3}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3630
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v4

    .line 3632
    .local v4, "tempPreorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v4, :cond_5a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_5b

    :cond_5a
    const/4 v0, 0x0

    .line 3633
    .local v0, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_5b
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_67

    .line 3634
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v7

    if-eqz v7, :cond_67

    move v7, v6

    goto :goto_68

    :cond_67
    move v7, v5

    .line 3635
    .local v7, "customOrder":Z
    :goto_68
    const/4 v8, 0x0

    move v9, v8

    move v8, v7

    move-object v7, v0

    .end local v0    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v7, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v8, "customOrder":Z
    .local v9, "i":I
    :goto_6c
    if-ge v9, v3, :cond_101

    .line 3638
    :try_start_6e
    invoke-direct {v1, v3, v9, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v0
    :try_end_72
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6e .. :try_end_72} :catch_74

    .line 3683
    .local v0, "childIndex":I
    goto/16 :goto_ee

    .line 3639
    .end local v0    # "childIndex":I
    :catch_74
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3640
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    move v10, v9

    .line 3641
    .local v10, "childIndex":I
    iget-object v11, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v12, 0x17

    if-ge v11, v12, :cond_100

    .line 3642
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad getChildDrawingOrder while collecting assist @ "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ViewGroup"

    invoke-static {v12, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3647
    const/4 v8, 0x0

    .line 3648
    if-lez v9, :cond_ed

    .line 3655
    new-array v11, v3, [I

    .line 3656
    .local v11, "permutation":[I
    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3658
    .local v12, "usedIndices":Landroid/util/SparseBooleanArray;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_b1
    if-ge v13, v9, :cond_c1

    .line 3659
    invoke-virtual {v1, v3, v13}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v14

    aput v14, v11, v13

    .line 3660
    aget v14, v11, v13

    invoke-virtual {v12, v14, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3658
    add-int/lit8 v13, v13, 0x1

    goto :goto_b1

    .line 3664
    .end local v13    # "j":I
    :cond_c1
    const/4 v13, 0x0

    .line 3665
    .local v13, "nextIndex":I
    move v14, v9

    .local v14, "j":I
    :goto_c3
    if-ge v14, v3, :cond_d5

    .line 3666
    :goto_c5
    invoke-virtual {v12, v13, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v15

    if-eqz v15, :cond_ce

    .line 3667
    add-int/lit8 v13, v13, 0x1

    goto :goto_c5

    .line 3669
    :cond_ce
    aput v13, v11, v14

    .line 3670
    add-int/lit8 v13, v13, 0x1

    .line 3665
    add-int/lit8 v14, v14, 0x1

    goto :goto_c3

    .line 3673
    .end local v14    # "j":I
    :cond_d5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v14

    .line 3674
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_dc
    if-ge v14, v3, :cond_eb

    .line 3675
    aget v15, v11, v14

    .line 3676
    .local v15, "index":I
    iget-object v5, v1, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v15

    .line 3677
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3674
    .end local v5    # "child":Landroid/view/View;
    .end local v15    # "index":I
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_dc

    .line 3679
    .end local v11    # "permutation":[I
    .end local v12    # "usedIndices":Landroid/util/SparseBooleanArray;
    .end local v13    # "nextIndex":I
    .end local v14    # "j":I
    :cond_eb
    move v0, v10

    goto :goto_ee

    .line 3648
    :cond_ed
    move v0, v10

    .line 3684
    .end local v10    # "childIndex":I
    .local v0, "childIndex":I
    :goto_ee
    iget-object v5, v1, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v7, v5, v0}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 3686
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v10

    .line 3687
    .local v10, "cstructure":Landroid/view/ViewStructure;
    invoke-virtual {v5, v10}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 3635
    .end local v0    # "childIndex":I
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "cstructure":Landroid/view/ViewStructure;
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto/16 :goto_6c

    .line 3681
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .local v10, "childIndex":I
    :cond_100
    throw v0

    .line 3689
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v9    # "i":I
    .end local v10    # "childIndex":I
    :cond_101
    if-eqz v7, :cond_106

    .line 3690
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 3692
    :cond_106
    return-void

    .line 3614
    .end local v3    # "childrenCount":I
    .end local v4    # "tempPreorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v8    # "customOrder":Z
    :cond_107
    :goto_107
    return-void
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 4046
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 4047
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4048
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4049
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_19

    .line 4050
    aget-object v3, v1, v2

    .line 4051
    .local v3, "c":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_16

    .line 4052
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 4049
    .end local v3    # "c":Landroid/view/View;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4055
    .end local v2    # "i":I
    :cond_19
    return-void
.end method

.method protected whitelist dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 4021
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 4022
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4023
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4024
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_19

    .line 4025
    aget-object v3, v1, v2

    .line 4026
    .local v3, "c":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_16

    .line 4027
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 4024
    .end local v3    # "c":Landroid/view/View;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4030
    .end local v2    # "i":I
    :cond_19
    return-void
.end method

.method greylist-max-o dispatchScreenStateChanged(I)V
    .registers 6
    .param p1, "screenState"    # I

    .line 3556
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 3558
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3559
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3560
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 3561
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 3560
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3563
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V
    .registers 15
    .param p1, "localVisibleRect"    # Landroid/graphics/Rect;
    .param p2, "windowOffset"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Point;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;)V"
        }
    .end annotation

    .line 7598
    .local p3, "targets":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/ScrollCaptureTarget;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_21

    .line 7600
    return-void

    .line 7604
    :cond_21
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    .line 7607
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollCaptureHint()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2d

    .line 7608
    return-void

    .line 7611
    :cond_2d
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 7612
    .local v0, "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7613
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    if-ge v2, v1, :cond_7f

    .line 7614
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7616
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_43

    .line 7617
    goto :goto_7c

    .line 7624
    :cond_43
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7627
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()Landroid/graphics/Point;

    move-result-object v4

    .line 7628
    .local v4, "childWindowOffset":Landroid/graphics/Point;
    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 7630
    iget v5, v3, Landroid/view/View;->mLeft:I

    iget v6, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v5, v6

    .line 7631
    .local v5, "dx":I
    iget v6, v3, Landroid/view/View;->mTop:I

    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v6, v7

    .line 7633
    .local v6, "dy":I
    neg-int v7, v5

    neg-int v8, v6

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 7634
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->offset(II)V

    .line 7636
    const/4 v7, 0x1

    .line 7639
    .local v7, "rectIsVisible":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v8

    if-eqz v8, :cond_77

    .line 7640
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v10, v8, v9}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    .line 7643
    :cond_77
    if-eqz v7, :cond_7c

    .line 7644
    invoke-virtual {v3, v0, v4, p3}, Landroid/view/View;->dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    .line 7613
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childWindowOffset":Landroid/graphics/Point;
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v7    # "rectIsVisible":Z
    :cond_7c
    :goto_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 7647
    .end local v2    # "i":I
    :cond_7f
    return-void
.end method

.method public whitelist dispatchSetActivated(Z)V
    .registers 6
    .param p1, "activated"    # Z

    .line 4687
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4688
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4689
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 4690
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 4689
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4692
    .end local v2    # "i":I
    :cond_f
    return-void
.end method

.method protected whitelist dispatchSetPressed(Z)V
    .registers 7
    .param p1, "pressed"    # Z

    .line 4696
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4697
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4698
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_1d

    .line 4699
    aget-object v3, v0, v2

    .line 4703
    .local v3, "child":Landroid/view/View;
    if-eqz p1, :cond_17

    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {v3}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 4704
    :cond_17
    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    .line 4698
    .end local v3    # "child":Landroid/view/View;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4707
    .end local v2    # "i":I
    :cond_1d
    return-void
.end method

.method public whitelist dispatchSetSelected(Z)V
    .registers 6
    .param p1, "selected"    # Z

    .line 4678
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4679
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4680
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 4681
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 4680
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4683
    .end local v2    # "i":I
    :cond_f
    return-void
.end method

.method public whitelist dispatchStartTemporaryDetach()V
    .registers 5

    .line 3509
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 3510
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3511
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3512
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 3513
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 3512
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3515
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchSystemUiVisibilityChanged(I)V
    .registers 6
    .param p1, "visible"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1927
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1929
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1930
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1931
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1932
    aget-object v3, v1, v2

    .line 1933
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1931
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1935
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method protected whitelist dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 4066
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 4067
    return-void
.end method

.method greylist-max-o dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2348
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2349
    .local v2, "action":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_a4

    :pswitch_d
    goto/16 :goto_a2

    .line 2406
    :pswitch_f
    iget-object v5, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v5, :cond_1a

    .line 2407
    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2408
    iput-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    goto/16 :goto_a2

    .line 2409
    :cond_1a
    iget-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v3, :cond_a2

    .line 2410
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2411
    iput-boolean v4, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    goto/16 :goto_a2

    .line 2351
    :pswitch_25
    goto/16 :goto_a2

    .line 2354
    :pswitch_27
    const/4 v5, 0x0

    .line 2357
    .local v5, "newTarget":Landroid/view/View;
    iget v6, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2358
    .local v6, "childrenCount":I
    const/4 v7, 0x1

    if-eqz v6, :cond_72

    .line 2359
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 2360
    .local v8, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 2362
    .local v9, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v10

    .line 2363
    .local v10, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v10, :cond_43

    .line 2364
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v11

    if-eqz v11, :cond_43

    move v11, v7

    goto :goto_44

    :cond_43
    move v11, v4

    .line 2365
    .local v11, "customOrder":Z
    :goto_44
    iget-object v12, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2366
    .local v12, "children":[Landroid/view/View;
    add-int/lit8 v13, v6, -0x1

    .local v13, "i":I
    :goto_48
    if-ltz v13, :cond_6d

    .line 2367
    nop

    .line 2368
    invoke-direct {v0, v6, v13, v11}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v14

    .line 2369
    .local v14, "childIndex":I
    nop

    .line 2370
    invoke-static {v10, v12, v14}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    .line 2371
    .local v15, "child":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v16

    if-eqz v16, :cond_6a

    .line 2372
    invoke-virtual {v0, v8, v9, v15, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v16

    if-nez v16, :cond_61

    .line 2373
    goto :goto_6a

    .line 2375
    :cond_61
    invoke-direct {v0, v1, v15}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_6a

    .line 2376
    move-object v3, v15

    .line 2377
    .end local v5    # "newTarget":Landroid/view/View;
    .local v3, "newTarget":Landroid/view/View;
    move-object v5, v3

    goto :goto_6d

    .line 2366
    .end local v3    # "newTarget":Landroid/view/View;
    .end local v14    # "childIndex":I
    .end local v15    # "child":Landroid/view/View;
    .restart local v5    # "newTarget":Landroid/view/View;
    :cond_6a
    :goto_6a
    add-int/lit8 v13, v13, -0x1

    goto :goto_48

    .line 2380
    .end local v13    # "i":I
    :cond_6d
    :goto_6d
    if-eqz v10, :cond_72

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2383
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v10    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v11    # "customOrder":Z
    .end local v12    # "children":[Landroid/view/View;
    :cond_72
    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    const/16 v8, 0xa

    if-eq v3, v5, :cond_87

    .line 2384
    if-eqz v3, :cond_85

    .line 2385
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2386
    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2387
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2389
    :cond_85
    iput-object v5, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    .line 2392
    :cond_87
    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v3, :cond_9b

    .line 2393
    iget-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v3, :cond_9a

    .line 2394
    iput-boolean v4, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    .line 2395
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2396
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2397
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2399
    :cond_9a
    return v7

    .line 2402
    :cond_9b
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    .line 2403
    return v3

    .line 2415
    .end local v5    # "newTarget":Landroid/view/View;
    .end local v6    # "childrenCount":I
    :cond_a2
    :goto_a2
    return v4

    nop

    :pswitch_data_a4
    .packed-switch 0x7
        :pswitch_27
        :pswitch_d
        :pswitch_25
        :pswitch_f
    .end packed-switch
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 33
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2633
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    .line 2634
    iget-object v2, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 2639
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAccessibilityFocusedViewOrHost()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2640
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2643
    :cond_1e
    const/4 v2, 0x0

    .line 2644
    .local v2, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2ae

    .line 2645
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 2646
    .local v5, "action":I
    and-int/lit16 v6, v5, 0xff

    .line 2649
    .local v6, "actionMasked":I
    if-nez v6, :cond_33

    .line 2653
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2654
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 2659
    :cond_33
    if-eqz v6, :cond_3c

    iget-object v7, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v7, :cond_3a

    goto :goto_3c

    .line 2675
    :cond_3a
    const/4 v7, 0x1

    .local v7, "intercepted":Z
    goto :goto_62

    .line 2661
    .end local v7    # "intercepted":Z
    :cond_3c
    :goto_3c
    iget v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_45

    move v7, v3

    goto :goto_46

    :cond_45
    move v7, v4

    .line 2662
    .local v7, "disallowIntercept":Z
    :goto_46
    if-nez v7, :cond_5f

    .line 2664
    invoke-static {}, Landroid/os/perfdebug/InputEventMonitor;->get()Landroid/os/perfdebug/InputEventMonitor;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/os/perfdebug/InputEventMonitor;->markViewInterceptTouchEventBegin(Landroid/view/View;)V

    .line 2665
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 2667
    .local v8, "intercepted":Z
    invoke-static {}, Landroid/os/perfdebug/InputEventMonitor;->get()Landroid/os/perfdebug/InputEventMonitor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/perfdebug/InputEventMonitor;->markViewInterceptTouchEventEnd()V

    .line 2668
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    move v7, v8

    goto :goto_61

    .line 2670
    .end local v8    # "intercepted":Z
    :cond_5f
    const/4 v8, 0x0

    move v7, v8

    .line 2672
    .local v7, "intercepted":Z
    :goto_61
    nop

    .line 2680
    :goto_62
    if-nez v7, :cond_68

    iget-object v8, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v8, :cond_6b

    .line 2681
    :cond_68
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2685
    :cond_6b
    invoke-static/range {p0 .. p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_77

    const/4 v8, 0x3

    if-ne v6, v8, :cond_75

    goto :goto_77

    :cond_75
    move v8, v4

    goto :goto_78

    :cond_77
    :goto_77
    move v8, v3

    .line 2689
    .local v8, "canceled":Z
    :goto_78
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    const/16 v10, 0x2002

    if-ne v9, v10, :cond_82

    move v9, v3

    goto :goto_83

    :cond_82
    move v9, v4

    .line 2690
    .local v9, "isMouseEvent":Z
    :goto_83
    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v11, 0x200000

    and-int/2addr v10, v11

    if-eqz v10, :cond_8e

    if-nez v9, :cond_8e

    move v10, v3

    goto :goto_8f

    :cond_8e
    move v10, v4

    .line 2692
    .local v10, "split":Z
    :goto_8f
    const/4 v11, 0x0

    .line 2693
    .local v11, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    const/4 v12, 0x0

    .line 2694
    .local v12, "alreadyDispatchedToNewTouchTarget":Z
    const/4 v13, 0x7

    if-nez v8, :cond_234

    if-nez v7, :cond_234

    .line 2700
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v16

    if-eqz v16, :cond_a1

    .line 2701
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->findChildWithAccessibilityFocus()Landroid/view/View;

    move-result-object v16

    goto :goto_a3

    :cond_a1
    const/16 v16, 0x0

    .line 2703
    .local v16, "childWithAccessibilityFocus":Landroid/view/View;
    :goto_a3
    if-eqz v6, :cond_b9

    if-eqz v10, :cond_aa

    const/4 v14, 0x5

    if-eq v6, v14, :cond_b9

    :cond_aa
    if-ne v6, v13, :cond_ad

    goto :goto_b9

    :cond_ad
    move/from16 v24, v2

    move v3, v4

    move/from16 v25, v5

    move/from16 v26, v9

    move v2, v10

    move/from16 v21, v12

    goto/16 :goto_23e

    .line 2706
    :cond_b9
    :goto_b9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    .line 2707
    .local v14, "actionIndex":I
    if-eqz v10, :cond_c6

    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    shl-int v17, v3, v17

    goto :goto_c8

    .line 2708
    :cond_c6
    const/16 v17, -0x1

    :goto_c8
    move/from16 v18, v17

    .line 2712
    .local v18, "idBitsToAssign":I
    move/from16 v13, v18

    .end local v18    # "idBitsToAssign":I
    .local v13, "idBitsToAssign":I
    invoke-direct {v0, v13}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 2714
    iget v3, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2715
    .local v3, "childrenCount":I
    if-nez v11, :cond_210

    if-eqz v3, :cond_210

    .line 2717
    if-eqz v9, :cond_dc

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXCursorPosition()F

    move-result v19

    goto :goto_e0

    :cond_dc
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    :goto_e0
    move/from16 v20, v19

    .line 2719
    .local v20, "x":F
    if-eqz v9, :cond_e9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYCursorPosition()F

    move-result v19

    goto :goto_ed

    :cond_e9
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    :goto_ed
    move/from16 v21, v19

    .line 2722
    .local v21, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v4

    .line 2723
    .local v4, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v4, :cond_fe

    .line 2724
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v22

    if-eqz v22, :cond_fe

    const/16 v22, 0x1

    goto :goto_100

    :cond_fe
    const/16 v22, 0x0

    :goto_100
    move/from16 v23, v22

    .line 2725
    .local v23, "customOrder":Z
    iget-object v15, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2726
    .local v15, "children":[Landroid/view/View;
    add-int/lit8 v24, v3, -0x1

    move/from16 v25, v5

    move/from16 v5, v24

    move/from16 v24, v2

    move-object/from16 v2, v16

    .end local v16    # "childWithAccessibilityFocus":Landroid/view/View;
    .local v2, "childWithAccessibilityFocus":Landroid/view/View;
    .local v5, "i":I
    .local v24, "handled":Z
    .local v25, "action":I
    :goto_10e
    if-ltz v5, :cond_1f4

    .line 2727
    move/from16 v26, v9

    move-object/from16 v16, v11

    move/from16 v9, v23

    .end local v11    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v23    # "customOrder":Z
    .local v9, "customOrder":Z
    .local v16, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v26, "isMouseEvent":Z
    invoke-direct {v0, v3, v5, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v11

    .line 2729
    .local v11, "childIndex":I
    move/from16 v23, v5

    .end local v5    # "i":I
    .local v23, "i":I
    invoke-static {v4, v15, v11}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 2736
    .local v5, "child":Landroid/view/View;
    if-eqz v2, :cond_13b

    .line 2737
    if-eq v2, v5, :cond_138

    .line 2738
    move-object/from16 v27, v2

    move/from16 v30, v3

    move v2, v10

    move-object/from16 v11, v16

    move/from16 v28, v20

    move/from16 v29, v21

    move/from16 v5, v23

    const/4 v3, 0x0

    move/from16 v20, v9

    move/from16 v21, v12

    goto/16 :goto_1e1

    .line 2740
    :cond_138
    const/4 v2, 0x0

    .line 2741
    move/from16 v23, v3

    .line 2744
    :cond_13b
    invoke-virtual {v5}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v27

    if-eqz v27, :cond_1cc

    .line 2745
    move-object/from16 v27, v2

    move/from16 v2, v20

    move/from16 v20, v9

    move/from16 v9, v21

    move/from16 v21, v12

    const/4 v12, 0x0

    .end local v12    # "alreadyDispatchedToNewTouchTarget":Z
    .local v2, "x":F
    .local v9, "y":F
    .local v20, "customOrder":Z
    .local v21, "alreadyDispatchedToNewTouchTarget":Z
    .local v27, "childWithAccessibilityFocus":Landroid/view/View;
    invoke-virtual {v0, v2, v9, v5, v12}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v28

    if-nez v28, :cond_15c

    move/from16 v28, v2

    move/from16 v30, v3

    move/from16 v29, v9

    move v2, v10

    const/4 v3, 0x0

    goto/16 :goto_1da

    .line 2750
    :cond_15c
    invoke-direct {v0, v5}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v12

    .line 2751
    .end local v16    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v12, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v12, :cond_176

    .line 2754
    move/from16 v28, v2

    .end local v2    # "x":F
    .local v28, "x":F
    iget v2, v12, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    or-int/2addr v2, v13

    iput v2, v12, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2755
    move/from16 v30, v3

    move/from16 v29, v9

    move v2, v10

    move-object v11, v12

    move/from16 v12, v21

    move-object/from16 v16, v27

    const/4 v3, 0x0

    goto/16 :goto_20a

    .line 2758
    .end local v28    # "x":F
    .restart local v2    # "x":F
    :cond_176
    move/from16 v28, v2

    .end local v2    # "x":F
    .restart local v28    # "x":F
    invoke-static {v5}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2759
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v5, v13}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v16

    if-eqz v16, :cond_1bf

    .line 2761
    move/from16 v29, v9

    move v2, v10

    .end local v9    # "y":F
    .end local v10    # "split":Z
    .local v2, "split":Z
    .local v29, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 2762
    if-eqz v4, :cond_1a5

    .line 2764
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_18e
    if-ge v9, v3, :cond_1a2

    .line 2765
    aget-object v10, v15, v11

    move/from16 v30, v3

    .end local v3    # "childrenCount":I
    .local v30, "childrenCount":I
    iget-object v3, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v3, v3, v9

    if-ne v10, v3, :cond_19d

    .line 2766
    iput v9, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 2767
    goto :goto_1a4

    .line 2764
    :cond_19d
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v30

    goto :goto_18e

    .end local v30    # "childrenCount":I
    .restart local v3    # "childrenCount":I
    :cond_1a2
    move/from16 v30, v3

    .end local v3    # "childrenCount":I
    .end local v9    # "j":I
    .restart local v30    # "childrenCount":I
    :goto_1a4
    goto :goto_1a9

    .line 2771
    .end local v30    # "childrenCount":I
    .restart local v3    # "childrenCount":I
    :cond_1a5
    move/from16 v30, v3

    .end local v3    # "childrenCount":I
    .restart local v30    # "childrenCount":I
    iput v11, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 2773
    :goto_1a9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 2774
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 2775
    invoke-direct {v0, v5, v13}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v3

    .line 2776
    .end local v12    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v3, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    const/4 v12, 0x1

    .line 2777
    .end local v21    # "alreadyDispatchedToNewTouchTarget":Z
    .local v12, "alreadyDispatchedToNewTouchTarget":Z
    move-object v11, v3

    move-object/from16 v16, v27

    const/4 v3, 0x0

    goto :goto_20a

    .line 2782
    .end local v2    # "split":Z
    .end local v29    # "y":F
    .end local v30    # "childrenCount":I
    .local v3, "childrenCount":I
    .local v9, "y":F
    .restart local v10    # "split":Z
    .local v12, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v21    # "alreadyDispatchedToNewTouchTarget":Z
    :cond_1bf
    move/from16 v30, v3

    move/from16 v29, v9

    move v2, v10

    .end local v3    # "childrenCount":I
    .end local v9    # "y":F
    .end local v10    # "split":Z
    .restart local v2    # "split":Z
    .restart local v29    # "y":F
    .restart local v30    # "childrenCount":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    move-object v11, v12

    move/from16 v5, v23

    goto :goto_1e1

    .line 2744
    .end local v27    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v28    # "x":F
    .end local v29    # "y":F
    .end local v30    # "childrenCount":I
    .local v2, "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v3    # "childrenCount":I
    .local v9, "customOrder":Z
    .restart local v10    # "split":Z
    .local v12, "alreadyDispatchedToNewTouchTarget":Z
    .restart local v16    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v20, "x":F
    .local v21, "y":F
    :cond_1cc
    move-object/from16 v27, v2

    move/from16 v30, v3

    move v2, v10

    move/from16 v28, v20

    move/from16 v29, v21

    const/4 v3, 0x0

    move/from16 v20, v9

    move/from16 v21, v12

    .line 2746
    .end local v3    # "childrenCount":I
    .end local v9    # "customOrder":Z
    .end local v10    # "split":Z
    .end local v12    # "alreadyDispatchedToNewTouchTarget":Z
    .local v2, "split":Z
    .local v20, "customOrder":Z
    .local v21, "alreadyDispatchedToNewTouchTarget":Z
    .restart local v27    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v28    # "x":F
    .restart local v29    # "y":F
    .restart local v30    # "childrenCount":I
    :goto_1da
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2747
    move-object/from16 v11, v16

    move/from16 v5, v23

    .line 2726
    .end local v16    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v23    # "i":I
    .local v5, "i":I
    .local v11, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :goto_1e1
    const/4 v9, -0x1

    add-int/2addr v5, v9

    move v10, v2

    move/from16 v23, v20

    move/from16 v12, v21

    move/from16 v9, v26

    move-object/from16 v2, v27

    move/from16 v20, v28

    move/from16 v21, v29

    move/from16 v3, v30

    goto/16 :goto_10e

    .end local v26    # "isMouseEvent":Z
    .end local v27    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v28    # "x":F
    .end local v29    # "y":F
    .end local v30    # "childrenCount":I
    .local v2, "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v3    # "childrenCount":I
    .local v9, "isMouseEvent":Z
    .restart local v10    # "split":Z
    .restart local v12    # "alreadyDispatchedToNewTouchTarget":Z
    .local v20, "x":F
    .local v21, "y":F
    .local v23, "customOrder":Z
    :cond_1f4
    move-object/from16 v27, v2

    move/from16 v30, v3

    move/from16 v26, v9

    move v2, v10

    move-object/from16 v16, v11

    move/from16 v28, v20

    move/from16 v29, v21

    move/from16 v20, v23

    const/4 v3, 0x0

    move/from16 v23, v5

    move/from16 v21, v12

    .end local v3    # "childrenCount":I
    .end local v5    # "i":I
    .end local v9    # "isMouseEvent":Z
    .end local v10    # "split":Z
    .end local v11    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v12    # "alreadyDispatchedToNewTouchTarget":Z
    .local v2, "split":Z
    .restart local v16    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v20, "customOrder":Z
    .local v21, "alreadyDispatchedToNewTouchTarget":Z
    .local v23, "i":I
    .restart local v26    # "isMouseEvent":Z
    .restart local v27    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v28    # "x":F
    .restart local v29    # "y":F
    .restart local v30    # "childrenCount":I
    move-object/from16 v16, v27

    .line 2784
    .end local v21    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v23    # "i":I
    .end local v27    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v11    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v12    # "alreadyDispatchedToNewTouchTarget":Z
    .local v16, "childWithAccessibilityFocus":Landroid/view/View;
    :goto_20a
    if-eqz v4, :cond_21e

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_21e

    .line 2715
    .end local v4    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v15    # "children":[Landroid/view/View;
    .end local v20    # "customOrder":Z
    .end local v24    # "handled":Z
    .end local v25    # "action":I
    .end local v26    # "isMouseEvent":Z
    .end local v28    # "x":F
    .end local v29    # "y":F
    .end local v30    # "childrenCount":I
    .local v2, "handled":Z
    .restart local v3    # "childrenCount":I
    .local v5, "action":I
    .restart local v9    # "isMouseEvent":Z
    .restart local v10    # "split":Z
    :cond_210
    move/from16 v24, v2

    move/from16 v30, v3

    move v3, v4

    move/from16 v25, v5

    move/from16 v26, v9

    move v2, v10

    move/from16 v21, v12

    .line 2787
    .end local v3    # "childrenCount":I
    .end local v5    # "action":I
    .end local v9    # "isMouseEvent":Z
    .end local v10    # "split":Z
    .end local v12    # "alreadyDispatchedToNewTouchTarget":Z
    .local v2, "split":Z
    .restart local v21    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v24    # "handled":Z
    .restart local v25    # "action":I
    .restart local v26    # "isMouseEvent":Z
    .restart local v30    # "childrenCount":I
    move/from16 v12, v21

    .end local v21    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v12    # "alreadyDispatchedToNewTouchTarget":Z
    :cond_21e
    :goto_21e
    if-nez v11, :cond_240

    iget-object v4, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v4, :cond_240

    .line 2790
    iget-object v4, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object v11, v4

    .line 2791
    :goto_227
    iget-object v4, v11, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v4, :cond_22e

    .line 2792
    iget-object v11, v11, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_227

    .line 2794
    :cond_22e
    iget v4, v11, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    or-int/2addr v4, v13

    iput v4, v11, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    goto :goto_240

    .line 2694
    .end local v13    # "idBitsToAssign":I
    .end local v14    # "actionIndex":I
    .end local v16    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v24    # "handled":Z
    .end local v25    # "action":I
    .end local v26    # "isMouseEvent":Z
    .end local v30    # "childrenCount":I
    .local v2, "handled":Z
    .restart local v5    # "action":I
    .restart local v9    # "isMouseEvent":Z
    .restart local v10    # "split":Z
    :cond_234
    move/from16 v24, v2

    move v3, v4

    move/from16 v25, v5

    move/from16 v26, v9

    move v2, v10

    move/from16 v21, v12

    .line 2800
    .end local v5    # "action":I
    .end local v9    # "isMouseEvent":Z
    .end local v10    # "split":Z
    .end local v12    # "alreadyDispatchedToNewTouchTarget":Z
    .local v2, "split":Z
    .restart local v21    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v24    # "handled":Z
    .restart local v25    # "action":I
    .restart local v26    # "isMouseEvent":Z
    :goto_23e
    move/from16 v12, v21

    .end local v21    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v12    # "alreadyDispatchedToNewTouchTarget":Z
    :cond_240
    :goto_240
    iget-object v4, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-nez v4, :cond_24b

    .line 2802
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v8, v4, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v3

    .end local v24    # "handled":Z
    .local v3, "handled":Z
    goto :goto_28c

    .line 2807
    .end local v3    # "handled":Z
    .restart local v24    # "handled":Z
    :cond_24b
    const/4 v4, 0x0

    .line 2808
    .local v4, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v5, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2812
    .local v5, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_24e
    if-eqz v5, :cond_28a

    iget-object v9, v5, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-eqz v9, :cond_28a

    .line 2814
    iget-object v9, v5, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2815
    .local v9, "next":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v12, :cond_25e

    if-ne v5, v11, :cond_25e

    .line 2816
    const/4 v10, 0x1

    move/from16 v24, v10

    .end local v24    # "handled":Z
    .local v10, "handled":Z
    goto :goto_287

    .line 2818
    .end local v10    # "handled":Z
    .restart local v24    # "handled":Z
    :cond_25e
    iget-object v10, v5, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v10}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_26b

    if-eqz v7, :cond_269

    goto :goto_26b

    :cond_269
    move v10, v3

    goto :goto_26c

    :cond_26b
    :goto_26b
    const/4 v10, 0x1

    .line 2820
    .local v10, "cancelChild":Z
    :goto_26c
    iget-object v13, v5, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v14, v5, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {v0, v1, v10, v13, v14}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_279

    .line 2822
    const/4 v13, 0x1

    move/from16 v24, v13

    .line 2824
    :cond_279
    if-eqz v10, :cond_287

    .line 2825
    if-nez v4, :cond_280

    .line 2826
    iput-object v9, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_282

    .line 2828
    :cond_280
    iput-object v9, v4, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2830
    :goto_282
    invoke-virtual {v5}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2831
    move-object v5, v9

    .line 2832
    goto :goto_24e

    .line 2835
    .end local v10    # "cancelChild":Z
    :cond_287
    :goto_287
    move-object v4, v5

    .line 2836
    move-object v5, v9

    .line 2837
    .end local v9    # "next":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_24e

    .line 2841
    .end local v4    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    .end local v5    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_28a
    move/from16 v3, v24

    .end local v24    # "handled":Z
    .restart local v3    # "handled":Z
    :goto_28c
    if-nez v8, :cond_2a9

    const/4 v4, 0x1

    if-eq v6, v4, :cond_2a9

    const/4 v4, 0x7

    if-ne v6, v4, :cond_295

    goto :goto_2a9

    .line 2845
    :cond_295
    if-eqz v2, :cond_2ac

    const/4 v4, 0x6

    if-ne v6, v4, :cond_2ac

    .line 2846
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 2847
    .local v4, "actionIndex":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    const/4 v9, 0x1

    shl-int v5, v9, v5

    .line 2848
    .local v5, "idBitsToRemove":I
    invoke-direct {v0, v5}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto :goto_2ac

    .line 2844
    .end local v4    # "actionIndex":I
    .end local v5    # "idBitsToRemove":I
    :cond_2a9
    :goto_2a9
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 2852
    .end local v2    # "split":Z
    .end local v6    # "actionMasked":I
    .end local v7    # "intercepted":Z
    .end local v8    # "canceled":Z
    .end local v11    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v12    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v25    # "action":I
    .end local v26    # "isMouseEvent":Z
    :cond_2ac
    :goto_2ac
    move v2, v3

    goto :goto_2b0

    .line 2644
    .end local v3    # "handled":Z
    .local v2, "handled":Z
    :cond_2ae
    move/from16 v24, v2

    .line 2852
    :goto_2b0
    if-nez v2, :cond_2bc

    iget-object v3, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_2bc

    .line 2853
    iget-object v3, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 2855
    :cond_2bc
    return v2
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2000
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 2001
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 2004
    :cond_a
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v2, 0x12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_18

    .line 2006
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2007
    return v1

    .line 2009
    :cond_18
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2c

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2c

    .line 2011
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2012
    return v1

    .line 2016
    :cond_2c
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_35

    .line 2017
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 2019
    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;
    .registers 7
    .param p1, "evt"    # Landroid/view/KeyEvent;

    .line 8158
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasUnhandledKeyListener()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 8159
    return-object v1

    .line 8161
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    .line 8162
    .local v0, "orderedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_33

    .line 8164
    :try_start_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_14
    if-ltz v2, :cond_2a

    .line 8165
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8166
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v4
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_2e

    .line 8167
    .local v4, "consumer":Landroid/view/View;
    if-eqz v4, :cond_27

    .line 8168
    nop

    .line 8172
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8168
    return-object v4

    .line 8164
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "consumer":Landroid/view/View;
    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 8172
    .end local v2    # "i":I
    :cond_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8173
    goto :goto_49

    .line 8172
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8173
    throw v1

    .line 8175
    :cond_33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_39
    if-ltz v2, :cond_49

    .line 8176
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8177
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v4

    .line 8178
    .restart local v4    # "consumer":Landroid/view/View;
    if-eqz v4, :cond_46

    .line 8179
    return-object v4

    .line 8175
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "consumer":Landroid/view/View;
    :cond_46
    add-int/lit8 v2, v2, -0x1

    goto :goto_39

    .line 8183
    .end local v2    # "i":I
    :cond_49
    :goto_49
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 8184
    return-object p0

    .line 8186
    :cond_50
    return-object v1
.end method

.method public whitelist dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 1178
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1179
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1178
    :goto_d
    return v0
.end method

.method greylist dispatchViewAdded(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 5187
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 5188
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_a

    .line 5189
    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 5191
    :cond_a
    return-void
.end method

.method greylist dispatchViewRemoved(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 5204
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 5205
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_a

    .line 5206
    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 5208
    :cond_a
    return-void
.end method

.method greylist-max-o dispatchVisibilityAggregated(Z)Z
    .registers 6
    .param p1, "isVisible"    # Z

    .line 1636
    invoke-super {p0, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    move-result p1

    .line 1637
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1638
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1639
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1b

    .line 1643
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_18

    .line 1644
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    .line 1639
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1647
    .end local v2    # "i":I
    :cond_1b
    return p1
.end method

.method protected whitelist dispatchVisibilityChanged(Landroid/view/View;I)V
    .registers 7
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 1616
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1617
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1618
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1619
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1620
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1619
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1622
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchWindowFocusChanged(Z)V
    .registers 6
    .param p1, "hasFocus"    # Z

    .line 1518
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1519
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1520
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1521
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1522
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1521
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1524
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 7572
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 7573
    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_8

    .line 7574
    return-void

    .line 7576
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7577
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 7578
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 7577
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 7580
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .registers 6
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 7517
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 7521
    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 7522
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFrameworkOptionalFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    move v0, v1

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 7523
    .local v0, "isOptionalFitSystemWindows":Z
    :goto_14
    if-eqz v0, :cond_33

    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_33

    .line 7524
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/view/View$ListenerInfo;->mWindowInsetsAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;

    if-nez v2, :cond_33

    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    if-eqz v2, :cond_33

    .line 7526
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowSystemUiVisibility()I

    move-result v2

    and-int/lit16 v2, v2, 0x600

    if-nez v2, :cond_33

    .line 7527
    iput v1, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    .line 7528
    return-void

    .line 7531
    :cond_33
    iget v1, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v1, :cond_38

    .line 7532
    return-void

    .line 7534
    :cond_38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7535
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d
    if-ge v2, v1, :cond_49

    .line 7536
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 7535
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 7538
    .end local v2    # "i":I
    :cond_49
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .registers 6
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 7559
    .local p2, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 7560
    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_9

    .line 7561
    return-object p1

    .line 7563
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7564
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1a

    .line 7565
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    .line 7564
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 7567
    .end local v1    # "i":I
    :cond_1a
    return-object p1
.end method

.method public whitelist dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .registers 6
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p2, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;

    .line 7544
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p2

    .line 7545
    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_9

    .line 7546
    return-object p2

    .line 7548
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7549
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1a

    .line 7550
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 7549
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 7552
    .end local v1    # "i":I
    :cond_1a
    return-object p2
.end method

.method public whitelist dispatchWindowSystemUiVisiblityChanged(I)V
    .registers 6
    .param p1, "visible"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1914
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1916
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1917
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1918
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1919
    aget-object v3, v1, v2

    .line 1920
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1918
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1922
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist dispatchWindowVisibilityChanged(I)V
    .registers 6
    .param p1, "visibility"    # I

    .line 1626
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1627
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1628
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1629
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1630
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1629
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1632
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 4586
    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result v0

    return v0
.end method

.method protected whitelist drawableStateChanged()V
    .registers 7

    .line 7661
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 7663
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2c

    .line 7664
    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_24

    .line 7669
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7670
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7672
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_2c

    .line 7673
    aget-object v3, v0, v2

    .line 7674
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_21

    .line 7675
    invoke-virtual {v3}, Landroid/view/View;->refreshDrawableState()V

    .line 7672
    .end local v3    # "child":Landroid/view/View;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 7665
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7679
    :cond_2c
    return-void
.end method

.method protected greylist-max-r encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 6
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 9351
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 9353
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const-string v1, "focus:descendantFocusability"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9354
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v0

    const-string v1, "drawing:clipChildren"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9355
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v0

    const-string v1, "drawing:clipToPadding"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9356
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    const-string v1, "drawing:childrenDrawingOrderEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9357
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    move-result v0

    const-string v1, "drawing:persistentDrawingCache"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9359
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 9360
    .local v0, "n":I
    int-to-short v1, v0

    const-string/jumbo v2, "meta:__childCount__"

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;S)V

    .line 9361
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    if-ge v1, v0, :cond_5f

    .line 9362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "meta:__child__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 9363
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 9361
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 9365
    .end local v1    # "i":I
    :cond_5f
    return-void
.end method

.method public whitelist endViewTransition(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 7287
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_35

    .line 7288
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7289
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7290
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_35

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 7291
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7292
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    .line 7293
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 7294
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_32

    .line 7296
    :cond_24
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2b

    .line 7297
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 7299
    :cond_2b
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_32

    .line 7300
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7303
    :cond_32
    :goto_32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7306
    .end local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_35
    return-void
.end method

.method public whitelist findFocus()Landroid/view/View;
    .registers 2

    .line 1264
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1265
    return-object p0

    .line 1268
    :cond_7
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 1269
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1271
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outLocalPoint"    # Landroid/graphics/PointF;

    .line 1865
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1866
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1867
    .local v1, "children":[Landroid/view/View;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_1b

    .line 1868
    aget-object v3, v1, v2

    .line 1869
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1870
    goto :goto_18

    .line 1873
    :cond_11
    invoke-virtual {p0, p1, p2, v3, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1874
    return-object v3

    .line 1867
    .end local v3    # "child":Landroid/view/View;
    :cond_18
    :goto_18
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 1877
    .end local v2    # "i":I
    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist-max-o findNamedViews(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 8122
    .local p1, "namedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/ViewGroup;->mGhostView:Landroid/view/GhostView;

    if-nez v0, :cond_b

    .line 8123
    return-void

    .line 8125
    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 8126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8127
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1f

    .line 8128
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8129
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 8127
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 8131
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method

.method public whitelist findOnBackInvokedDispatcherForChild(Landroid/view/View;Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "requester"    # Landroid/view/View;

    .line 9430
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 9431
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_b

    .line 9432
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->findOnBackInvokedDispatcherForChild(Landroid/view/View;Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    return-object v1

    .line 9434
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .registers 8
    .param p1, "accessibilityId"    # I

    .line 1473
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1474
    .local v0, "foundView":Landroid/view/View;
    if-eqz v0, :cond_7

    .line 1475
    return-object v0

    .line 1478
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 1479
    return-object v2

    .line 1482
    :cond_f
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1483
    .local v1, "childrenCount":I
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1484
    .local v3, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v1, :cond_22

    .line 1485
    aget-object v5, v3, v4

    .line 1486
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1487
    if-eqz v0, :cond_1f

    .line 1488
    return-object v0

    .line 1484
    .end local v5    # "child":Landroid/view/View;
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1492
    .end local v4    # "i":I
    :cond_22
    return-object v2
.end method

.method public greylist-max-o findViewByAutofillIdTraversal(I)Landroid/view/View;
    .registers 7
    .param p1, "autofillId"    # I

    .line 1498
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1499
    .local v0, "foundView":Landroid/view/View;
    if-eqz v0, :cond_7

    .line 1500
    return-object v0

    .line 1503
    :cond_7
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1504
    .local v1, "childrenCount":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1505
    .local v2, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_1a

    .line 1506
    aget-object v4, v2, v3

    .line 1507
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1508
    if-eqz v0, :cond_17

    .line 1509
    return-object v0

    .line 1505
    .end local v4    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1513
    .end local v3    # "i":I
    :cond_1a
    const/4 v3, 0x0

    return-object v3
.end method

.method protected greylist-max-o findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 8
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 4859
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4860
    return-object p0

    .line 4863
    :cond_7
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4864
    .local v0, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4866
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_22

    .line 4867
    aget-object v3, v0, v2

    .line 4869
    .local v3, "v":Landroid/view/View;
    if-eq v3, p2, :cond_1f

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1f

    .line 4870
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    .line 4872
    if-eqz v3, :cond_1f

    .line 4873
    return-object v3

    .line 4866
    .end local v3    # "v":Landroid/view/View;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4878
    .end local v2    # "i":I
    :cond_22
    const/4 v2, 0x0

    return-object v2
.end method

.method protected greylist-max-o findViewTraversal(I)Landroid/view/View;
    .registers 7
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 4804
    iget v0, p0, Landroid/view/ViewGroup;->mID:I

    if-ne p1, v0, :cond_5

    .line 4805
    return-object p0

    .line 4808
    :cond_5
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4809
    .local v0, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4811
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1e

    .line 4812
    aget-object v3, v0, v2

    .line 4814
    .local v3, "v":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1b

    .line 4815
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4817
    if-eqz v3, :cond_1b

    .line 4818
    return-object v3

    .line 4811
    .end local v3    # "v":Landroid/view/View;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4823
    .end local v2    # "i":I
    :cond_1e
    const/4 v2, 0x0

    return-object v2
.end method

.method protected greylist-max-o findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4831
    if-eqz p1, :cond_b

    iget-object v0, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4832
    return-object p0

    .line 4835
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4836
    .local v0, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4838
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_24

    .line 4839
    aget-object v3, v0, v2

    .line 4841
    .local v3, "v":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_21

    .line 4842
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 4844
    if-eqz v3, :cond_21

    .line 4845
    return-object v3

    .line 4838
    .end local v3    # "v":Landroid/view/View;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 4850
    .end local v2    # "i":I
    :cond_24
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .registers 9
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .line 1458
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1459
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1460
    .local v0, "childrenCount":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1461
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_1e

    .line 1462
    aget-object v3, v1, v2

    .line 1463
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_1b

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1b

    .line 1465
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1461
    .end local v3    # "child":Landroid/view/View;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1468
    .end local v2    # "i":I
    :cond_1e
    return-void
.end method

.method greylist-max-o finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .line 7218
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7219
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1d

    .line 7220
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 7221
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7223
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_14

    .line 7224
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 7227
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 7228
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7232
    :cond_1d
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_28

    .line 7233
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 7236
    :cond_28
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_40

    .line 7237
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 7240
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 7242
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7244
    :cond_40
    return-void
.end method

.method public whitelist focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 1084
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1088
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1089
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1a

    .line 1090
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1092
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist focusableViewAvailable(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 964
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_31

    .line 967
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_31

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_31

    .line 969
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v0

    if-nez v0, :cond_31

    .line 977
    :cond_1e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_31

    .line 978
    :cond_2c
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 980
    :cond_31
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 14
    .param p1, "region"    # Landroid/graphics/Region;

    .line 7362
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 7363
    .local v0, "meOpaque":Z
    :goto_b
    if-eqz v0, :cond_10

    if-nez p1, :cond_10

    .line 7365
    return v2

    .line 7367
    :cond_10
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 7373
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7374
    .local v3, "childrenCount":I
    const/4 v4, 0x1

    .line 7375
    .local v4, "noneOfTheChildrenAreTransparent":Z
    if-lez v3, :cond_4f

    .line 7376
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v5

    .line 7377
    .local v5, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v5, :cond_26

    .line 7378
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v6

    if-eqz v6, :cond_26

    move v6, v2

    goto :goto_27

    :cond_26
    move v6, v1

    .line 7379
    .local v6, "customOrder":Z
    :goto_27
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7380
    .local v7, "children":[Landroid/view/View;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2a
    if-ge v8, v3, :cond_4a

    .line 7381
    invoke-direct {p0, v3, v8, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v9

    .line 7382
    .local v9, "childIndex":I
    invoke-static {v5, v7, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 7383
    .local v10, "child":Landroid/view/View;
    iget v11, v10, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v11, v11, 0xc

    if-eqz v11, :cond_40

    invoke-virtual {v10}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    if-eqz v11, :cond_47

    .line 7384
    :cond_40
    invoke-virtual {v10, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v11

    if-nez v11, :cond_47

    .line 7385
    const/4 v4, 0x0

    .line 7380
    .end local v9    # "childIndex":I
    .end local v10    # "child":Landroid/view/View;
    :cond_47
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 7389
    .end local v8    # "i":I
    :cond_4a
    if-eqz v5, :cond_4f

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7391
    .end local v5    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "customOrder":Z
    .end local v7    # "children":[Landroid/view/View;
    :cond_4f
    if-nez v0, :cond_53

    if-eqz v4, :cond_54

    :cond_53
    move v1, v2

    :cond_54
    return v1
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 6930
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 6901
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 6919
    return-object p1
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 3881
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 7010
    if-ltz p1, :cond_c

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_7

    goto :goto_c

    .line 7013
    :cond_7
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0

    .line 7011
    :cond_c
    :goto_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getChildCount()I
    .registers 2

    .line 6999
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method public final whitelist getChildDrawingOrder(I)I
    .registers 3
    .param p1, "drawingPosition"    # I

    .line 4463
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .registers 3
    .param p1, "childCount"    # I
    .param p2, "drawingPosition"    # I

    .line 4446
    return p2
.end method

.method protected whitelist getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 4789
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getChildTransformation()Landroid/view/animation/Transformation;
    .registers 2

    .line 4793
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_b

    .line 4794
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 4796
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public whitelist getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .line 6419
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;
    .param p4, "forceParentCheck"    # Z

    .line 6433
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    goto :goto_e

    :cond_9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 6434
    .local v0, "rect":Landroid/graphics/RectF;
    :goto_e
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6436
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 6437
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6440
    :cond_1e
    iget v1, p1, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v1, v2

    .line 6441
    .local v1, "dx":I
    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v2, v3

    .line 6443
    .local v2, "dy":I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 6445
    if-eqz p3, :cond_6f

    .line 6446
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_65

    .line 6447
    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    goto :goto_41

    .line 6448
    :cond_3e
    const/4 v3, 0x2

    new-array v3, v3, [F

    :goto_41
    nop

    .line 6449
    .local v3, "position":[F
    iget v4, p3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 6450
    iget v4, p3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 6451
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 6452
    aget v4, v3, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Landroid/graphics/Point;->x:I

    .line 6453
    aget v4, v3, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Landroid/graphics/Point;->y:I

    .line 6455
    .end local v3    # "position":[F
    :cond_65
    iget v3, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v1

    iput v3, p3, Landroid/graphics/Point;->x:I

    .line 6456
    iget v3, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v2

    iput v3, p3, Landroid/graphics/Point;->y:I

    .line 6459
    :cond_6f
    iget v3, p0, Landroid/view/ViewGroup;->mRight:I

    iget v4, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v3, v4

    .line 6460
    .local v3, "width":I
    iget v4, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v5, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v4, v5

    .line 6462
    .local v4, "height":I
    const/4 v5, 0x1

    .line 6463
    .local v5, "rectIsVisible":Z
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_8e

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_95

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    .line 6464
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v6

    if-eqz v6, :cond_95

    .line 6466
    :cond_8e
    int-to-float v6, v3

    int-to-float v7, v4

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 6469
    :cond_95
    if-nez p4, :cond_99

    if-eqz v5, :cond_b4

    :cond_99
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v7, 0x22

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_b4

    .line 6472
    iget v6, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    int-to-float v6, v6

    iget v7, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    int-to-float v7, v7

    iget v8, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int v8, v3, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int v9, v4, v9

    int-to-float v9, v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 6476
    :cond_b4
    if-nez p4, :cond_b8

    if-eqz v5, :cond_d4

    :cond_b8
    iget-object v6, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_d4

    .line 6478
    iget-object v6, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 6481
    :cond_d4
    iget v6, v0, Landroid/graphics/RectF;->left:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->top:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    iget v8, v0, Landroid/graphics/RectF;->right:F

    float-to-double v8, v8

    .line 6482
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 6481
    invoke-virtual {p2, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 6484
    if-nez p4, :cond_fb

    if-eqz v5, :cond_114

    :cond_fb
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_114

    .line 6485
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_10e

    .line 6486
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    .line 6487
    invoke-virtual {v6, p0, p2, p3, p4}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v5

    goto :goto_114

    .line 6489
    :cond_10e
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    .line 6492
    :cond_114
    :goto_114
    return v5
.end method

.method public whitelist getChildVisibleRectF(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/PointF;Z)Z
    .registers 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/RectF;
    .param p3, "offset"    # Landroid/graphics/PointF;
    .param p4, "forceParentCheck"    # Z

    .line 9508
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    goto :goto_e

    :cond_9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 9509
    .local v0, "rect":Landroid/graphics/RectF;
    :goto_e
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 9511
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 9512
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9515
    :cond_1e
    iget v1, p1, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v1, v2

    .line 9516
    .local v1, "dx":I
    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v2, v3

    .line 9518
    .local v2, "dy":I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 9520
    if-eqz p3, :cond_67

    .line 9521
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 9522
    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    goto :goto_41

    .line 9523
    :cond_3e
    const/4 v3, 0x2

    new-array v3, v3, [F

    :goto_41
    nop

    .line 9524
    .local v3, "position":[F
    iget v4, p3, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 9525
    iget v4, p3, Landroid/graphics/PointF;->y:F

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 9526
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 9527
    aget v4, v3, v5

    iput v4, p3, Landroid/graphics/PointF;->x:F

    .line 9528
    aget v4, v3, v6

    iput v4, p3, Landroid/graphics/PointF;->y:F

    .line 9530
    .end local v3    # "position":[F
    :cond_5b
    iget v3, p3, Landroid/graphics/PointF;->x:F

    int-to-float v4, v1

    add-float/2addr v3, v4

    iput v3, p3, Landroid/graphics/PointF;->x:F

    .line 9531
    iget v3, p3, Landroid/graphics/PointF;->y:F

    int-to-float v4, v2

    add-float/2addr v3, v4

    iput v3, p3, Landroid/graphics/PointF;->y:F

    .line 9534
    :cond_67
    iget v3, p0, Landroid/view/ViewGroup;->mRight:I

    iget v4, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v3, v4

    .line 9535
    .local v3, "width":I
    iget v4, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v5, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v4, v5

    .line 9537
    .local v4, "height":I
    const/4 v5, 0x1

    .line 9538
    .local v5, "rectIsVisible":Z
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_86

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8d

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    .line 9539
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 9541
    :cond_86
    int-to-float v6, v3

    int-to-float v7, v4

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 9544
    :cond_8d
    if-nez p4, :cond_91

    if-eqz v5, :cond_ac

    :cond_91
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v7, 0x22

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_ac

    .line 9547
    iget v6, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    int-to-float v6, v6

    iget v7, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    int-to-float v7, v7

    iget v8, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int v8, v3, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int v9, v4, v9

    int-to-float v9, v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 9551
    :cond_ac
    if-nez p4, :cond_b0

    if-eqz v5, :cond_cc

    :cond_b0
    iget-object v6, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_cc

    .line 9553
    iget-object v6, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 9556
    :cond_cc
    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 9558
    if-nez p4, :cond_d3

    if-eqz v5, :cond_e5

    :cond_d3
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_e5

    .line 9559
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_e5

    .line 9560
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    .line 9561
    invoke-virtual {v6, p0, p2, p3, p4}, Landroid/view/ViewGroup;->getChildVisibleRectF(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/PointF;Z)Z

    move-result v5

    .line 9564
    :cond_e5
    return v5
.end method

.method public whitelist getClipChildren()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 4615
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist getClipToPadding()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 4673
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o getDeepestFocusedChild()Landroid/view/View;
    .registers 4

    .line 1232
    move-object v0, p0

    .line 1233
    .local v0, "v":Landroid/view/View;
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1234
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1235
    return-object v0

    .line 1237
    :cond_b
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    :cond_16
    move-object v0, v1

    goto :goto_1

    .line 1239
    :cond_18
    return-object v1
.end method

.method public whitelist getDescendantFocusability()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .line 824
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getFocusedChild()Landroid/view/View;
    .registers 2

    .line 1228
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getHdrBrightAndDimRegion(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/RectF;",
            "[F>;>;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/RectF;",
            "[F>;>;)V"
        }
    .end annotation

    .line 9478
    .local p1, "hdrBrightRegions":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/graphics/RectF;[F>;>;"
    .local p2, "hdrDimRegions":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/graphics/RectF;[F>;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 9479
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 9481
    .local v1, "children":[Landroid/view/View;
    if-lez v0, :cond_4f

    .line 9482
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_3a

    .line 9483
    aget-object v3, v1, v2

    if-eqz v3, :cond_37

    .line 9484
    aget-object v3, v1, v2

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1d

    .line 9485
    aget-object v3, v1, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p1, p2}, Landroid/view/ViewGroup;->getHdrBrightAndDimRegion(Ljava/util/List;Ljava/util/List;)V

    goto :goto_37

    .line 9486
    :cond_1d
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getHdrDimmerEnabled()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 9487
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getHdrBrightRegion()Landroid/util/Pair;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9488
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getHdrDimRegion()Landroid/util/Pair;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9482
    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 9492
    .end local v2    # "i":I
    :cond_3a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHdrDimmerEnabled()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 9493
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHdrBrightRegion()Landroid/util/Pair;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9494
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHdrDimRegion()Landroid/util/Pair;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 9497
    :cond_4f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHdrDimmerEnabled()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 9498
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHdrBrightRegion()Landroid/util/Pair;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9499
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHdrDimRegion()Landroid/util/Pair;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9501
    :cond_63
    :goto_63
    return-void
.end method

.method public whitelist getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .registers 2

    .line 6578
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public whitelist getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    .line 7656
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public whitelist getLayoutMode()I
    .registers 3

    .line 6866
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 6867
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    .line 6868
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    goto :goto_16

    :cond_14
    sget v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    .line 6869
    .local v0, "inheritedLayoutMode":I
    :goto_16
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 6871
    .end local v0    # "inheritedLayoutMode":I
    :cond_1a
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    return v0
.end method

.method public whitelist getLayoutTransition()Landroid/animation/LayoutTransition;
    .registers 2

    .line 5717
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public whitelist getNestedScrollAxes()I
    .registers 2

    .line 8081
    iget v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return v0
.end method

.method greylist-max-o getNumChildrenForAccessibility()I
    .registers 5

    .line 3937
    const/4 v0, 0x0

    .line 3938
    .local v0, "numChildrenForAccessibility":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 3939
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3940
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->includeForAccessibility()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3941
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 3942
    :cond_15
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_21

    .line 3943
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .line 3944
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getNumChildrenForAccessibility()I

    move-result v3

    add-int/2addr v0, v3

    .line 3938
    .end local v2    # "child":Landroid/view/View;
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3947
    .end local v1    # "i":I
    :cond_24
    return v0
.end method

.method public whitelist getOverlay()Landroid/view/ViewGroupOverlay;
    .registers 3

    .line 4425
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_d

    .line 4426
    new-instance v0, Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    .line 4428
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    check-cast v0, Landroid/view/ViewGroupOverlay;

    return-object v0
.end method

.method public bridge synthetic whitelist getOverlay()Landroid/view/ViewOverlay;
    .registers 2

    .line 145
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPersistentDrawingCache()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6785
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method greylist-max-o getScrollIndicatorBounds(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 4591
    invoke-super {p0, p1}, Landroid/view/View;->getScrollIndicatorBounds(Landroid/graphics/Rect;)V

    .line 4595
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 4596
    .local v0, "clipToPadding":Z
    :goto_d
    if-eqz v0, :cond_2b

    .line 4597
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 4598
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 4599
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 4600
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 4602
    :cond_2b
    return-void
.end method

.method public whitelist getTouchscreenBlocksFocus()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .line 1443
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist getTransientView(I)Landroid/view/View;
    .registers 3
    .param p1, "position"    # I

    .line 5027
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 5030
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 5028
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getTransientViewCount()I
    .registers 2

    .line 4993
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public greylist-max-o getTransientViewIndex(I)I
    .registers 3
    .param p1, "position"    # I

    .line 5008
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_14

    .line 5011
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->get(I)I

    move-result v0

    return v0

    .line 5009
    :cond_14
    :goto_14
    const/4 v0, -0x1

    return v0
.end method

.method greylist-max-o handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 851
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 852
    invoke-virtual {v0, p0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 853
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 854
    iput-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 856
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 857
    return-void
.end method

.method greylist-max-o hasDefaultFocus()Z
    .registers 2

    .line 930
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist hasFocus()Z
    .registers 2

    .line 1249
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method greylist-max-o hasFocusable(ZZ)Z
    .registers 6
    .param p1, "allowAutoFocus"    # Z
    .param p2, "dispatchExplicit"    # Z

    .line 1281
    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1282
    return v1

    .line 1286
    :cond_8
    if-nez p1, :cond_12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusable()I

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1a

    :cond_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1287
    const/4 v0, 0x1

    return v0

    .line 1291
    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 1292
    .local v0, "descendantFocusability":I
    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_27

    .line 1293
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    move-result v1

    return v1

    .line 1296
    :cond_27
    return v1
.end method

.method greylist-max-o hasFocusableChild(Z)Z
    .registers 7
    .param p1, "dispatchExplicit"    # Z

    .line 1301
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1302
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1304
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_1e

    .line 1305
    aget-object v3, v1, v2

    .line 1309
    .local v3, "child":Landroid/view/View;
    if-eqz p1, :cond_11

    invoke-virtual {v3}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v4

    if-nez v4, :cond_19

    :cond_11
    if-nez p1, :cond_1b

    .line 1310
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1311
    :cond_19
    const/4 v4, 0x1

    return v4

    .line 1304
    .end local v3    # "child":Landroid/view/View;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1315
    .end local v2    # "i":I
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method protected greylist-max-o hasHoveredChild()Z
    .registers 2

    .line 2448
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist hasTransientState()Z
    .registers 2

    .line 1173
    iget v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    if-gtz v0, :cond_d

    invoke-super {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method greylist-max-o hasUnhandledKeyListener()Z
    .registers 2

    .line 8135
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    if-gtz v0, :cond_d

    invoke-super {p0}, Landroid/view/View;->hasUnhandledKeyListener()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public blacklist hasWindowInsetsAnimationCallback()Z
    .registers 7

    .line 7490
    invoke-super {p0}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 7491
    return v1

    .line 7497
    :cond_8
    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 7498
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFrameworkOptionalFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v2

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v1

    .line 7499
    .local v0, "isOptionalFitSystemWindows":Z
    :goto_19
    if-eqz v0, :cond_2e

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    if-eqz v3, :cond_2e

    .line 7501
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowSystemUiVisibility()I

    move-result v3

    and-int/lit16 v3, v3, 0x600

    if-nez v3, :cond_2e

    .line 7502
    return v2

    .line 7505
    :cond_2e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 7506
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_33
    if-ge v4, v3, :cond_43

    .line 7507
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 7508
    return v1

    .line 7506
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 7511
    .end local v4    # "i":I
    :cond_43
    return v2
.end method

.method greylist-max-o incrementChildUnhandledKeyListeners()V
    .registers 3

    .line 8139
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 8140
    if-ne v0, v1, :cond_15

    .line 8141
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_15

    .line 8142
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->incrementChildUnhandledKeyListeners()V

    .line 8145
    :cond_15
    return-void
.end method

.method public whitelist indexOfChild(Landroid/view/View;)I
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 6982
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6983
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6984
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_f

    .line 6985
    aget-object v3, v1, v2

    if-ne v3, p1, :cond_c

    .line 6986
    return v2

    .line 6984
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6989
    .end local v2    # "i":I
    :cond_f
    const/4 v2, -0x1

    return v2
.end method

.method protected greylist-max-o internalSetPadding(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 4010
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 4012
    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 4013
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_1d

    .line 4015
    :cond_17
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4017
    :goto_1d
    return-void
.end method

.method public final whitelist invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 20
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6151
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6152
    .local v3, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_12

    iget-boolean v4, v3, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v4, :cond_12

    .line 6154
    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 6155
    return-void

    .line 6158
    :cond_12
    move-object/from16 v4, p0

    .line 6159
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_115

    .line 6163
    iget v5, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x40

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_20

    move v5, v7

    goto :goto_21

    :cond_20
    move v5, v6

    .line 6168
    .local v5, "drawAnimation":Z
    :goto_21
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 6172
    .local v8, "childMatrix":Landroid/graphics/Matrix;
    iget v9, v1, Landroid/view/View;->mLayerType:I

    if-eqz v9, :cond_38

    .line 6173
    iget v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v10, -0x80000000

    or-int/2addr v9, v10

    iput v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6174
    iget v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v10, -0x8001

    and-int/2addr v9, v10

    iput v9, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6177
    :cond_38
    iget-object v9, v3, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 6178
    .local v9, "location":[I
    iget v10, v1, Landroid/view/View;->mLeft:I

    aput v10, v9, v6

    .line 6179
    iget v6, v1, Landroid/view/View;->mTop:I

    aput v6, v9, v7

    .line 6180
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-eqz v6, :cond_4e

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_9d

    .line 6182
    :cond_4e
    iget-object v6, v3, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 6183
    .local v6, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v6, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6185
    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_76

    .line 6186
    iget-object v10, v3, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 6187
    .local v10, "t":Landroid/view/animation/Transformation;
    invoke-virtual {v0, v1, v10}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v11

    .line 6188
    .local v11, "transformed":Z
    if-eqz v11, :cond_74

    .line 6189
    iget-object v12, v3, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 6190
    .local v12, "transformMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v10}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6191
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-nez v13, :cond_75

    .line 6192
    invoke-virtual {v12, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_75

    .line 6195
    .end local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_74
    move-object v12, v8

    .line 6197
    .end local v10    # "t":Landroid/view/animation/Transformation;
    .end local v11    # "transformed":Z
    .restart local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_75
    :goto_75
    goto :goto_77

    .line 6198
    .end local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_76
    move-object v12, v8

    .line 6200
    .restart local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :goto_77
    invoke-virtual {v12, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6201
    iget v10, v6, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    iget v11, v6, Landroid/graphics/RectF;->top:F

    float-to-double v13, v11

    .line 6202
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v11, v13

    iget v13, v6, Landroid/graphics/RectF;->right:F

    float-to-double v13, v13

    .line 6203
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget v14, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    .line 6204
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 6201
    invoke-virtual {v2, v10, v11, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 6208
    .end local v6    # "boundingRect":Landroid/graphics/RectF;
    .end local v12    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_9d
    :goto_9d
    const/4 v6, 0x0

    .line 6209
    .local v6, "view":Landroid/view/View;
    instance-of v10, v4, Landroid/view/View;

    if-eqz v10, :cond_a5

    .line 6210
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    .line 6213
    :cond_a5
    if-eqz v5, :cond_b9

    .line 6214
    if-eqz v6, :cond_b0

    .line 6215
    iget v10, v6, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v10, v10, 0x40

    iput v10, v6, Landroid/view/View;->mPrivateFlags:I

    goto :goto_b9

    .line 6216
    :cond_b0
    instance-of v10, v4, Landroid/view/ViewRootImpl;

    if-eqz v10, :cond_b9

    .line 6217
    move-object v10, v4

    check-cast v10, Landroid/view/ViewRootImpl;

    iput-boolean v7, v10, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 6223
    :cond_b9
    :goto_b9
    if-eqz v6, :cond_cb

    .line 6224
    iget v10, v6, Landroid/view/View;->mPrivateFlags:I

    const/high16 v11, 0x200000

    and-int/2addr v10, v11

    if-eq v10, v11, :cond_cb

    .line 6225
    iget v10, v6, Landroid/view/View;->mPrivateFlags:I

    const v12, -0x200001

    and-int/2addr v10, v12

    or-int/2addr v10, v11

    iput v10, v6, Landroid/view/View;->mPrivateFlags:I

    .line 6229
    :cond_cb
    invoke-interface {v4, v9, v2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v4

    .line 6230
    if-eqz v6, :cond_10c

    .line 6232
    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    .line 6233
    .local v10, "m":Landroid/graphics/Matrix;
    invoke-virtual {v10}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v11

    if-nez v11, :cond_109

    .line 6234
    iget-object v11, v3, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 6235
    .local v11, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v11, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6236
    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6237
    iget v12, v11, Landroid/graphics/RectF;->left:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    iget v13, v11, Landroid/graphics/RectF;->top:F

    float-to-double v13, v13

    .line 6238
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget v14, v11, Landroid/graphics/RectF;->right:F

    float-to-double v14, v14

    .line 6239
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    iget v15, v11, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v16, v8

    .end local v8    # "childMatrix":Landroid/graphics/Matrix;
    .local v16, "childMatrix":Landroid/graphics/Matrix;
    float-to-double v7, v15

    .line 6240
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 6237
    invoke-virtual {v2, v12, v13, v14, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_10e

    .line 6233
    .end local v11    # "boundingRect":Landroid/graphics/RectF;
    .end local v16    # "childMatrix":Landroid/graphics/Matrix;
    .restart local v8    # "childMatrix":Landroid/graphics/Matrix;
    :cond_109
    move-object/from16 v16, v8

    .end local v8    # "childMatrix":Landroid/graphics/Matrix;
    .restart local v16    # "childMatrix":Landroid/graphics/Matrix;
    goto :goto_10e

    .line 6230
    .end local v10    # "m":Landroid/graphics/Matrix;
    .end local v16    # "childMatrix":Landroid/graphics/Matrix;
    .restart local v8    # "childMatrix":Landroid/graphics/Matrix;
    :cond_10c
    move-object/from16 v16, v8

    .line 6243
    .end local v6    # "view":Landroid/view/View;
    .end local v8    # "childMatrix":Landroid/graphics/Matrix;
    .restart local v16    # "childMatrix":Landroid/graphics/Matrix;
    :goto_10e
    if-nez v4, :cond_111

    goto :goto_115

    :cond_111
    move-object/from16 v8, v16

    const/4 v7, 0x1

    goto :goto_9d

    .line 6245
    .end local v5    # "drawAnimation":Z
    .end local v9    # "location":[I
    .end local v16    # "childMatrix":Landroid/graphics/Matrix;
    :cond_115
    :goto_115
    return-void
.end method

.method public whitelist invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 9
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6261
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, 0x8020

    and-int/2addr v0, v1

    if-eqz v0, :cond_90

    .line 6263
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v0, 0x90

    const/16 v2, 0x80

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_4e

    .line 6265
    aget v0, p1, v4

    iget v1, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v0, v1

    aget v1, p1, v3

    iget v2, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 6267
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v3

    if-nez v0, :cond_31

    .line 6268
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 6271
    :cond_31
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    .line 6272
    .local v0, "left":I
    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    .line 6274
    .local v1, "top":I
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_49

    .line 6275
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    sub-int/2addr v2, v0

    iget v5, p0, Landroid/view/ViewGroup;->mBottom:I

    sub-int/2addr v5, v1

    invoke-virtual {p2, v4, v4, v2, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_49

    .line 6276
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6280
    :cond_49
    aput v0, p1, v4

    .line 6281
    aput v1, p1, v3

    .line 6282
    .end local v0    # "left":I
    .end local v1    # "top":I
    goto :goto_7a

    .line 6284
    :cond_4e
    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5f

    .line 6285
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6c

    .line 6288
    :cond_5f
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 6290
    :goto_6c
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    aput v0, p1, v4

    .line 6291
    iget v0, p0, Landroid/view/ViewGroup;->mTop:I

    aput v0, p1, v3

    .line 6293
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6295
    :goto_7a
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6296
    iget v0, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v0, :cond_8d

    .line 6297
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6300
    :cond_8d
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    return-object v0

    .line 6303
    :cond_90
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o invalidateInheritedLayoutMode(I)V
    .registers 5
    .param p1, "layoutModeOfRoot"    # I

    .line 6836
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    if-eq v0, p1, :cond_26

    const/high16 v0, 0x800000

    .line 6838
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_26

    .line 6841
    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 6844
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "N":I
    :goto_19
    if-ge v0, v1, :cond_25

    .line 6845
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateInheritedLayoutMode(I)V

    .line 6844
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 6847
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_25
    return-void

    .line 6839
    :cond_26
    :goto_26
    return-void
.end method

.method public whitelist isAlwaysDrawnWithCacheEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6636
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isAnimationCacheEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6598
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected whitelist isChildrenDrawingOrderEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 6716
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected whitelist isChildrenDrawnWithCacheEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6679
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method greylist-max-o isLayoutModeOptical()Z
    .registers 3

    .line 4133
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public whitelist isLayoutSuppressed()Z
    .registers 2

    .line 7356
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    return v0
.end method

.method public whitelist isMotionEventSplittingEnabled()Z
    .registers 3

    .line 3228
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final greylist-max-o isShowingContextMenuWithCoords()Z
    .registers 3

    .line 996
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected greylist isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;
    .param p4, "outLocalPoint"    # Landroid/graphics/PointF;

    .line 3068
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v0

    .line 3069
    .local v0, "point":[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 3070
    const/4 v2, 0x1

    aput p2, v0, v2

    .line 3071
    invoke-virtual {p0, v0, p3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 3072
    aget v3, v0, v1

    aget v4, v0, v2

    invoke-virtual {p3, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    .line 3073
    .local v3, "isInView":Z
    if-eqz v3, :cond_20

    if-eqz p4, :cond_20

    .line 3074
    aget v1, v0, v1

    aget v2, v0, v2

    invoke-virtual {p4, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 3076
    :cond_20
    return v3
.end method

.method public whitelist isTransitionGroup()Z
    .registers 5

    .line 3245
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_10

    .line 3246
    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    move v2, v3

    :cond_f
    return v2

    .line 3248
    :cond_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    .line 3249
    .local v0, "outlineProvider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_26

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_26

    if-eqz v0, :cond_27

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    if-eq v0, v1, :cond_27

    :cond_26
    move v2, v3

    :cond_27
    return v2
.end method

.method greylist-max-o isViewTransitioning(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 7252
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 5

    .line 7683
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 7684
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7685
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7686
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 7687
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 7686
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 7689
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public final whitelist layout(IIII)V
    .registers 10
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 6498
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    const-string v1, " this="

    const/4 v2, 0x1

    const-string v3, "View"

    if-eqz v0, :cond_75

    .line 6499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vg.layout l="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " t="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " r="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " b="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " suppressLayout="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " transition="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " isChangingLayout="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v4, :cond_61

    .line 6501
    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v4

    if-eqz v4, :cond_61

    move v4, v2

    goto :goto_62

    :cond_61
    const/4 v4, 0x0

    :goto_62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6499
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6505
    :cond_75
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    if-nez v0, :cond_8e

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_83

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 6506
    :cond_83
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_8a

    .line 6507
    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    .line 6509
    :cond_8a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_90

    .line 6512
    :cond_8e
    iput-boolean v2, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 6515
    :goto_90
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_b5

    .line 6516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vg.layout done layoutCalledWhileSuppressed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6520
    :cond_b5
    return-void
.end method

.method public blacklist makeFrameworkOptionalFitsSystemWindows()V
    .registers 5

    .line 1560
    invoke-super {p0}, Landroid/view/View;->makeFrameworkOptionalFitsSystemWindows()V

    .line 1561
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1562
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1563
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1564
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->makeFrameworkOptionalFitsSystemWindows()V

    .line 1563
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1566
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public greylist makeOptionalFitsSystemWindows()V
    .registers 5

    .line 1547
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1548
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1549
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1550
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 1551
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1550
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1553
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method protected whitelist measureChild(Landroid/view/View;II)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .line 7047
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 7049
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 7051
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 7054
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 7055
    return-void
.end method

.method protected whitelist measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 7074
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7076
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 7079
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 7083
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 7084
    return-void
.end method

.method protected whitelist measureChildren(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 7026
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7027
    .local v0, "size":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7028
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_17

    .line 7029
    aget-object v3, v1, v2

    .line 7030
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_14

    .line 7031
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 7028
    .end local v3    # "child":Landroid/view/View;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 7034
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method greylist-max-o notifyChildOfDragStart(Landroid/view/View;)Z
    .registers 9
    .param p1, "child"    # Landroid/view/View;

    .line 1887
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    .line 1888
    .local v0, "tx":F
    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v1, v1, Landroid/view/DragEvent;->mY:F

    .line 1890
    .local v1, "ty":F
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v2

    .line 1891
    .local v2, "point":[F
    const/4 v3, 0x0

    aput v0, v2, v3

    .line 1892
    const/4 v4, 0x1

    aput v1, v2, v4

    .line 1893
    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 1895
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v6, v2, v3

    iput v6, v5, Landroid/view/DragEvent;->mX:F

    .line 1896
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v6, v2, v4

    iput v6, v5, Landroid/view/DragEvent;->mY:F

    .line 1897
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {p1, v5}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    .line 1898
    .local v5, "canAccept":Z
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v0, v6, Landroid/view/DragEvent;->mX:F

    .line 1899
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v1, v6, Landroid/view/DragEvent;->mY:F

    .line 1900
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput-boolean v3, v6, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 1901
    if-eqz v5, :cond_48

    .line 1902
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1903
    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v3

    if-nez v3, :cond_48

    .line 1904
    iget v3, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v4

    iput v3, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 1905
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1908
    :cond_48
    return v5
.end method

.method public whitelist notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .line 3888
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityLiveRegion()I

    move-result v0

    if-eqz v0, :cond_b

    .line 3889
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_38

    .line 3891
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_38

    .line 3893
    :try_start_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_14
    .catch Ljava/lang/AbstractMethodError; {:try_start_f .. :try_end_14} :catch_15

    .line 3897
    goto :goto_38

    .line 3894
    :catch_15
    move-exception v0

    .line 3895
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not fully implement ViewParent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "View"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3899
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_38
    :goto_38
    return-void
.end method

.method public greylist-max-o notifySubtreeAccessibilityStateChangedIfNeeded()V
    .registers 3

    .line 3904
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_11

    goto :goto_37

    .line 3909
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_33

    .line 3910
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_33

    .line 3911
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 3912
    .local v0, "a11yParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_33

    .line 3913
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 3914
    return-void

    .line 3917
    .end local v0    # "a11yParent":Landroid/view/ViewParent;
    :cond_33
    invoke-super {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 3918
    return-void

    .line 3905
    :cond_37
    :goto_37
    return-void
.end method

.method public greylist offsetChildrenTopAndBottom(I)V
    .registers 8
    .param p1, "offset"    # I

    .line 6397
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6398
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6399
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .line 6401
    .local v2, "invalidate":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v0, :cond_21

    .line 6402
    aget-object v4, v1, v3

    .line 6403
    .local v4, "v":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mTop:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mTop:I

    .line 6404
    iget v5, v4, Landroid/view/View;->mBottom:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mBottom:I

    .line 6405
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    if-eqz v5, :cond_1e

    .line 6406
    const/4 v2, 0x1

    .line 6407
    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v5, p1}, Landroid/graphics/RenderNode;->offsetTopAndBottom(I)Z

    .line 6401
    .end local v4    # "v":Landroid/view/View;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 6411
    .end local v3    # "i":I
    :cond_21
    if-eqz v2, :cond_27

    .line 6412
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    .line 6414
    :cond_27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 6415
    return-void
.end method

.method public final whitelist offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 6313
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 6314
    return-void
.end method

.method greylist-max-o offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .registers 11
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "offsetFromChildToParent"    # Z
    .param p4, "clipToBounds"    # Z

    .line 6334
    if-ne p1, p0, :cond_3

    .line 6335
    return-void

    .line 6338
    :cond_3
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6341
    .local v0, "theParent":Landroid/view/ViewParent;
    :goto_5
    if-eqz v0, :cond_61

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_61

    if-eq v0, p0, :cond_61

    .line 6345
    const/4 v1, 0x0

    if-eqz p3, :cond_36

    .line 6346
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 6348
    if-eqz p4, :cond_5b

    .line 6349
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 6350
    .local v2, "p":Landroid/view/View;
    iget v3, v2, Landroid/view/View;->mRight:I

    iget v4, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/view/View;->mBottom:I

    iget v5, v2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    .line 6352
    .local v1, "intersected":Z
    if-nez v1, :cond_35

    .line 6353
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6355
    .end local v1    # "intersected":Z
    .end local v2    # "p":Landroid/view/View;
    :cond_35
    goto :goto_5b

    .line 6357
    :cond_36
    if-eqz p4, :cond_4e

    .line 6358
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 6359
    .restart local v2    # "p":Landroid/view/View;
    iget v3, v2, Landroid/view/View;->mRight:I

    iget v4, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/view/View;->mBottom:I

    iget v5, v2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    .line 6361
    .restart local v1    # "intersected":Z
    if-nez v1, :cond_4e

    .line 6362
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6365
    .end local v1    # "intersected":Z
    .end local v2    # "p":Landroid/view/View;
    :cond_4e
    iget v1, p1, Landroid/view/View;->mScrollX:I

    iget v2, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/view/View;->mScrollY:I

    iget v3, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6369
    :cond_5b
    :goto_5b
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 6370
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_5

    .line 6375
    :cond_61
    if-ne v0, p0, :cond_81

    .line 6376
    if-eqz p3, :cond_73

    .line 6377
    iget v1, p1, Landroid/view/View;->mLeft:I

    iget v2, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_80

    .line 6380
    :cond_73
    iget v1, p1, Landroid/view/View;->mScrollX:I

    iget v2, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/view/View;->mScrollY:I

    iget v3, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6386
    :goto_80
    return-void

    .line 6384
    :cond_81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "parameter must be a descendant of this view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 6323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 6324
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 1

    .line 5227
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 5228
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 5229
    return-void
.end method

.method protected greylist onChildVisibilityChanged(Landroid/view/View;II)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "oldVisibility"    # I
    .param p3, "newVisibility"    # I

    .line 1589
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_2a

    .line 1590
    if-nez p3, :cond_a

    .line 1591
    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_2a

    .line 1593
    :cond_a
    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1594
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1597
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_22

    .line 1598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 1600
    :cond_22
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 1607
    :cond_2a
    :goto_2a
    if-nez p3, :cond_3b

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v0, :cond_3b

    .line 1608
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1609
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 1612
    :cond_3b
    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .registers 7
    .param p1, "extraSpace"    # I

    .line 7693
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_b

    .line 7694
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    .line 7697
    :cond_b
    const/4 v0, 0x0

    .line 7698
    .local v0, "need":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7699
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_22

    .line 7700
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    .line 7702
    .local v3, "childState":[I
    if-eqz v3, :cond_1f

    .line 7703
    array-length v4, v3

    add-int/2addr v0, v4

    .line 7699
    .end local v3    # "childState":[I
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 7707
    .end local v2    # "i":I
    :cond_22
    add-int v2, p1, v0

    invoke-super {p0, v2}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v2

    .line 7709
    .local v2, "state":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    if-ge v3, v1, :cond_3c

    .line 7710
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    .line 7712
    .local v4, "childState":[I
    if-eqz v4, :cond_39

    .line 7713
    invoke-static {v2, v4}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v2

    .line 7709
    .end local v4    # "childState":[I
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 7717
    .end local v3    # "i":I
    :cond_3c
    return-object v2
.end method

.method protected greylist-max-o onDebugDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4217
    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v8

    .line 4221
    .local v8, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4222
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4224
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/16 v9, 0x8

    const/4 v1, 0x1

    if-ge v6, v0, :cond_50

    .line 4225
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4226
    .local v7, "c":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_4d

    .line 4227
    invoke-virtual {v7}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v9

    .line 4229
    .local v9, "insets":Landroid/graphics/Insets;
    nop

    .line 4230
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, v9, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, v0

    .line 4231
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, v9, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, v0

    .line 4232
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, v9, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v4

    add-int/lit8 v4, v0, -0x1

    .line 4233
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v5, v9, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v5

    add-int/lit8 v5, v0, -0x1

    .line 4229
    move-object v0, p1

    move-object v1, v8

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4224
    .end local v7    # "c":Landroid/view/View;
    .end local v9    # "insets":Landroid/graphics/Insets;
    :cond_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 4240
    .end local v6    # "i":I
    :cond_50
    const/16 v0, 0x3f

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v0, v3, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4241
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4243
    invoke-virtual {p0, p1, v8}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 4248
    sget v0, Landroid/view/ViewGroup;->DEBUG_CORNERS_COLOR:I

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4249
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4251
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v10

    .line 4252
    .local v10, "lineLength":I
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v11

    .line 4253
    .local v11, "lineWidth":I
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_78
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v12, v0, :cond_a2

    .line 4254
    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 4255
    .local v13, "c":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_9f

    .line 4256
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    move-object v0, p1

    move-object v5, v8

    move v6, v10

    move v7, v11

    invoke-static/range {v0 .. v7}, Landroid/view/ViewGroup;->drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V

    .line 4253
    .end local v13    # "c":Landroid/view/View;
    :cond_9f
    add-int/lit8 v12, v12, 0x1

    goto :goto_78

    .line 4261
    .end local v10    # "lineLength":I
    .end local v11    # "lineWidth":I
    .end local v12    # "i":I
    :cond_a2
    return-void
.end method

.method protected greylist-max-o onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 4207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 4208
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4209
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 4207
    .end local v1    # "c":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4211
    .end local v0    # "i":I
    :cond_15
    return-void
.end method

.method public whitelist onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;

    .line 6116
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v1, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6118
    iget v0, p2, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    .line 6121
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v0, v1

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6124
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6128
    :cond_21
    iget v0, p0, Landroid/view/ViewGroup;->mLayerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 6131
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v1, -0x7fe00000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6132
    move-object p2, p0

    .line 6135
    :cond_2e
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_37

    .line 6136
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 6138
    :cond_37
    return-void
.end method

.method public final blacklist onDescendantUnbufferedRequested()V
    .registers 5

    .line 9371
    const/4 v0, 0x0

    .line 9372
    .local v0, "focusedChildNonPointerSource":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 9373
    iget v1, v1, Landroid/view/View;->mUnbufferedInputSource:I

    and-int/lit8 v0, v1, -0x3

    .line 9376
    :cond_9
    iput v0, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    .line 9381
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v2, :cond_24

    .line 9382
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    .line 9383
    .local v2, "child":Landroid/view/View;
    iget v3, v2, Landroid/view/View;->mUnbufferedInputSource:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_21

    .line 9384
    iget v3, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    .line 9385
    goto :goto_24

    .line 9381
    .end local v2    # "child":Landroid/view/View;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 9388
    .end local v1    # "i":I
    :cond_24
    :goto_24
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_2d

    .line 9389
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->onDescendantUnbufferedRequested()V

    .line 9391
    :cond_2d
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 5233
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5234
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 5235
    return-void
.end method

.method public greylist-max-r onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3837
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3838
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3839
    return-void

    .line 3841
    :cond_a
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2e

    .line 3842
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 3843
    .local v0, "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3844
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 3845
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3846
    .local v1, "childrenForAccessibilityCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v1, :cond_2b

    .line 3847
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3848
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildUnchecked(Landroid/view/View;)V

    .line 3846
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 3850
    .end local v2    # "i":I
    :cond_2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3852
    .end local v0    # "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "childrenForAccessibilityCount":I
    :cond_2e
    const-string v0, "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    .line 3854
    return-void
.end method

.method public whitelist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2523
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2524
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2525
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2526
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2527
    .local v2, "y":F
    const/4 v3, 0x7

    if-eq v0, v3, :cond_1b

    const/16 v3, 0x9

    if-ne v0, v3, :cond_23

    .line 2528
    :cond_1b
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->isOnScrollbar(FF)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2529
    const/4 v3, 0x1

    return v3

    .line 2532
    .end local v0    # "action":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 3331
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_24

    .line 3333
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3335
    return v0

    .line 3337
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract whitelist onLayout(ZIIII)V
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 8057
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/ViewGroup;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 8066
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public whitelist onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 3963
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 8048
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Landroid/view/ViewGroup;->dispatchNestedPreScroll(II[I[I)Z

    .line 8049
    return-void
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .registers 12
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 8039
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->dispatchNestedScroll(IIII[I)Z

    .line 8040
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 8016
    iput p3, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 8017
    return-void
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3406
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3407
    .local v0, "count":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_a

    .line 3408
    const/4 v1, 0x0

    .line 3409
    .local v1, "index":I
    const/4 v2, 0x1

    .line 3410
    .local v2, "increment":I
    move v3, v0

    .local v3, "end":I
    goto :goto_e

    .line 3412
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_a
    add-int/lit8 v1, v0, -0x1

    .line 3413
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 3414
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 3416
    .restart local v3    # "end":I
    :goto_e
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3417
    .local v4, "children":[Landroid/view/View;
    move v5, v1

    .local v5, "i":I
    :goto_11
    if-eq v5, v3, :cond_25

    .line 3418
    aget-object v6, v4, v5

    .line 3419
    .local v6, "child":Landroid/view/View;
    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_23

    .line 3420
    invoke-virtual {v6, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 3421
    const/4 v7, 0x1

    return v7

    .line 3417
    .end local v6    # "child":Landroid/view/View;
    :cond_23
    add-int/2addr v5, v2

    goto :goto_11

    .line 3425
    .end local v5    # "i":I
    :cond_25
    const/4 v5, 0x0

    return v5
.end method

.method public whitelist onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1130
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_b

    .line 1131
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 1133
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1145
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 2052
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 2053
    .local v0, "x":F
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 2054
    .local v1, "y":F
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v2

    if-nez v2, :cond_5e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isDraggingScrollBar()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_5e

    .line 2058
    :cond_15
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2059
    .local v2, "childrenCount":I
    if-eqz v2, :cond_59

    .line 2060
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2061
    .local v3, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v3, :cond_27

    .line 2062
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    .line 2063
    .local v4, "customOrder":Z
    :goto_28
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2064
    .local v5, "children":[Landroid/view/View;
    add-int/lit8 v6, v2, -0x1

    .local v6, "i":I
    :goto_2c
    if-ltz v6, :cond_54

    .line 2065
    invoke-direct {p0, v2, v6, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v7

    .line 2066
    .local v7, "childIndex":I
    invoke-static {v3, v5, v7}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    .line 2068
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v9

    if-eqz v9, :cond_51

    const/4 v9, 0x0

    .line 2069
    invoke-virtual {p0, v0, v1, v8, v9}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v9

    if-nez v9, :cond_44

    .line 2070
    goto :goto_51

    .line 2072
    :cond_44
    nop

    .line 2073
    invoke-direct {p0, p1, p2, v8}, Landroid/view/ViewGroup;->dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;

    move-result-object v9

    .line 2074
    .local v9, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v9, :cond_51

    .line 2075
    if-eqz v3, :cond_50

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2076
    :cond_50
    return-object v9

    .line 2064
    .end local v7    # "childIndex":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_51
    :goto_51
    add-int/lit8 v6, v6, -0x1

    goto :goto_2c

    .line 2079
    .end local v6    # "i":I
    :cond_54
    if-eqz v3, :cond_59

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2084
    .end local v3    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "customOrder":Z
    .end local v5    # "children":[Landroid/view/View;
    :cond_59
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3

    .line 2055
    .end local v2    # "childrenCount":I
    :cond_5e
    :goto_5e
    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v2

    return-object v2
.end method

.method protected greylist-max-o onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 8086
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 8087
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 8008
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 8028
    invoke-virtual {p0}, Landroid/view/ViewGroup;->stopNestedScroll()V

    .line 8029
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 8030
    return-void
.end method

.method public whitelist onViewAdded(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .line 5200
    return-void
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .line 5217
    return-void
.end method

.method protected blacklist pointInHoveredChild(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2454
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_16

    .line 2455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    iget-object v2, v2, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    return v0

    .line 2458
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist recomputeViewAttributes(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1662
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_11

    .line 1663
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 1664
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_11

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 1666
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_11
    return-void
.end method

.method public whitelist removeAllViews()V
    .registers 2

    .line 5795
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 5796
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5797
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5798
    return-void
.end method

.method public whitelist removeAllViewsInLayout()V
    .registers 11

    .line 5814
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5815
    .local v0, "count":I
    if-gtz v0, :cond_5

    .line 5816
    return-void

    .line 5819
    :cond_5
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5820
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5822
    iget-object v3, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 5823
    .local v3, "focused":Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    goto :goto_13

    :cond_12
    move v4, v2

    .line 5824
    .local v4, "detach":Z
    :goto_13
    const/4 v5, 0x0

    .line 5826
    .local v5, "clearChildFocus":Z
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5828
    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_19
    if-ltz v6, :cond_61

    .line 5829
    aget-object v7, v1, v6

    .line 5831
    .local v7, "view":Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_24

    .line 5832
    invoke-virtual {v8, p0, v7}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5835
    :cond_24
    const/4 v8, 0x0

    if-ne v7, v3, :cond_2b

    .line 5836
    invoke-virtual {v7, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5837
    const/4 v5, 0x1

    .line 5840
    :cond_2b
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5842
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5843
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5845
    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_4b

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v9, :cond_45

    .line 5846
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    goto :goto_4b

    .line 5848
    :cond_45
    if-eqz v4, :cond_4e

    .line 5849
    invoke-virtual {v7}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_4e

    .line 5847
    :cond_4b
    :goto_4b
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 5852
    :cond_4e
    :goto_4e
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-eqz v9, :cond_57

    .line 5853
    invoke-virtual {p0, v7, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5856
    :cond_57
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5858
    iput-object v8, v7, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5859
    aput-object v8, v1, v6

    .line 5828
    .end local v7    # "view":Landroid/view/View;
    add-int/lit8 v6, v6, -0x1

    goto :goto_19

    .line 5862
    .end local v6    # "i":I
    :cond_61
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v2, :cond_68

    .line 5863
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5865
    :cond_68
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v2, :cond_6f

    .line 5866
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5868
    :cond_6f
    if-eqz v5, :cond_7d

    .line 5869
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 5870
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v2

    if-nez v2, :cond_7d

    .line 5871
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5874
    :cond_7d
    return-void
.end method

.method protected whitelist removeDetachedView(Landroid/view/View;Z)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 5897
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_7

    .line 5898
    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5901
    :cond_7
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_e

    .line 5902
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 5904
    :cond_e
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p1, v0, :cond_15

    .line 5905
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5907
    :cond_15
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p1, v0, :cond_1c

    .line 5908
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5911
    :cond_1c
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5913
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5914
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5916
    if-eqz p2, :cond_2d

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_37

    :cond_2d
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_3b

    .line 5917
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5918
    :cond_37
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    goto :goto_42

    .line 5919
    :cond_3b
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_42

    .line 5920
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 5923
    :cond_42
    :goto_42
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 5924
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5927
    :cond_4c
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5928
    return-void
.end method

.method public greylist removeTransientView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 4963
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v0, :cond_5

    .line 4964
    return-void

    .line 4966
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4967
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_30

    .line 4968
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_2d

    .line 4969
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4970
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->remove(I)V

    .line 4971
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4972
    iget-object v2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_28

    .line 4973
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4975
    :cond_28
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4976
    return-void

    .line 4967
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4979
    .end local v1    # "i":I
    :cond_30
    return-void
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 5539
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5540
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5541
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5543
    :cond_d
    return-void
.end method

.method public whitelist removeViewAt(I)V
    .registers 3
    .param p1, "index"    # I

    .line 5584
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 5585
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5586
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5587
    return-void
.end method

.method public whitelist removeViewInLayout(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 5556
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    .line 5557
    return-void
.end method

.method public whitelist removeViews(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5600
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 5601
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5602
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5603
    return-void
.end method

.method public whitelist removeViewsInLayout(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5571
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 5572
    return-void
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 864
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_9

    .line 865
    return-void

    .line 869
    :cond_9
    invoke-super {p0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 872
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_17

    .line 873
    if-eqz v0, :cond_15

    .line 874
    invoke-virtual {v0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 877
    :cond_15
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 879
    :cond_17
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_20

    .line 880
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 882
    :cond_20
    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 1097
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .registers 5
    .param p1, "disallowIntercept"    # Z

    .line 3276
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x80000

    and-int v2, v0, v1

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-ne p1, v2, :cond_e

    .line 3278
    return-void

    .line 3281
    :cond_e
    if-eqz p1, :cond_14

    .line 3282
    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_1a

    .line 3284
    :cond_14
    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3288
    :goto_1a
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_23

    .line 3289
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3291
    :cond_23
    return-void
.end method

.method public whitelist requestFocus(ILandroid/graphics/Rect;)Z
    .registers 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3360
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 3363
    .local v0, "descendantFocusability":I
    sparse-switch v0, :sswitch_data_56

    .line 3379
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3365
    :sswitch_20
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3366
    .local v1, "result":Z
    goto :goto_40

    .line 3374
    .end local v1    # "result":Z
    :sswitch_25
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3375
    .local v1, "took":Z
    if-eqz v1, :cond_2d

    move v2, v1

    goto :goto_31

    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 3376
    .local v2, "result":Z
    :goto_31
    move v1, v2

    goto :goto_40

    .line 3368
    .end local v1    # "took":Z
    .end local v2    # "result":Z
    :sswitch_33
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3369
    .restart local v1    # "took":Z
    if-eqz v1, :cond_3b

    move v2, v1

    goto :goto_3f

    :cond_3b
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 3371
    .restart local v2    # "result":Z
    :goto_3f
    move v1, v2

    .line 3383
    .end local v2    # "result":Z
    .local v1, "result":Z
    :goto_40
    if-eqz v1, :cond_54

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutValid()Z

    move-result v2

    if-nez v2, :cond_54

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_54

    .line 3384
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3386
    :cond_54
    return v1

    nop

    :sswitch_data_56
    .sparse-switch
        0x20000 -> :sswitch_33
        0x40000 -> :sswitch_25
        0x60000 -> :sswitch_20
    .end sparse-switch
.end method

.method public whitelist requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1102
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 1103
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1104
    return v1

    .line 1106
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 1107
    .local v2, "propagate":Z
    if-nez v2, :cond_d

    .line 1108
    return v1

    .line 1110
    :cond_d
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public greylist-max-o requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .registers 3
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .line 7782
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 7783
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_9

    .line 7784
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 7786
    :cond_9
    return-void
.end method

.method public whitelist requestTransparentRegion(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 7396
    if-eqz p1, :cond_11

    .line 7397
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 7398
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_11

    .line 7399
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 7402
    :cond_11
    return-void
.end method

.method protected blacklist resetResolvedDrawables()V
    .registers 5

    .line 7979
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 7981
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7982
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1a

    .line 7983
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7984
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 7985
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedDrawables()V

    .line 7982
    .end local v2    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7988
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public blacklist resetResolvedLayoutDirection()V
    .registers 5

    .line 7911
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 7913
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7914
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1a

    .line 7915
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7916
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 7917
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 7914
    .end local v2    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7920
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public blacklist resetResolvedPadding()V
    .registers 5

    .line 7962
    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 7964
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7965
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1a

    .line 7966
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7967
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 7968
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedPadding()V

    .line 7965
    .end local v2    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7971
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public blacklist resetResolvedTextAlignment()V
    .registers 5

    .line 7945
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 7947
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7948
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1a

    .line 7949
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7950
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 7951
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 7948
    .end local v2    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7954
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public blacklist resetResolvedTextDirection()V
    .registers 5

    .line 7928
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 7930
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7931
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1a

    .line 7932
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7933
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 7934
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 7931
    .end local v2    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7937
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method greylist-max-o resetSubtreeAccessibilityStateChanged()V
    .registers 5

    .line 3922
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 3923
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3924
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3925
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 3926
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 3925
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3928
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method public blacklist resetSubtreeAutofillIds()V
    .registers 5

    .line 3825
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 3826
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3827
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3828
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 3829
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 3828
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3831
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method protected greylist-max-o resolveDrawables()V
    .registers 5

    .line 7882
    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    .line 7883
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7884
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_20

    .line 7885
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7886
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Landroid/view/View;->areDrawablesResolved()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 7887
    invoke-virtual {v2}, Landroid/view/View;->resolveDrawables()V

    .line 7884
    .end local v2    # "child":Landroid/view/View;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7890
    .end local v1    # "i":I
    :cond_20
    return-void
.end method

.method public greylist-max-o resolveLayoutDirection()Z
    .registers 6

    .line 7812
    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    move-result v0

    .line 7813
    .local v0, "result":Z
    if-eqz v0, :cond_1d

    .line 7814
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7815
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 7816
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7817
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7818
    invoke-virtual {v3}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 7815
    .end local v3    # "child":Landroid/view/View;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7822
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1d
    return v0
.end method

.method public greylist-max-o resolveLayoutParams()V
    .registers 4

    .line 7897
    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 7898
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7899
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 7900
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7901
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->resolveLayoutParams()V

    .line 7899
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7903
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public greylist-max-r resolvePadding()V
    .registers 5

    .line 7867
    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    .line 7868
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7869
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_20

    .line 7870
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7871
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Landroid/view/View;->isPaddingResolved()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 7872
    invoke-virtual {v2}, Landroid/view/View;->resolvePadding()V

    .line 7869
    .end local v2    # "child":Landroid/view/View;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7875
    .end local v1    # "i":I
    :cond_20
    return-void
.end method

.method public greylist-max-o resolveRtlPropertiesIfNeeded()Z
    .registers 6

    .line 7793
    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    move-result v0

    .line 7795
    .local v0, "result":Z
    if-eqz v0, :cond_1d

    .line 7796
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7797
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 7798
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7799
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7800
    invoke-virtual {v3}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 7797
    .end local v3    # "child":Landroid/view/View;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7804
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1d
    return v0
.end method

.method public greylist-max-o resolveTextAlignment()Z
    .registers 6

    .line 7848
    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    move-result v0

    .line 7849
    .local v0, "result":Z
    if-eqz v0, :cond_1d

    .line 7850
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7851
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 7852
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7853
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7854
    invoke-virtual {v3}, Landroid/view/View;->resolveTextAlignment()Z

    .line 7851
    .end local v3    # "child":Landroid/view/View;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7858
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1d
    return v0
.end method

.method public greylist-max-o resolveTextDirection()Z
    .registers 6

    .line 7830
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    move-result v0

    .line 7831
    .local v0, "result":Z
    if-eqz v0, :cond_1d

    .line 7832
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7833
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 7834
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7835
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7836
    invoke-virtual {v3}, Landroid/view/View;->resolveTextDirection()Z

    .line 7833
    .end local v3    # "child":Landroid/view/View;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7840
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1d
    return v0
.end method

.method public whitelist restoreDefaultFocus()Z
    .registers 3

    .line 3430
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 3431
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 3433
    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3434
    const/4 v0, 0x1

    return v0

    .line 3436
    :cond_1e
    invoke-super {p0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0
.end method

.method public blacklist restoreFocusInCluster(I)Z
    .registers 4
    .param p1, "direction"    # I

    .line 3446
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3447
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    .line 3449
    .local v0, "blockedFocus":Z
    const/4 v1, 0x0

    :try_start_b
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 3450
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    move-result v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_16

    .line 3452
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 3450
    return v1

    .line 3452
    :catchall_16
    move-exception v1

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 3453
    throw v1

    .line 3455
    .end local v0    # "blockedFocus":Z
    :cond_1b
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    move-result v0

    return v0
.end method

.method public blacklist restoreFocusNotInCluster()Z
    .registers 9

    .line 3473
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    const/16 v1, 0x82

    if-eqz v0, :cond_b

    .line 3476
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->restoreFocusInCluster(I)Z

    move-result v0

    return v0

    .line 3478
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5c

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_19

    goto :goto_5c

    .line 3481
    :cond_19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 3482
    .local v0, "descendentFocusability":I
    const/high16 v3, 0x60000

    const/4 v4, 0x0

    if-ne v0, v3, :cond_27

    .line 3483
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    .line 3485
    :cond_27
    const/high16 v3, 0x20000

    const/4 v5, 0x1

    if-ne v0, v3, :cond_33

    .line 3486
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 3487
    return v5

    .line 3489
    :cond_33
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    iget v6, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v3, v6, :cond_4c

    .line 3490
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v6, v6, v3

    .line 3491
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v7

    if-nez v7, :cond_49

    .line 3492
    invoke-virtual {v6}, Landroid/view/View;->restoreFocusNotInCluster()Z

    move-result v7

    if-eqz v7, :cond_49

    .line 3493
    return v5

    .line 3489
    .end local v6    # "child":Landroid/view/View;
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 3496
    .end local v3    # "i":I
    :cond_4c
    const/high16 v3, 0x40000

    if-ne v0, v3, :cond_5b

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 3497
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    .line 3499
    :cond_5b
    return v2

    .line 3479
    .end local v0    # "descendentFocusability":I
    :cond_5c
    :goto_5c
    return v2
.end method

.method public whitelist scheduleLayoutAnimation()V
    .registers 2

    .line 6554
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6555
    return-void
.end method

.method public whitelist setAddStatesFromChildren(Z)V
    .registers 3
    .param p1, "addsStates"    # Z

    .line 7727
    if-eqz p1, :cond_9

    .line 7728
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_f

    .line 7730
    :cond_9
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7733
    :goto_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 7734
    return-void
.end method

.method blacklist setAlphaInternal(F)V
    .registers 2
    .param p1, "alpha"    # F

    .line 9452
    invoke-super {p0, p1}, Landroid/view/View;->setAlphaInternal(F)V

    .line 9453
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchAlphaChanged(F)V

    .line 9454
    return-void
.end method

.method public whitelist setAlwaysDrawnWithCacheEnabled(Z)V
    .registers 3
    .param p1, "always"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6661
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6662
    return-void
.end method

.method public whitelist setAnimationCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6617
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6618
    return-void
.end method

.method protected whitelist setChildrenDrawingCacheEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4089
    if-nez p1, :cond_8

    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_17

    .line 4090
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4091
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4092
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_17

    .line 4093
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 4092
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 4096
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method protected whitelist setChildrenDrawingOrderEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 6733
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6734
    return-void
.end method

.method protected whitelist setChildrenDrawnWithCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6701
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6702
    return-void
.end method

.method public whitelist setClipChildren(Z)V
    .registers 7
    .param p1, "clipChildren"    # Z

    .line 4627
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 4628
    .local v0, "previousValue":Z
    :goto_9
    if-eq p1, v0, :cond_26

    .line 4629
    invoke-direct {p0, v1, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4630
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v2, v3, :cond_23

    .line 4631
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4632
    .local v3, "child":Landroid/view/View;
    iget-object v4, v3, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    if-eqz v4, :cond_20

    .line 4633
    iget-object v4, v3, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4, p1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 4630
    .end local v3    # "child":Landroid/view/View;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 4636
    .end local v2    # "i":I
    :cond_23
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4638
    :cond_26
    return-void
.end method

.method public whitelist setClipToPadding(Z)V
    .registers 4
    .param p1, "clipToPadding"    # Z

    .line 4652
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v1

    if-eq v1, p1, :cond_e

    .line 4653
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4654
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4656
    :cond_e
    return-void
.end method

.method greylist-max-o setDefaultFocus(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 886
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 887
    return-void

    .line 890
    :cond_b
    iput-object p1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 892
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 893
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    .line 895
    :cond_1a
    return-void
.end method

.method public whitelist setDescendantFocusability(I)V
    .registers 4
    .param p1, "focusability"    # I

    .line 836
    sparse-switch p1, :sswitch_data_1c

    .line 842
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :sswitch_c
    nop

    .line 845
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 846
    const/high16 v1, 0x60000

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 847
    return-void

    :sswitch_data_1c
    .sparse-switch
        0x20000 -> :sswitch_c
        0x40000 -> :sswitch_c
        0x60000 -> :sswitch_c
    .end sparse-switch
.end method

.method public whitelist setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .registers 3
    .param p1, "controller"    # Landroid/view/animation/LayoutAnimationController;

    .line 6564
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 6565
    if-eqz p1, :cond_a

    .line 6566
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6568
    :cond_a
    return-void
.end method

.method public whitelist setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .param p1, "animationListener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 7769
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 7770
    return-void
.end method

.method public whitelist setLayoutMode(I)V
    .registers 3
    .param p1, "layoutMode"    # I

    .line 6885
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_13

    .line 6886
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidateInheritedLayoutMode(I)V

    .line 6887
    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 6888
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6890
    :cond_13
    return-void
.end method

.method public whitelist setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 4
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .line 5696
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_e

    .line 5697
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 5698
    .local v0, "previousTransition":Landroid/animation/LayoutTransition;
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    .line 5699
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 5701
    .end local v0    # "previousTransition":Landroid/animation/LayoutTransition;
    :cond_e
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 5702
    if-eqz p1, :cond_17

    .line 5703
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 5705
    :cond_17
    return-void
.end method

.method public whitelist setMotionEventSplittingEnabled(Z)V
    .registers 4
    .param p1, "split"    # Z

    .line 3215
    if-eqz p1, :cond_a

    .line 3216
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_12

    .line 3218
    :cond_a
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3220
    :goto_12
    return-void
.end method

.method public whitelist setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 5182
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 5183
    return-void
.end method

.method public whitelist setPersistentDrawingCache(I)V
    .registers 3
    .param p1, "drawingCacheToKeep"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6814
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 6815
    return-void
.end method

.method protected whitelist setStaticTransformationsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 4773
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4774
    return-void
.end method

.method public whitelist setTouchscreenBlocksFocus(Z)V
    .registers 4
    .param p1, "touchscreenBlocksFocus"    # Z

    .line 1413
    if-eqz p1, :cond_2a

    .line 1414
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1415
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1416
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDeepestFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1417
    .local v0, "focusedChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v1

    if-nez v1, :cond_29

    .line 1418
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 1419
    .local v1, "newFocus":Landroid/view/View;
    if-eqz v1, :cond_29

    .line 1420
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1423
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "newFocus":Landroid/view/View;
    :cond_29
    goto :goto_32

    .line 1425
    :cond_2a
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1427
    :cond_32
    :goto_32
    return-void
.end method

.method public whitelist setTransitionAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .line 9458
    invoke-super {p0, p1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 9459
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchAlphaChanged(F)V

    .line 9460
    return-void
.end method

.method public whitelist setTransitionGroup(Z)V
    .registers 4
    .param p1, "isTransitionGroup"    # Z

    .line 3265
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3266
    if-eqz p1, :cond_f

    .line 3267
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_15

    .line 3269
    :cond_f
    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3271
    :goto_15
    return-void
.end method

.method public whitelist setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/view/WindowInsetsAnimation$Callback;

    .line 7479
    invoke-super {p0, p1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 7480
    if-eqz p1, :cond_a

    .line 7481
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation$Callback;->getDispatchMode()I

    move-result v0

    goto :goto_b

    .line 7482
    :cond_a
    const/4 v0, 0x1

    :goto_b
    iput v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    .line 7483
    return-void
.end method

.method greylist-max-o shouldBlockFocusForTouchscreen()Z
    .registers 3

    .line 1450
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 1451
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1452
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1453
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findKeyboardNavigationCluster()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_28

    :cond_26
    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 1450
    :goto_29
    return v0
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 8000
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .registers 4
    .param p1, "originalView"    # Landroid/view/View;

    .line 984
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 987
    return v1

    .line 989
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 7
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1002
    const v0, -0x20000001

    :try_start_3
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1003
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2d

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 1004
    nop

    .line 1007
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1004
    return v2

    .line 1007
    :cond_18
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1008
    nop

    .line 1009
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    return v2

    .line 1007
    :catchall_2d
    move-exception v1

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1008
    throw v1
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 6
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 1014
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-nez v1, :cond_21

    .line 1017
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    const v1, -0x10000001

    :try_start_d
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1018
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_1a

    .line 1020
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1018
    return-object v0

    .line 1020
    :catchall_1a
    move-exception v0

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1021
    throw v0

    .line 1024
    :cond_21
    sget-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-object v0
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 7
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 1031
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-nez v1, :cond_27

    if-nez p3, :cond_27

    .line 1035
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    const v1, -0x8000001

    :try_start_f
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1036
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_20

    .line 1038
    .local v0, "mode":Landroid/view/ActionMode;
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1039
    nop

    .line 1040
    sget-object v1, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    if-eq v0, v1, :cond_27

    .line 1041
    return-object v0

    .line 1038
    .end local v0    # "mode":Landroid/view/ActionMode;
    :catchall_20
    move-exception v0

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1039
    throw v0

    .line 1044
    :cond_27
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_3a

    .line 1046
    :try_start_2b
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/AbstractMethodError; {:try_start_2b .. :try_end_31} :catch_32

    return-object v0

    .line 1047
    :catch_32
    move-exception v0

    .line 1049
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    return-object v1

    .line 1052
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_3a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist startLayoutAnimation()V
    .registers 2

    .line 6541
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_d

    .line 6542
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6543
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6545
    :cond_d
    return-void
.end method

.method public whitelist startViewTransition(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 7268
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_14

    .line 7269
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 7270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 7272
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7274
    :cond_14
    return-void
.end method

.method public blacklist subtractObscuredTouchableRegion(Landroid/graphics/Region;Landroid/view/View;)V
    .registers 11
    .param p1, "touchableRegion"    # Landroid/graphics/Region;
    .param p2, "view"    # Landroid/view/View;

    .line 7409
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7410
    .local v0, "childrenCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 7411
    .local v1, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v1, :cond_10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 7412
    .local v2, "customOrder":Z
    :goto_11
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7413
    .local v3, "children":[Landroid/view/View;
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_15
    if-ltz v4, :cond_31

    .line 7414
    invoke-direct {p0, v0, v4, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v5

    .line 7415
    .local v5, "childIndex":I
    invoke-static {v1, v3, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 7416
    .local v6, "child":Landroid/view/View;
    if-ne v6, p2, :cond_22

    .line 7418
    goto :goto_31

    .line 7420
    :cond_22
    invoke-virtual {v6}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v7

    if-nez v7, :cond_29

    .line 7422
    goto :goto_2e

    .line 7424
    :cond_29
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-static {p1, v6, v7}, Landroid/view/ViewGroup;->applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V

    .line 7413
    .end local v5    # "childIndex":I
    .end local v6    # "child":Landroid/view/View;
    :goto_2e
    add-int/lit8 v4, v4, -0x1

    goto :goto_15

    .line 7428
    .end local v4    # "i":I
    :cond_31
    :goto_31
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-static {p1, p0, v4}, Landroid/view/ViewGroup;->applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V

    .line 7430
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 7431
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_3f

    .line 7432
    invoke-interface {v4, p1, p0}, Landroid/view/ViewParent;->subtractObscuredTouchableRegion(Landroid/graphics/Region;Landroid/view/View;)V

    .line 7434
    :cond_3f
    return-void
.end method

.method public whitelist suppressLayout(Z)V
    .registers 3
    .param p1, "suppress"    # Z

    .line 7340
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 7341
    if-nez p1, :cond_e

    .line 7342
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    if-eqz v0, :cond_e

    .line 7343
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 7344
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 7347
    :cond_e
    return-void
.end method

.method public greylist-max-r transformPointToViewLocal([FLandroid/view/View;)V
    .registers 7
    .param p1, "point"    # [F
    .param p2, "child"    # Landroid/view/View;

    .line 3084
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 3085
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v3, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 3087
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_25

    .line 3088
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3090
    :cond_25
    return-void
.end method

.method greylist-max-o unFocus(Landroid/view/View;)V
    .registers 3
    .param p1, "focused"    # Landroid/view/View;

    .line 1213
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1214
    invoke-super {p0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    goto :goto_e

    .line 1216
    :cond_8
    invoke-virtual {v0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 1217
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1219
    :goto_e
    return-void
.end method

.method greylist-max-o updateLocalSystemUiVisibility(II)Z
    .registers 9
    .param p1, "localValue"    # I
    .param p2, "localChanges"    # I

    .line 1939
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v0

    .line 1941
    .local v0, "changed":Z
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1942
    .local v1, "count":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1943
    .local v2, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v1, :cond_15

    .line 1944
    aget-object v4, v2, v3

    .line 1945
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1943
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1947
    .end local v3    # "i":I
    :cond_15
    return v0
.end method

.method public whitelist updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5139
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5142
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_e

    .line 5145
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5146
    return-void

    .line 5143
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5140
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
