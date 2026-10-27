.class public Lcom/android/internal/widget/helper/ItemTouchHelper;
.super Lcom/android/internal/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field static final blacklist ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final blacklist ACTION_MODE_IDLE_MASK:I = 0xff

.field static final blacklist ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final blacklist ACTION_STATE_DRAG:I = 0x2

.field public static final blacklist ACTION_STATE_IDLE:I = 0x0

.field public static final blacklist ACTION_STATE_SWIPE:I = 0x1

.field static final blacklist ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final blacklist ANIMATION_TYPE_DRAG:I = 0x8

.field public static final blacklist ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final blacklist ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field static final blacklist DEBUG:Z = false

.field static final blacklist DIRECTION_FLAG_COUNT:I = 0x8

.field public static final blacklist DOWN:I = 0x2

.field public static final blacklist END:I = 0x20

.field public static final blacklist LEFT:I = 0x4

.field private static final blacklist PIXELS_PER_SECOND:I = 0x3e8

.field public static final blacklist RIGHT:I = 0x8

.field public static final blacklist START:I = 0x10

.field static final blacklist TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final blacklist UP:I = 0x1


# instance fields
.field blacklist mActionState:I

.field blacklist mActivePointerId:I

.field blacklist mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

.field private blacklist mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

.field private blacklist mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDragScrollStartTimeInMs:J

.field blacklist mDx:F

.field blacklist mDy:F

.field blacklist mGestureDetector:Landroid/view/GestureDetector;

.field blacklist mInitialTouchX:F

.field blacklist mInitialTouchY:F

.field blacklist mMaxSwipeVelocity:F

.field private final blacklist mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

.field blacklist mOverdrawChild:Landroid/view/View;

.field blacklist mOverdrawChildPosition:I

.field final blacklist mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field final blacklist mScrollRunnable:Ljava/lang/Runnable;

.field blacklist mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field blacklist mSelectedFlags:I

.field blacklist mSelectedStartX:F

.field blacklist mSelectedStartY:F

.field private blacklist mSlop:I

.field private blacklist mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSwipeEscapeVelocity:F

.field private final blacklist mTmpPosition:[F

.field private blacklist mTmpRect:Landroid/graphics/Rect;

.field blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;)V
    .registers 5

    .line 429
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 213
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 223
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 249
    new-instance v2, Lcom/android/internal/widget/helper/ItemTouchHelper$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$1;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    iput-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 276
    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 283
    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 290
    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 297
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$2;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 430
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 431
    return-void
.end method

.method private blacklist addChildDrawingOrderCallback()V
    .registers 1

    .line 1251
    nop

    .line 1252
    return-void
.end method

