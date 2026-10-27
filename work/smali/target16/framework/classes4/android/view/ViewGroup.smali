.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$ViewLocationHolder;
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

.field private static final blacklist FLAG_PROPAGATED_FRAME_RATE:I = 0x40000000

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

.field private static blacklist sToolkitViewGroupFrameRateApiFlagValue:Z


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
    .registers 3

    .line 387
    const/high16 v0, 0x40000

    const/high16 v1, 0x60000

    const/high16 v2, 0x20000

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    .line 459
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->toolkitViewgroupSetRequestedFrameRateApi()Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewGroup;->sToolkitViewGroupFrameRateApiFlagValue:Z

    .line 565
    const/4 v0, 0x0

    sput v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    .line 653
    new-instance v0, Landroid/view/ViewGroup$1;

    invoke-direct {v0}, Landroid/view/ViewGroup$1;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 702
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 703
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 706
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 707
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 710
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 711
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 714
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 272
    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 593
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 620
    iput v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 631
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    .line 632
    iput-object v1, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 638
    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 645
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    .line 7256
    new-instance v0, Landroid/view/ViewGroup$4;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$4;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 716
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 717
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 718
    return-void
.end method

.method private greylist-max-o addDisappearingView(Landroid/view/View;)V
    .registers 3

    .line 7149
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7151
    if-nez v0, :cond_b

    .line 7152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7155
    :cond_b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7156
    return-void
.end method

.method private greylist-max-o addInArray(Landroid/view/View;I)V
    .registers 7

    .line 5396
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5397
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5398
    array-length v2, v0

    .line 5399
    const/4 v3, 0x0

    if-ne p2, v1, :cond_20

    .line 5400
    if-ne v2, v1, :cond_17

    .line 5401
    add-int/lit8 p2, v2, 0xc

    new-array p2, p2, [Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5402
    iget-object p2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5403
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5405
    :cond_17
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, p2

    goto :goto_52

    .line 5406
    :cond_20
    if-ge p2, v1, :cond_53

    .line 5407
    if-ne v2, v1, :cond_3a

    .line 5408
    add-int/lit8 v2, v2, 0xc

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5409
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5410
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5411
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    goto :goto_40

    .line 5413
    :cond_3a
    add-int/lit8 v2, p2, 0x1

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5415
    :goto_40
    aput-object p1, v0, p2

    .line 5416
    iget p1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5417
    iget p1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt p1, p2, :cond_52

    .line 5418
    iget p1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 5423
    :cond_52
    :goto_52
    return-void

    .line 5421
    :cond_53
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " count="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .registers 3

    .line 2987
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object p1

    .line 2988
    iget-object p2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object p2, p1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2989
    iput-object p1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2990
    return-object p1
.end method

.method private greylist-max-o addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 10

    .line 5279
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_a

    .line 5282
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 5285
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_f8

    .line 5290
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_19

    .line 5291
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5294
    :cond_19
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 5295
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 5298
    :cond_23
    if-eqz p4, :cond_28

    .line 5299
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_2b

    .line 5301
    :cond_28
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5304
    :goto_2b
    if-gez p2, :cond_2f

    .line 5305
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5308
    :cond_2f
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 5311
    if-eqz p4, :cond_38

    .line 5312
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    goto :goto_3a

    .line 5314
    :cond_38
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5316
    :goto_3a
    invoke-virtual {p1}, Landroid/view/View;->hasUnhandledKeyListener()Z

    move-result p3

    if-eqz p3, :cond_43

    .line 5317
    invoke-virtual {p0}, Landroid/view/ViewGroup;->incrementChildUnhandledKeyListeners()V

    .line 5320
    :cond_43
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p3

    .line 5321
    if-eqz p3, :cond_50

    .line 5322
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 5325
    :cond_50
    iget-object p3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5326
    const/4 p4, 0x0

    const/high16 v0, 0x400000

    const/4 v1, 0x1

    if-eqz p3, :cond_73

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v2, v0

    if-nez v2, :cond_73

    .line 5327
    iget-boolean v2, p3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5328
    iput-boolean p4, p3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5329
    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 5330
    iget-boolean v3, p3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v3, :cond_71

    .line 5331
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5333
    :cond_71
    iput-boolean v2, p3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5336
    :cond_73
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result p3

    if-eqz p3, :cond_7c

    .line 5337
    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    .line 5340
    :cond_7c
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewAdded(Landroid/view/View;)V

    .line 5342
    iget p3, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr p3, v0

    if-ne p3, v0, :cond_8b

    .line 5343
    iget p3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v0, 0x10000

    or-int/2addr p3, v0

    iput p3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5346
    :cond_8b
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result p3

    if-eqz p3, :cond_94

    .line 5347
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5350
    :cond_94
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_9f

    .line 5351
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5354
    :cond_9f
    iget-object p3, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-eqz p3, :cond_be

    .line 5355
    iget-object p3, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {p3}, Landroid/util/IntArray;->size()I

    move-result p3

    .line 5356
    nop

    :goto_aa
    if-ge p4, p3, :cond_be

    .line 5357
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0, p4}, Landroid/util/IntArray;->get(I)I

    move-result v0

    .line 5358
    if-gt p2, v0, :cond_bb

    .line 5359
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p4, v0}, Landroid/util/IntArray;->set(II)V

    .line 5356
    :cond_bb
    add-int/lit8 p4, p4, 0x1

    goto :goto_aa

    .line 5364
    :cond_be
    iget-object p2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz p2, :cond_cb

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_cb

    .line 5365
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 5368
    :cond_cb
    invoke-virtual {p1}, Landroid/view/View;->hasDefaultFocus()Z

    move-result p2

    if-eqz p2, :cond_d4

    .line 5371
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    .line 5374
    :cond_d4
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->touchAccessibilityNodeProviderIfNeeded(Landroid/view/View;)V

    .line 5377
    sget-boolean p2, Landroid/view/ViewGroup;->sToolkitViewGroupFrameRateApiFlagValue:Z

    if-eqz p2, :cond_f7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRequestedFrameRate()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_f7

    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 p3, 0x40000000    # 2.0f

    and-int/2addr p2, p3

    if-eqz p2, :cond_f7

    .line 5379
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRequestedFrameRate()F

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getForcedOverrideFrameRateFlag()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->overrideFrameRate(FZ)V

    .line 5381
    :cond_f7
    return-void

    .line 5286
    :cond_f8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V
    .registers 11

    .line 7505
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 7506
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7507
    const/4 v1, 0x0

    aget v3, v0, v1

    .line 7508
    const/4 v1, 0x1

    aget v4, v0, v1

    .line 7509
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v5, v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int v6, v4, p1

    move-object v2, p0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 7510
    return-void
.end method

.method private greylist-max-o bindLayoutAnimation(Landroid/view/View;)V
    .registers 3

    .line 5483
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 5484
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 5485
    return-void
.end method

.method private blacklist brokenDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5

    .line 7526
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7527
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 7528
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 7529
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 7530
    goto :goto_19

    .line 7527
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7533
    :cond_19
    :goto_19
    return-object p1
.end method

.method private greylist-max-o cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .registers 11

    .line 2947
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v0, :cond_38

    .line 2948
    nop

    .line 2949
    const/4 v0, 0x1

    if-nez p1, :cond_1c

    .line 2950
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2951
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-wide v3, v1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2953
    const/16 v1, 0x1002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2954
    move v1, v0

    goto :goto_1d

    .line 2949
    :cond_1c
    const/4 v1, 0x0

    .line 2957
    :goto_1d
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_1f
    if-eqz v2, :cond_30

    .line 2958
    iget-object v3, v2, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v3}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2959
    iget-object v3, v2, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v4, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v0, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 2957
    iget-object v2, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1f

    .line 2961
    :cond_30
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2963
    if-eqz v1, :cond_38

    .line 2964
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2967
    :cond_38
    return-void
.end method

.method private greylist-max-o cancelHoverTarget(Landroid/view/View;)V
    .registers 14

    .line 2335
    nop

    .line 2336
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    const/4 v1, 0x0

    .line 2337
    :goto_4
    if-eqz v0, :cond_35

    .line 2338
    iget-object v2, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2339
    iget-object v3, v0, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v3, p1, :cond_30

    .line 2340
    if-nez v1, :cond_11

    .line 2341
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_13

    .line 2343
    :cond_11
    iput-object v2, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2345
    :goto_13
    invoke-virtual {v0}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 2347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2348
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2350
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2351
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2352
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2353
    return-void

    .line 2355
    :cond_30
    nop

    .line 2356
    nop

    .line 2357
    move-object v1, v0

    move-object v0, v2

    goto :goto_4

    .line 2358
    :cond_35
    return-void
.end method

.method private greylist cancelTouchTarget(Landroid/view/View;)V
    .registers 14

    .line 3021
    nop

    .line 3022
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    const/4 v1, 0x0

    .line 3023
    :goto_4
    if-eqz v0, :cond_34

    .line 3024
    iget-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3025
    iget-object v3, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v3, p1, :cond_2f

    .line 3026
    if-nez v1, :cond_11

    .line 3027
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_13

    .line 3029
    :cond_11
    iput-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3031
    :goto_13
    invoke-virtual {v0}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 3033
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3034
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3036
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 3037
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3038
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 3039
    return-void

    .line 3041
    :cond_2f
    nop

    .line 3042
    nop

    .line 3043
    move-object v1, v0

    move-object v0, v2

    goto :goto_4

    .line 3044
    :cond_34
    return-void
.end method

.method private greylist-max-o clearCachedLayoutMode()V
    .registers 2

    .line 5201
    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 5202
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 5204
    :cond_b
    return-void
.end method

.method private greylist-max-o clearTouchTargets()V
    .registers 3

    .line 2932
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2933
    if-eqz v0, :cond_12

    .line 2935
    :goto_4
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2936
    invoke-virtual {v0}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2937
    nop

    .line 2938
    if-nez v1, :cond_10

    .line 2939
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_12

    .line 2938
    :cond_10
    move-object v0, v1

    goto :goto_4

    .line 2941
    :cond_12
    :goto_12
    return-void
.end method