.method private blacklist checkHorizontalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I
    .registers 10

    .line 1198
    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_7b

    .line 1199
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-lez v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v3

    .line 1200
    :goto_11
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_5e

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_5e

    .line 1201
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1202
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v5

    .line 1201
    const/16 v6, 0x3e8

    invoke-virtual {v4, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1203
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1204
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1205
    cmpl-float v1, v4, v1

    if-lez v1, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v3

    .line 1206
    :goto_3f
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1207
    and-int v3, v2, p2

    if-eqz v3, :cond_5e

    if-ne v0, v2, :cond_5e

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1208
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_5e

    .line 1209
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5e

    .line 1210
    return v2

    .line 1214
    :cond_5e
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 1215
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F

    move-result p1

    mul-float/2addr v1, p1

    .line 1217
    and-int p1, p2, v0

    if-eqz p1, :cond_7b

    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_7b

    .line 1218
    return v0

    .line 1221
    :cond_7b
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist checkVerticalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I
    .registers 10

    .line 1225
    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_7a

    .line 1226
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lez v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v3

    .line 1227
    :goto_10
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_5d

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_5d

    .line 1228
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1229
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v5

    .line 1228
    const/16 v6, 0x3e8

    invoke-virtual {v4, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1230
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1231
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1232
    cmpl-float v1, v5, v1

    if-lez v1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v3

    .line 1233
    :goto_3e
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1234
    and-int v3, v2, p2

    if-eqz v3, :cond_5d

    if-ne v2, v0, :cond_5d

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1235
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_5d

    .line 1236
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5d

    .line 1237
    return v2

    .line 1241
    :cond_5d
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 1242
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F

    move-result p1

    mul-float/2addr v1, p1

    .line 1243
    and-int p1, p2, v0

    if-eqz p1, :cond_7a

    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_7a

    .line 1244
    return v0

    .line 1247
    :cond_7a
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist destroyCallbacks()V
    .registers 5

    .line 477
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->removeItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->removeOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V

    .line 479
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 482
    add-int/lit8 v0, v0, -0x1

    :goto_19
    if-ltz v0, :cond_30

    .line 483
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 484
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 482
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 486
    :cond_30
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 488
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 489
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 490
    return-void
.end method

.method private blacklist findSwapTargets(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 766
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    if-nez v2, :cond_17

    .line 767
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 768
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    goto :goto_21

    .line 770
    :cond_17
    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 771
    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 773
    :goto_21
    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v2

    .line 774
    iget v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v4, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v3, v2

    .line 775
    iget v4, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v4, v2

    .line 776
    iget-object v5, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v5, v2

    .line 777
    iget-object v6, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    add-int/2addr v6, v2

    .line 778
    add-int v2, v3, v5

    div-int/lit8 v2, v2, 0x2

    .line 779
    add-int v7, v4, v6

    div-int/lit8 v7, v7, 0x2

    .line 780
    iget-object v8, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v8

    .line 781
    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v9

    .line 782
    const/4 v11, 0x0

    :goto_60
    if-ge v11, v9, :cond_f0

    .line 783
    invoke-virtual {v8, v11}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 784
    iget-object v13, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v12, v13, :cond_6c

    .line 785
    goto/16 :goto_ea

    .line 787
    :cond_6c
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    if-lt v13, v4, :cond_ea

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-gt v13, v6, :cond_ea

    .line 788
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    if-lt v13, v3, :cond_ea

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    if-le v13, v5, :cond_85

    .line 789
    goto :goto_ea

    .line 791
    :cond_85
    iget-object v13, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v13, v12}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v13

    .line 792
    iget-object v14, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v15, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v10, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v14, v15, v10, v13}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->canDropOver(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v10

    if-eqz v10, :cond_ea

    .line 794
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    add-int/2addr v10, v14

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 795
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v14, v12

    div-int/lit8 v14, v14, 0x2

    sub-int v12, v7, v14

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 796
    mul-int/2addr v10, v10

    mul-int/2addr v12, v12

    add-int/2addr v10, v12

    .line 798
    nop

    .line 799
    iget-object v12, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 800
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_c5
    if-ge v14, v12, :cond_dc

    .line 801
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v10, v1, :cond_dc

    .line 802
    add-int/lit8 v15, v15, 0x1

    .line 800
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_c5

    .line 807
    :cond_dc
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1, v15, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 808
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v15, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 782
    :cond_ea
    :goto_ea
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_60

    .line 811
    :cond_f0
    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    return-object v0
.end method

.method private blacklist findSwipedView(Landroid/view/MotionEvent;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 7

    .line 914
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 915
    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_d

    .line 916
    return-object v3

    .line 918
    :cond_d
    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 919
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v2, v4

    .line 920
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v1, v4

    .line 921
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 922
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 924
    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_38

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_38

    .line 925
    return-object v3

    .line 927
    :cond_38
    cmpl-float v4, v2, v1

    if-lez v4, :cond_43

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 928
    return-object v3

    .line 929
    :cond_43
    cmpl-float v1, v1, v2

    if-lez v1, :cond_4e

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 930
    return-object v3

    .line 932
    :cond_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    .line 933
    if-nez p1, :cond_55

    .line 934
    return-object v3

    .line 936
    :cond_55
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getSelectedDxDy([F)V
    .registers 5

    .line 501
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 502
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_23

    .line 504
    :cond_19
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v1

    .line 506
    :goto_23
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    .line 507
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_46

    .line 509
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v1

    .line 511
    :goto_46
    return-void
.end method

.method private static blacklist hitTest(Landroid/view/View;FFFF)Z
    .registers 6

    .line 434
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_1e

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_1e

    cmpl-float p1, p2, p4

    if-ltz p1, :cond_1e

    .line 437
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p4, p0

    cmpg-float p0, p2, p4

    if-gtz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    .line 434
    :goto_1f
    return p0
.end method

.method private blacklist initGestureDetector()V
    .registers 4

    .line 493
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_5

    .line 494
    return-void

    .line 496
    :cond_5
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 498
    return-void
.end method

.method private blacklist releaseVelocityTracker()V
    .registers 2

    .line 907
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 908
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 911
    :cond_c
    return-void
.end method

.method private blacklist setupCallbacks()V
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    .line 470
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V

    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->addOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V

    .line 472
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->addOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 473
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->initGestureDetector()V

    .line 474
    return-void
.end method

.method private blacklist swipeIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .registers 7

    .line 1152
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    .line 1153
    return v2

    .line 1155
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1156
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 1158
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v3

    .line 1156
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v1

    .line 1159
    const v3, 0xff00

    and-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x8

    .line 1161
    if-nez v1, :cond_24

    .line 1162
    return v2

    .line 1164
    :cond_24
    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    .line 1167
    iget v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_54

    .line 1168
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result v3

    if-lez v3, :cond_4d

    .line 1170
    and-int p1, v0, v3

    if-nez p1, :cond_4c

    .line 1172
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 1173
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result p1

    .line 1172
    invoke-static {v3, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result p1

    return p1

    .line 1175
    :cond_4c
    return v3

    .line 1177
    :cond_4d
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result p1

    if-lez p1, :cond_70

    .line 1178
    return p1

    .line 1181
    :cond_54
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result v3

    if-lez v3, :cond_5b

    .line 1182
    return v3

    .line 1184
    :cond_5b
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result p1

    if-lez p1, :cond_70

    .line 1186
    and-int/2addr v0, p1

    if-nez v0, :cond_6f

    .line 1188
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 1189
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v0

    .line 1188
    invoke-static {p1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result p1

    return p1

    .line 1191
    :cond_6f
    return p1

    .line 1194
    :cond_70
    return v2
.end method


# virtual methods
.method public blacklist attachToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-ne v0, p1, :cond_5

    .line 451
    return-void

    .line 453
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_c

    .line 454
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->destroyCallbacks()V

    .line 456
    :cond_c
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 457
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_2d

    .line 458
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 459
    nop

    .line 460
    const v0, 0x1050210

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 461
    nop

    .line 462
    const v0, 0x105020f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 463
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->setupCallbacks()V

    .line 465
    :cond_2d
    return-void
.end method

.method blacklist checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    .registers 12

    .line 943
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_94

    const/4 v0, 0x2

    if-ne p1, v0, :cond_94

    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    if-eq p1, v0, :cond_94

    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 944
    invoke-virtual {p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_94

    .line 947
    :cond_16
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_20

    .line 948
    return v1

    .line 950
    :cond_20
    invoke-direct {p0, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 951
    if-nez p1, :cond_27

    .line 952
    return v1

    .line 954
    :cond_27
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v3

    .line 956
    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    .line 959
    if-nez v3, :cond_38

    .line 960
    return v1

    .line 965
    :cond_38
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 966
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p3

    .line 969
    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v4, v5

    .line 970
    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr p3, v5

    .line 973
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 974
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 976
    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_5d

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_5d

    .line 977
    return v1

    .line 979
    :cond_5d
    cmpl-float v5, v5, v6

    const/4 v6, 0x0

    if-lez v5, :cond_74

    .line 980
    cmpg-float p3, v4, v6

    if-gez p3, :cond_6b

    and-int/lit8 p3, v3, 0x4

    if-nez p3, :cond_6b

    .line 981
    return v1

    .line 983
    :cond_6b
    cmpl-float p3, v4, v6

    if-lez p3, :cond_86

    and-int/lit8 p3, v3, 0x8

    if-nez p3, :cond_86

    .line 984
    return v1

    .line 987
    :cond_74
    cmpg-float v4, p3, v6

    if-gez v4, :cond_7d

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_7d

    .line 988
    return v1

    .line 990
    :cond_7d
    cmpl-float p3, p3, v6

    if-lez p3, :cond_86

    and-int/lit8 p3, v3, 0x2

    if-nez p3, :cond_86

    .line 991
    return v1

    .line 994
    :cond_86
    iput v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    iput v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 995
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 996
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 997
    return v2

    .line 945
    :cond_94
    :goto_94
    return v1
.end method

.method blacklist endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I
    .registers 6

    .line 878
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 879
    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2d

    .line 880
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 881
    iget-object v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v2, p1, :cond_2a

    .line 882
    iget-boolean p1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr p1, p2

    iput-boolean p1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 883
    iget-boolean p1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez p1, :cond_22

    .line 884
    invoke-virtual {v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 886
    :cond_22
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 887
    iget p1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    return p1

    .line 879
    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 890
    :cond_2d
    const/4 p1, 0x0

    return p1
.end method

.method blacklist findAnimation(Landroid/view/MotionEvent;)Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .registers 6

    .line 1117
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1118
    return-object v1

    .line 1120
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    .line 1121
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_16
    if-ltz v0, :cond_2a

    .line 1122
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1123
    iget-object v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v3, p1, :cond_27

    .line 1124
    return-object v2

    .line 1121
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 1127
    :cond_2a
    return-object v1
.end method

.method blacklist findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 7

    .line 1002
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1003
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1004
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_21

    .line 1005
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1006
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v3, v4

    invoke-static {v1, v0, p1, v2, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1007
    return-object v1

    .line 1010
    :cond_21
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_29
    if-ltz v1, :cond_45

    .line 1011
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1012
    iget-object v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1013
    iget v4, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v3, v0, p1, v4, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1014
    return-object v3

    .line 1010
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 1017
    :cond_45
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 5

    .line 896
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 897
    return-void
.end method

.method blacklist hasRunningRecoverAnim()Z
    .registers 5

    .line 690
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 691
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1b

    .line 692
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-boolean v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_18

    .line 693
    const/4 v0, 0x1

    return v0

    .line 691
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 696
    :cond_1b
    return v1
.end method

.method blacklist moveIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 12

    .line 818
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 819
    return-void

    .line 821
    :cond_9
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 822
    return-void

    .line 825
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMoveThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F

    move-result v0

    .line 826
    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v1, v2

    float-to-int v8, v1

    .line 827
    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v1, v2

    float-to-int v9, v1

    .line 828
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_54

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 829
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 830
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    cmpg-float v0, v1, v2

    if-gez v0, :cond_54

    .line 831
    return-void

    .line 833
    :cond_54
    invoke-direct {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findSwapTargets(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v0

    .line 834
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5f

    .line 835
    return-void

    .line 838
    :cond_5f
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v1, p1, v0, v8, v9}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->chooseDropTarget(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 839
    if-nez v6, :cond_72

    .line 840
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 841
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 842
    return-void

    .line 844
    :cond_72
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v7

    .line 845
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    .line 846
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, p1, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onMove(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 848
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    move-object v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onMoved(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILcom/android/internal/widget/RecyclerView$ViewHolder;III)V

    .line 851
    :cond_8c
    return-void
.end method

.method blacklist obtainVelocityTracker()V
    .registers 2

    .line 900
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 901
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 903
    :cond_9
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 904
    return-void
.end method

.method public blacklist onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 855
    return-void
.end method

.method public blacklist onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    .line 859
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 860
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 861
    if-nez p1, :cond_c

    .line 862
    return-void

    .line 864
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne p1, v0, :cond_1a

    .line 865
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    goto :goto_2e

    .line 867
    :cond_1a
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I

    .line 868
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 869
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 872
    :cond_2e
    :goto_2e
    return-void
.end method

.method public blacklist onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 12

    .line 528
    const/4 p3, -0x1

    iput p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 529
    nop

    .line 530
    iget-object p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz p3, :cond_1a

    .line 531
    iget-object p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, p3}, Lcom/android/internal/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 532
    iget-object p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v0, 0x0

    aget p3, p3, v0

    .line 533
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    move v6, p3

    move v7, v0

    goto :goto_1d

    .line 530
    :cond_1a
    const/4 p3, 0x0

    move v6, p3

    move v7, v6

    .line 535
    :goto_1d
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 537
    return-void
.end method

.method public blacklist onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 12

    .line 515
    nop

    .line 516
    iget-object p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz p3, :cond_17

    .line 517
    iget-object p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, p3}, Lcom/android/internal/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 518
    iget-object p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v0, 0x0

    aget p3, p3, v0

    .line 519
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    move v6, p3

    move v7, v0

    goto :goto_1a

    .line 516
    :cond_17
    const/4 p3, 0x0

    move v6, p3

    move v7, v6

    .line 521
    :goto_1a
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 523
    return-void
.end method

.method blacklist postDispatchSwipe(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .registers 5

    .line 668
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    new-instance v1, Lcom/android/internal/widget/helper/ItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$4;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 687
    return-void
.end method

.method blacklist removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .registers 3

    .line 1277
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_10

    .line 1278
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1280
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_10

    .line 1281
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->setChildDrawingOrderCallback(Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1284
    :cond_10
    return-void
.end method

.method blacklist scrollIfNecessary()Z
    .registers 16

    .line 703
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    if-nez v0, :cond_a

    .line 704
    iput-wide v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 705
    return v1

    .line 707
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 709
    iget-wide v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_17

    const-wide/16 v6, 0x0

    goto :goto_1b

    :cond_17
    iget-wide v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long v6, v4, v6

    :goto_1b
    move-wide v13, v6

    .line 710
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 711
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v6, :cond_2d

    .line 712
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 714
    :cond_2d
    nop

    .line 715
    nop

    .line 716
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v6, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 717
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_83

    .line 718
    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 719
    iget-object v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v8, v6, v8

    iget-object v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v9}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    .line 720
    iget v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    cmpg-float v9, v9, v7

    if-gez v9, :cond_5c

    if-gez v8, :cond_5c

    .line 721
    move v11, v8

    goto :goto_84

    .line 722
    :cond_5c
    iget v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    cmpl-float v8, v8, v7

    if-lez v8, :cond_83

    .line 723
    iget-object v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v8, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 724
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 725
    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v9}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v8, v6, v8

    .line 726
    if-lez v8, :cond_83

    .line 727
    move v11, v8

    goto :goto_84

    .line 731
    :cond_83
    move v11, v1

    :goto_84
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 732
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v6

    float-to-int v0, v0

    .line 733
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v0, v6

    iget-object v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v6, v8

    .line 734
    iget v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    cmpg-float v8, v8, v7

    if-gez v8, :cond_a6

    if-gez v6, :cond_a6

    .line 735
    goto :goto_cd

    .line 736
    :cond_a6
    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_cc

    .line 737
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v6, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v0, v6

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 738
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v6, v0, v6

    .line 739
    if-lez v6, :cond_cc

    .line 740
    goto :goto_cd

    .line 744
    :cond_cc
    move v6, v1

    :goto_cd
    if-eqz v11, :cond_e7

    .line 745
    iget-object v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 746
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 747
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v12

    .line 745
    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/android/internal/widget/RecyclerView;IIIJ)I

    move-result v11

    move v0, v11

    goto :goto_e8

    .line 744
    :cond_e7
    move v0, v11

    .line 749
    :goto_e8
    if-eqz v6, :cond_102

    .line 750
    iget-object v8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 751
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 752
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v12

    .line 750
    move v11, v6

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/android/internal/widget/RecyclerView;IIIJ)I

    move-result v6

    goto :goto_103

    .line 749
    :cond_102
    move v11, v6

    .line 754
    :goto_103
    if-nez v0, :cond_10b

    if-eqz v6, :cond_108

    goto :goto_10b

    .line 761
    :cond_108
    iput-wide v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 762
    return v1

    .line 755
    :cond_10b
    :goto_10b
    iget-wide v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v1, v7, v2

    if-nez v1, :cond_113

    .line 756
    iput-wide v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 758
    :cond_113
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0, v6}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    .line 759
    const/4 v0, 0x1

    return v0
.end method

.method blacklist select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 21

    .line 547
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v11, v0, :cond_f

    iget v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    if-ne v12, v0, :cond_f

    .line 548
    return-void

    .line 550
    :cond_f
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 551
    iget v4, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    .line 553
    const/4 v13, 0x1

    invoke-virtual {v1, v11, v13}, Lcom/android/internal/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I

    .line 554
    iput v12, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    .line 555
    const/4 v14, 0x2

    if-ne v12, v14, :cond_25

    .line 559
    iget-object v0, v11, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 560
    invoke-direct {v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V

    .line 562
    :cond_25
    mul-int/lit8 v0, v12, 0x8

    const/16 v15, 0x8

    add-int/2addr v0, v15

    shl-int v0, v13, v0

    add-int/lit8 v16, v0, -0x1

    .line 564
    nop

    .line 566
    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-eqz v0, :cond_c1

    .line 567
    move v0, v2

    iget-object v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 568
    iget-object v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_af

    .line 569
    if-ne v4, v14, :cond_43

    move v9, v0

    goto :goto_48

    .line 570
    :cond_43
    invoke-direct {v1, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->swipeIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v3

    move v9, v3

    .line 571
    :goto_48
    invoke-direct {v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 575
    const/4 v3, 0x0

    sparse-switch v9, :sswitch_data_11c

    .line 589
    nop

    .line 590
    move v7, v3

    move v8, v7

    goto :goto_76

    .line 580
    :sswitch_53
    nop

    .line 581
    iget v5, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    iget-object v6, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 582
    move v8, v3

    move v7, v5

    goto :goto_76

    .line 585
    :sswitch_65
    nop

    .line 586
    iget v5, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    iget-object v6, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 587
    move v7, v3

    move v8, v5

    .line 592
    :goto_76
    if-ne v4, v14, :cond_7a

    .line 593
    move v3, v15

    goto :goto_7f

    .line 594
    :cond_7a
    if-lez v9, :cond_7e

    .line 595
    move v3, v14

    goto :goto_7f

    .line 597
    :cond_7e
    const/4 v3, 0x4

    .line 599
    :goto_7f
    iget-object v5, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v1, v5}, Lcom/android/internal/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 600
    iget-object v5, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    aget v5, v5, v0

    .line 601
    iget-object v6, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    aget v6, v6, v13

    .line 602
    move v10, v0

    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;

    move/from16 v17, v10

    move-object v10, v2

    move/from16 v13, v17

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/helper/ItemTouchHelper$3;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFFILcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 631
    iget-object v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v4, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    sub-float/2addr v7, v5

    sub-float/2addr v8, v6

    invoke-virtual {v2, v4, v3, v7, v8}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAnimationDuration(Lcom/android/internal/widget/RecyclerView;IFF)J

    move-result-wide v2

    .line 633
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 634
    iget-object v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-virtual {v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->start()V

    .line 636
    nop

    .line 637
    const/4 v2, 0x1

    goto :goto_bd

    .line 638
    :cond_af
    move v13, v0

    iget-object v0, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 639
    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    move v2, v13

    .line 641
    :goto_bd
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    goto :goto_c2

    .line 566
    :cond_c1
    move v13, v2

    .line 643
    :goto_c2
    if-eqz v11, :cond_f1

    .line 644
    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 645
    invoke-virtual {v0, v3, v11}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    and-int v0, v0, v16

    iget v3, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    mul-int/2addr v3, v15

    shr-int/2addr v0, v3

    iput v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    .line 647
    iget-object v0, v11, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    .line 648
    iget-object v0, v11, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    .line 649
    iput-object v11, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 651
    if-ne v12, v14, :cond_f1

    .line 652
    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 655
    :cond_f1
    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 656
    if-eqz v0, :cond_101

    .line 657
    iget-object v3, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_fe

    const/4 v13, 0x1

    :cond_fe
    invoke-interface {v0, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 659
    :cond_101
    if-nez v2, :cond_10c

    .line 660
    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 662
    :cond_10c
    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v3, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 663
    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 664
    return-void

    nop

    :sswitch_data_11c
    .sparse-switch
        0x1 -> :sswitch_65
        0x2 -> :sswitch_65
        0x4 -> :sswitch_53
        0x8 -> :sswitch_53
        0x10 -> :sswitch_53
        0x20 -> :sswitch_53
    .end sparse-switch
.end method

.method public blacklist startDrag(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 5

    .line 1055
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    const-string v1, "ItemTouchHelper"

    if-nez v0, :cond_12

    .line 1056
    const-string p1, "Start drag has been called but dragging is not enabled"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void

    .line 1059
    :cond_12
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eq v0, v2, :cond_22

    .line 1060
    const-string p1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return-void

    .line 1064
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1065
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1066
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 1067
    return-void
.end method

.method public blacklist startSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 5

    .line 1102
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->hasSwipeFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    const-string v1, "ItemTouchHelper"

    if-nez v0, :cond_12

    .line 1103
    const-string p1, "Start swipe has been called but swiping is not enabled"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return-void

    .line 1106
    :cond_12
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eq v0, v2, :cond_22

    .line 1107
    const-string p1, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return-void

    .line 1111
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 1114
    return-void
.end method

.method blacklist updateDxDy(Landroid/view/MotionEvent;II)V
    .registers 5

    .line 1131
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1132
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1135
    iget p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v0, p3

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1136
    iget p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    .line 1137
    and-int/lit8 p1, p2, 0x4

    const/4 p3, 0x0

    if-nez p1, :cond_1f

    .line 1138
    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1140
    :cond_1f
    and-int/lit8 p1, p2, 0x8

    if-nez p1, :cond_2b

    .line 1141
    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1143
    :cond_2b
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_37

    .line 1144
    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    .line 1146
    :cond_37
    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_43

    .line 1147
    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    .line 1149
    :cond_43
    return-void
.end method