.method private greylist-max-o dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;
    .registers 7

    .line 2104
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2105
    invoke-direct {p0, p1, p3}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2106
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p2

    .line 2107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2108
    goto :goto_2a

    .line 2109
    :cond_12
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2110
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2111
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2112
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p2

    .line 2113
    neg-float p3, v0

    neg-float v0, v1

    invoke-virtual {p1, p3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2115
    :goto_2a
    return-object p2
.end method

.method private greylist-max-o dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 6

    .line 2434
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2435
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2436
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    .line 2437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2438
    goto :goto_2a

    .line 2439
    :cond_12
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2440
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2441
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2442
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    .line 2443
    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2445
    :goto_2a
    return p2
.end method

.method private greylist-max-o dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 6

    .line 2611
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2612
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2613
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    .line 2614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2615
    goto :goto_2a

    .line 2616
    :cond_12
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2617
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2618
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2619
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    .line 2620
    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2622
    :goto_2a
    return p2
.end method

.method private greylist-max-o dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .registers 8

    .line 3107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3110
    const/4 v1, 0x3

    if-eqz p2, :cond_a

    .line 3111
    :try_start_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3115
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result p2

    .line 3116
    and-int/2addr p4, p2

    .line 3121
    if-nez p4, :cond_1e

    .line 3122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p4
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_86

    if-eq p4, v1, :cond_1d

    .line 3123
    nop

    .line 3173
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3123
    const/4 p1, 0x0

    return p1

    .line 3125
    :cond_1d
    move p4, p2

    .line 3134
    :cond_1e
    if-ne p4, p2, :cond_53

    .line 3135
    if-eqz p3, :cond_2e

    :try_start_22
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result p2

    if-eqz p2, :cond_29

    goto :goto_2e

    .line 3149
    :cond_29
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    goto :goto_57

    .line 3136
    :cond_2e
    :goto_2e
    if-nez p3, :cond_35

    .line 3137
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    goto :goto_4e

    .line 3139
    :cond_35
    iget p2, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget p4, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    .line 3140
    iget p4, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v1, p3, Landroid/view/View;->mTop:I

    sub-int/2addr p4, v1

    int-to-float p4, p4

    .line 3141
    invoke-virtual {p1, p2, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3143
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p3

    .line 3145
    neg-float p2, p2

    neg-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V
    :try_end_4d
    .catchall {:try_start_22 .. :try_end_4d} :catchall_86

    move p2, p3

    .line 3147
    :goto_4e
    nop

    .line 3173
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3147
    return p2

    .line 3151
    :cond_53
    :try_start_53
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object p2

    .line 3155
    :goto_57
    if-nez p3, :cond_5e

    .line 3156
    invoke-super {p0, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p3

    goto :goto_7e

    .line 3158
    :cond_5e
    iget p4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr p4, v1

    int-to-float p4, p4

    .line 3159
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 3160
    invoke-virtual {p2, p4, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3161
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result p4

    if-nez p4, :cond_7a

    .line 3162
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 3165
    :cond_7a
    invoke-virtual {p3, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p3

    .line 3169
    :goto_7e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V
    :try_end_81
    .catchall {:try_start_53 .. :try_end_81} :catchall_86

    .line 3170
    nop

    .line 3173
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3170
    return p3

    .line 3173
    :catchall_86
    move-exception p2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3174
    throw p2
.end method

.method private static greylist-max-o drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .registers 13

    .line 4164
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

    .line 4165
    invoke-static {p4}, Landroid/view/ViewGroup;->sign(I)I

    move-result p4

    mul-int/2addr p6, p4

    add-int p4, p2, p6

    add-int/2addr p5, p3

    invoke-static/range {p0 .. p5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4166
    return-void
.end method

.method private static greylist-max-o drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .registers 8

    .line 9406
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    if-nez v0, :cond_a

    .line 9408
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    .line 9411
    :cond_a
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float p2, p2

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 9412
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float p3, p3

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 9413
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float p4, p4

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 9414
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x3

    aput p3, v0, v1

    .line 9416
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x4

    aput p4, v0, v1

    .line 9417
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x5

    aput p3, v0, v1

    .line 9418
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x6

    aput p4, v0, v1

    .line 9419
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float p5, p5

    const/4 v1, 0x7

    aput p5, v0, v1

    .line 9421
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x8

    aput p4, v0, v1

    .line 9422
    sget-object p4, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v0, 0x9

    aput p5, p4, v0

    .line 9423
    sget-object p4, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v0, 0xa

    aput p2, p4, v0

    .line 9424
    sget-object p4, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v0, 0xb

    aput p5, p4, v0

    .line 9426
    sget-object p4, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v0, 0xc

    aput p2, p4, v0

    .line 9427
    sget-object p4, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v0, 0xd

    aput p5, p4, v0

    .line 9428
    sget-object p4, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 p5, 0xe

    aput p2, p4, p5

    .line 9429
    sget-object p2, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 p4, 0xf

    aput p3, p2, p4

    .line 9431
    sget-object p2, Landroid/view/ViewGroup;->sDebugLines:[F

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 9432
    return-void
.end method

.method private static greylist-max-o drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V
    .registers 21

    .line 4170
    move/from16 v5, p6

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object/from16 v1, p5

    move/from16 v4, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4171
    move/from16 v10, p6

    neg-int v11, v10

    move-object v6, p0

    move v8, p1

    move/from16 v9, p4

    move-object/from16 v7, p5

    move/from16 v12, p7

    invoke-static/range {v6 .. v12}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4172
    move v10, v11

    move v9, p2

    move/from16 v8, p3

    move/from16 v11, p6

    invoke-static/range {v6 .. v12}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4173
    move v11, v10

    move/from16 v9, p4

    invoke-static/range {v6 .. v12}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 4174
    return-void
.end method

.method private greylist-max-o exitHoverTargets()V
    .registers 10

    .line 2324
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_21

    .line 2325
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2326
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-wide v3, v1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2328
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2329
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2330
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2332
    :cond_21
    return-void
.end method

.method private greylist-max-o exitTooltipHoverTargets()V
    .registers 10

    .line 2449
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 2450
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2451
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-wide v3, v1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2453
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2454
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2455
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2457
    :cond_21
    return-void
.end method

.method private static greylist-max-o fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .registers 21

    .line 4179
    sub-int v2, p1, p5

    .line 4180
    sub-int v3, p2, p6

    .line 4182
    add-int v4, p3, p7

    .line 4183
    add-int v10, p4, p8

    .line 4185
    move-object v0, p0

    move v5, p2

    move-object/from16 v1, p9

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4186
    move v8, v4

    move v4, p1

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4187
    move-object v4, p0

    move v7, p2

    move v6, p3

    move v9, p4

    move-object/from16 v5, p9

    invoke-static/range {v4 .. v9}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4188
    move v3, p4

    move v4, v8

    move v5, v10

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4189
    return-void
.end method

.method private static greylist-max-o fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .registers 13

    .line 4148
    if-eq p2, p4, :cond_17

    if-eq p3, p5, :cond_17

    .line 4149
    if-le p2, p4, :cond_9

    .line 4150
    move v6, p4

    move p4, p2

    move p2, v6

    .line 4152
    :cond_9
    if-le p3, p5, :cond_e

    .line 4153
    move v6, p5

    move p5, p3

    move p3, v6

    .line 4155
    :cond_e
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4157
    :cond_17
    return-void
.end method

.method private greylist-max-o findChildWithAccessibilityFocus()Landroid/view/View;
    .registers 5

    .line 2884
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2885
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2886
    return-object v1

    .line 2889
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 2890
    if-nez v0, :cond_f

    .line 2891
    return-object v1

    .line 2894
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2895
    :goto_13
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_22

    .line 2896
    if-ne v2, p0, :cond_1a

    .line 2897
    return-object v0

    .line 2899
    :cond_1a
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    .line 2900
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_13

    .line 2903
    :cond_22
    return-object v1
.end method

.method private greylist-max-o getAndVerifyPreorderedIndex(IIZ)I
    .registers 6

    .line 2120
    if-eqz p3, :cond_33

    .line 2121
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p2

    .line 2122
    if-ge p2, p1, :cond_a

    .line 2127
    nop

    .line 2128
    goto :goto_34

    .line 2123
    :cond_a
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getChildDrawingOrder() returned invalid index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " (child count is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2129
    :cond_33
    nop

    .line 2131
    :goto_34
    return p2
.end method

.method private static greylist-max-o getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;
    .registers 4
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

    .line 3790
    if-eqz p0, :cond_24

    .line 3791
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 3792
    if-eqz p0, :cond_b

    goto :goto_26

    .line 3793
    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid preorderedList contained null child at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3797
    :cond_24
    aget-object p0, p1, p2

    .line 3799
    :goto_26
    return-object p0
.end method

.method private blacklist getAutofillManager()Landroid/view/autofill/AutofillManager;
    .registers 3

    .line 3698
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    return-object v0
.end method

.method public static whitelist getChildMeasureSpec(III)I
    .registers 8

    .line 7054
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7055
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 7057
    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 7059
    nop

    .line 7060
    nop

    .line 7062
    const/high16 v1, -0x80000000

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    sparse-switch v0, :sswitch_data_52

    goto :goto_4b

    .line 7065
    :sswitch_1a
    if-ltz p2, :cond_1f

    .line 7066
    nop

    .line 7067
    move p1, v4

    goto :goto_4c

    .line 7068
    :cond_1f
    if-ne p2, v3, :cond_25

    .line 7070
    nop

    .line 7071
    move p2, p0

    move p1, v4

    goto :goto_4c

    .line 7072
    :cond_25
    if-ne p2, v2, :cond_4b

    .line 7075
    nop

    .line 7076
    move p2, p0

    move p1, v1

    goto :goto_4c

    .line 7101
    :sswitch_2b
    if-ltz p2, :cond_30

    .line 7103
    nop

    .line 7104
    move p1, v4

    goto :goto_4c

    .line 7105
    :cond_30
    if-ne p2, v3, :cond_35

    .line 7108
    nop

    .line 7109
    move p2, p0

    goto :goto_4c

    .line 7110
    :cond_35
    if-ne p2, v2, :cond_4b

    .line 7113
    nop

    .line 7114
    move p2, p0

    goto :goto_4c

    .line 7082
    :sswitch_3a
    if-ltz p2, :cond_3f

    .line 7084
    nop

    .line 7085
    move p1, v4

    goto :goto_4c

    .line 7086
    :cond_3f
    if-ne p2, v3, :cond_45

    .line 7089
    nop

    .line 7090
    move p2, p0

    move p1, v1

    goto :goto_4c

    .line 7091
    :cond_45
    if-ne p2, v2, :cond_4b

    .line 7094
    nop

    .line 7095
    move p2, p0

    move p1, v1

    goto :goto_4c

    .line 7119
    :cond_4b
    :goto_4b
    move p2, p1

    :goto_4c
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    nop

    :sswitch_data_52
    .sparse-switch
        -0x80000000 -> :sswitch_3a
        0x0 -> :sswitch_2b
        0x40000000 -> :sswitch_1a
    .end sparse-switch
.end method

.method private blacklist getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    .registers 3

    .line 3692
    invoke-static {}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->obtain()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3693
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    .line 3694
    return-object v0
.end method

.method private blacklist getChildrenForContentCapture()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;
    .registers 2

    .line 3761
    invoke-static {}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->obtain()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3762
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->populateChildrenForContentCapture(Ljava/util/ArrayList;)V

    .line 3763
    return-object v0
.end method

.method private greylist-max-o getLocalPoint()Landroid/graphics/PointF;
    .registers 2

    .line 1706
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 1707
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method private blacklist getTempLocationF()[F
    .registers 2

    .line 3054
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    if-nez v0, :cond_9

    .line 3055
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    .line 3057
    :cond_9
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPosition:[F

    return-object v0
.end method

.method private blacklist getTempPoint()Landroid/graphics/Point;
    .registers 2

    .line 3061
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    if-nez v0, :cond_b

    .line 3062
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    .line 3064
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method private blacklist getTempRect()Landroid/graphics/Rect;
    .registers 2

    .line 3047
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 3048
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 3050
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private greylist-max-o getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .registers 4

    .line 2974
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_2
    if-eqz v0, :cond_c

    .line 2975
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_9

    .line 2976
    return-object v0

    .line 2974
    :cond_9
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_2

    .line 2979
    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .registers 6

    .line 2635
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2636
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2637
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2638
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2639
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2640
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2642
    :cond_20
    return-object p1
.end method

.method private greylist-max-o hasBooleanFlag(I)Z
    .registers 3

    .line 6679
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method private greylist-max-o hasChildWithZ()Z
    .registers 5

    .line 4443
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v2, :cond_18

    .line 4444
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    return v0

    .line 4443
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4446
    :cond_18
    return v0
.end method

.method private greylist-max-o initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    .line 742
    sget-object v0, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 744
    sget-object v3, Lcom/android/internal/R$styleable;->ViewGroup:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 747
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p1

    .line 748
    const/4 p2, 0x0

    move p3, p2

    :goto_16
    if-ge p3, p1, :cond_a5

    .line 749
    invoke-virtual {v5, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p4

    .line 750
    const/4 v0, -0x1

    const/4 v2, 0x1

    packed-switch p4, :pswitch_data_aa

    goto/16 :goto_a1

    .line 794
    :pswitch_23
    invoke-virtual {v5, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    goto/16 :goto_a1

    .line 791
    :pswitch_2c
    invoke-virtual {v5, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 792
    goto/16 :goto_a1

    .line 788
    :pswitch_35
    invoke-virtual {v5, p4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 789
    goto :goto_a1

    .line 782
    :pswitch_3d
    invoke-virtual {v5, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 783
    if-eqz p4, :cond_a1

    .line 784
    new-instance p4, Landroid/animation/LayoutTransition;

    invoke-direct {p4}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_a1

    .line 779
    :pswitch_4c
    invoke-virtual {v5, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 780
    goto :goto_a1

    .line 776
    :pswitch_54
    sget-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v5, p4, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    aget p4, v0, p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 777
    goto :goto_a1

    .line 764
    :pswitch_60
    invoke-virtual {v5, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 765
    goto :goto_a1

    .line 767
    :pswitch_68
    invoke-virtual {v5, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 768
    goto :goto_a1

    .line 761
    :pswitch_70
    const/4 v0, 0x2

    invoke-virtual {v5, p4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    .line 762
    goto :goto_a1

    .line 758
    :pswitch_79
    invoke-virtual {v5, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    .line 759
    goto :goto_a1

    .line 770
    :pswitch_81
    invoke-virtual {v5, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 771
    if-lez p4, :cond_a1

    .line 772
    iget-object v0, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_a1

    .line 755
    :pswitch_91
    invoke-virtual {v5, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 756
    goto :goto_a1

    .line 752
    :pswitch_99
    invoke-virtual {v5, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 753
    nop

    .line 748
    :cond_a1
    :goto_a1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_16

    .line 799
    :cond_a5
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 800
    return-void

    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_99
        :pswitch_91
        :pswitch_81
        :pswitch_79
        :pswitch_70
        :pswitch_68
        :pswitch_60
        :pswitch_54
        :pswitch_4c
        :pswitch_3d
        :pswitch_35
        :pswitch_2c
        :pswitch_23
    .end packed-switch
.end method

.method private greylist-max-o initViewGroup()V
    .registers 4

    .line 722
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingLayoutBounds()Z

    move-result v0

    if-nez v0, :cond_b

    .line 723
    const/16 v0, 0x80

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 725
    :cond_b
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 726
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 727
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 728
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 729
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 730
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 732
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 734
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 735
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 737
    iput v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 738
    return-void
.end method

.method private blacklist isOnTop(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 7487
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7488
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    .line 7489
    :goto_f
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7490
    add-int/lit8 v5, v0, -0x1

    :goto_13
    if-ltz v5, :cond_26

    .line 7491
    invoke-direct {p0, v0, v5, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v6

    .line 7492
    invoke-static {p3, v4, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 7493
    if-ne v6, p1, :cond_20

    .line 7494
    return v1

    .line 7496
    :cond_20
    if-ne v6, p2, :cond_23

    .line 7497
    return v2

    .line 7490
    :cond_23
    add-int/lit8 v5, v5, -0x1

    goto :goto_13

    .line 7501
    :cond_26
    return v2
.end method

.method private blacklist newDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5

    .line 7537
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7538
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 7539
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 7538
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7541
    :cond_11
    return-object p1
.end method

.method private greylist-max-o notifyAnimationListener()V
    .registers 2

    .line 4487
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4488
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4490
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_18

    .line 4491
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    .line 4497
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 4500
    :cond_18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4501
    return-void
.end method

.method private static greylist-max-o obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2

    .line 2550
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_7

    .line 2551
    return-object p0

    .line 2553
    :cond_7
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o populateChildrenForAutofill(Ljava/util/ArrayList;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 3723
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3724
    if-gtz v0, :cond_5

    .line 3725
    return-void

    .line 3727
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3728
    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 3729
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    move v3, v2

    .line 3730
    :goto_15
    invoke-direct {p0}, Landroid/view/ViewGroup;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v4

    .line 3731
    nop

    :goto_1a
    if-ge v2, v0, :cond_80

    .line 3732
    invoke-direct {p0, v0, v2, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v5

    .line 3733
    if-nez v1, :cond_27

    .line 3734
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v6, v5

    goto :goto_2d

    :cond_27
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3735
    :goto_2d
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_7a

    .line 3736
    invoke-virtual {v5}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v6

    if-nez v6, :cond_7a

    instance-of v6, v5, Landroid/webkit/WebView;

    if-eqz v6, :cond_41

    .line 3737
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->shouldAlwaysIncludeWebview(Landroid/view/autofill/AutofillManager;)Z

    move-result v6

    if-nez v6, :cond_7a

    .line 3738
    :cond_41
    invoke-virtual {v5}, Landroid/view/View;->isMatchingAutofillableHeuristics()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 3739
    invoke-virtual {v5}, Landroid/view/View;->isActivityDeniedForAutofillForUnimportantView()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 3740
    :cond_4d
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->shouldIncludeAllChildrenViewWithAutofillTypeNotNone(Landroid/view/autofill/AutofillManager;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 3741
    invoke-virtual {v5}, Landroid/view/View;->getAutofillType()I

    move-result v6

    if-nez v6, :cond_7a

    .line 3742
    :cond_59
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->shouldIncludeAllChildrenViews(Landroid/view/autofill/AutofillManager;)Z

    move-result v6

    if-nez v6, :cond_7a

    .line 3743
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->shouldIncludeInvisibleView(Landroid/view/autofill/AutofillManager;)Z

    move-result v6

    if-eqz v6, :cond_70

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_70

    .line 3744
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_70

    goto :goto_7a

    .line 3753
    :cond_70
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_7d

    .line 3754
    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {v5, p1, p2}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    goto :goto_7d

    .line 3752
    :cond_7a
    :goto_7a
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3731
    :cond_7d
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 3757
    :cond_80
    return-void
.end method

.method private blacklist populateChildrenForContentCapture(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 3768
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3769
    if-gtz v0, :cond_5

    .line 3770
    return-void

    .line 3772
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3773
    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 3774
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    move v3, v2

    .line 3775
    :goto_15
    nop

    :goto_16
    if-ge v2, v0, :cond_3f

    .line 3776
    invoke-direct {p0, v0, v2, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v4

    .line 3777
    if-nez v1, :cond_23

    .line 3778
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v4, v5, v4

    goto :goto_29

    :cond_23
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3779
    :goto_29
    invoke-virtual {v4}, Landroid/view/View;->isImportantForContentCapture()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 3780
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 3781
    :cond_33
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3c

    .line 3782
    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {v4, p1}, Landroid/view/ViewGroup;->populateChildrenForContentCapture(Ljava/util/ArrayList;)V

    .line 3775
    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 3785
    :cond_3f
    return-void
.end method

.method private greylist-max-o recreateChildDisplayList(Landroid/view/View;)V
    .registers 5

    .line 4549
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

    .line 4550
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4551
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    .line 4552
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 4553
    return-void
.end method

.method private greylist-max-o removeFromArray(I)V
    .registers 6

    .line 5427
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5428
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 5429
    :cond_11
    aget-object v1, v0, p1

    iput-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5431
    :cond_15
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5432
    add-int/lit8 v3, v1, -0x1

    if-ne p1, v3, :cond_24

    .line 5433
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v2, v0, v1

    goto :goto_38

    .line 5434
    :cond_24
    if-ltz p1, :cond_4f

    if-ge p1, v1, :cond_4f

    .line 5435
    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5436
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v2, v0, v1

    .line 5440
    :goto_38
    iget v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v0, p1, :cond_44

    .line 5441
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 5442
    const/4 p1, -0x1

    iput p1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_4e

    .line 5443
    :cond_44
    iget v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-le v0, p1, :cond_4e

    .line 5444
    iget p1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 5446
    :cond_4e
    :goto_4e
    return-void

    .line 5438
    :cond_4f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private greylist-max-o removeFromArray(II)V
    .registers 8

    .line 5450
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5451
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5453
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5454
    add-int/2addr p2, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 5456
    if-ne p1, p2, :cond_11

    .line 5457
    return-void

    .line 5460
    :cond_11
    const/4 v2, 0x0

    if-ne p2, v1, :cond_20

    .line 5461
    move v1, p1

    :goto_15
    if-ge v1, p2, :cond_3a

    .line 5462
    aget-object v3, v0, v1

    iput-object v2, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5463
    aput-object v2, v0, v1

    .line 5461
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 5466
    :cond_20
    move v3, p1

    :goto_21
    if-ge v3, p2, :cond_2a

    .line 5467
    aget-object v4, v0, v3

    iput-object v2, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5466
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 5472
    :cond_2a
    sub-int v3, v1, p2

    invoke-static {v0, p2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5474
    sub-int v3, p2, p1

    sub-int v3, v1, v3

    :goto_33
    if-ge v3, v1, :cond_3a

    .line 5475
    aput-object v2, v0, v3

    .line 5474
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 5479
    :cond_3a
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5480
    return-void
.end method

.method private greylist-max-o removePointersFromTouchTargets(I)V
    .registers 7

    .line 2997
    nop

    .line 2998
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    const/4 v1, 0x0

    .line 2999
    :goto_4
    if-eqz v0, :cond_29

    .line 3000
    iget-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3001
    iget v3, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_24

    .line 3002
    iget v3, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    not-int v4, p1

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 3003
    iget v3, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_24

    .line 3004
    if-nez v1, :cond_1c

    .line 3005
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1e

    .line 3007
    :cond_1c
    iput-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3009
    :goto_1e
    invoke-virtual {v0}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 3010
    nop

    .line 3011
    move-object v0, v2

    goto :goto_4

    .line 3014
    :cond_24
    nop

    .line 3015
    nop

    .line 3016
    move-object v1, v0

    move-object v0, v2

    goto :goto_4

    .line 3017
    :cond_29
    return-void
.end method

.method private greylist-max-o removeViewInternal(ILandroid/view/View;)V
    .registers 7

    .line 5595
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_9

    .line 5596
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5599
    :cond_9
    nop

    .line 5600
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_15

    .line 5601
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5602
    const/4 v0, 0x1

    goto :goto_16

    .line 5600
    :cond_15
    move v0, v1

    .line 5604
    :goto_16
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p2, v2, :cond_1d

    .line 5605
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5608
    :cond_1d
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5610
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5611
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5613
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_41

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5614
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_41

    .line 5616
    :cond_39
    iget-object v2, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_44

    .line 5617
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_44

    .line 5615
    :cond_41
    :goto_41
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 5620
    :cond_44
    :goto_44
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 5621
    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5624
    :cond_4d
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5626
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 5628
    invoke-virtual {p2}, Landroid/view/View;->hasUnhandledKeyListener()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 5629
    invoke-virtual {p0}, Landroid/view/ViewGroup;->decrementChildUnhandledKeyListeners()V

    .line 5632
    :cond_5c
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p2, v2, :cond_63

    .line 5633
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5635
    :cond_63
    if-eqz v0, :cond_71

    .line 5636
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 5637
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v0

    if-nez v0, :cond_71

    .line 5638
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5642
    :cond_71
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5644
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_7f

    .line 5645
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5648
    :cond_7f
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v0, :cond_85

    move v0, v1

    goto :goto_8b

    :cond_85
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 5649
    :goto_8b
    nop

    :goto_8c
    if-ge v1, v0, :cond_a0

    .line 5650
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 5651
    if-ge p1, v2, :cond_9d

    .line 5652
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v1, v2}, Landroid/util/IntArray;->set(II)V

    .line 5649
    :cond_9d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 5656
    :cond_a0
    iget-object p1, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz p1, :cond_a9

    .line 5657
    iget-object p1, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5659
    :cond_a9
    return-void
.end method

.method private greylist-max-o removeViewInternal(Landroid/view/View;)Z
    .registers 3

    .line 5586
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 5587
    if-ltz v0, :cond_b

    .line 5588
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 5589
    const/4 p1, 0x1

    return p1

    .line 5591
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o removeViewsInternal(II)V
    .registers 15

    .line 5701
    add-int v0, p1, p2

    .line 5703
    if-ltz p1, :cond_8a

    if-ltz p2, :cond_8a

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gt v0, v1, :cond_8a

    .line 5707
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 5708
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_14

    move v2, v3

    goto :goto_15

    :cond_14
    move v2, v4

    .line 5709
    :goto_15
    nop

    .line 5710
    nop

    .line 5712
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5714
    const/4 v6, 0x0

    move v7, p1

    move v9, v4

    move-object v8, v6

    :goto_1d
    if-ge v7, v0, :cond_73

    .line 5715
    aget-object v10, v5, v7

    .line 5717
    iget-object v11, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v11, :cond_2a

    .line 5718
    iget-object v11, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v11, p0, v10}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5721
    :cond_2a
    if-ne v10, v1, :cond_30

    .line 5722
    invoke-virtual {v10, v6}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5723
    move v9, v3

    .line 5725
    :cond_30
    iget-object v11, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne v10, v11, :cond_35

    .line 5726
    move-object v8, v10

    .line 5728
    :cond_35
    iget-object v11, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne v10, v11, :cond_3c

    .line 5729
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5732
    :cond_3c
    invoke-virtual {v10}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5734
    invoke-direct {p0, v10}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5735
    invoke-direct {p0, v10}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5737
    invoke-virtual {v10}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    if-nez v11, :cond_5e

    iget-object v11, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v11, :cond_58

    iget-object v11, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5738
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_58

    goto :goto_5e

    .line 5740
    :cond_58
    if-eqz v2, :cond_61

    .line 5741
    invoke-virtual {v10}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_61

    .line 5739
    :cond_5e
    :goto_5e
    invoke-direct {p0, v10}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 5744
    :cond_61
    :goto_61
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v11

    if-eqz v11, :cond_6a

    .line 5745
    invoke-virtual {p0, v10, v4}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5748
    :cond_6a
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5750
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5714
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 5753
    :cond_73
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 5755
    if-eqz v8, :cond_7b

    .line 5756
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5758
    :cond_7b
    if-eqz v9, :cond_89

    .line 5759
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 5760
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result p1

    if-nez p1, :cond_89

    .line 5761
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5764
    :cond_89
    return-void

    .line 5704
    :cond_8a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private static greylist-max-o resetCancelNextUpFlag(Landroid/view/View;)Z
    .registers 3

    .line 2921
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 2922
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2923
    const/4 p0, 0x1

    return p0

    .line 2925
    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o resetTouchState()V
    .registers 3

    .line 2910
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2911
    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2912
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2913
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 2914
    return-void
.end method

.method private greylist-max-o restoreFocusInClusterInternal(I)Z
    .registers 4

    .line 3441
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

    .line 3443
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3444
    const/4 p1, 0x1

    return p1

    .line 3446
    :cond_1e
    invoke-super {p0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result p1

    return p1
.end method

.method private greylist-max-o setBooleanFlag(IZ)V
    .registers 3

    .line 6683
    if-eqz p2, :cond_8

    .line 6684
    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_e

    .line 6686
    :cond_8
    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6688
    :goto_e
    return-void
.end method

.method private greylist-max-o setLayoutMode(IZ)V
    .registers 3

    .line 6760
    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 6761
    const/high16 p1, 0x800000

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6762
    return-void
.end method

.method private greylist-max-o setTouchscreenBlocksFocusNoRefocus(Z)V
    .registers 3

    .line 1428
    if-eqz p1, :cond_a

    .line 1429
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v0, 0x4000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_12

    .line 1431
    :cond_a
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v0, -0x4000001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1433
    :goto_12
    return-void
.end method

.method private blacklist shouldAlwaysIncludeWebview(Landroid/view/autofill/AutofillManager;)Z
    .registers 2

    .line 3712
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 3713
    :cond_4
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->shouldAlwaysIncludeWebviewInAssistStructure()Z

    move-result p1

    return p1
.end method

.method private blacklist shouldIncludeAllChildrenViewWithAutofillTypeNotNone(Landroid/view/autofill/AutofillManager;)Z
    .registers 2

    .line 3702
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 3703
    :cond_4
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->shouldIncludeAllChildrenViewsWithAutofillTypeNotNoneInAssistStructure()Z

    move-result p1

    return p1
.end method

.method private blacklist shouldIncludeAllChildrenViews(Landroid/view/autofill/AutofillManager;)Z
    .registers 2

    .line 3707
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 3708
    :cond_4
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->shouldIncludeAllChildrenViewInAssistStructure()Z

    move-result p1

    return p1
.end method

.method private blacklist shouldIncludeInvisibleView(Landroid/view/autofill/AutofillManager;)Z
    .registers 2

    .line 3717
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 3718
    :cond_4
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->shouldIncludeInvisibleViewInAssistStructure()Z

    move-result p1

    return p1
.end method

.method private static greylist-max-o sign(I)I
    .registers 1

    .line 4160
    if-ltz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, -0x1

    :goto_5
    return p0
.end method

.method private greylist-max-o touchAccessibilityNodeProviderIfNeeded(Landroid/view/View;)V
    .registers 3

    .line 5390
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isAutofillCompatibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5391
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 5393
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

    .line 2477
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2478
    return-void

    .line 2480
    :cond_7
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v0

    .line 2482
    :try_start_c
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    .line 2483
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2d

    .line 2484
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2485
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_2a

    .line 2486
    invoke-virtual {v3}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2487
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 2489
    :cond_27
    invoke-virtual {v3, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 2483
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2494
    :cond_2d
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2495
    nop

    .line 2496
    return-void

    .line 2494
    :catchall_32
    move-exception p1

    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2495
    throw p1
.end method

.method public whitelist addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 3851
    const-string p3, "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 3853
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    move-result-object p2

    .line 3854
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->setLayoutSize(II)V

    .line 3855
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setExtraRenderingInfo(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V

    .line 3857
    :cond_1e
    return-void
.end method

.method public whitelist addFocusables(Ljava/util/ArrayList;II)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1318
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1320
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    .line 1321
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v2

    .line 1322
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

    .line 1324
    :goto_19
    const/high16 v5, 0x60000

    if-ne v1, v5, :cond_23

    .line 1325
    if-eqz v3, :cond_22

    .line 1326
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1328
    :cond_22
    return-void

    .line 1331
    :cond_23
    if-eqz v2, :cond_27

    .line 1332
    or-int/lit8 p3, p3, 0x1

    .line 1335
    :cond_27
    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_30

    if-eqz v3, :cond_30

    .line 1336
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1339
    :cond_30
    nop

    .line 1340
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    new-array v2, v2, [Landroid/view/View;

    .line 1341
    move v5, v4

    move v6, v5

    :goto_37
    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v5, v7, :cond_4d

    .line 1342
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v7, v7, v5

    .line 1343
    iget v8, v7, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-nez v8, :cond_4a

    .line 1344
    add-int/lit8 v8, v6, 0x1

    aput-object v7, v2, v6

    move v6, v8

    .line 1341
    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 1347
    :cond_4d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v5

    invoke-static {v2, v4, v6, p0, v5}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 1348
    nop

    :goto_55
    if-ge v4, v6, :cond_5f

    .line 1349
    aget-object v5, v2, v4

    invoke-virtual {v5, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1348
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 1356
    :cond_5f
    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_6e

    if-eqz v3, :cond_6e

    .line 1357
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6e

    .line 1358
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1360
    :cond_6e
    return-void
.end method

.method public whitelist addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1364
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1366
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 1369
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v1

    .line 1371
    :try_start_f
    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 1372
    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1a

    .line 1374
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 1375
    nop

    .line 1376
    goto :goto_22

    .line 1374
    :catchall_1a
    move-exception p1

    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 1375
    throw p1

    .line 1377
    :cond_1f
    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 1380
    :goto_22
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eq v0, v1, :cond_29

    .line 1382
    return-void

    .line 1385
    :cond_29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_32

    .line 1386
    return-void

    .line 1389
    :cond_32
    nop

    .line 1390
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    new-array v0, v0, [Landroid/view/View;

    .line 1391
    move v1, v2

    move v3, v1

    :goto_39
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v4, :cond_4f

    .line 1392
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v4, v4, v1

    .line 1393
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_4c

    .line 1394
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    move v3, v5

    .line 1391
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1397
    :cond_4f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v1

    invoke-static {v0, v2, v3, p0, v1}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 1398
    nop

    :goto_57
    if-ge v2, v3, :cond_61

    .line 1399
    aget-object v1, v0, v2

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 1398
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 1401
    :cond_61
    return-void
.end method

.method public whitelist addStatesFromChildren()Z
    .registers 2

    .line 7840
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

    .line 1539
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1541
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1542
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1544
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_18

    .line 1545
    aget-object v3, v1, v2

    .line 1546
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_15

    .line 1547
    invoke-virtual {v3, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1544
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1550
    :cond_18
    return-void
.end method

.method public greylist addTransientView(Landroid/view/View;I)V
    .registers 6

    .line 4901
    if-ltz p2, :cond_77

    if-nez p1, :cond_6

    goto/16 :goto_77

    .line 4904
    :cond_6
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_5c

    .line 4909
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v0, :cond_1c

    .line 4910
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    .line 4911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 4913
    :cond_1c
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 4914
    if-lez v0, :cond_3e

    .line 4916
    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_33

    .line 4917
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    if-ge p2, v2, :cond_30

    .line 4918
    goto :goto_33

    .line 4916
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 4921
    :cond_33
    :goto_33
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0, v1, p2}, Landroid/util/IntArray;->add(II)V

    .line 4922
    iget-object p2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4923
    goto :goto_48

    .line 4924
    :cond_3e
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0, p2}, Landroid/util/IntArray;->add(I)V

    .line 4925
    iget-object p2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4927
    :goto_48
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4928
    iget-object p2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p2, :cond_57

    .line 4929
    iget-object p2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 4931
    :cond_57
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4932
    return-void

    .line 4905
    :cond_5c
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified view already has a parent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4902
    :cond_77
    :goto_77
    return-void
.end method

.method public whitelist addView(Landroid/view/View;)V
    .registers 3

    .line 5027
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 5028
    return-void
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .registers 4

    .line 5044
    if-eqz p1, :cond_1b

    .line 5047
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5048
    if-nez v0, :cond_17

    .line 5049
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5050
    if-eqz v0, :cond_f

    goto :goto_17

    .line 5051
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "generateDefaultLayoutParams() cannot return null  "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5055
    :cond_17
    :goto_17
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5056
    return-void

    .line 5045
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add a null child view to a ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addView(Landroid/view/View;II)V
    .registers 5

    .line 5069
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5070
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5071
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5072
    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5073
    return-void
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 5106
    if-eqz p1, :cond_e

    .line 5113
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 5116
    return-void

    .line 5107
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add a null child view to a ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 5087
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5088
    return-void
.end method

.method protected whitelist addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .registers 5

    .line 5240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result p1

    return p1
.end method

.method protected whitelist addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .registers 6

    .line 5258
    if-eqz p1, :cond_14

    .line 5261
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5262
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 5263
    iget p2, p1, Landroid/view/View;->mPrivateFlags:I

    const p3, -0x200001

    and-int/2addr p2, p3

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5264
    const/4 p1, 0x1

    return p1

    .line 5259
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add a null child view to a ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 5

    .line 5499
    iget-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 5501
    if-nez p1, :cond_b

    .line 5502
    new-instance p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    invoke-direct {p1}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 5503
    iput-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 5506
    :cond_b
    iput p4, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 5507
    iput p3, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 5508
    return-void
.end method

.method protected whitelist attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 5934
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 5936
    if-gez p2, :cond_6

    .line 5937
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5940
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 5942
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5943
    iget p2, p1, Landroid/view/View;->mPrivateFlags:I

    const p3, -0x200001

    and-int/2addr p2, p3

    const p3, -0x8001

    and-int/2addr p2, p3

    or-int/lit8 p2, p2, 0x20

    const/high16 p3, -0x80000000

    or-int/2addr p2, p3

    iput p2, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5946
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setDetached(Z)V

    .line 5947
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr p3, v0

    iput p3, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5949
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p3

    if-eqz p3, :cond_32

    .line 5950
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 5952
    :cond_32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result p1

    if-nez p1, :cond_46

    .line 5953
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p2, 0x1

    goto :goto_47

    :cond_46
    nop

    .line 5952
    :goto_47
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchVisibilityAggregated(Z)Z

    .line 5954
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5955
    return-void
.end method

.method public whitelist bringChildToFront(Landroid/view/View;)V
    .registers 3

    .line 1695
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1696
    if-ltz v0, :cond_16

    .line 1697
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 1698
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 1699
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1700
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1701
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1703
    :cond_16
    return-void
.end method

.method greylist-max-o buildOrderedChildList()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 4458
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4459
    const/4 v1, 0x1

    if-le v0, v1, :cond_58

    invoke-direct {p0}, Landroid/view/ViewGroup;->hasChildWithZ()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_58

    .line 4461
    :cond_c
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    if-nez v1, :cond_18

    .line 4462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    goto :goto_22

    .line 4465
    :cond_18
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4466
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 4469
    :goto_22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v1

    .line 4470
    const/4 v2, 0x0

    :goto_27
    if-ge v2, v0, :cond_55

    .line 4472
    invoke-direct {p0, v0, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v3

    .line 4473
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v3, v4, v3

    .line 4474
    invoke-virtual {v3}, Landroid/view/View;->getZ()F

    move-result v4

    .line 4477
    move v5, v2

    .line 4478
    :goto_36
    if-lez v5, :cond_4d

    iget-object v6, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getZ()F

    move-result v6

    cmpl-float v6, v6, v4

    if-lez v6, :cond_4d

    .line 4479
    add-int/lit8 v5, v5, -0x1

    goto :goto_36

    .line 4481
    :cond_4d
    iget-object v4, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4470
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 4483
    :cond_55
    iget-object v0, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    return-object v0

    .line 4459
    :cond_58
    :goto_58
    const/4 v0, 0x0

    return-object v0
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

    .line 2875
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method blacklist calculateAccessibilityDataSensitive()V
    .registers 3

    .line 3948
    invoke-super {p0}, Landroid/view/View;->calculateAccessibilityDataSensitive()V

    .line 3949
    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_12

    .line 3950
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->calculateAccessibilityDataSensitive()V

    .line 3949
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3952
    :cond_12
    return-void
.end method

.method protected whitelist canAnimate()Z
    .registers 2

    .line 6475
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

    .line 8188
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 8189
    return-void

    .line 8191
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8192
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 8194
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8195
    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_22

    .line 8196
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8197
    invoke-virtual {v2, p1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 8195
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 8200
    :cond_22
    :goto_22
    return-void
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 5130
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public whitelist childDrawableStateChanged(Landroid/view/View;)V
    .registers 2

    .line 7849
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_9

    .line 7850
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 7852
    :cond_9
    return-void
.end method

.method public whitelist childHasTransientStateChanged(Landroid/view/View;Z)V
    .registers 4

    .line 1151
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result p1

    .line 1152
    if-eqz p2, :cond_d

    .line 1153
    iget p2, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    goto :goto_13

    .line 1155
    :cond_d
    iget p2, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 1158
    :goto_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result p2

    .line 1159
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_46

    if-eq p1, p2, :cond_46

    .line 1161
    :try_start_1d
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {p1, p0, p2}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_22
    .catch Ljava/lang/AbstractMethodError; {:try_start_1d .. :try_end_22} :catch_23

    .line 1165
    goto :goto_46

    .line 1162
    :catch_23
    move-exception p1

    .line 1163
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " does not fully implement ViewParent"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ViewGroup"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    :cond_46
    :goto_46
    return-void
.end method

.method protected whitelist cleanupLayoutState(Landroid/view/View;)V
    .registers 3

    .line 5273
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5274
    return-void
.end method

.method public whitelist clearChildFocus(Landroid/view/View;)V
    .registers 2

    .line 1186
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1187
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_c

    .line 1188
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {p1, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 1190
    :cond_c
    return-void
.end method

.method greylist-max-o clearDefaultFocus(Landroid/view/View;)V
    .registers 4

    .line 903
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eq v0, p1, :cond_11

    iget-object p1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz p1, :cond_11

    iget-object p1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 904
    invoke-virtual {p1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 905
    return-void

    .line 908
    :cond_11
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 911
    const/4 p1, 0x0

    :goto_15
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge p1, v0, :cond_35

    .line 912
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    .line 913
    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 914
    iput-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 915
    return-void

    .line 916
    :cond_26
    iget-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-nez v1, :cond_32

    invoke-virtual {v0}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 917
    iput-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 911
    :cond_32
    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    .line 921
    :cond_35
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_42

    .line 922
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 924
    :cond_42
    return-void
.end method

.method public whitelist clearDisappearingChildren()V
    .registers 6

    .line 7128
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7129
    if-eqz v0, :cond_24

    .line 7130
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7131
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1e

    .line 7132
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7133
    iget-object v4, v3, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_18

    .line 7134
    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 7136
    :cond_18
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 7131
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 7138
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7139
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7141
    :cond_24
    return-void
.end method

.method public whitelist clearFocus()V
    .registers 3

    .line 1197
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1198
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    goto :goto_10

    .line 1200
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1201
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1202
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1204
    :goto_10
    return-void
.end method

.method greylist-max-o clearFocusedInCluster()V
    .registers 5

    .line 949
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findKeyboardNavigationCluster()Landroid/view/View;

    move-result-object v0

    .line 950
    move-object v1, p0

    .line 952
    :cond_5
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 953
    if-ne v1, v0, :cond_e

    .line 954
    goto :goto_16

    .line 956
    :cond_e
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 957
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_5

    .line 958
    :goto_16
    return-void
.end method

.method greylist-max-o clearFocusedInCluster(Landroid/view/View;)V
    .registers 3

    .line 939
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eq v0, p1, :cond_5

    .line 940
    return-void

    .line 942
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocusedInCluster()V

    .line 943
    return-void
.end method

.method greylist-max-o computeOpticalInsets()Landroid/graphics/Insets;
    .registers 8

    .line 4126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 4127
    nop

    .line 4128
    nop

    .line 4129
    nop

    .line 4130
    nop

    .line 4131
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_f
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v5, :cond_3c

    .line 4132
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4133
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_39

    .line 4134
    invoke-virtual {v5}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v5

    .line 4135
    iget v6, v5, Landroid/graphics/Insets;->left:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4136
    iget v6, v5, Landroid/graphics/Insets;->top:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4137
    iget v6, v5, Landroid/graphics/Insets;->right:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4138
    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 4131
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 4141
    :cond_3c
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 4143
    :cond_41
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public greylist-max-o createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;
    .registers 9

    .line 4091
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4092
    nop

    .line 4094
    const/4 v1, 0x0

    if-eqz p2, :cond_24

    .line 4095
    new-array v2, v0, [I

    .line 4096
    move v3, v1

    :goto_9
    if-ge v3, v0, :cond_25

    .line 4097
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4098
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v2, v3

    .line 4099
    aget v5, v2, v3

    if-nez v5, :cond_21

    .line 4100
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/view/View;->mViewFlags:I

    .line 4096
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4094
    :cond_24
    const/4 v2, 0x0

    .line 4107
    :cond_25
    :try_start_25
    invoke-super {p0, p1, p2}, Landroid/view/View;->createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_41

    .line 4109
    if-eqz p2, :cond_40

    .line 4110
    nop

    :goto_2c
    if-ge v1, v0, :cond_40

    .line 4111
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 4112
    iget v3, p2, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, -0xd

    aget v4, v2, v1

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    iput v3, p2, Landroid/view/View;->mViewFlags:I

    .line 4110
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 4107
    :cond_40
    return-object p1

    .line 4109
    :catchall_41
    move-exception p1

    if-eqz p2, :cond_59

    .line 4110
    nop

    :goto_45
    if-ge v1, v0, :cond_59

    .line 4111
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 4112
    iget v3, p2, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, -0xd

    aget v4, v2, v1

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    iput v3, p2, Landroid/view/View;->mViewFlags:I

    .line 4110
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 4116
    :cond_59
    throw p1
.end method

.method protected whitelist debug(I)V
    .registers 7

    .line 6883
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 6886
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    const-string v1, "View"

    if-eqz v0, :cond_2a

    .line 6887
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mFocused"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6889
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6890
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->debug(I)V

    .line 6892
    :cond_2a
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_4f

    .line 6893
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mDefaultFocus"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6895
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6896
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->debug(I)V

    .line 6898
    :cond_4f
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v0, :cond_74

    .line 6899
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mFocusedInCluster"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6901
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6902
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->debug(I)V

    .line 6904
    :cond_74
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v0, :cond_92

    .line 6905
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6907
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6909
    :cond_92
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6910
    const/4 v2, 0x0

    :goto_95
    if-ge v2, v0, :cond_a3

    .line 6911
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v3, v3, v2

    .line 6912
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->debug(I)V

    .line 6910
    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 6915
    :cond_a3
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v0, :cond_c1

    .line 6916
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object p1

    .line 6917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6918
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6920
    :cond_c1
    return-void
.end method

.method greylist-max-o decrementChildUnhandledKeyListeners()V
    .registers 2

    .line 8231
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 8232
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    if-nez v0, :cond_17

    .line 8233
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    .line 8234
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->decrementChildUnhandledKeyListeners()V

    .line 8237
    :cond_17
    return-void
.end method

.method protected greylist-max-o destroyHardwareResources()V
    .registers 4

    .line 5221
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 5222
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 5223
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 5224
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->destroyHardwareResources()V

    .line 5223
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 5226
    :cond_14
    return-void
.end method

.method protected whitelist detachAllViewsFromParent()V
    .registers 6

    .line 6046
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6047
    if-gtz v0, :cond_5

    .line 6048
    return-void

    .line 6051
    :cond_5
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6052
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6054
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_c
    if-ltz v0, :cond_1d

    .line 6055
    aget-object v3, v1, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6056
    aget-object v3, v1, v0

    invoke-virtual {v3, v2}, Landroid/view/View;->setDetached(Z)V

    .line 6057
    aput-object v4, v1, v0

    .line 6054
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 6059
    :cond_1d
    return-void
.end method

.method protected whitelist detachViewFromParent(I)V
    .registers 4

    .line 5997
    if-ltz p1, :cond_e

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge p1, v0, :cond_e

    .line 5998
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDetached(Z)V

    .line 6000
    :cond_e
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 6001
    return-void
.end method

.method protected whitelist detachViewFromParent(Landroid/view/View;)V
    .registers 3

    .line 5975
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDetached(Z)V

    .line 5976
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 5977
    return-void
.end method

.method protected whitelist detachViewsFromParent(II)V
    .registers 7

    .line 6022
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6023
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6024
    move v1, p1

    :goto_e
    if-ge v1, v0, :cond_1b

    .line 6025
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDetached(Z)V

    .line 6024
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 6027
    :cond_1b
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 6028
    return-void
.end method

.method public greylist-max-o dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z
    .registers 10

    .line 1059
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1060
    return v1

    .line 1062
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1063
    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v0, :cond_1e

    .line 1064
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1065
    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1066
    return v1

    .line 1063
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1069
    :cond_1e
    return v2
.end method

.method public whitelist dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 7514
    invoke-super {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 7515
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7516
    return-object p1

    .line 7518
    :cond_b
    sget-boolean v0, Landroid/view/View;->sBrokenInsetsDispatch:Z

    if-eqz v0, :cond_14

    .line 7519
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->brokenDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 7521
    :cond_14
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->newDispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method greylist dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .registers 9

    .line 3516
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3517
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3518
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3520
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3521
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3522
    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-ge v3, v0, :cond_2b

    .line 3523
    aget-object v4, v1, v3

    .line 3524
    nop

    .line 3525
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {p0, p2, v5}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v5

    .line 3524
    invoke-virtual {v4, p1, v5}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3522
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 3527
    :cond_2b
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v0, :cond_31

    move v0, v2

    goto :goto_37

    :cond_31
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 3528
    :goto_37
    nop

    :goto_38
    if-ge v2, v0, :cond_51

    .line 3529
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3530
    nop

    .line 3531
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v3

    .line 3530
    invoke-virtual {v1, p1, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3528
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 3533
    :cond_51
    return-void
.end method

.method greylist-max-o dispatchCancelPendingInputEvents()V
    .registers 5

    .line 4730
    invoke-super {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 4732
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4733
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4734
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    .line 4735
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 4734
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4737
    :cond_12
    return-void
.end method

.method public whitelist dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 2035
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_f

    .line 2037
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2038
    return v2

    .line 2040
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_25

    .line 2042
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2043
    return v2

    .line 2046
    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method greylist-max-o dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .registers 8

    .line 1681
    and-int/lit8 v0, p2, 0xc

    if-nez v0, :cond_1b

    .line 1682
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1683
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1684
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1685
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_1b

    .line 1686
    aget-object v3, v1, v2

    .line 1687
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1685
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1691
    :cond_1b
    return-void
.end method

.method public whitelist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 1663
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1664
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1665
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1666
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_12

    .line 1667
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1666
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1669
    :cond_12
    return-void
.end method

.method public whitelist dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V
    .registers 8
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

    .line 9491
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V

    .line 9492
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 9493
    if-nez v0, :cond_a

    .line 9494
    return-void

    .line 9496
    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_17

    .line 9497
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9498
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/view/View;->dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V

    .line 9496
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 9501
    :cond_17
    return-void
.end method

.method greylist-max-r dispatchDetachedFromWindow()V
    .registers 6

    .line 3962
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 3965
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 3966
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitTooltipHoverTargets()V

    .line 3969
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 3972
    iput-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 3973
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 3974
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_1c

    .line 3975
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    .line 3976
    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 3979
    :cond_1c
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3980
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3981
    move v3, v1

    :goto_21
    if-ge v3, v0, :cond_2b

    .line 3982
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3981
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 3984
    :cond_2b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 3985
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v0, :cond_34

    move v0, v1

    goto :goto_3a

    :cond_34
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 3986
    :goto_3a
    nop

    :goto_3b
    if-ge v1, v0, :cond_4b

    .line 3987
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3988
    invoke-virtual {v2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3986
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 3990
    :cond_4b
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3991
    return-void
.end method

.method public whitelist dispatchDisplayHint(I)V
    .registers 6

    .line 1581
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1582
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1583
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1584
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_12

    .line 1585
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1584
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1587
    :cond_12
    return-void
.end method

.method greylist-max-o dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z
    .registers 4

    .line 1712
    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 1718
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1719
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1721
    :cond_11
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v0, :cond_1d

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    return p1
.end method

.method public whitelist dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 11

    .line 1727
    nop

    .line 1728
    iget v0, p1, Landroid/view/DragEvent;->mX:F

    .line 1729
    iget v1, p1, Landroid/view/DragEvent;->mY:F

    .line 1730
    iget-object v2, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1733
    invoke-direct {p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    move-result-object v3

    .line 1735
    iget v4, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_112

    goto/16 :goto_110

    .line 1777
    :pswitch_15
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 1778
    if-eqz v0, :cond_36

    .line 1779
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1781
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1782
    move v2, v6

    .line 1784
    :cond_31
    goto :goto_1e

    .line 1785
    :cond_32
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_37

    .line 1778
    :cond_36
    move v2, v7

    .line 1787
    :goto_37
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v0, :cond_42

    .line 1788
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V

    .line 1789
    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1792
    :cond_42
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v0, :cond_52

    .line 1793
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 1794
    goto :goto_4e

    .line 1793
    :cond_4d
    move v6, v2

    .line 1796
    :goto_4e
    iput-boolean v7, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    move v7, v6

    goto :goto_53

    .line 1792
    :cond_52
    move v7, v2

    .line 1798
    :goto_53
    goto/16 :goto_110

    .line 1803
    :pswitch_55
    iget v4, p1, Landroid/view/DragEvent;->mX:F

    iget v6, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {p0, v4, v6, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v4

    .line 1805
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eq v4, v6, :cond_8c

    .line 1806
    sget-boolean v6, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v6, :cond_8a

    .line 1811
    iget v6, p1, Landroid/view/DragEvent;->mAction:I

    .line 1814
    const/4 v8, 0x0

    iput v8, p1, Landroid/view/DragEvent;->mX:F

    .line 1815
    iput v8, p1, Landroid/view/DragEvent;->mY:F

    .line 1816
    iput-object v5, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1818
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v5, :cond_7a

    .line 1819
    const/4 v5, 0x6

    iput v5, p1, Landroid/view/DragEvent;->mAction:I

    .line 1820
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1823
    :cond_7a
    if-eqz v4, :cond_82

    .line 1824
    const/4 v5, 0x5

    iput v5, p1, Landroid/view/DragEvent;->mAction:I

    .line 1825
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1828
    :cond_82
    iput v6, p1, Landroid/view/DragEvent;->mAction:I

    .line 1829
    iput v0, p1, Landroid/view/DragEvent;->mX:F

    .line 1830
    iput v1, p1, Landroid/view/DragEvent;->mY:F

    .line 1831
    iput-object v2, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1833
    :cond_8a
    iput-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1836
    :cond_8c
    if-nez v4, :cond_93

    iget-boolean v2, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v2, :cond_93

    .line 1837
    move-object v4, p0

    .line 1841
    :cond_93
    if-eqz v4, :cond_110

    .line 1842
    if-eq v4, p0, :cond_bb

    .line 1843
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iput v2, p1, Landroid/view/DragEvent;->mX:F

    .line 1844
    iget v2, v3, Landroid/graphics/PointF;->y:F

    iput v2, p1, Landroid/view/DragEvent;->mY:F

    .line 1846
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v7

    .line 1848
    iput v0, p1, Landroid/view/DragEvent;->mX:F

    .line 1849
    iput v1, p1, Landroid/view/DragEvent;->mY:F

    .line 1851
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v0, :cond_110

    .line 1853
    sget-boolean v0, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v0, :cond_b1

    .line 1854
    move v0, v7

    goto :goto_b3

    .line 1856
    :cond_b1
    iget-boolean v0, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 1859
    :goto_b3
    if-nez v0, :cond_ba

    .line 1860
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p1

    move v7, p1

    .line 1862
    :cond_ba
    goto :goto_110

    .line 1864
    :cond_bb
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v7

    goto :goto_110

    .line 1738
    :pswitch_c0
    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1741
    invoke-static {p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1742
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    if-nez v0, :cond_d4

    .line 1743
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    goto :goto_d9

    .line 1745
    :cond_d4
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1749
    :goto_d9
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1750
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1751
    move v2, v7

    :goto_de
    if-ge v7, v0, :cond_fa

    .line 1752
    aget-object v3, v1, v7

    .line 1753
    iget v4, v3, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v4, v4, -0x4

    iput v4, v3, Landroid/view/View;->mPrivateFlags2:I

    .line 1754
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_f7

    .line 1755
    aget-object v3, v1, v7

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 1756
    move v2, v6

    .line 1751
    :cond_f7
    add-int/lit8 v7, v7, 0x1

    goto :goto_de

    .line 1762
    :cond_fa
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 1763
    iget-boolean p1, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz p1, :cond_105

    .line 1764
    goto :goto_106

    .line 1763
    :cond_105
    move v6, v2

    .line 1767
    :goto_106
    if-nez v6, :cond_10f

    .line 1770
    iget-object p1, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 1771
    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1773
    :cond_10f
    move v7, v6

    .line 1870
    :cond_110
    :goto_110
    return v7

    nop

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_c0
        :pswitch_55
        :pswitch_55
        :pswitch_15
    .end packed-switch
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 19

    .line 4253
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4254
    iget-object v3, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4255
    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4257
    and-int/lit8 v5, v4, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_57

    invoke-virtual {v0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 4258
    move v5, v6

    :goto_16
    if-ge v5, v2, :cond_2d

    .line 4259
    aget-object v7, v3, v5

    .line 4260
    iget v8, v7, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-nez v8, :cond_2a

    .line 4261
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 4262
    invoke-virtual {v0, v7, v8, v5, v2}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 4263
    invoke-direct {v0, v7}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 4258
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 4267
    :cond_2d
    iget-object v5, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4268
    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 4269
    iget v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v7, v7, 0x80

    iput v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4272
    :cond_3b
    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 4274
    iget v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, -0x9

    iput v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4275
    iget v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, -0x11

    iput v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4277
    iget-object v7, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v7, :cond_57

    .line 4278
    iget-object v7, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-interface {v7, v5}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 4282
    :cond_57
    nop

    .line 4283
    const/16 v5, 0x22

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5f

    const/4 v4, 0x1

    goto :goto_60

    :cond_5f
    move v4, v6

    .line 4284
    :goto_60
    if-eqz v4, :cond_8b

    .line 4285
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->save(I)I

    move-result v5

    .line 4286
    iget v8, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v9, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int/2addr v8, v9

    iget v9, v0, Landroid/view/ViewGroup;->mScrollY:I

    iget v10, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v11, v0, Landroid/view/ViewGroup;->mRight:I

    add-int/2addr v10, v11

    iget v11, v0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, v0, Landroid/view/ViewGroup;->mScrollY:I

    iget v12, v0, Landroid/view/ViewGroup;->mBottom:I

    add-int/2addr v11, v12

    iget v12, v0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v11, v12

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_8c

    .line 4284
    :cond_8b
    move v5, v6

    .line 4292
    :goto_8c
    iget v8, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v8, v8, -0x41

    iput v8, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 4293
    iget v8, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v8, v8, -0x5

    iput v8, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4295
    nop

    .line 4296
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v8

    .line 4298
    invoke-virtual {v1}, Landroid/graphics/Canvas;->enableZ()V

    .line 4299
    iget-object v10, v0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v10, :cond_a6

    move v10, v6

    goto :goto_ac

    :cond_a6
    iget-object v10, v0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    move-result v10

    .line 4300
    :goto_ac
    if-eqz v10, :cond_b0

    move v12, v6

    goto :goto_b1

    :cond_b0
    const/4 v12, -0x1

    .line 4303
    :goto_b1
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->drawsWithRenderNode(Landroid/graphics/Canvas;)Z

    move-result v13

    if-eqz v13, :cond_b9

    .line 4304
    const/4 v13, 0x0

    goto :goto_bd

    :cond_b9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v13

    .line 4305
    :goto_bd
    if-nez v13, :cond_c7

    .line 4306
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v14

    if-eqz v14, :cond_c7

    const/4 v14, 0x1

    goto :goto_c8

    :cond_c7
    move v14, v6

    .line 4307
    :goto_c8
    move v15, v12

    move v12, v6

    :goto_ca
    if-ge v6, v2, :cond_117

    .line 4308
    :goto_cc
    if-ltz v15, :cond_f8

    iget-object v11, v0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v11, v15}, Landroid/util/IntArray;->get(I)I

    move-result v11

    if-ne v11, v6, :cond_f8

    .line 4309
    iget-object v11, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 4310
    const/16 v16, 0x1

    iget v7, v11, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_ec

    .line 4311
    invoke-virtual {v11}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_f2

    .line 4312
    :cond_ec
    invoke-virtual {v0, v1, v11, v8, v9}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    or-int/2addr v7, v12

    move v12, v7

    .line 4314
    :cond_f2
    add-int/lit8 v15, v15, 0x1

    .line 4315
    if-lt v15, v10, :cond_f7

    .line 4316
    const/4 v15, -0x1

    .line 4318
    :cond_f7
    goto :goto_cc

    .line 4308
    :cond_f8
    const/16 v16, 0x1

    .line 4320
    invoke-direct {v0, v2, v6, v14}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v7

    .line 4321
    invoke-static {v13, v3, v7}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 4322
    iget v11, v7, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v11, v11, 0xc

    if-eqz v11, :cond_10e

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    if-eqz v11, :cond_114

    .line 4323
    :cond_10e
    invoke-virtual {v0, v1, v7, v8, v9}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    or-int/2addr v7, v12

    move v12, v7

    .line 4307
    :cond_114
    add-int/lit8 v6, v6, 0x1

    goto :goto_ca

    :cond_117
    const/16 v16, 0x1

    .line 4326
    :goto_119
    if-ltz v15, :cond_13b

    .line 4328
    iget-object v2, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4329
    iget v3, v2, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_12f

    .line 4330
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_135

    .line 4331
    :cond_12f
    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    or-int/2addr v2, v12

    move v12, v2

    .line 4333
    :cond_135
    add-int/lit8 v15, v15, 0x1

    .line 4334
    if-lt v15, v10, :cond_13a

    .line 4335
    goto :goto_13b

    .line 4337
    :cond_13a
    goto :goto_119

    .line 4338
    :cond_13b
    :goto_13b
    if-eqz v13, :cond_140

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 4341
    :cond_140
    iget-object v2, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_15d

    .line 4342
    iget-object v2, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4343
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 4345
    nop

    :goto_14d
    if-ltz v3, :cond_15d

    .line 4346
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 4347
    invoke-virtual {v0, v1, v6, v8, v9}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    or-int/2addr v12, v6

    .line 4345
    add-int/lit8 v3, v3, -0x1

    goto :goto_14d

    .line 4350
    :cond_15d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->disableZ()V

    .line 4352
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShowingLayoutBounds()Z

    move-result v2

    if-eqz v2, :cond_169

    .line 4353
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    .line 4356
    :cond_169
    if-eqz v4, :cond_16e

    .line 4357
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4361
    :cond_16e
    iget v1, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4363
    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_17a

    .line 4364
    move/from16 v2, v16

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4367
    :cond_17a
    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_19a

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_19a

    iget-object v1, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4368
    invoke-virtual {v1}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v1

    if-eqz v1, :cond_19a

    if-nez v12, :cond_19a

    .line 4372
    iget v1, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4373
    new-instance v1, Landroid/view/ViewGroup$2;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 4379
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 4381
    :cond_19a
    return-void
.end method

.method public whitelist dispatchDrawableHotspotChanged(FF)V
    .registers 12

    .line 4706
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4707
    if-nez v0, :cond_5

    .line 4708
    return-void

    .line 4711
    :cond_5
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4712
    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v0, :cond_40

    .line 4713
    aget-object v4, v1, v3

    .line 4716
    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1c

    invoke-virtual {v4}, Landroid/view/View;->isLongClickable()Z

    move-result v5

    if-nez v5, :cond_1c

    move v5, v6

    goto :goto_1d

    :cond_1c
    move v5, v2

    .line 4717
    :goto_1d
    iget v7, v4, Landroid/view/View;->mViewFlags:I

    const/high16 v8, 0x400000

    and-int/2addr v7, v8

    if-eqz v7, :cond_26

    move v7, v6

    goto :goto_27

    :cond_26
    move v7, v2

    .line 4718
    :goto_27
    if-nez v5, :cond_2b

    if-eqz v7, :cond_3d

    .line 4719
    :cond_2b
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v5

    .line 4720
    aput p1, v5, v2

    .line 4721
    aput p2, v5, v6

    .line 4722
    invoke-virtual {p0, v5, v4}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4723
    aget v7, v5, v2

    aget v5, v5, v6

    invoke-virtual {v4, v7, v5}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4712
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4726
    :cond_40
    return-void
.end method

.method public whitelist dispatchFinishTemporaryDetach()V
    .registers 5

    .line 3505
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3506
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3507
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3508
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_12

    .line 3509
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3508
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3511
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

    .line 4029
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 4030
    return-void
.end method

.method protected whitelist dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 2591
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    .line 2593
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 2594
    :cond_c
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_20

    .line 2596
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 2598
    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 2559
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2560
    if-eqz v0, :cond_4d

    .line 2561
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v2

    .line 2562
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v3

    .line 2564
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v4

    .line 2565
    const/4 v5, 0x1

    if-nez v4, :cond_1c

    .line 2566
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v6

    if-eqz v6, :cond_1c

    move v1, v5

    goto :goto_1d

    :cond_1c
    nop

    .line 2567
    :goto_1d
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2568
    add-int/lit8 v7, v0, -0x1

    :goto_21
    if-ltz v7, :cond_48

    .line 2569
    invoke-direct {p0, v0, v7, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v8

    .line 2570
    invoke-static {v4, v6, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    .line 2571
    invoke-virtual {v8}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v9

    if-eqz v9, :cond_45

    .line 2572
    const/4 v9, 0x0

    invoke-virtual {p0, v2, v3, v8, v9}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v9

    if-nez v9, :cond_39

    .line 2573
    goto :goto_45

    .line 2576
    :cond_39
    invoke-direct {p0, p1, v8}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 2577
    if-eqz v4, :cond_44

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2578
    :cond_44
    return v5

    .line 2568
    :cond_45
    :goto_45
    add-int/lit8 v7, v7, -0x1

    goto :goto_21

    .line 2581
    :cond_48
    if-eqz v4, :cond_4d

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2585
    :cond_4d
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected greylist dispatchGetDisplayList()V
    .registers 7

    .line 4514
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4515
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4516
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_49

    .line 4517
    aget-object v4, v1, v3

    .line 4518
    if-eqz v4, :cond_1e

    .line 4523
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-eqz v5, :cond_18

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 4524
    :cond_18
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4516
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 4519
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains null child at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when traversal in dispatchGetDisplayList, the view may have been removed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4527
    :cond_49
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v0, :cond_4f

    move v0, v2

    goto :goto_55

    :cond_4f
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 4528
    :goto_55
    move v1, v2

    :goto_56
    if-ge v1, v0, :cond_72

    .line 4529
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4530
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_6c

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_6f

    .line 4531
    :cond_6c
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4528
    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 4534
    :cond_72
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_7f

    .line 4535
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 4536
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4538
    :cond_7f
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_98

    .line 4539
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4540
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4541
    nop

    :goto_8a
    if-ge v2, v1, :cond_98

    .line 4542
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4543
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4541
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    .line 4546
    :cond_98
    return-void
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 23

    .line 2137
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2140
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 2141
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2143
    nop

    .line 2144
    nop

    .line 2148
    iget-object v4, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2149
    const/4 v5, 0x0

    iput-object v5, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2150
    const/16 v8, 0xa

    const/4 v10, 0x0

    if-nez v3, :cond_d4

    if-eq v2, v8, :cond_d4

    .line 2151
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v3

    .line 2152
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v11

    .line 2153
    iget v12, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2154
    if-eqz v12, :cond_d4

    .line 2155
    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v13

    .line 2156
    if-nez v13, :cond_37

    .line 2157
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v14

    if-eqz v14, :cond_37

    const/4 v14, 0x1

    goto :goto_38

    :cond_37
    move v14, v10

    .line 2158
    :goto_38
    iget-object v15, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2159
    nop

    .line 2160
    add-int/lit8 v16, v12, -0x1

    move-object/from16 v18, v1

    move-object v9, v5

    move/from16 v17, v10

    move/from16 v10, v16

    :goto_44
    if-ltz v10, :cond_ce

    .line 2161
    invoke-direct {v0, v12, v10, v14}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v8

    .line 2163
    invoke-static {v13, v15, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    .line 2165
    invoke-virtual {v8}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v19

    if-eqz v19, :cond_c8

    .line 2166
    invoke-virtual {v0, v3, v11, v8, v5}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v19

    if-nez v19, :cond_5c

    .line 2167
    goto/16 :goto_c8

    .line 2172
    :cond_5c
    nop

    .line 2174
    move-object v7, v4

    move-object v6, v5

    .line 2175
    :goto_5f
    if-nez v7, :cond_68

    .line 2176
    invoke-static {v8}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v7

    .line 2177
    nop

    .line 2178
    const/4 v6, 0x0

    goto :goto_7a

    .line 2181
    :cond_68
    iget-object v5, v7, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v5, v8, :cond_bf

    .line 2182
    if-eqz v6, :cond_73

    .line 2183
    iget-object v5, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    iput-object v5, v6, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_75

    .line 2185
    :cond_73
    iget-object v4, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2187
    :goto_75
    const/4 v5, 0x0

    iput-object v5, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2188
    nop

    .line 2189
    const/4 v6, 0x1

    .line 2197
    :goto_7a
    if-eqz v9, :cond_7f

    .line 2198
    iput-object v7, v9, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_81

    .line 2200
    :cond_7f
    iput-object v7, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2202
    :goto_81
    nop

    .line 2205
    const/16 v9, 0x9

    if-ne v2, v9, :cond_91

    .line 2206
    if-nez v6, :cond_ba

    .line 2208
    invoke-direct {v0, v1, v8}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v6

    or-int v6, v17, v6

    move/from16 v17, v6

    goto :goto_ba

    .line 2211
    :cond_91
    const/4 v9, 0x7

    if-ne v2, v9, :cond_ba

    .line 2212
    if-nez v6, :cond_b2

    .line 2214
    invoke-static/range {v18 .. v18}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 2215
    const/16 v9, 0x9

    invoke-virtual {v6, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2216
    invoke-direct {v0, v6, v8}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    or-int v9, v17, v9

    .line 2218
    invoke-virtual {v6, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2220
    invoke-direct {v0, v6, v8}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v8

    or-int/2addr v8, v9

    move-object/from16 v18, v6

    move/from16 v17, v8

    goto :goto_ba

    .line 2224
    :cond_b2
    invoke-direct {v0, v1, v8}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v6

    or-int v6, v17, v6

    move/from16 v17, v6

    .line 2227
    :cond_ba
    :goto_ba
    if-eqz v17, :cond_bd

    .line 2228
    goto :goto_ce

    .line 2227
    :cond_bd
    move-object v9, v7

    goto :goto_c8

    .line 2192
    :cond_bf
    const/4 v5, 0x0

    .line 2193
    iget-object v6, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v20, v7

    move-object v7, v6

    move-object/from16 v6, v20

    goto :goto_5f

    .line 2160
    :cond_c8
    :goto_c8
    add-int/lit8 v10, v10, -0x1

    const/16 v8, 0xa

    goto/16 :goto_44

    .line 2231
    :cond_ce
    :goto_ce
    if-eqz v13, :cond_d8

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto :goto_d8

    .line 2236
    :cond_d4
    move-object/from16 v18, v1

    const/16 v17, 0x0

    :cond_d8
    :goto_d8
    if-eqz v4, :cond_113

    .line 2237
    iget-object v3, v4, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 2240
    const/16 v5, 0xa

    if-ne v2, v5, :cond_e9

    .line 2242
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    or-int v3, v17, v3

    move/from16 v17, v3

    goto :goto_10b

    .line 2247
    :cond_e9
    const/4 v9, 0x7

    if-ne v2, v9, :cond_fa

    .line 2248
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    move-result v5

    .line 2249
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    .line 2250
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 2252
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    .line 2254
    :cond_fa
    invoke-static/range {v18 .. v18}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 2255
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2256
    invoke-direct {v0, v5, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 2258
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v18, v5

    .line 2261
    :goto_10b
    iget-object v3, v4, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2262
    invoke-virtual {v4}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 2263
    nop

    .line 2264
    move-object v4, v3

    goto :goto_d8

    .line 2268
    :cond_113
    if-nez v17, :cond_121

    const/16 v5, 0xa

    if-eq v2, v5, :cond_121

    .line 2269
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    move-result v3

    if-nez v3, :cond_121

    const/4 v3, 0x1

    goto :goto_122

    :cond_121
    const/4 v3, 0x0

    .line 2270
    :goto_122
    iget-boolean v4, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-ne v3, v4, :cond_134

    .line 2271
    if-eqz v3, :cond_131

    .line 2273
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int v17, v17, v0

    move-object/from16 v3, v18

    goto :goto_190

    .line 2271
    :cond_131
    move-object/from16 v3, v18

    goto :goto_190

    .line 2276
    :cond_134
    iget-boolean v4, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-eqz v4, :cond_15d

    .line 2278
    const/16 v5, 0xa

    if-ne v2, v5, :cond_143

    .line 2280
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int v17, v17, v4

    goto :goto_15a

    .line 2284
    :cond_143
    const/4 v9, 0x7

    if-ne v2, v9, :cond_149

    .line 2285
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2287
    :cond_149
    invoke-static/range {v18 .. v18}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2288
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2289
    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2290
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v18, v4

    .line 2292
    :goto_15a
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 2295
    :cond_15d
    if-eqz v3, :cond_18e

    .line 2297
    const/16 v9, 0x9

    if-ne v2, v9, :cond_16f

    .line 2299
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int v17, v17, v2

    .line 2300
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move-object/from16 v3, v18

    goto :goto_190

    .line 2301
    :cond_16f
    const/4 v9, 0x7

    if-ne v2, v9, :cond_18e

    .line 2303
    invoke-static/range {v18 .. v18}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 2304
    const/16 v9, 0x9

    invoke-virtual {v3, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2305
    invoke-super {v0, v3}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int v4, v17, v4

    .line 2306
    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2308
    invoke-super {v0, v3}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int v17, v4, v2

    .line 2309
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_190

    .line 2315
    :cond_18e
    move-object/from16 v3, v18

    :goto_190
    if-eq v3, v1, :cond_195

    .line 2316
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 2320
    :cond_195
    return v17
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1975
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1976
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 1979
    :cond_a
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v2, 0x12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_18

    .line 1981
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1982
    return v1

    .line 1984
    :cond_18
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2e

    .line 1986
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1987
    return v1

    .line 1991
    :cond_2e
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_37

    .line 1992
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1994
    :cond_37
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1963
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    .line 1965
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1966
    :cond_c
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_20

    .line 1968
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1970
    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1999
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    .line 2001
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2002
    :cond_c
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_20

    .line 2004
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2006
    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method greylist-max-o dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V
    .registers 7

    .line 3548
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 3550
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3551
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3552
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_12

    .line 3553
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 3552
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3555
    :cond_12
    return-void
.end method

.method public whitelist dispatchPointerCaptureChanged(Z)V
    .registers 6

    .line 2051
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 2053
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 2054
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2055
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2056
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_15

    .line 2057
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 2056
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2059
    :cond_15
    return-void
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    .line 3560
    nop

    .line 3561
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->includeForAccessibility(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3562
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 3563
    if-eqz v1, :cond_f

    .line 3564
    return v1

    .line 3568
    :cond_f
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v1

    .line 3570
    :try_start_14
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v2

    .line 3571
    move v3, v0

    :goto_19
    if-ge v3, v2, :cond_33

    .line 3572
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3573
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_30

    .line 3574
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_38

    .line 3575
    if-eqz v4, :cond_30

    .line 3576
    nop

    .line 3581
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3576
    return v4

    .line 3571
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 3581
    :cond_33
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3582
    nop

    .line 3583
    return v0

    .line 3581
    :catchall_38
    move-exception p1

    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3582
    throw p1
.end method

.method public whitelist dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .registers 8

    .line 3643
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 3645
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_a

    .line 3646
    return-void

    .line 3649
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 3650
    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_3c

    .line 3651
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dispatchProvideAutofillStructure(): not laid out, ignoring "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " children of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3652
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3651
    const-string p2, "View"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    :cond_3c
    return-void

    .line 3657
    :cond_3d
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3658
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->size()I

    move-result v1

    .line 3659
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3660
    const/4 v2, 0x0

    :goto_49
    if-ge v2, v1, :cond_5b

    .line 3661
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3662
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v4

    .line 3663
    invoke-virtual {v3, v4, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 3660
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 3665
    :cond_5b
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->recycle()V

    .line 3666
    return-void
.end method

.method public blacklist dispatchProvideContentCaptureStructure()V
    .registers 5

    .line 3671
    invoke-super {p0}, Landroid/view/View;->dispatchProvideContentCaptureStructure()V

    .line 3673
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 3675
    :cond_a
    invoke-direct {p0}, Landroid/view/ViewGroup;->getChildrenForContentCapture()Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;

    move-result-object v0

    .line 3676
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->size()I

    move-result v1

    .line 3677
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_21

    .line 3678
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3679
    invoke-virtual {v3}, Landroid/view/View;->dispatchProvideContentCaptureStructure()V

    .line 3677
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3681
    :cond_21
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFillOrContentCapture;->recycle()V

    .line 3682
    return-void
.end method

.method public whitelist dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .registers 8

    .line 3593
    invoke-super {p0, p1}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 3594
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAssistBlocked()Z

    move-result v0

    if-nez v0, :cond_84

    invoke-virtual {p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_84

    .line 3597
    :cond_11
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3598
    if-gtz v0, :cond_16

    .line 3599
    return-void

    .line 3602
    :cond_16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_47

    .line 3603
    sget-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_46

    .line 3604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchProvideStructure(): not laid out, ignoring "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " children of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3605
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3604
    const-string v0, "View"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    :cond_46
    return-void

    .line 3610
    :cond_47
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3611
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3613
    if-eqz v1, :cond_56

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_57

    :cond_56
    const/4 v2, 0x0

    .line 3614
    :goto_57
    const/4 v1, 0x0

    if-nez v2, :cond_62

    .line 3615
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    if-eqz v3, :cond_62

    const/4 v3, 0x1

    goto :goto_63

    :cond_62
    move v3, v1

    .line 3616
    :goto_63
    nop

    :goto_64
    if-ge v1, v0, :cond_7e

    .line 3619
    :try_start_66
    invoke-direct {p0, v0, v1, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v4
    :try_end_6a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_66 .. :try_end_6a} :catch_7b

    .line 3623
    nop

    .line 3624
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v2, v5, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 3626
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v5

    .line 3627
    invoke-virtual {v4, v5}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 3616
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 3620
    :catch_7b
    move-exception p1

    .line 3621
    nop

    .line 3622
    throw p1

    .line 3629
    :cond_7e
    if-eqz v2, :cond_83

    .line 3630
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3632
    :cond_83
    return-void

    .line 3595
    :cond_84
    :goto_84
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

    .line 4034
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 4035
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4036
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4037
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_19

    .line 4038
    aget-object v3, v1, v2

    .line 4039
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_16

    .line 4040
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 4037
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4043
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

    .line 4009
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 4010
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4011
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4012
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_19

    .line 4013
    aget-object v3, v1, v2

    .line 4014
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_16

    .line 4015
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 4012
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4018
    :cond_19
    return-void
.end method

.method greylist-max-o dispatchScreenStateChanged(I)V
    .registers 6

    .line 3537
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 3539
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3540
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3541
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_12

    .line 3542
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 3541
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3544
    :cond_12
    return-void
.end method

.method public whitelist dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V
    .registers 20
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

    .line 7667
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_d

    .line 7668
    return-void

    .line 7671
    :cond_d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v3

    if-eqz v3, :cond_2e

    iget v3, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v5, v0, Landroid/view/ViewGroup;->mRight:I

    iget v6, v0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/view/ViewGroup;->mBottom:I

    iget v7, v0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 7673
    return-void

    .line 7677
    :cond_2e
    invoke-super/range {p0 .. p3}, Landroid/view/View;->dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    .line 7679
    iget v3, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7680
    if-nez v3, :cond_36

    .line 7681
    return-void

    .line 7685
    :cond_36
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollCaptureHint()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3f

    .line 7686
    return-void

    .line 7688
    :cond_3f
    invoke-direct {v0}, Landroid/view/ViewGroup;->getTempRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 7690
    nop

    .line 7691
    nop

    .line 7692
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->scrollCaptureTargetZOrderFix()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_5c

    .line 7693
    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v5

    .line 7694
    if-nez v5, :cond_5a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v8

    if-eqz v8, :cond_5a

    const/4 v8, 0x1

    goto :goto_5e

    :cond_5a
    move v8, v7

    goto :goto_5e

    .line 7692
    :cond_5c
    const/4 v5, 0x0

    move v8, v7

    .line 7696
    :goto_5e
    iget-object v9, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7697
    move v10, v7

    :goto_61
    if-ge v10, v3, :cond_bf

    .line 7699
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->scrollCaptureTargetZOrderFix()Z

    move-result v11

    if-eqz v11, :cond_72

    .line 7701
    invoke-direct {v0, v3, v10, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v11

    .line 7702
    invoke-static {v5, v9, v11}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    .line 7703
    goto :goto_74

    .line 7704
    :cond_72
    aget-object v11, v9, v10

    .line 7708
    :goto_74
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_7d

    .line 7709
    move-object/from16 v6, p3

    goto :goto_bc

    .line 7717
    :cond_7d
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7720
    invoke-direct {v0}, Landroid/view/ViewGroup;->getTempPoint()Landroid/graphics/Point;

    move-result-object v12

    .line 7721
    iget v13, v2, Landroid/graphics/Point;->x:I

    iget v14, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    .line 7723
    iget v13, v11, Landroid/view/View;->mLeft:I

    iget v14, v0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v13, v14

    .line 7724
    iget v14, v11, Landroid/view/View;->mTop:I

    iget v15, v0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v14, v15

    .line 7726
    neg-int v15, v13

    neg-int v6, v14

    invoke-virtual {v4, v15, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 7727
    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->offset(II)V

    .line 7729
    nop

    .line 7732
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 7733
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-virtual {v4, v7, v7, v6, v13}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v6

    goto :goto_b2

    .line 7732
    :cond_b1
    const/4 v6, 0x1

    .line 7736
    :goto_b2
    if-eqz v6, :cond_ba

    .line 7737
    move-object/from16 v6, p3

    invoke-virtual {v11, v4, v12, v6}, Landroid/view/View;->dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    goto :goto_bc

    .line 7736
    :cond_ba
    move-object/from16 v6, p3

    .line 7697
    :goto_bc
    add-int/lit8 v10, v10, 0x1

    goto :goto_61

    .line 7740
    :cond_bf
    if-eqz v5, :cond_c4

    .line 7741
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7743
    :cond_c4
    return-void
.end method

.method public whitelist dispatchSetActivated(Z)V
    .registers 6

    .line 4668
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4669
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4670
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_f

    .line 4671
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 4670
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4673
    :cond_f
    return-void
.end method

.method protected whitelist dispatchSetPressed(Z)V
    .registers 7

    .line 4677
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4678
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4679
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_1d

    .line 4680
    aget-object v3, v0, v2

    .line 4684
    if-eqz p1, :cond_17

    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {v3}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 4685
    :cond_17
    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    .line 4679
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4688
    :cond_1d
    return-void
.end method

.method public whitelist dispatchSetSelected(Z)V
    .registers 6

    .line 4659
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4660
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4661
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_f

    .line 4662
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 4661
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4664
    :cond_f
    return-void
.end method

.method public whitelist dispatchStartTemporaryDetach()V
    .registers 5

    .line 3490
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 3491
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3492
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3493
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_12

    .line 3494
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 3493
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3496
    :cond_12
    return-void
.end method

.method public whitelist dispatchSystemUiVisibilityChanged(I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1938
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1940
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1941
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1942
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_12

    .line 1943
    aget-object v3, v1, v2

    .line 1944
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1942
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1946
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

    .line 4054
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 4055
    return-void
.end method

.method greylist-max-o dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    .line 2362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2363
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_a6

    :pswitch_9
    goto/16 :goto_a4

    .line 2420
    :pswitch_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 2421
    iget-object v0, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2422
    iput-object v1, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    goto/16 :goto_a4

    .line 2423
    :cond_18
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v0, :cond_a4

    .line 2424
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2425
    iput-boolean v2, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    goto/16 :goto_a4

    .line 2365
    :pswitch_23
    goto/16 :goto_a4

    .line 2368
    :pswitch_25
    nop

    .line 2371
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2372
    const/4 v4, 0x1

    if-eqz v3, :cond_70

    .line 2373
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v5

    .line 2374
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v6

    .line 2376
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v7

    .line 2377
    if-nez v7, :cond_41

    .line 2378
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v8

    if-eqz v8, :cond_41

    move v8, v4

    goto :goto_42

    :cond_41
    move v8, v2

    .line 2379
    :goto_42
    iget-object v9, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2380
    add-int/lit8 v10, v3, -0x1

    :goto_46
    if-ltz v10, :cond_6b

    .line 2381
    nop

    .line 2382
    invoke-direct {p0, v3, v10, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v11

    .line 2383
    nop

    .line 2384
    invoke-static {v7, v9, v11}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    .line 2385
    invoke-virtual {v11}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v12

    if-eqz v12, :cond_68

    .line 2386
    invoke-virtual {p0, v5, v6, v11, v1}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v12

    if-nez v12, :cond_5f

    .line 2387
    goto :goto_68

    .line 2389
    :cond_5f
    invoke-direct {p0, p1, v11}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_68

    .line 2390
    nop

    .line 2391
    move-object v1, v11

    goto :goto_6b

    .line 2380
    :cond_68
    :goto_68
    add-int/lit8 v10, v10, -0x1

    goto :goto_46

    .line 2394
    :cond_6b
    :goto_6b
    if-eqz v7, :cond_70

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2397
    :cond_70
    iget-object v3, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    const/16 v5, 0xa

    if-eq v3, v1, :cond_87

    .line 2398
    iget-object v3, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v3, :cond_85

    .line 2399
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2400
    iget-object v3, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2401
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2403
    :cond_85
    iput-object v1, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    .line 2406
    :cond_87
    iget-object v1, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v1, :cond_9b

    .line 2407
    iget-boolean v1, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v1, :cond_9a

    .line 2408
    iput-boolean v2, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    .line 2409
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2410
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2411
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2413
    :cond_9a
    return v4

    .line 2416
    :cond_9b
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    .line 2417
    iget-boolean p1, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    return p1

    .line 2429
    :cond_a4
    :goto_a4
    return v2

    nop

    :pswitch_data_a6
    .packed-switch 0x7
        :pswitch_25
        :pswitch_9
        :pswitch_23
        :pswitch_b
    .end packed-switch
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 25

    .line 2647
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    .line 2648
    iget-object v2, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 2653
    :cond_e
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAccessibilityFocusedViewOrHost()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2654
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2657
    :cond_1e
    nop

    .line 2658
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_226

    .line 2659
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2660
    and-int/lit16 v5, v2, 0xff

    .line 2663
    if-nez v5, :cond_33

    .line 2667
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2668
    invoke-direct {v0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 2673
    :cond_33
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 2674
    if-eqz v5, :cond_3f

    iget-object v6, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v6, :cond_3d

    goto :goto_3f

    .line 2686
    :cond_3d
    move v6, v3

    goto :goto_55

    .line 2675
    :cond_3f
    :goto_3f
    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v7, 0x80000

    and-int/2addr v6, v7

    if-eqz v6, :cond_48

    move v6, v3

    goto :goto_49

    :cond_48
    move v6, v4

    .line 2676
    :goto_49
    if-nez v6, :cond_53

    .line 2678
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 2679
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_54

    .line 2681
    :cond_53
    move v6, v4

    .line 2683
    :goto_54
    nop

    .line 2691
    :goto_55
    if-nez v6, :cond_5b

    iget-object v2, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_5e

    .line 2692
    :cond_5b
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2696
    :cond_5e
    invoke-static {v0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6a

    const/4 v2, 0x3

    if-ne v5, v2, :cond_68

    goto :goto_6a

    :cond_68
    move v2, v4

    goto :goto_6b

    :cond_6a
    :goto_6a
    move v2, v3

    .line 2700
    :goto_6b
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    const/16 v8, 0x2002

    if-ne v7, v8, :cond_75

    move v7, v3

    goto :goto_76

    :cond_75
    move v7, v4

    .line 2701
    :goto_76
    iget v8, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v9, 0x200000

    and-int/2addr v8, v9

    if-eqz v8, :cond_81

    if-nez v7, :cond_81

    move v7, v3

    goto :goto_82

    :cond_81
    move v7, v4

    .line 2703
    :goto_82
    nop

    .line 2704
    nop

    .line 2705
    const/4 v8, 0x7

    if-nez v2, :cond_1a3

    if-nez v6, :cond_1a3

    .line 2711
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v11

    if-eqz v11, :cond_94

    .line 2712
    invoke-direct {v0}, Landroid/view/ViewGroup;->findChildWithAccessibilityFocus()Landroid/view/View;

    move-result-object v11

    goto :goto_95

    :cond_94
    const/4 v11, 0x0

    .line 2714
    :goto_95
    if-eqz v5, :cond_a7

    if-eqz v7, :cond_9c

    const/4 v12, 0x5

    if-eq v5, v12, :cond_a7

    :cond_9c
    if-ne v5, v8, :cond_9f

    goto :goto_a7

    :cond_9f
    move v3, v4

    move v4, v6

    move/from16 v22, v7

    const/16 v17, -0x1

    goto/16 :goto_1a9

    .line 2717
    :cond_a7
    :goto_a7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    .line 2718
    if-eqz v7, :cond_b4

    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    shl-int v13, v3, v13

    goto :goto_b5

    .line 2719
    :cond_b4
    const/4 v13, -0x1

    .line 2723
    :goto_b5
    invoke-direct {v0, v13}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 2725
    iget v14, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2726
    if-eqz v14, :cond_181

    .line 2727
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v15

    .line 2728
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v12

    .line 2731
    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v8

    .line 2732
    if-nez v8, :cond_d1

    .line 2733
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v16

    if-eqz v16, :cond_d1

    goto :goto_d2

    :cond_d1
    move v3, v4

    .line 2734
    :goto_d2
    const/16 v17, -0x1

    iget-object v9, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2735
    add-int/lit8 v18, v14, -0x1

    move/from16 v4, v18

    const/16 v19, 0x0

    :goto_dc
    if-ltz v4, :cond_175

    .line 2736
    invoke-direct {v0, v14, v4, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v10

    .line 2738
    move/from16 v20, v3

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2745
    if-eqz v11, :cond_f7

    .line 2746
    if-eq v11, v3, :cond_f4

    .line 2747
    move/from16 v21, v4

    move v4, v6

    move/from16 v22, v7

    const/4 v3, 0x0

    goto/16 :goto_16a

    .line 2749
    :cond_f4
    nop

    .line 2750
    move v4, v14

    const/4 v11, 0x0

    .line 2753
    :cond_f7
    invoke-virtual {v3}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v21

    if-eqz v21, :cond_160

    .line 2754
    move/from16 v21, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v15, v12, v3, v4}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v22

    if-nez v22, :cond_10b

    move v4, v6

    move/from16 v22, v7

    const/4 v3, 0x0

    goto :goto_166

    .line 2759
    :cond_10b
    invoke-direct {v0, v3}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v4

    .line 2760
    if-eqz v4, :cond_120

    .line 2763
    iget v3, v4, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    or-int/2addr v3, v13

    iput v3, v4, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2764
    move-object/from16 v19, v4

    move v4, v6

    move/from16 v22, v7

    const/4 v3, 0x0

    const/16 v18, 0x0

    goto/16 :goto_17b

    .line 2767
    :cond_120
    invoke-static {v3}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2768
    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3, v13}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v22

    if-eqz v22, :cond_158

    .line 2770
    move v4, v6

    move/from16 v22, v7

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 2771
    if-eqz v8, :cond_149

    .line 2773
    const/4 v6, 0x0

    :goto_138
    if-ge v6, v14, :cond_148

    .line 2774
    aget-object v7, v9, v10

    iget-object v11, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v11, v11, v6

    if-ne v7, v11, :cond_145

    .line 2775
    iput v6, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 2776
    goto :goto_148

    .line 2773
    :cond_145
    add-int/lit8 v6, v6, 0x1

    goto :goto_138

    :cond_148
    :goto_148
    goto :goto_14b

    .line 2780
    :cond_149
    iput v10, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 2782
    :goto_14b
    iput v15, v0, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 2783
    iput v12, v0, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 2784
    invoke-direct {v0, v3, v13}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v19

    .line 2785
    nop

    .line 2786
    const/4 v3, 0x0

    const/16 v18, 0x1

    goto :goto_17b

    .line 2791
    :cond_158
    move v4, v6

    move/from16 v22, v7

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    goto :goto_16a

    .line 2753
    :cond_160
    move/from16 v21, v4

    move v4, v6

    move/from16 v22, v7

    const/4 v3, 0x0

    .line 2755
    :goto_166
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2756
    nop

    .line 2735
    :goto_16a
    add-int/lit8 v6, v21, -0x1

    move v3, v6

    move v6, v4

    move v4, v3

    move/from16 v3, v20

    move/from16 v7, v22

    goto/16 :goto_dc

    :cond_175
    move v4, v6

    move/from16 v22, v7

    const/4 v3, 0x0

    move/from16 v18, v3

    .line 2793
    :goto_17b
    if-eqz v8, :cond_18b

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_18b

    .line 2726
    :cond_181
    move v3, v4

    move v4, v6

    move/from16 v22, v7

    const/16 v17, -0x1

    .line 2796
    move/from16 v18, v3

    const/16 v19, 0x0

    :cond_18b
    :goto_18b
    if-nez v19, :cond_1a0

    iget-object v6, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v6, :cond_1a0

    .line 2799
    iget-object v6, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2800
    :goto_193
    iget-object v7, v6, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v7, :cond_19a

    .line 2801
    iget-object v6, v6, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_193

    .line 2803
    :cond_19a
    iget v7, v6, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    or-int/2addr v7, v13

    iput v7, v6, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    goto :goto_1ac

    .line 2809
    :cond_1a0
    move-object/from16 v6, v19

    goto :goto_1ac

    .line 2705
    :cond_1a3
    move v3, v4

    move v4, v6

    move/from16 v22, v7

    const/16 v17, -0x1

    .line 2809
    :goto_1a9
    move/from16 v18, v3

    const/4 v6, 0x0

    :goto_1ac
    iget-object v7, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-nez v7, :cond_1b9

    .line 2811
    move/from16 v3, v17

    const/4 v7, 0x0

    invoke-direct {v0, v1, v2, v7, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v3

    move v4, v3

    goto :goto_204

    .line 2816
    :cond_1b9
    const/4 v7, 0x0

    .line 2817
    iget-object v8, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object v10, v8

    move-object v8, v7

    move v7, v3

    .line 2818
    :goto_1bf
    if-eqz v10, :cond_203

    .line 2819
    iget-object v9, v10, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2820
    if-eqz v18, :cond_1c9

    if-ne v10, v6, :cond_1c9

    .line 2821
    const/4 v7, 0x1

    goto :goto_1fe

    .line 2823
    :cond_1c9
    iget-object v11, v10, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-eqz v11, :cond_1d5

    iget-object v11, v10, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 2824
    invoke-static {v11}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v11

    if-nez v11, :cond_1d7

    :cond_1d5
    if-eqz v4, :cond_1d9

    :cond_1d7
    const/4 v11, 0x1

    goto :goto_1da

    :cond_1d9
    move v11, v3

    .line 2826
    :goto_1da
    iget-object v12, v10, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-eqz v12, :cond_1e9

    iget-object v12, v10, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v13, v10, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {v0, v1, v11, v12, v13}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_1e9

    .line 2828
    const/4 v7, 0x1

    .line 2830
    :cond_1e9
    if-eqz v11, :cond_1fe

    .line 2831
    if-nez v8, :cond_1f0

    .line 2832
    iput-object v9, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1f2

    .line 2834
    :cond_1f0
    iput-object v9, v8, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2836
    :goto_1f2
    invoke-virtual {v10}, Landroid/view/ViewGroup$TouchTarget;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_1fb

    .line 2837
    invoke-virtual {v10}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2839
    :cond_1fb
    nop

    .line 2840
    move-object v10, v9

    goto :goto_1bf

    .line 2843
    :cond_1fe
    :goto_1fe
    nop

    .line 2844
    nop

    .line 2845
    move-object v8, v10

    move-object v10, v9

    goto :goto_1bf

    .line 2818
    :cond_203
    move v4, v7

    .line 2849
    :goto_204
    if-nez v2, :cond_222

    const/4 v2, 0x1

    if-eq v5, v2, :cond_222

    const/4 v2, 0x7

    if-ne v5, v2, :cond_20d

    goto :goto_222

    .line 2853
    :cond_20d
    if-eqz v22, :cond_227

    const/4 v2, 0x6

    if-ne v5, v2, :cond_227

    .line 2854
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 2855
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/16 v16, 0x1

    shl-int v2, v16, v2

    .line 2856
    invoke-direct {v0, v2}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto :goto_227

    .line 2852
    :cond_222
    :goto_222
    invoke-direct {v0}, Landroid/view/ViewGroup;->resetTouchState()V

    goto :goto_227

    .line 2658
    :cond_226
    move v3, v4

    .line 2860
    :cond_227
    :goto_227
    if-nez v4, :cond_233

    iget-object v2, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_233

    .line 2861
    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 2863
    :cond_233
    return v4
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 2011
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 2012
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 2015
    :cond_a
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v2, 0x12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_18

    .line 2017
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2018
    return v1

    .line 2020
    :cond_18
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2e

    .line 2022
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2023
    return v1

    .line 2027
    :cond_2e
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_37

    .line 2028
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 2030
    :cond_37
    const/4 p1, 0x0

    return p1
.end method

.method greylist-max-o dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;
    .registers 6

    .line 8241
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasUnhandledKeyListener()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 8242
    return-object v1

    .line 8244
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    .line 8245
    if-eqz v0, :cond_33

    .line 8247
    :try_start_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_2a

    .line 8248
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8249
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_2e

    .line 8250
    if-eqz v3, :cond_27

    .line 8251
    nop

    .line 8255
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8251
    return-object v3

    .line 8247
    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 8255
    :cond_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8256
    goto :goto_49

    .line 8255
    :catchall_2e
    move-exception p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8256
    throw p1

    .line 8258
    :cond_33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_39
    if-ltz v0, :cond_49

    .line 8259
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8260
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v2

    .line 8261
    if-eqz v2, :cond_46

    .line 8262
    return-object v2

    .line 8258
    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 8266
    :cond_49
    :goto_49
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 8267
    return-object p0

    .line 8269
    :cond_50
    return-object v1
.end method

.method public whitelist dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4

    .line 1176
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1177
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 1176
    :goto_f
    return p1
.end method

.method greylist dispatchViewAdded(Landroid/view/View;)V
    .registers 3

    .line 5168
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 5169
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_c

    .line 5170
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 5172
    :cond_c
    return-void
.end method

.method greylist dispatchViewRemoved(Landroid/view/View;)V
    .registers 3

    .line 5185
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 5186
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_c

    .line 5187
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 5189
    :cond_c
    return-void
.end method

.method greylist-max-o dispatchVisibilityAggregated(Z)Z
    .registers 6

    .line 1647
    invoke-super {p0, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    move-result p1

    .line 1648
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1649
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1650
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_1b

    .line 1654
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_18

    .line 1655
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    .line 1650
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1658
    :cond_1b
    return p1
.end method

.method protected whitelist dispatchVisibilityChanged(Landroid/view/View;I)V
    .registers 7

    .line 1627
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1628
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1629
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1630
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_12

    .line 1631
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1630
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1633
    :cond_12
    return-void
.end method

.method public whitelist dispatchWindowFocusChanged(Z)V
    .registers 6

    .line 1529
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1530
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1531
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1532
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_12

    .line 1533
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1532
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1535
    :cond_12
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 5

    .line 7640
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 7641
    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_8

    .line 7642
    return-void

    .line 7644
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7645
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_19

    .line 7646
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 7645
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 7648
    :cond_19
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .registers 5

    .line 7585
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 7589
    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 7590
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

    .line 7591
    :goto_14
    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_33

    .line 7592
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/View$ListenerInfo;->mWindowInsetsAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    if-eqz v0, :cond_33

    .line 7594
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x600

    if-nez v0, :cond_33

    .line 7595
    iput v1, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    .line 7596
    return-void

    .line 7599
    :cond_33
    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_38

    .line 7600
    return-void

    .line 7602
    :cond_38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7603
    nop

    :goto_3d
    if-ge v1, v0, :cond_49

    .line 7604
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 7603
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 7606
    :cond_49
    return-void
.end method

.method public whitelist dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .registers 6
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

    .line 7627
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 7628
    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_9

    .line 7629
    return-object p1

    .line 7631
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7632
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1a

    .line 7633
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    .line 7632
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 7635
    :cond_1a
    return-object p1
.end method

.method public whitelist dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .registers 6

    .line 7612
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p2

    .line 7613
    iget v0, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    if-nez v0, :cond_9

    .line 7614
    return-object p2

    .line 7616
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7617
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1a

    .line 7618
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 7617
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 7620
    :cond_1a
    return-object p2
.end method

.method public whitelist dispatchWindowSystemUiVisiblityChanged(I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1925
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1927
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1928
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1929
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_12

    .line 1930
    aget-object v3, v1, v2

    .line 1931
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1929
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1933
    :cond_12
    return-void
.end method

.method public whitelist dispatchWindowVisibilityChanged(I)V
    .registers 6

    .line 1637
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1638
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1639
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1640
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_12

    .line 1641
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1640
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1643
    :cond_12
    return-void
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 5

    .line 4567
    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result p1

    return p1
.end method

.method protected whitelist drawableStateChanged()V
    .registers 7

    .line 7757
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 7759
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2e

    .line 7760
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_26

    .line 7765
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7766
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7768
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_2e

    .line 7769
    aget-object v3, v0, v2

    .line 7770
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_23

    .line 7771
    invoke-virtual {v3}, Landroid/view/View;->refreshDrawableState()V

    .line 7768
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 7761
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7775
    :cond_2e
    return-void
.end method

.method protected greylist-max-r encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 6

    .line 9438
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 9440
    const-string v0, "focus:descendantFocusability"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9441
    const-string v0, "drawing:clipChildren"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9442
    const-string v0, "drawing:clipToPadding"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9443
    const-string v0, "drawing:childrenDrawingOrderEnabled"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9444
    const-string v0, "drawing:persistentDrawingCache"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9446
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 9447
    const-string v1, "meta:__childCount__"

    int-to-short v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;S)V

    .line 9448
    const/4 v1, 0x0

    :goto_3b
    if-ge v1, v0, :cond_5d

    .line 9449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "meta:__child__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 9450
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 9448
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 9452
    :cond_5d
    return-void
.end method

.method public whitelist endViewTransition(Landroid/view/View;)V
    .registers 4

    .line 7235
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_39

    .line 7236
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7237
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7238
    if-eqz v0, :cond_39

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 7239
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7240
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 7241
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 7242
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_36

    .line 7244
    :cond_28
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2f

    .line 7245
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 7247
    :cond_2f
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_36

    .line 7248
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7251
    :cond_36
    :goto_36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7254
    :cond_39
    return-void
.end method

.method public blacklist findAutofillableViewsByTraversal(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1517
    invoke-super {p0, p1}, Landroid/view/View;->findAutofillableViewsByTraversal(Ljava/util/List;)V

    .line 1519
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1520
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1521
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_12

    .line 1522
    aget-object v3, v1, v2

    .line 1523
    invoke-virtual {v3, p1}, Landroid/view/View;->findAutofillableViewsByTraversal(Ljava/util/List;)V

    .line 1521
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1525
    :cond_12
    return-void
.end method

.method public whitelist findFocus()Landroid/view/View;
    .registers 2

    .line 1262
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1263
    return-object p0

    .line 1266
    :cond_7
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 1267
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1269
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .registers 8

    .line 1876
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1877
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1878
    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1b

    .line 1879
    aget-object v2, v1, v0

    .line 1880
    invoke-virtual {v2}, Landroid/view/View;->canAcceptDrag()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1881
    goto :goto_18

    .line 1884
    :cond_11
    invoke-virtual {p0, p1, p2, v2, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1885
    return-object v2

    .line 1878
    :cond_18
    :goto_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1888
    :cond_1b
    const/4 p1, 0x0

    return-object p1
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

    .line 8205
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/ViewGroup;->mGhostView:Landroid/view/GhostView;

    if-nez v0, :cond_b

    .line 8206
    return-void

    .line 8208
    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 8209
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8210
    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_1f

    .line 8211
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8212
    invoke-virtual {v2, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 8210
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 8214
    :cond_1f
    return-void
.end method

.method public whitelist findOnBackInvokedDispatcherForChild(Landroid/view/View;Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;
    .registers 3

    .line 9517
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 9518
    if-eqz p1, :cond_b

    .line 9519
    invoke-interface {p1, p0, p2}, Landroid/view/ViewParent;->findOnBackInvokedDispatcherForChild(Landroid/view/View;Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    return-object p1

    .line 9521
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .registers 7

    .line 1471
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1472
    if-eqz v0, :cond_7

    .line 1473
    return-object v0

    .line 1476
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1477
    return-object v1

    .line 1480
    :cond_f
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1481
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1482
    const/4 v3, 0x0

    :goto_14
    if-ge v3, v0, :cond_22

    .line 1483
    aget-object v4, v2, v3

    .line 1484
    invoke-virtual {v4, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v4

    .line 1485
    if-eqz v4, :cond_1f

    .line 1486
    return-object v4

    .line 1482
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1490
    :cond_22
    return-object v1
.end method

.method public greylist-max-o findViewByAutofillIdTraversal(I)Landroid/view/View;
    .registers 6

    .line 1496
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1497
    if-eqz v0, :cond_7

    .line 1498
    return-object v0

    .line 1501
    :cond_7
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1502
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1503
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_1a

    .line 1504
    aget-object v3, v1, v2

    .line 1505
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 1506
    if-eqz v3, :cond_17

    .line 1507
    return-object v3

    .line 1503
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1511
    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method protected greylist-max-o findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 8
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

    .line 4840
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4841
    return-object p0

    .line 4844
    :cond_7
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4845
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4847
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_22

    .line 4848
    aget-object v3, v0, v2

    .line 4850
    if-eq v3, p2, :cond_1f

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1f

    .line 4851
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    .line 4853
    if-eqz v3, :cond_1f

    .line 4854
    return-object v3

    .line 4847
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4859
    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method protected greylist-max-o findViewTraversal(I)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 4785
    iget v0, p0, Landroid/view/ViewGroup;->mID:I

    if-ne p1, v0, :cond_5

    .line 4786
    return-object p0

    .line 4789
    :cond_5
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4790
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4792
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1e

    .line 4793
    aget-object v3, v0, v2

    .line 4795
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1b

    .line 4796
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4798
    if-eqz v3, :cond_1b

    .line 4799
    return-object v3

    .line 4792
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4804
    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method protected greylist-max-o findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4812
    if-eqz p1, :cond_b

    iget-object v0, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4813
    return-object p0

    .line 4816
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4817
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4819
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_24

    .line 4820
    aget-object v3, v0, v2

    .line 4822
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_21

    .line 4823
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 4825
    if-eqz v3, :cond_21

    .line 4826
    return-object v3

    .line 4819
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 4831
    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .registers 9
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

    .line 1456
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1457
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1458
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1459
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1e

    .line 1460
    aget-object v3, v1, v2

    .line 1461
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_1b

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1b

    .line 1463
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1459
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1466
    :cond_1e
    return-void
.end method

.method greylist-max-o finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 5

    .line 7166
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 7167
    if-eqz v0, :cond_1d

    .line 7168
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 7169
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7171
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_14

    .line 7172
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 7175
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 7176
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7180
    :cond_1d
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result p2

    if-nez p2, :cond_28

    .line 7181
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 7184
    :cond_28
    iget p2, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_40

    .line 7185
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 7188
    iget p2, p1, Landroid/view/View;->mPrivateFlags:I

    const v0, -0x10001

    and-int/2addr p2, v0

    iput p2, p1, Landroid/view/View;->mPrivateFlags:I

    .line 7190
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7192
    :cond_40
    return-void
.end method

.method public whitelist focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 4

    .line 1082
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1086
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1087
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1a

    .line 1088
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1090
    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist focusableViewAvailable(Landroid/view/View;)V
    .registers 4

    .line 962
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_31

    .line 965
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_31

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_31

    .line 967
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v0

    if-nez v0, :cond_31

    .line 975
    :cond_1e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_31

    .line 976
    :cond_2c
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 978
    :cond_31
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 13

    .line 7310
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 7311
    :goto_b
    if-eqz v0, :cond_10

    if-nez p1, :cond_10

    .line 7313
    return v2

    .line 7315
    :cond_10
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 7321
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7322
    nop

    .line 7323
    if-lez v3, :cond_51

    .line 7324
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v4

    .line 7325
    if-nez v4, :cond_26

    .line 7326
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v5

    if-eqz v5, :cond_26

    move v5, v2

    goto :goto_27

    :cond_26
    move v5, v1

    .line 7327
    :goto_27
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7328
    move v7, v1

    move v8, v2

    :goto_2b
    if-ge v7, v3, :cond_4b

    .line 7329
    invoke-direct {p0, v3, v7, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v9

    .line 7330
    invoke-static {v4, v6, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 7331
    iget v10, v9, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v10, v10, 0xc

    if-eqz v10, :cond_41

    invoke-virtual {v9}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-eqz v10, :cond_48

    .line 7332
    :cond_41
    invoke-virtual {v9, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v9

    if-nez v9, :cond_48

    .line 7333
    move v8, v1

    .line 7328
    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 7337
    :cond_4b
    if-eqz v4, :cond_52

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_52

    .line 7323
    :cond_51
    move v8, v2

    .line 7339
    :cond_52
    :goto_52
    if-nez v0, :cond_56

    if-eqz v8, :cond_57

    :cond_56
    move v1, v2

    :cond_57
    return v1
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 6878
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public blacklist generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 6849
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 6843
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 6867
    return-object p1
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 3861
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChildAt(I)Landroid/view/View;
    .registers 3

    .line 6958
    if-ltz p1, :cond_c

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_7

    goto :goto_c

    .line 6961
    :cond_7
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object p1, v0, p1

    return-object p1

    .line 6959
    :cond_c
    :goto_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getChildCount()I
    .registers 2

    .line 6947
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method public final whitelist getChildDrawingOrder(I)I
    .registers 3

    .line 4439
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .registers 3

    .line 4422
    return p2
.end method

.method public blacklist getChildLocalHitRegion(Landroid/view/View;Landroid/graphics/Region;Landroid/graphics/Matrix;Z)Z
    .registers 15

    .line 7390
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_d

    .line 7391
    invoke-virtual {p1}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 7394
    :cond_d
    iget v0, p1, Landroid/view/View;->mLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v0, v1

    .line 7395
    iget v1, p1, Landroid/view/View;->mTop:I

    iget v2, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v1, v2

    .line 7396
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 7398
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    .line 7399
    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v2

    .line 7402
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_31

    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    goto :goto_36

    :cond_31
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 7403
    :goto_36
    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7404
    invoke-virtual {p3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 7406
    iget v0, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v0, v2, Landroid/graphics/RectF;->right:F

    .line 7407
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    sget-object v8, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 7406
    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-result p2

    .line 7409
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_c6

    .line 7410
    iget-object v4, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 7411
    nop

    .line 7412
    :goto_65
    if-eqz v4, :cond_72

    .line 7413
    iget-object v5, v4, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 7414
    iget-object v4, v4, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v4, p1, :cond_6f

    .line 7415
    nop

    .line 7416
    goto :goto_73

    .line 7418
    :cond_6f
    nop

    .line 7419
    move-object v4, v5

    goto :goto_65

    .line 7412
    :cond_72
    move v0, v1

    .line 7420
    :goto_73
    if-nez v0, :cond_c5

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_c5

    .line 7421
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 7422
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 7423
    :goto_7f
    if-eqz p2, :cond_c0

    if-eqz v0, :cond_c0

    .line 7424
    iget-object v9, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 7425
    iget-object v0, v0, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 7427
    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewGroup;->isOnTop(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_bd

    .line 7428
    iget p2, v0, Landroid/view/View;->mLeft:I

    int-to-float p2, p2

    iget v4, v0, Landroid/view/View;->mTop:I

    int-to-float v4, v4

    iget v5, v0, Landroid/view/View;->mRight:I

    int-to-float v5, v5

    iget v0, v0, Landroid/view/View;->mBottom:I

    int-to-float v0, v0

    invoke-virtual {v2, p2, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7430
    invoke-virtual {p3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 7431
    iget p2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget p2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget p2, v2, Landroid/graphics/RectF;->right:F

    .line 7432
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget p2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v7

    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 7431
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-result p2

    .line 7435
    :cond_bd
    nop

    .line 7436
    move-object v0, v9

    goto :goto_7f

    .line 7437
    :cond_c0
    if-eqz v1, :cond_c5

    .line 7438
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7441
    :cond_c5
    goto :goto_129

    .line 7442
    :cond_c6
    iget-object v4, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 7443
    nop

    .line 7444
    :goto_c9
    if-eqz v4, :cond_d6

    .line 7445
    iget-object v5, v4, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 7446
    iget-object v4, v4, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v4, p1, :cond_d3

    .line 7447
    nop

    .line 7448
    goto :goto_d7

    .line 7450
    :cond_d3
    nop

    .line 7451
    move-object v4, v5

    goto :goto_c9

    .line 7444
    :cond_d6
    move v0, v1

    .line 7452
    :goto_d7
    if-nez v0, :cond_129

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v0, :cond_129

    .line 7453
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 7454
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 7455
    :goto_e3
    if-eqz p2, :cond_124

    if-eqz v0, :cond_124

    .line 7456
    iget-object v9, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 7457
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 7459
    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewGroup;->isOnTop(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_121

    .line 7460
    iget p2, v0, Landroid/view/View;->mLeft:I

    int-to-float p2, p2

    iget v4, v0, Landroid/view/View;->mTop:I

    int-to-float v4, v4

    iget v5, v0, Landroid/view/View;->mRight:I

    int-to-float v5, v5

    iget v0, v0, Landroid/view/View;->mBottom:I

    int-to-float v0, v0

    invoke-virtual {v2, p2, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7462
    invoke-virtual {p3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 7463
    iget p2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget p2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget p2, v2, Landroid/graphics/RectF;->right:F

    .line 7464
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget p2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v7

    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 7463
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-result p2

    .line 7467
    :cond_121
    nop

    .line 7468
    move-object v0, v9

    goto :goto_e3

    .line 7469
    :cond_124
    if-eqz v1, :cond_129

    .line 7470
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7475
    :cond_129
    :goto_129
    if-eqz p2, :cond_135

    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_135

    .line 7476
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {p1, p0, v3, p3, p4}, Landroid/view/ViewParent;->getChildLocalHitRegion(Landroid/view/View;Landroid/graphics/Region;Landroid/graphics/Matrix;Z)Z

    move-result p2

    .line 7478
    :cond_135
    return p2
.end method

.method protected whitelist getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 3

    .line 4770
    const/4 p1, 0x0

    return p1
.end method

.method greylist-max-o getChildTransformation()Landroid/view/animation/Transformation;
    .registers 2

    .line 4774
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_b

    .line 4775
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 4777
    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public whitelist getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 5

    .line 6375
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z
    .registers 12

    .line 6389
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    goto :goto_e

    :cond_9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 6390
    :goto_e
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6392
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 6393
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6396
    :cond_1e
    iget v1, p1, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v1, v2

    .line 6397
    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v2, v3

    .line 6399
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 6401
    const/4 v3, 0x1

    if-eqz p3, :cond_6e

    .line 6402
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_64

    .line 6403
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    goto :goto_42

    .line 6404
    :cond_3f
    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 6405
    :goto_42
    iget v5, p3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 6406
    iget v5, p3, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    aput v5, v4, v3

    .line 6407
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 6408
    aget p1, v4, v6

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 6409
    aget p1, v4, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p3, Landroid/graphics/Point;->y:I

    .line 6411
    :cond_64
    iget p1, p3, Landroid/graphics/Point;->x:I

    add-int/2addr p1, v1

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 6412
    iget p1, p3, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v2

    iput p1, p3, Landroid/graphics/Point;->y:I

    .line 6415
    :cond_6e
    iget p1, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr p1, v1

    .line 6416
    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v2

    .line 6418
    nop

    .line 6419
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_8d

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_94

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/ViewGroup;

    .line 6420
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 6422
    :cond_8d
    int-to-float v2, p1

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v3

    .line 6425
    :cond_94
    if-nez p4, :cond_98

    if-eqz v3, :cond_b1

    :cond_98
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v4, 0x22

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_b1

    .line 6428
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    int-to-float v2, v2

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    int-to-float v3, v3

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v3

    .line 6432
    :cond_b1
    if-nez p4, :cond_b5

    if-eqz v3, :cond_d1

    :cond_b5
    iget-object p1, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_d1

    .line 6434
    iget-object p1, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget-object v1, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v3

    .line 6437
    :cond_d1
    iget p1, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p1, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-double v4, v2

    .line 6438
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 6437
    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 6440
    if-nez p4, :cond_f8

    if-eqz v3, :cond_111

    :cond_f8
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_111

    .line 6441
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_10b

    .line 6442
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast p1, Landroid/view/ViewGroup;

    .line 6443
    invoke-virtual {p1, p0, p2, p3, p4}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v3

    goto :goto_111

    .line 6445
    :cond_10b
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {p1, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    .line 6448
    :cond_111
    :goto_111
    return v3
.end method

.method public whitelist getClipChildren()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 4596
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

    .line 4654
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o getDeepestFocusedChild()Landroid/view/View;
    .registers 4

    .line 1230
    move-object v0, p0

    .line 1231
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1232
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1233
    return-object v0

    .line 1235
    :cond_b
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_16
    move-object v0, v1

    goto :goto_1

    .line 1237
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

    .line 822
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getFocusedChild()Landroid/view/View;
    .registers 2

    .line 1226
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .registers 2

    .line 6520
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public whitelist getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    .line 7752
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public whitelist getLayoutMode()I
    .registers 3

    .line 6808
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 6809
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    .line 6810
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    goto :goto_16

    :cond_14
    sget v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    .line 6811
    :goto_16
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 6813
    :cond_1a
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    return v0
.end method

.method public whitelist getLayoutTransition()Landroid/animation/LayoutTransition;
    .registers 2

    .line 5697
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public whitelist getNestedScrollAxes()I
    .registers 2

    .line 8177
    iget v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return v0
.end method

.method greylist-max-o getNumChildrenForAccessibility()I
    .registers 5

    .line 3917
    nop

    .line 3918
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 3919
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3920
    invoke-virtual {v2}, Landroid/view/View;->includeForAccessibility()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3921
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 3922
    :cond_16
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_21

    .line 3923
    check-cast v2, Landroid/view/ViewGroup;

    .line 3924
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getNumChildrenForAccessibility()I

    move-result v2

    add-int/2addr v1, v2

    .line 3918
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3927
    :cond_24
    return v1
.end method

.method public whitelist getOverlay()Landroid/view/ViewGroupOverlay;
    .registers 3

    .line 4401
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_d

    .line 4402
    new-instance v0, Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    .line 4404
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    check-cast v0, Landroid/view/ViewGroupOverlay;

    return-object v0
.end method

.method public bridge synthetic whitelist getOverlay()Landroid/view/ViewOverlay;
    .registers 2

    .line 138
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

    .line 6727
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method greylist-max-o getScrollIndicatorBounds(Landroid/graphics/Rect;)V
    .registers 4

    .line 4572
    invoke-super {p0, p1}, Landroid/view/View;->getScrollIndicatorBounds(Landroid/graphics/Rect;)V

    .line 4576
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 4577
    :goto_d
    if-eqz v0, :cond_2b

    .line 4578
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4579
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4580
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 4581
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 4583
    :cond_2b
    return-void
.end method

.method public whitelist getTouchscreenBlocksFocus()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .line 1441
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

    .line 5008
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_16

    .line 5011
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 5009
    :cond_16
    :goto_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist getTransientViewCount()I
    .registers 2

    .line 4974
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public greylist-max-o getTransientViewIndex(I)I
    .registers 3

    .line 4989
    if-ltz p1, :cond_16

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_f

    goto :goto_16

    .line 4992
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->get(I)I

    move-result p1

    return p1

    .line 4990
    :cond_16
    :goto_16
    const/4 p1, -0x1

    return p1
.end method

.method greylist-max-o handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .registers 4

    .line 849
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 850
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 852
    iput-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 854
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 855
    return-void
.end method

.method greylist-max-o hasDefaultFocus()Z
    .registers 2

    .line 928
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

    .line 1247
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
    .registers 5

    .line 1279
    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1280
    return v1

    .line 1284
    :cond_8
    if-nez p1, :cond_12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusable()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1a

    :cond_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1285
    const/4 p1, 0x1

    return p1

    .line 1289
    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result p1

    .line 1290
    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_27

    .line 1291
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    move-result p1

    return p1

    .line 1294
    :cond_27
    return v1
.end method

.method greylist-max-o hasFocusableChild(Z)Z
    .registers 8

    .line 1299
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1300
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1302
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_1f

    .line 1303
    aget-object v4, v1, v3

    .line 1307
    if-eqz p1, :cond_12

    invoke-virtual {v4}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v5

    if-nez v5, :cond_1a

    :cond_12
    if-nez p1, :cond_1c

    .line 1308
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1309
    :cond_1a
    const/4 p1, 0x1

    return p1

    .line 1302
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1313
    :cond_1f
    return v2
.end method

.method protected greylist-max-o hasHoveredChild()Z
    .registers 2

    .line 2462
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

    .line 1171
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

    .line 8218
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
    .registers 6

    .line 7558
    invoke-super {p0}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 7559
    return v1

    .line 7565
    :cond_8
    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 7566
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

    .line 7567
    :goto_19
    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    if-eqz v0, :cond_2e

    .line 7569
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x600

    if-nez v0, :cond_2e

    .line 7570
    return v2

    .line 7573
    :cond_2e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7574
    move v3, v2

    :goto_33
    if-ge v3, v0, :cond_43

    .line 7575
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 7576
    return v1

    .line 7574
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 7579
    :cond_43
    return v2
.end method

.method greylist-max-o incrementChildUnhandledKeyListeners()V
    .registers 3

    .line 8222
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 8223
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    if-ne v0, v1, :cond_17

    .line 8224
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    .line 8225
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->incrementChildUnhandledKeyListeners()V

    .line 8228
    :cond_17
    return-void
.end method

.method public whitelist indexOfChild(Landroid/view/View;)I
    .registers 6

    .line 6930
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6931
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6932
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_f

    .line 6933
    aget-object v3, v1, v2

    if-ne v3, p1, :cond_c

    .line 6934
    return v2

    .line 6932
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6937
    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method protected greylist-max-o internalSetPadding(IIII)V
    .registers 5

    .line 3998
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 4000
    iget p1, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget p2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    or-int/2addr p1, p2

    iget p2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr p1, p2

    iget p2, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    or-int/2addr p1, p2

    if-eqz p1, :cond_17

    .line 4001
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_1d

    .line 4003
    :cond_17
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4005
    :goto_1d
    return-void
.end method

.method public final whitelist invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6107
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6108
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v1, :cond_c

    .line 6110
    invoke-virtual {p0, p1, p1}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 6111
    return-void

    .line 6114
    :cond_c
    nop

    .line 6115
    if-eqz v0, :cond_105

    .line 6119
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    move v1, v3

    goto :goto_1a

    :cond_19
    move v1, v2

    .line 6124
    :goto_1a
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 6128
    iget v5, p1, Landroid/view/View;->mLayerType:I

    if-eqz v5, :cond_31

    .line 6129
    iget v5, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v6, -0x80000000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6130
    iget v5, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6133
    :cond_31
    iget-object v5, v0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 6134
    iget v6, p1, Landroid/view/View;->mLeft:I

    aput v6, v5, v2

    .line 6135
    iget v2, p1, Landroid/view/View;->mTop:I

    aput v2, v5, v3

    .line 6136
    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_47

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_97

    .line 6138
    :cond_47
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 6139
    invoke-virtual {v2, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6141
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_70

    .line 6142
    iget-object v6, v0, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 6143
    invoke-virtual {p0, p1, v6}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result p1

    .line 6144
    if-eqz p1, :cond_6e

    .line 6145
    iget-object p1, v0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 6146
    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6147
    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_6c

    .line 6148
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 6153
    :cond_6c
    move-object v4, p1

    goto :goto_6f

    .line 6151
    :cond_6e
    nop

    .line 6153
    :goto_6f
    goto :goto_71

    .line 6154
    :cond_70
    nop

    .line 6156
    :goto_71
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6157
    iget p1, v2, Landroid/graphics/RectF;->left:F

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int p1, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-double v6, v4

    .line 6158
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    iget v6, v2, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    .line 6159
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v2

    .line 6160
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    .line 6157
    invoke-virtual {p2, p1, v4, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 6164
    :cond_97
    move-object p1, p0

    :cond_98
    nop

    .line 6165
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_a1

    .line 6166
    move-object v2, p1

    check-cast v2, Landroid/view/View;

    goto :goto_a2

    .line 6165
    :cond_a1
    const/4 v2, 0x0

    .line 6169
    :goto_a2
    if-eqz v1, :cond_b6

    .line 6170
    if-eqz v2, :cond_ad

    .line 6171
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v2, Landroid/view/View;->mPrivateFlags:I

    goto :goto_b6

    .line 6172
    :cond_ad
    instance-of v4, p1, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_b6

    .line 6173
    move-object v4, p1

    check-cast v4, Landroid/view/ViewRootImpl;

    iput-boolean v3, v4, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 6179
    :cond_b6
    :goto_b6
    if-eqz v2, :cond_c8

    .line 6180
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v4, v6

    if-eq v4, v6, :cond_c8

    .line 6181
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    const v7, -0x200001

    and-int/2addr v4, v7

    or-int/2addr v4, v6

    iput v4, v2, Landroid/view/View;->mPrivateFlags:I

    .line 6185
    :cond_c8
    invoke-interface {p1, v5, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    .line 6186
    if-eqz v2, :cond_103

    .line 6188
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 6189
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_103

    .line 6190
    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 6191
    invoke-virtual {v4, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6192
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6193
    iget v2, v4, Landroid/graphics/RectF;->left:F

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    iget v6, v4, Landroid/graphics/RectF;->top:F

    float-to-double v6, v6

    .line 6194
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v4, Landroid/graphics/RectF;->right:F

    float-to-double v7, v7

    .line 6195
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v4

    .line 6196
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 6193
    invoke-virtual {p2, v2, v6, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 6199
    :cond_103
    if-nez p1, :cond_98

    .line 6201
    :cond_105
    return-void
.end method

.method public whitelist invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6217
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, 0x8020

    and-int/2addr v0, v1

    if-eqz v0, :cond_92

    .line 6219
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x90

    const/16 v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4e

    .line 6221
    aget v0, p1, v3

    iget v1, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v0, v1

    aget v1, p1, v2

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 6223
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_31

    .line 6224
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 6227
    :cond_31
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    .line 6228
    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    .line 6230
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_49

    .line 6231
    iget v4, p0, Landroid/view/ViewGroup;->mRight:I

    sub-int/2addr v4, v0

    iget v5, p0, Landroid/view/ViewGroup;->mBottom:I

    sub-int/2addr v5, v1

    invoke-virtual {p2, v3, v3, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v4

    if-nez v4, :cond_49

    .line 6232
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6236
    :cond_49
    aput v0, p1, v3

    .line 6237
    aput v1, p1, v2

    .line 6238
    goto :goto_7c

    .line 6240
    :cond_4e
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_61

    .line 6241
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6e

    .line 6244
    :cond_61
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 6246
    :goto_6e
    iget p2, p0, Landroid/view/ViewGroup;->mLeft:I

    aput p2, p1, v3

    .line 6247
    iget p2, p0, Landroid/view/ViewGroup;->mTop:I

    aput p2, p1, v2

    .line 6249
    iget p1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6251
    :goto_7c
    iget p1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const p2, -0x8001

    and-int/2addr p1, p2

    iput p1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6252
    iget p1, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz p1, :cond_8f

    .line 6253
    iget p1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 p2, -0x80000000

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6256
    :cond_8f
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    return-object p1

    .line 6259
    :cond_92
    const/4 p1, 0x0

    return-object p1
.end method

.method greylist-max-o invalidateInheritedLayoutMode(I)V
    .registers 5

    .line 6778
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_27

    .line 6780
    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_27

    .line 6783
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 6786
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_1a
    if-ge v0, v1, :cond_26

    .line 6787
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateInheritedLayoutMode(I)V

    .line 6786
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 6789
    :cond_26
    return-void

    .line 6781
    :cond_27
    :goto_27
    return-void
.end method

.method public whitelist isAlwaysDrawnWithCacheEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6578
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

    .line 6540
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

    .line 6658
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

    .line 6621
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

    .line 4121
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

    .line 7304
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    return v0
.end method

.method public whitelist isMotionEventSplittingEnabled()Z
    .registers 3

    .line 3209
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

    .line 994
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
    .registers 8

    .line 3076
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v0

    .line 3077
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 3078
    const/4 p1, 0x1

    aput p2, v0, p1

    .line 3079
    invoke-virtual {p0, v0, p3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 3080
    aget p2, v0, v1

    aget v2, v0, p1

    invoke-virtual {p3, p2, v2}, Landroid/view/View;->pointInView(FF)Z

    move-result p2

    .line 3081
    if-eqz p2, :cond_20

    if-eqz p4, :cond_20

    .line 3082
    aget p3, v0, v1

    aget p1, v0, p1

    invoke-virtual {p4, p3, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 3084
    :cond_20
    return p2
.end method

.method public whitelist isTransitionGroup()Z
    .registers 5

    .line 3226
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 3227
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_11

    move v1, v2

    :cond_11
    return v1

    .line 3229
    :cond_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    .line 3230
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_28

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    if-eqz v0, :cond_29

    sget-object v3, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    if-eq v0, v3, :cond_29

    :cond_28
    move v1, v2

    :cond_29
    return v1
.end method

.method greylist-max-o isViewTransitioning(Landroid/view/View;)Z
    .registers 3

    .line 7200
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 5

    .line 7779
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 7780
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7781
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7782
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    .line 7783
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 7782
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 7785
    :cond_12
    return-void
.end method

.method public final whitelist layout(IIII)V
    .registers 6

    .line 6453
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 6454
    :cond_10
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_19

    .line 6455
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    .line 6457
    :cond_19
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_20

    .line 6460
    :cond_1d
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 6462
    :goto_20
    return-void
.end method

.method public blacklist makeFrameworkOptionalFitsSystemWindows()V
    .registers 5

    .line 1571
    invoke-super {p0}, Landroid/view/View;->makeFrameworkOptionalFitsSystemWindows()V

    .line 1572
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1573
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1574
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_12

    .line 1575
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->makeFrameworkOptionalFitsSystemWindows()V

    .line 1574
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1577
    :cond_12
    return-void
.end method

.method public greylist makeOptionalFitsSystemWindows()V
    .registers 5

    .line 1558
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1559
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1560
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1561
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_12

    .line 1562
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1561
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1564
    :cond_12
    return-void
.end method

.method protected whitelist measureChild(Landroid/view/View;II)V
    .registers 7

    .line 6995
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6997
    iget v1, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 6999
    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 7002
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 7003
    return-void
.end method

.method protected whitelist measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 9

    .line 7022
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7024
    iget v1, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 7027
    iget p3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v1

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 7031
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 7032
    return-void
.end method

.method protected whitelist measureChildren(II)V
    .registers 9

    .line 6974
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6975
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6976
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_17

    .line 6977
    aget-object v3, v1, v2

    .line 6978
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_14

    .line 6979
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 6976
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6982
    :cond_17
    return-void
.end method

.method greylist-max-o notifyChildOfDragStart(Landroid/view/View;)Z
    .registers 9

    .line 1898
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    .line 1899
    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v1, v1, Landroid/view/DragEvent;->mY:F

    .line 1901
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempLocationF()[F

    move-result-object v2

    .line 1902
    const/4 v3, 0x0

    aput v0, v2, v3

    .line 1903
    const/4 v4, 0x1

    aput v1, v2, v4

    .line 1904
    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 1906
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v6, v2, v3

    iput v6, v5, Landroid/view/DragEvent;->mX:F

    .line 1907
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v2, v2, v4

    iput v2, v5, Landroid/view/DragEvent;->mY:F

    .line 1908
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {p1, v2}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    .line 1909
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v0, v5, Landroid/view/DragEvent;->mX:F

    .line 1910
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v1, v0, Landroid/view/DragEvent;->mY:F

    .line 1911
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput-boolean v3, v0, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 1912
    if-eqz v2, :cond_48

    .line 1913
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1914
    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v0

    if-nez v0, :cond_48

    .line 1915
    iget v0, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v0, v4

    iput v0, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 1916
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1919
    :cond_48
    return v2
.end method

.method public whitelist notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 3868
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityLiveRegion()I

    move-result p1

    if-eqz p1, :cond_b

    .line 3869
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_38

    .line 3871
    :cond_b
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_38

    .line 3873
    :try_start_f
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {p1, p0, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_14
    .catch Ljava/lang/AbstractMethodError; {:try_start_f .. :try_end_14} :catch_15

    .line 3877
    goto :goto_38

    .line 3874
    :catch_15
    move-exception p1

    .line 3875
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {p3}, Landroid/view/ViewParent;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " does not fully implement ViewParent"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "View"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3879
    :cond_38
    :goto_38
    return-void
.end method

.method public greylist-max-o notifySubtreeAccessibilityStateChangedIfNeeded()V
    .registers 3

    .line 3884
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_11

    goto :goto_36

    .line 3889
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_32

    .line 3890
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_32

    .line 3891
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 3892
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_32

    .line 3893
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 3894
    return-void

    .line 3897
    :cond_32
    invoke-super {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 3898
    return-void

    .line 3885
    :cond_36
    :goto_36
    return-void
.end method

.method public greylist offsetChildrenTopAndBottom(I)V
    .registers 9

    .line 6353
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6354
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6355
    nop

    .line 6357
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_8
    if-ge v3, v0, :cond_24

    .line 6358
    aget-object v5, v1, v3

    .line 6359
    iget v6, v5, Landroid/view/View;->mTop:I

    add-int/2addr v6, p1

    iput v6, v5, Landroid/view/View;->mTop:I

    .line 6360
    iget v6, v5, Landroid/view/View;->mBottom:I

    add-int/2addr v6, p1

    iput v6, v5, Landroid/view/View;->mBottom:I

    .line 6361
    iget-object v6, v5, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    if-eqz v6, :cond_21

    .line 6362
    nop

    .line 6363
    iget-object v4, v5, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4, p1}, Landroid/graphics/RenderNode;->offsetTopAndBottom(I)Z

    const/4 v4, 0x1

    .line 6357
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 6367
    :cond_24
    if-eqz v4, :cond_29

    .line 6368
    invoke-virtual {p0, v2, v2}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    .line 6370
    :cond_29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 6371
    return-void
.end method

.method public final whitelist offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5

    .line 6269
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 6270
    return-void
.end method

.method greylist-max-o offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .registers 10

    .line 6290
    if-ne p1, p0, :cond_3

    .line 6291
    return-void

    .line 6294
    :cond_3
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6297
    :goto_5
    if-eqz v0, :cond_61

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_61

    if-eq v0, p0, :cond_61

    .line 6301
    const/4 v1, 0x0

    if-eqz p3, :cond_36

    .line 6302
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget p1, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, p1

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 6304
    if-eqz p4, :cond_5b

    .line 6305
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 6306
    iget v2, p1, Landroid/view/View;->mRight:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mBottom:I

    iget p1, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, p1

    invoke-virtual {p2, v1, v1, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    .line 6308
    if-nez p1, :cond_35

    .line 6309
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6311
    :cond_35
    goto :goto_5b

    .line 6313
    :cond_36
    if-eqz p4, :cond_4e

    .line 6314
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 6315
    iget v3, v2, Landroid/view/View;->mRight:I

    iget v4, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/view/View;->mBottom:I

    iget v2, v2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v2

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    .line 6317
    if-nez v1, :cond_4e

    .line 6318
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6321
    :cond_4e
    iget v1, p1, Landroid/view/View;->mScrollX:I

    iget v2, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/view/View;->mScrollY:I

    iget p1, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v2, p1

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6325
    :cond_5b
    :goto_5b
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 6326
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_5

    .line 6331
    :cond_61
    if-ne v0, p0, :cond_81

    .line 6332
    if-eqz p3, :cond_73

    .line 6333
    iget p3, p1, Landroid/view/View;->mLeft:I

    iget p4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr p3, p4

    iget p4, p1, Landroid/view/View;->mTop:I

    iget p1, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr p4, p1

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_80

    .line 6336
    :cond_73
    iget p3, p1, Landroid/view/View;->mScrollX:I

    iget p4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr p3, p4

    iget p4, p1, Landroid/view/View;->mScrollY:I

    iget p1, p1, Landroid/view/View;->mTop:I

    sub-int/2addr p4, p1

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 6342
    :goto_80
    return-void

    .line 6340
    :cond_81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parameter must be a descendant of this view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4

    .line 6279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 6280
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 1

    .line 5208
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 5209
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 5210
    return-void
.end method

.method protected greylist onChildVisibilityChanged(Landroid/view/View;II)V
    .registers 5

    .line 1600
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_30

    .line 1601
    if-nez p3, :cond_c

    .line 1602
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_30

    .line 1604
    :cond_c
    iget-object p2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p2, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1605
    iget-object p2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz p2, :cond_30

    iget-object p2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 1608
    iget-object p2, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez p2, :cond_28

    .line 1609
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 1611
    :cond_28
    iget-object p2, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1612
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 1618
    :cond_30
    :goto_30
    if-nez p3, :cond_41

    iget-object p2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz p2, :cond_41

    .line 1619
    iget-object p2, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_41

    .line 1620
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 1623
    :cond_41
    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .registers 7

    .line 7789
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_b

    .line 7790
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1

    .line 7793
    :cond_b
    nop

    .line 7794
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7795
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_13
    if-ge v2, v0, :cond_24

    .line 7796
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    .line 7798
    if-eqz v4, :cond_21

    .line 7799
    array-length v4, v4

    add-int/2addr v3, v4

    .line 7795
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 7803
    :cond_24
    add-int/2addr p1, v3

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 7805
    nop

    :goto_2a
    if-ge v1, v0, :cond_3d

    .line 7806
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 7808
    if-eqz v2, :cond_3a

    .line 7809
    invoke-static {p1, v2}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object p1

    .line 7805
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 7813
    :cond_3d
    return-object p1
.end method

.method protected greylist-max-o onDebugDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 4205
    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 4209
    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4210
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4212
    const/4 v6, 0x0

    move v7, v6

    :goto_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/16 v8, 0x8

    const/4 v2, 0x1

    if-ge v7, v0, :cond_54

    .line 4213
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4214
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v8, :cond_4f

    .line 4215
    invoke-virtual {v0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 4217
    nop

    .line 4218
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, v5

    .line 4219
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget v8, v3, Landroid/graphics/Insets;->top:I

    add-int/2addr v5, v8

    .line 4220
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v3, Landroid/graphics/Insets;->right:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v2

    .line 4221
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    .line 4217
    move v2, v4

    move v3, v5

    move v4, v8

    move v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    goto :goto_50

    .line 4214
    :cond_4f
    move-object v0, p1

    .line 4212
    :goto_50
    add-int/lit8 v7, v7, 0x1

    move-object p1, v0

    goto :goto_10

    .line 4228
    :cond_54
    move-object v0, p1

    const/16 p1, 0x3f

    const/16 v3, 0xff

    invoke-static {p1, v3, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4229
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4231
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 4236
    sget p1, Landroid/view/ViewGroup;->DEBUG_CORNERS_COLOR:I

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4237
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4239
    move p1, v6

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v6

    .line 4240
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v7

    .line 4241
    nop

    :goto_7c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_a6

    .line 4242
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4243
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v8, :cond_a3

    .line 4244
    move-object v5, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-static/range {v0 .. v7}, Landroid/view/ViewGroup;->drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V

    move-object v1, v5

    .line 4241
    :cond_a3
    add-int/lit8 p1, p1, 0x1

    goto :goto_7c

    .line 4249
    :cond_a6
    return-void
.end method

.method protected greylist-max-o onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 6

    .line 4195
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 4196
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4197
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 4195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4199
    :cond_15
    return-void
.end method

.method public whitelist onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 6072
    iget p1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v0, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x40

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6074
    iget p1, p2, Landroid/view/View;->mPrivateFlags:I

    const v0, -0x200001

    and-int/2addr p1, v0

    if-eqz p1, :cond_21

    .line 6077
    iget p1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr p1, v0

    const/high16 v0, 0x200000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6080
    iget p1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v0, -0x8001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6084
    :cond_21
    iget p1, p0, Landroid/view/ViewGroup;->mLayerType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2e

    .line 6087
    iget p1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 p2, -0x7fe00000

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6088
    move-object p2, p0

    .line 6091
    :cond_2e
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_37

    .line 6092
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {p1, p0, p2}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 6094
    :cond_37
    return-void
.end method

.method public final blacklist onDescendantUnbufferedRequested()V
    .registers 3

    .line 9458
    nop

    .line 9459
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 9460
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mUnbufferedInputSource:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_e

    .line 9459
    :cond_d
    move v0, v1

    .line 9463
    :goto_e
    iput v0, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    .line 9468
    nop

    :goto_11
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v0, :cond_29

    .line 9469
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, v1

    .line 9470
    iget v0, v0, Landroid/view/View;->mUnbufferedInputSource:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_26

    .line 9471
    iget v0, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mUnbufferedInputSource:I

    .line 9472
    goto :goto_29

    .line 9468
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 9475
    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_32

    .line 9476
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->onDescendantUnbufferedRequested()V

    .line 9478
    :cond_32
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 5214
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5215
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 5216
    return-void
.end method

.method public greylist-max-r onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .line 3817
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3818
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3819
    return-void

    .line 3821
    :cond_a
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2e

    .line 3822
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 3823
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3824
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 3825
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3826
    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_2b

    .line 3827
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3828
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildUnchecked(Landroid/view/View;)V

    .line 3826
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 3830
    :cond_2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3832
    :cond_2e
    const-string v0, "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    .line 3834
    return-void
.end method

.method public whitelist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 2537
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 2538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2539
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v2

    .line 2540
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result p1

    .line 2541
    const/4 v3, 0x7

    if-eq v0, v3, :cond_1c

    const/16 v3, 0x9

    if-ne v0, v3, :cond_24

    .line 2542
    :cond_1c
    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->isOnScrollbar(FF)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 2543
    const/4 p1, 0x1

    return p1

    .line 2546
    :cond_24
    return v1
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 3312
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 3313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_25

    .line 3314
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3315
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 3316
    return v0

    .line 3318
    :cond_25
    return v1
.end method

.method protected abstract whitelist onLayout(ZIIII)V
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 8153
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/ViewGroup;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public whitelist onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 8162
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public whitelist onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4

    .line 3943
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 5

    .line 8144
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/view/ViewGroup;->dispatchNestedPreScroll(II[I[I)Z

    .line 8145
    return-void
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    .line 8135
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->dispatchNestedScroll(IIII[I)Z

    .line 8136
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 8112
    iput p3, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 8113
    return-void
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    .line 3387
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3388
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    .line 3389
    nop

    .line 3390
    nop

    .line 3391
    move v1, v0

    move v0, v2

    move v4, v3

    goto :goto_13

    .line 3393
    :cond_e
    add-int/lit8 v0, v0, -0x1

    .line 3394
    nop

    .line 3395
    const/4 v1, -0x1

    move v4, v1

    .line 3397
    :goto_13
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3398
    nop

    :goto_16
    if-eq v0, v1, :cond_29

    .line 3399
    aget-object v6, v5, v0

    .line 3400
    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_27

    .line 3401
    invoke-virtual {v6, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 3402
    return v3

    .line 3398
    :cond_27
    add-int/2addr v0, v4

    goto :goto_16

    .line 3406
    :cond_29
    return v2
.end method

.method public whitelist onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 1128
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_b

    .line 1129
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 1131
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    .line 1143
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 13

    .line 2063
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v0

    .line 2064
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result v1

    .line 2065
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isDraggingScrollBar()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_5e

    .line 2072
    :cond_16
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2073
    if-eqz v2, :cond_59

    .line 2074
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v4

    .line 2075
    if-nez v4, :cond_28

    .line 2076
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v5, 0x1

    goto :goto_29

    :cond_28
    const/4 v5, 0x0

    .line 2077
    :goto_29
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2078
    add-int/lit8 v7, v2, -0x1

    :goto_2d
    if-ltz v7, :cond_54

    .line 2079
    invoke-direct {p0, v2, v7, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v8

    .line 2080
    invoke-static {v4, v6, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    .line 2082
    invoke-virtual {v8}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v9

    if-eqz v9, :cond_51

    .line 2083
    invoke-virtual {p0, v0, v1, v8, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v9

    if-nez v9, :cond_44

    .line 2084
    goto :goto_51

    .line 2086
    :cond_44
    nop

    .line 2087
    invoke-direct {p0, p1, p2, v8}, Landroid/view/ViewGroup;->dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;

    move-result-object v8

    .line 2088
    if-eqz v8, :cond_51

    .line 2089
    if-eqz v4, :cond_50

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2090
    :cond_50
    return-object v8

    .line 2078
    :cond_51
    :goto_51
    add-int/lit8 v7, v7, -0x1

    goto :goto_2d

    .line 2093
    :cond_54
    if-eqz v4, :cond_59

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2098
    :cond_59
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    .line 2069
    :cond_5e
    :goto_5e
    return-object v3
.end method

.method protected greylist-max-o onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 8182
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 8183
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    .line 8104
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onStopNestedScroll(Landroid/view/View;)V
    .registers 2

    .line 8124
    invoke-virtual {p0}, Landroid/view/ViewGroup;->stopNestedScroll()V

    .line 8125
    const/4 p1, 0x0

    iput p1, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 8126
    return-void
.end method

.method public whitelist onViewAdded(Landroid/view/View;)V
    .registers 2

    .line 5181
    return-void
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .registers 2

    .line 5198
    return-void
.end method

.method blacklist overrideFrameRate(FZ)V
    .registers 5

    .line 9585
    if-nez p2, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSelfRequestedFrameRateFlag()Z

    move-result v0

    if-nez v0, :cond_23

    .line 9586
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->overrideFrameRate(FZ)V

    .line 9587
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 9589
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 9590
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->overrideFrameRate(FZ)V

    .line 9589
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 9593
    :cond_23
    return-void
.end method

.method protected blacklist pointInHoveredChild(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 2468
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2469
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getXDispatchLocation(I)F

    move-result v0

    .line 2470
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getYDispatchLocation(I)F

    move-result p1

    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    iget-object v1, v1, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 2469
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    return p1

    .line 2472
    :cond_17
    return v1
.end method

.method public whitelist propagateRequestedFrameRate(FZ)V
    .registers 4

    .line 9567
    sget-boolean v0, Landroid/view/ViewGroup;->sToolkitViewGroupFrameRateApiFlagValue:Z

    if-eqz v0, :cond_16

    .line 9569
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getForcedOverrideFrameRateFlag()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9570
    return-void

    .line 9575
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setSelfRequestedFrameRateFlag(Z)V

    .line 9576
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->overrideFrameRate(FZ)V

    .line 9577
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSelfRequestedFrameRateFlag(Z)V

    .line 9579
    :cond_16
    return-void
.end method

.method public whitelist recomputeViewAttributes(Landroid/view/View;)V
    .registers 2

    .line 1673
    iget-object p1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p1, :cond_11

    iget-object p1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean p1, p1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez p1, :cond_11

    .line 1674
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 1675
    if-eqz p1, :cond_11

    invoke-interface {p1, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 1677
    :cond_11
    return-void
.end method

.method public whitelist removeAllViews()V
    .registers 2

    .line 5775
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 5776
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5777
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5778
    return-void
.end method

.method public whitelist removeAllViewsInLayout()V
    .registers 11

    .line 5794
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5795
    if-gtz v0, :cond_5

    .line 5796
    return-void

    .line 5799
    :cond_5
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5800
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5802
    iget-object v3, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 5803
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x1

    if-eqz v4, :cond_13

    move v4, v5

    goto :goto_14

    :cond_13
    move v4, v2

    .line 5804
    :goto_14
    nop

    .line 5806
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5808
    sub-int/2addr v0, v5

    move v6, v2

    :goto_1a
    if-ltz v0, :cond_66

    .line 5809
    aget-object v7, v1, v0

    .line 5811
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_27

    .line 5812
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v7}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5815
    :cond_27
    const/4 v8, 0x0

    if-ne v7, v3, :cond_2e

    .line 5816
    invoke-virtual {v7, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5817
    move v6, v5

    .line 5820
    :cond_2e
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5822
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5823
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5825
    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_50

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v9, :cond_4a

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5826
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    goto :goto_50

    .line 5828
    :cond_4a
    if-eqz v4, :cond_53

    .line 5829
    invoke-virtual {v7}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_53

    .line 5827
    :cond_50
    :goto_50
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 5832
    :cond_53
    :goto_53
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 5833
    invoke-virtual {p0, v7, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5836
    :cond_5c
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5838
    iput-object v8, v7, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5839
    aput-object v8, v1, v0

    .line 5808
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    .line 5842
    :cond_66
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_6f

    .line 5843
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5845
    :cond_6f
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v0, :cond_78

    .line 5846
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5848
    :cond_78
    if-eqz v6, :cond_86

    .line 5849
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 5850
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v0

    if-nez v0, :cond_86

    .line 5851
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5854
    :cond_86
    return-void
.end method

.method protected whitelist removeDetachedView(Landroid/view/View;Z)V
    .registers 4

    .line 5877
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_9

    .line 5878
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5881
    :cond_9
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_10

    .line 5882
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 5884
    :cond_10
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p1, v0, :cond_17

    .line 5885
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5887
    :cond_17
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p1, v0, :cond_1e

    .line 5888
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5891
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5893
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5894
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5896
    if-eqz p2, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    if-nez p2, :cond_3b

    :cond_2f
    iget-object p2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz p2, :cond_3f

    iget-object p2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5897
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 5898
    :cond_3b
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    goto :goto_46

    .line 5899
    :cond_3f
    iget-object p2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p2, :cond_46

    .line 5900
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 5903
    :cond_46
    :goto_46
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result p2

    if-eqz p2, :cond_50

    .line 5904
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5907
    :cond_50
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5908
    return-void
.end method

.method public greylist removeTransientView(Landroid/view/View;)V
    .registers 5

    .line 4944
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v0, :cond_5

    .line 4945
    return-void

    .line 4947
    :cond_5
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4948
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_32

    .line 4949
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_2f

    .line 4950
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4951
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Landroid/util/IntArray;

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->remove(I)V

    .line 4952
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4953
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2a

    .line 4954
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4956
    :cond_2a
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4957
    return-void

    .line 4948
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4960
    :cond_32
    return-void
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .registers 2

    .line 5519
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 5520
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5521
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5523
    :cond_d
    return-void
.end method

.method public whitelist removeViewAt(I)V
    .registers 3

    .line 5564
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 5565
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5566
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5567
    return-void
.end method

.method public whitelist removeViewInLayout(Landroid/view/View;)V
    .registers 2

    .line 5536
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    .line 5537
    return-void
.end method

.method public whitelist removeViews(II)V
    .registers 3

    .line 5580
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 5581
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5582
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5583
    return-void
.end method

.method public whitelist removeViewsInLayout(II)V
    .registers 3

    .line 5551
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 5552
    return-void
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 862
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_9

    .line 863
    return-void

    .line 867
    :cond_9
    invoke-super {p0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 870
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_1b

    .line 871
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 872
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 875
    :cond_19
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 877
    :cond_1b
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_24

    .line 878
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {p1, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 880
    :cond_24
    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 4

    .line 1095
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .registers 4

    .line 3257
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-ne p1, v0, :cond_d

    .line 3259
    return-void

    .line 3262
    :cond_d
    if-eqz p1, :cond_15

    .line 3263
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_1d

    .line 3265
    :cond_15
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3269
    :goto_1d
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_26

    .line 3270
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3272
    :cond_26
    return-void
.end method

.method public whitelist requestFocus(ILandroid/graphics/Rect;)Z
    .registers 5

    .line 3341
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 3344
    sparse-switch v0, :sswitch_data_54

    .line 3360
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3346
    :sswitch_20
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    .line 3347
    goto :goto_3f

    .line 3355
    :sswitch_25
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 3356
    if-eqz v0, :cond_2d

    move p1, v0

    goto :goto_31

    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    .line 3357
    :goto_31
    goto :goto_3f

    .line 3349
    :sswitch_32
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 3350
    if-eqz v0, :cond_3a

    move p1, v0

    goto :goto_3e

    :cond_3a
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    .line 3352
    :goto_3e
    nop

    .line 3364
    :goto_3f
    if-eqz p1, :cond_53

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutValid()Z

    move-result p2

    if-nez p2, :cond_53

    iget p2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_53

    .line 3365
    iget p2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3367
    :cond_53
    return p1

    :sswitch_data_54
    .sparse-switch
        0x20000 -> :sswitch_32
        0x40000 -> :sswitch_25
        0x60000 -> :sswitch_20
    .end sparse-switch
.end method

.method public whitelist requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .line 1100
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 1101
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1102
    return v1

    .line 1104
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    .line 1105
    if-nez p1, :cond_d

    .line 1106
    return v1

    .line 1108
    :cond_d
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .registers 3

    .line 7878
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 7879
    if-eqz v0, :cond_9

    .line 7880
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 7882
    :cond_9
    return-void
.end method

.method public whitelist requestTransparentRegion(Landroid/view/View;)V
    .registers 3

    .line 7344
    if-eqz p1, :cond_11

    .line 7345
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 7346
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_11

    .line 7347
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {p1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 7350
    :cond_11
    return-void
.end method

.method protected blacklist resetResolvedDrawables()V
    .registers 5

    .line 8075
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 8077
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8078
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1a

    .line 8079
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8080
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 8081
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedDrawables()V

    .line 8078
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8084
    :cond_1a
    return-void
.end method

.method public blacklist resetResolvedLayoutDirection()V
    .registers 5

    .line 8007
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 8009
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8010
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1a

    .line 8011
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8012
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 8013
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 8010
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8016
    :cond_1a
    return-void
.end method

.method public blacklist resetResolvedPadding()V
    .registers 5

    .line 8058
    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 8060
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8061
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1a

    .line 8062
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8063
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 8064
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedPadding()V

    .line 8061
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8067
    :cond_1a
    return-void
.end method

.method public blacklist resetResolvedTextAlignment()V
    .registers 5

    .line 8041
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 8043
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8044
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1a

    .line 8045
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8046
    invoke-virtual {v2}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 8047
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 8044
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8050
    :cond_1a
    return-void
.end method

.method public blacklist resetResolvedTextDirection()V
    .registers 5

    .line 8024
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 8026
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8027
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1a

    .line 8028
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8029
    invoke-virtual {v2}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 8030
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 8027
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8033
    :cond_1a
    return-void
.end method

.method greylist-max-o resetSubtreeAccessibilityStateChanged()V
    .registers 5

    .line 3902
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 3903
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3904
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3905
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    .line 3906
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 3905
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3908
    :cond_12
    return-void
.end method

.method public blacklist resetSubtreeAutofillIds()V
    .registers 5

    .line 3805
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 3806
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3807
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3808
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    .line 3809
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 3808
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3811
    :cond_12
    return-void
.end method

.method protected greylist-max-o resolveDrawables()V
    .registers 5

    .line 7978
    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    .line 7979
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7980
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_20

    .line 7981
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7982
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Landroid/view/View;->areDrawablesResolved()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 7983
    invoke-virtual {v2}, Landroid/view/View;->resolveDrawables()V

    .line 7980
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7986
    :cond_20
    return-void
.end method

.method public greylist-max-o resolveLayoutDirection()Z
    .registers 6

    .line 7908
    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    move-result v0

    .line 7909
    if-eqz v0, :cond_1d

    .line 7910
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7911
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    .line 7912
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7913
    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7914
    invoke-virtual {v3}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 7911
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7918
    :cond_1d
    return v0
.end method

.method public greylist-max-o resolveLayoutParams()V
    .registers 4

    .line 7993
    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 7994
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7995
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 7996
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7997
    invoke-virtual {v2}, Landroid/view/View;->resolveLayoutParams()V

    .line 7995
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7999
    :cond_14
    return-void
.end method

.method public greylist-max-r resolvePadding()V
    .registers 5

    .line 7963
    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    .line 7964
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7965
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_20

    .line 7966
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7967
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Landroid/view/View;->isPaddingResolved()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 7968
    invoke-virtual {v2}, Landroid/view/View;->resolvePadding()V

    .line 7965
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 7971
    :cond_20
    return-void
.end method

.method public greylist-max-o resolveRtlPropertiesIfNeeded()Z
    .registers 6

    .line 7889
    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    move-result v0

    .line 7891
    if-eqz v0, :cond_1d

    .line 7892
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7893
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    .line 7894
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7895
    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7896
    invoke-virtual {v3}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 7893
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7900
    :cond_1d
    return v0
.end method

.method public greylist-max-o resolveTextAlignment()Z
    .registers 6

    .line 7944
    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    move-result v0

    .line 7945
    if-eqz v0, :cond_1d

    .line 7946
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7947
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    .line 7948
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7949
    invoke-virtual {v3}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7950
    invoke-virtual {v3}, Landroid/view/View;->resolveTextAlignment()Z

    .line 7947
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7954
    :cond_1d
    return v0
.end method

.method public greylist-max-o resolveTextDirection()Z
    .registers 6

    .line 7926
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    move-result v0

    .line 7927
    if-eqz v0, :cond_1d

    .line 7928
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7929
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    .line 7930
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7931
    invoke-virtual {v3}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7932
    invoke-virtual {v3}, Landroid/view/View;->resolveTextDirection()Z

    .line 7929
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7936
    :cond_1d
    return v0
.end method

.method public whitelist restoreDefaultFocus()Z
    .registers 3

    .line 3411
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 3412
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 3414
    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3415
    const/4 v0, 0x1

    return v0

    .line 3417
    :cond_1e
    invoke-super {p0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0
.end method

.method public blacklist restoreFocusInCluster(I)Z
    .registers 4

    .line 3427
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3428
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    .line 3430
    const/4 v1, 0x0

    :try_start_b
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 3431
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_16

    .line 3433
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 3431
    return p1

    .line 3433
    :catchall_16
    move-exception p1

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 3434
    throw p1

    .line 3436
    :cond_1b
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    move-result p1

    return p1
.end method

.method public blacklist restoreFocusNotInCluster()Z
    .registers 9

    .line 3454
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    const/16 v1, 0x82

    if-eqz v0, :cond_b

    .line 3457
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->restoreFocusInCluster(I)Z

    move-result v0

    return v0

    .line 3459
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5c

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_19

    goto :goto_5c

    .line 3462
    :cond_19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 3463
    const/high16 v3, 0x60000

    const/4 v4, 0x0

    if-ne v0, v3, :cond_27

    .line 3464
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 3466
    :cond_27
    const/high16 v3, 0x20000

    const/4 v5, 0x1

    if-ne v0, v3, :cond_33

    .line 3467
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 3468
    return v5

    .line 3470
    :cond_33
    move v3, v2

    :goto_34
    iget v6, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v3, v6, :cond_4c

    .line 3471
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v6, v6, v3

    .line 3472
    invoke-virtual {v6}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v7

    if-nez v7, :cond_49

    .line 3473
    invoke-virtual {v6}, Landroid/view/View;->restoreFocusNotInCluster()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 3474
    return v5

    .line 3470
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 3477
    :cond_4c
    const/high16 v3, 0x40000

    if-ne v0, v3, :cond_5b

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 3478
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 3480
    :cond_5b
    return v2

    .line 3460
    :cond_5c
    :goto_5c
    return v2
.end method

.method public whitelist scheduleLayoutAnimation()V
    .registers 2

    .line 6496
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6497
    return-void
.end method

.method public whitelist setAddStatesFromChildren(Z)V
    .registers 2

    .line 7823
    if-eqz p1, :cond_9

    .line 7824
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_f

    .line 7826
    :cond_9
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7829
    :goto_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 7830
    return-void
.end method

.method public whitelist setAlwaysDrawnWithCacheEnabled(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6603
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6604
    return-void
.end method

.method public whitelist setAnimationCacheEnabled(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6559
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6560
    return-void
.end method

.method protected whitelist setChildrenDrawingCacheEnabled(Z)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4077
    if-nez p1, :cond_8

    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_17

    .line 4078
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4079
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4080
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    .line 4081
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 4080
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 4084
    :cond_17
    return-void
.end method

.method protected whitelist setChildrenDrawingOrderEnabled(Z)V
    .registers 3

    .line 6675
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6676
    return-void
.end method

.method protected whitelist setChildrenDrawnWithCacheEnabled(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6643
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6644
    return-void
.end method

.method public whitelist setClipChildren(Z)V
    .registers 6

    .line 4608
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 4609
    :goto_a
    if-eq p1, v0, :cond_27

    .line 4610
    invoke-direct {p0, v1, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4611
    nop

    :goto_10
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v2, v0, :cond_24

    .line 4612
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4613
    iget-object v3, v0, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    if-eqz v3, :cond_21

    .line 4614
    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 4611
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 4617
    :cond_24
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4619
    :cond_27
    return-void
.end method

.method public whitelist setClipToPadding(Z)V
    .registers 4

    .line 4633
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v1

    if-eq v1, p1, :cond_e

    .line 4634
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4635
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4637
    :cond_e
    return-void
.end method

.method greylist-max-o setDefaultFocus(Landroid/view/View;)V
    .registers 3

    .line 884
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 885
    return-void

    .line 888
    :cond_d
    iput-object p1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 890
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1c

    .line 891
    iget-object p1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    .line 893
    :cond_1c
    return-void
.end method

.method public whitelist setDescendantFocusability(I)V
    .registers 4

    .line 834
    sparse-switch p1, :sswitch_data_1e

    .line 840
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 838
    :sswitch_b
    nop

    .line 843
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 844
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 845
    return-void

    nop

    :sswitch_data_1e
    .sparse-switch
        0x20000 -> :sswitch_b
        0x40000 -> :sswitch_b
        0x60000 -> :sswitch_b
    .end sparse-switch
.end method

.method public whitelist setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .registers 2

    .line 6506
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 6507
    iget-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz p1, :cond_c

    .line 6508
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6510
    :cond_c
    return-void
.end method

.method public whitelist setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2

    .line 7865
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 7866
    return-void
.end method

.method public whitelist setLayoutMode(I)V
    .registers 3

    .line 6827
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_13

    .line 6828
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidateInheritedLayoutMode(I)V

    .line 6829
    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 6830
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6832
    :cond_13
    return-void
.end method

.method public whitelist setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 4

    .line 5676
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_e

    .line 5677
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 5678
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    .line 5679
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 5681
    :cond_e
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 5682
    iget-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz p1, :cond_1b

    .line 5683
    iget-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 5685
    :cond_1b
    return-void
.end method

.method public whitelist setMotionEventSplittingEnabled(Z)V
    .registers 3

    .line 3196
    if-eqz p1, :cond_a

    .line 3197
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v0, 0x200000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_12

    .line 3199
    :cond_a
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v0, -0x200001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3201
    :goto_12
    return-void
.end method

.method public whitelist setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2

    .line 5163
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 5164
    return-void
.end method

.method public whitelist setPersistentDrawingCache(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6756
    and-int/lit8 p1, p1, 0x3

    iput p1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 6757
    return-void
.end method

.method public whitelist setRequestedFrameRate(F)V
    .registers 3

    .line 9539
    sget-boolean v0, Landroid/view/ViewGroup;->sToolkitViewGroupFrameRateApiFlagValue:Z

    if-eqz v0, :cond_23

    .line 9540
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getForcedOverrideFrameRateFlag()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9541
    return-void

    .line 9543
    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->setRequestedFrameRate(F)V

    .line 9546
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRequestedFrameRate()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSelfRequestedFrameRateFlag(Z)V

    .line 9547
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v0, -0x40000001    # -1.9999999f

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 9549
    :cond_23
    return-void
.end method

.method protected whitelist setStaticTransformationsEnabled(Z)V
    .registers 3

    .line 4754
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4755
    return-void
.end method

.method public whitelist setTouchscreenBlocksFocus(Z)V
    .registers 3

    .line 1411
    if-eqz p1, :cond_2a

    .line 1412
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v0, 0x4000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1413
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result p1

    if-nez p1, :cond_32

    .line 1414
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDeepestFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 1415
    invoke-virtual {p1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p1

    if-nez p1, :cond_29

    .line 1416
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    .line 1417
    if-eqz p1, :cond_29

    .line 1418
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1421
    :cond_29
    goto :goto_32

    .line 1423
    :cond_2a
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v0, -0x4000001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1425
    :cond_32
    :goto_32
    return-void
.end method

.method public whitelist setTransitionGroup(Z)V
    .registers 4

    .line 3246
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3247
    if-eqz p1, :cond_11

    .line 3248
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_19

    .line 3250
    :cond_11
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v0, -0x1000001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3252
    :goto_19
    return-void
.end method

.method public whitelist setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V
    .registers 2

    .line 7547
    invoke-super {p0, p1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 7548
    if-eqz p1, :cond_a

    .line 7549
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation$Callback;->getDispatchMode()I

    move-result p1

    goto :goto_b

    .line 7550
    :cond_a
    const/4 p1, 0x1

    :goto_b
    iput p1, p0, Landroid/view/ViewGroup;->mInsetsAnimationDispatchMode:I

    .line 7551
    return-void
.end method

.method greylist-max-o shouldBlockFocusForTouchscreen()Z
    .registers 3

    .line 1448
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 1449
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1450
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1451
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

    .line 1448
    :goto_29
    return v0
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 8096
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .registers 4

    .line 982
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 985
    return v1

    .line 987
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 7

    .line 1000
    const v0, -0x20000001

    :try_start_3
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1001
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2d

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 1002
    nop

    .line 1005
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1002
    return v2

    .line 1005
    :cond_18
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1006
    nop

    .line 1007
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    return v2

    .line 1005
    :catchall_2d
    move-exception p1

    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p2, v0

    iput p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1006
    throw p1
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 6

    .line 1012
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-nez v0, :cond_23

    .line 1015
    const v0, -0x10000001

    :try_start_a
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1016
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1c

    .line 1018
    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p2, v0

    iput p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1016
    return-object p1

    .line 1018
    :catchall_1c
    move-exception p1

    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p2, v0

    iput p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1019
    throw p1

    .line 1022
    :cond_23
    sget-object p1, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-object p1
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 7

    .line 1029
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_29

    if-nez p3, :cond_29

    .line 1033
    const v0, -0x8000001

    :try_start_c
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1034
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_22

    .line 1036
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1037
    nop

    .line 1038
    sget-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    if-eq v1, v0, :cond_29

    .line 1039
    return-object v1

    .line 1036
    :catchall_22
    move-exception p1

    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p2, v0

    iput p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1037
    throw p1

    .line 1042
    :cond_29
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_3c

    .line 1044
    :try_start_2d
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1
    :try_end_33
    .catch Ljava/lang/AbstractMethodError; {:try_start_2d .. :try_end_33} :catch_34

    return-object p1

    .line 1045
    :catch_34
    move-exception p3

    .line 1047
    iget-object p3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {p3, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 1050
    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist startLayoutAnimation()V
    .registers 2

    .line 6483
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_d

    .line 6484
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6485
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6487
    :cond_d
    return-void
.end method

.method public whitelist startViewTransition(Landroid/view/View;)V
    .registers 3

    .line 7216
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_14

    .line 7217
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 7218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 7220
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7222
    :cond_14
    return-void
.end method

.method public blacklist subtractObscuredTouchableRegion(Landroid/graphics/Region;Landroid/view/View;)V
    .registers 10

    .line 7357
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7358
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 7359
    if-nez v1, :cond_10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 7360
    :goto_11
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7361
    add-int/lit8 v4, v0, -0x1

    :goto_15
    if-ltz v4, :cond_31

    .line 7362
    invoke-direct {p0, v0, v4, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v5

    .line 7363
    invoke-static {v1, v3, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 7364
    if-ne v5, p2, :cond_22

    .line 7366
    goto :goto_31

    .line 7368
    :cond_22
    invoke-virtual {v5}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v6

    if-nez v6, :cond_29

    .line 7370
    goto :goto_2e

    .line 7372
    :cond_29
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-static {p1, v5, v6}, Landroid/view/ViewGroup;->applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V

    .line 7361
    :goto_2e
    add-int/lit8 v4, v4, -0x1

    goto :goto_15

    .line 7376
    :cond_31
    :goto_31
    sget-object p2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-static {p1, p0, p2}, Landroid/view/ViewGroup;->applyOpToRegionByBounds(Landroid/graphics/Region;Landroid/view/View;Landroid/graphics/Region$Op;)V

    .line 7378
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 7379
    if-eqz p2, :cond_3f

    .line 7380
    invoke-interface {p2, p1, p0}, Landroid/view/ViewParent;->subtractObscuredTouchableRegion(Landroid/graphics/Region;Landroid/view/View;)V

    .line 7382
    :cond_3f
    return-void
.end method

.method public whitelist suppressLayout(Z)V
    .registers 2

    .line 7288
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 7289
    if-nez p1, :cond_e

    .line 7290
    iget-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    if-eqz p1, :cond_e

    .line 7291
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 7292
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 7295
    :cond_e
    return-void
.end method

.method public greylist-max-r transformPointToViewLocal([FLandroid/view/View;)V
    .registers 7

    .line 3092
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 3093
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v3, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 3095
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_25

    .line 3096
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3098
    :cond_25
    return-void
.end method

.method greylist-max-o unFocus(Landroid/view/View;)V
    .registers 3

    .line 1211
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1212
    invoke-super {p0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    goto :goto_10

    .line 1214
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 1215
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1217
    :goto_10
    return-void
.end method

.method greylist-max-o updateLocalSystemUiVisibility(II)Z
    .registers 8

    .line 1950
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v0

    .line 1952
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1953
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1954
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_15

    .line 1955
    aget-object v4, v2, v3

    .line 1956
    invoke-virtual {v4, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1954
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1958
    :cond_15
    return v0
.end method

.method public whitelist updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 5120
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5123
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_e

    .line 5126
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5127
    return-void

    .line 5124
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Given view not a child of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5121
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid LayoutParams supplied to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
