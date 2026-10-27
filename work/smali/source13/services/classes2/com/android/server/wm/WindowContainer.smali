.class Lcom/android/server/wm/WindowContainer;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "WindowContainer.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;
.implements Lcom/android/server/wm/SurfaceFreezer$Freezable;
.implements Lcom/android/server/wm/InsetsControlTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowContainer$IAnimationStarter;,
        Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;,
        Lcom/android/server/wm/WindowContainer$RemoteToken;,
        Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;,
        Lcom/android/server/wm/WindowContainer$SyncState;,
        Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;,
        Lcom/android/server/wm/WindowContainer$AnimationFlags;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/WindowContainer;",
        ">",
        "Lcom/android/server/wm/ConfigurationContainer<",
        "TE;>;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;",
        "Lcom/android/server/wm/SurfaceAnimator$Animatable;",
        "Lcom/android/server/wm/SurfaceFreezer$Freezable;",
        "Lcom/android/server/wm/InsetsControlTarget;"
    }
.end annotation


# static fields
.field static final POSITION_BOTTOM:I = -0x80000000

.field static final POSITION_TOP:I = 0x7fffffff

.field public static final SYNC_STATE_NONE:I = 0x0

.field public static final SYNC_STATE_READY:I = 0x2

.field public static final SYNC_STATE_WAITING_FOR_DRAW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field mAnimationBoundsLayer:Landroid/view/SurfaceControl;

.field private mAnimationDimmer:Landroid/view/animation/Animation;

.field private mAnimationLeash:Landroid/view/SurfaceControl;

.field protected final mChildren:Lcom/android/server/wm/WindowList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mCommittedReparentToAnimationLeash:Z

.field private final mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/android/server/wm/WindowContainer<",
            "TE;>.ForAllWindowsConsumerWrapper;>;"
        }
    .end annotation
.end field

.field protected mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

.field protected mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field volatile mForceStop:Z

.field mInFloatWindowAnimation:Z

.field private mIsFocusable:Z

.field protected mIsPrivacy:Z

.field protected mIsPrivacySurfaceView:Z

.field protected mLastDeltaRotation:I

.field private mLastLayer:I

.field private mLastMagnificationSpec:Landroid/view/MagnificationSpec;

.field protected mLastOrientation:I

.field protected mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

.field private mLastRelativeToLayer:Landroid/view/SurfaceControl;

.field protected final mLastSurfacePosition:Landroid/graphics/Point;

.field mLaunchTaskBehind:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/WindowContainerListener;",
            ">;"
        }
    .end annotation
.end field

.field mLocalInsetsSourceProviders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsSourceProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected mMiuiConfigFlag:I

.field mNeedReplaceLeashPostion:Z

.field mNeedReplaceTaskAnimation:Z

.field mNeedsAnimationBoundsLayer:Z

.field mNeedsZBoost:Z

.field protected mOrientation:I

.field protected mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

.field private mParent:Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowContainer<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

.field protected mProjectioned:Z

.field protected mProvidedInsetsSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation
.end field

.field mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

.field mReparenting:Z

.field private mSplitDimmer:Landroid/view/animation/Animation;

.field private final mSurfaceAnimationSources:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field protected mSurfaceControl:Landroid/view/SurfaceControl;

.field final mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

.field mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

.field mSyncState:I

.field final mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mSyncTransactionCommitCallbackDepth:I

.field mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

.field private final mTmpChain1:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpChain2:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpPoint:Landroid/graphics/Point;

.field private final mTmpPos:Landroid/graphics/Point;

.field final mTmpPrevBounds:Landroid/graphics/Rect;

.field protected final mTmpRect:Landroid/graphics/Rect;

.field mTransit:I

.field mTransitFlags:I

.field final mTransitionController:Lcom/android/server/wm/TransitionController;

.field private mTreeWeight:I

.field final mWaitingForDrawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConsumerWrapperPool(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pools$SynchronizedPool;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 7
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 389
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mMiuiConfigFlag:I

    .line 161
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mProjectioned:Z

    .line 162
    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mIsPrivacy:Z

    .line 163
    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mIsPrivacySurfaceView:Z

    .line 174
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 188
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    .line 197
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mProvidedInsetsSources:Landroid/util/SparseArray;

    .line 201
    new-instance v3, Lcom/android/server/wm/WindowList;

    invoke-direct {v3}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 204
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 207
    iput v3, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientation:I

    .line 215
    new-instance v3, Landroid/util/Pools$SynchronizedPool;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    .line 222
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 223
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 252
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    .line 254
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 255
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 256
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    .line 259
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 268
    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mNeedReplaceLeashPostion:Z

    .line 269
    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mInFloatWindowAnimation:Z

    .line 271
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    .line 339
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    .line 340
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 341
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 345
    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    .line 351
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 374
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 376
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    .line 384
    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mNeedReplaceTaskAnimation:Z

    .line 741
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 742
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 390
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 391
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 392
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 393
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 394
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v2, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-direct {v0, p0, v2, p1}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 395
    new-instance v0, Lcom/android/server/wm/SurfaceFreezer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/SurfaceFreezer;-><init>(Lcom/android/server/wm/SurfaceFreezer$Freezable;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 397
    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mNeedReplaceTaskAnimation:Z

    .line 398
    return-void
.end method

.method static createShallowCopy(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 450
    .local p0, "inputArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 451
    .local v0, "copyOfInput":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 452
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 454
    .end local v1    # "i":I
    :cond_1e
    return-object v0
.end method

.method private doAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 3575
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 3576
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 3575
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3578
    .end local v0    # "i":I
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 3579
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_23

    .line 3580
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayContent;->onWindowAnimationFinished(Lcom/android/server/wm/WindowContainer;I)V

    .line 3582
    :cond_23
    return-void
.end method

.method private forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Z
    .registers 17
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .param p5, "boundaryFound"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z)Z"
        }
    .end annotation

    .line 1832
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    move-object v7, p0

    const/4 v8, 0x1

    if-eqz p4, :cond_29

    .line 1833
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move v9, v0

    .local v9, "i":I
    :goto_c
    if-ltz v9, :cond_28

    .line 1834
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1835
    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 1834
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowContainer;->processForAllActivitiesWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1836
    return v8

    .line 1833
    :cond_25
    add-int/lit8 v9, v9, -0x1

    goto :goto_c

    .end local v9    # "i":I
    :cond_28
    goto :goto_4d

    .line 1840
    :cond_29
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    .line 1841
    .local v9, "count":I
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_31
    if-ge v10, v9, :cond_4d

    .line 1842
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1843
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 1842
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowContainer;->processForAllActivitiesWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1844
    return v8

    .line 1841
    :cond_4a
    add-int/lit8 v10, v10, 0x1

    goto :goto_31

    .line 1849
    .end local v9    # "count":I
    .end local v10    # "i":I
    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    return v0
.end method

.method static fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;
    .registers 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 3934
    invoke-static {p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer$RemoteToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->getContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    return-object v0
.end method

.method private getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/ActivityRecord;
    .registers 16
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .param p5, "boundaryFound"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1935
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    if-eqz p4, :cond_26

    .line 1936
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_25

    .line 1937
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1938
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 1937
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowContainer;->processGetActivityWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1939
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_22

    .line 1940
    return-object v1

    .line 1936
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .end local v0    # "i":I
    :cond_25
    goto :goto_48

    .line 1944
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1945
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    if-ge v1, v0, :cond_48

    .line 1946
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1947
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/wm/WindowContainer;

    .line 1946
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/WindowContainer;->processGetActivityWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1948
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_45

    .line 1949
    return-object v2

    .line 1945
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1954
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_48
    :goto_48
    const/4 v0, 0x0

    return-object v0
.end method

.method private getParents(Ljava/util/LinkedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 2559
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "parents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 2560
    move-object v0, p0

    .line 2562
    .local v0, "current":Lcom/android/server/wm/WindowContainer;
    :goto_4
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2563
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 2564
    if-nez v0, :cond_c

    .line 2565
    return-void

    .line 2564
    :cond_c
    goto :goto_4
.end method

.method private getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I
    .registers 6
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 913
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .line 914
    .local v0, "order":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 915
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 916
    .local v2, "childI":Lcom/android/server/wm/WindowContainer;
    if-ne p1, v2, :cond_15

    .line 917
    goto :goto_1b

    .line 919
    :cond_15
    iget v3, v2, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v0, v3

    .line 914
    .end local v2    # "childI":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 921
    .end local v1    # "i":I
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_24

    .line 922
    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 926
    :cond_24
    add-int/lit8 v0, v0, 0x1

    .line 927
    return v0
.end method

.method private getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/Task;
    .registers 16
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .param p5, "boundaryFound"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 2239
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    if-eqz p4, :cond_26

    .line 2240
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_25

    .line 2241
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2242
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 2241
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowContainer;->processGetTaskWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2243
    .local v1, "t":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_22

    .line 2244
    return-object v1

    .line 2240
    .end local v1    # "t":Lcom/android/server/wm/Task;
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .end local v0    # "i":I
    :cond_25
    goto :goto_48

    .line 2248
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2249
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    if-ge v1, v0, :cond_48

    .line 2250
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2251
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/wm/WindowContainer;

    .line 2250
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/WindowContainer;->processGetTaskWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2252
    .local v2, "t":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_45

    .line 2253
    return-object v2

    .line 2249
    .end local v2    # "t":Lcom/android/server/wm/Task;
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 2258
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_48
    :goto_48
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTaskAnimationBackgroundColor()I
    .registers 5

    .line 3394
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    .line 3395
    .local v0, "uiContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskTransitionSpec:Landroid/view/TaskTransitionSpec;

    .line 3396
    .local v1, "customSpec":Landroid/view/TaskTransitionSpec;
    const v2, 0x106022b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 3398
    .local v2, "defaultFallbackColor":I
    if-eqz v1, :cond_1e

    iget v3, v1, Landroid/view/TaskTransitionSpec;->backgroundColor:I

    if-eqz v3, :cond_1e

    .line 3399
    iget v3, v1, Landroid/view/TaskTransitionSpec;->backgroundColor:I

    return v3

    .line 3402
    :cond_1e
    return v2
.end method

.method private isAddDimmerForFloatWindow(ZI)Z
    .registers 4
    .param p1, "enter"    # Z
    .param p2, "transit"    # I

    .line 3300
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    if-nez p1, :cond_6

    const/16 v0, 0x19

    if-eq p2, v0, :cond_c

    :cond_6
    if-eqz p1, :cond_e

    const/16 v0, 0x18

    if-ne p2, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isAddDimmerForTransitionAnimation(ZI)Z
    .registers 4
    .param p1, "enter"    # Z
    .param p2, "transit"    # I

    .line 3307
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    if-nez p1, :cond_d

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1a

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1a

    const/16 v0, 0xa

    if-eq p2, v0, :cond_1a

    :cond_d
    if-eqz p1, :cond_1c

    const/4 v0, 0x7

    if-eq p2, v0, :cond_1a

    const/16 v0, 0x9

    if-eq p2, v0, :cond_1a

    const/16 v0, 0xb

    if-ne p2, v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method static synthetic lambda$getActivityAbove$2(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "above"    # Lcom/android/server/wm/ActivityRecord;

    .line 1979
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getActivityBelow$3(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "below"    # Lcom/android/server/wm/ActivityRecord;

    .line 1984
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getBottomMostActivity$4(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1989
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getBottomMostTask$12(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 2189
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTaskAbove$10(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "above"    # Lcom/android/server/wm/Task;

    .line 2181
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTaskBelow$11(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "below"    # Lcom/android/server/wm/Task;

    .line 2185
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTopActivity$6(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2000
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTopActivity$7(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2002
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTopActivity$8(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2004
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTopActivity$9(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2007
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$getTopMostActivity$5(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1993
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTopMostTask$13(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 2193
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$onDisplayChanged$0(Ljava/util/ArrayList;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 5
    .param p0, "sources"    # Ljava/util/ArrayList;
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 1082
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1083
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 1082
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1085
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;
    .registers 34
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "isVoiceInteraction"    # Z

    .line 3411
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    move-object/from16 v14, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_1e

    .line 3413
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v0

    if-eq v0, v13, :cond_1e

    .line 3414
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v0

    if-eq v0, v1, :cond_1e

    .line 3416
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isEmbeddedFullScreen()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3417
    return-object v15

    .line 3420
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v16

    .line 3421
    .local v16, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v12

    .line 3422
    .local v12, "displayInfo":Landroid/view/DisplayInfo;
    iget v11, v12, Landroid/view/DisplayInfo;->appWidth:I

    .line 3423
    .local v11, "width":I
    iget v10, v12, Landroid/view/DisplayInfo;->appHeight:I

    .line 3424
    .local v10, "height":I
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_3f

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x5e6e0e83

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-static {v2, v3, v9, v15, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3428
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_3f
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v9, v9, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v8, v0

    .line 3429
    .local v8, "frame":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    iget v0, v12, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v12, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v7, v9, v9, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3431
    .local v7, "displayFrame":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v0

    .line 3432
    .local v6, "insets":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v0

    .line 3433
    .local v5, "stableInsets":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v0

    .line 3436
    .local v4, "surfaceInsets":Landroid/graphics/Rect;
    instance-of v0, v14, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_76

    .line 3437
    move-object/from16 v17, v14

    check-cast v17, Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v8

    move-object/from16 v19, v6

    move-object/from16 v20, v5

    move-object/from16 v21, v4

    move/from16 v22, p2

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_79

    .line 3439
    :cond_76
    invoke-virtual {v14, v8, v6, v5, v4}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3442
    :goto_79
    iget-boolean v0, v14, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_81

    .line 3446
    const/4 v0, 0x0

    move/from16 v17, v0

    .end local p3    # "enter":Z
    .local v0, "enter":Z
    goto :goto_83

    .line 3442
    .end local v0    # "enter":Z
    .restart local p3    # "enter":Z
    :cond_81
    move/from16 v17, p3

    .line 3448
    .end local p3    # "enter":Z
    .local v17, "enter":Z
    :goto_83
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/16 v18, 0x3

    const/16 v19, 0x2

    if-eqz v0, :cond_bf

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    move/from16 v2, v17

    .local v2, "protoLogParam1":Z
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .local v20, "protoLogParam2":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .local v21, "protoLogParam3":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .local v22, "protoLogParam4":Ljava/lang/String;
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v3, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v9

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v1, v13

    aput-object v20, v1, v19

    aput-object v21, v1, v18

    const/16 v23, 0x4

    aput-object v22, v1, v23

    const v9, 0x6d22f9b6

    const/4 v13, 0x0

    invoke-static {v15, v9, v3, v13, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c1

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Z
    .end local v20    # "protoLogParam2":Ljava/lang/String;
    .end local v21    # "protoLogParam3":Ljava/lang/String;
    .end local v22    # "protoLogParam4":Ljava/lang/String;
    :cond_bf
    const/16 v23, 0x4

    .line 3453
    :goto_c1
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    .line 3454
    .local v15, "displayConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v9, v15, Landroid/content/res/Configuration;->uiMode:I

    iget v13, v15, Landroid/content/res/Configuration;->orientation:I

    .line 3456
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->inFreeformWindowingMode()Z

    move-result v20

    .line 3454
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 p3, v15

    move/from16 v15, v23

    .end local v15    # "displayConfig":Landroid/content/res/Configuration;
    .local p3, "displayConfig":Landroid/content/res/Configuration;
    move/from16 v3, v17

    move-object/from16 v21, v4

    .end local v4    # "surfaceInsets":Landroid/graphics/Rect;
    .local v21, "surfaceInsets":Landroid/graphics/Rect;
    move v4, v9

    move-object/from16 v22, v5

    .end local v5    # "stableInsets":Landroid/graphics/Rect;
    .local v22, "stableInsets":Landroid/graphics/Rect;
    move v5, v13

    move-object/from16 v23, v6

    .end local v6    # "insets":Landroid/graphics/Rect;
    .local v23, "insets":Landroid/graphics/Rect;
    move-object v6, v8

    move-object/from16 v25, v8

    .end local v8    # "frame":Landroid/graphics/Rect;
    .local v25, "frame":Landroid/graphics/Rect;
    move-object/from16 v8, v23

    const/16 v24, 0x0

    move-object/from16 v9, v21

    move v13, v10

    .end local v10    # "height":I
    .local v13, "height":I
    move-object/from16 v10, v22

    move/from16 v26, v11

    .end local v11    # "width":I
    .local v26, "width":I
    move/from16 v11, p4

    move-object/from16 v27, v12

    .end local v12    # "displayInfo":Landroid/view/DisplayInfo;
    .local v27, "displayInfo":Landroid/view/DisplayInfo;
    move/from16 v12, v20

    move/from16 v28, v13

    const/16 v20, 0x1

    .end local v13    # "height":I
    .local v28, "height":I
    move-object/from16 v13, p0

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3457
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz v0, :cond_165

    .line 3458
    if-eqz v0, :cond_10c

    .line 3462
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 3464
    :cond_10c
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v1}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v1

    if-eqz v1, :cond_14c

    .line 3465
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v1, :cond_14c

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    if-eqz v0, :cond_127

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    goto :goto_129

    :cond_127
    const-wide/16 v3, 0x0

    .local v3, "protoLogParam2":J
    :goto_129
    const/16 v5, 0x14

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam3":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x2dd9597a

    const/16 v9, 0x10

    new-array v10, v15, [Ljava/lang/Object;

    aput-object v1, v10, v24

    aput-object v2, v10, v20

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v19

    aput-object v5, v10, v18

    const/4 v11, 0x0

    invoke-static {v6, v8, v9, v11, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3468
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":J
    .end local v5    # "protoLogParam3":Ljava/lang/String;
    :cond_14c
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 3469
    .local v1, "containingWidth":I
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 3470
    .local v2, "containingHeight":I
    move/from16 v3, v26

    move/from16 v4, v28

    .end local v26    # "width":I
    .end local v28    # "height":I
    .local v3, "width":I
    .local v4, "height":I
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 3471
    iget-object v5, v14, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    goto :goto_169

    .line 3457
    .end local v1    # "containingWidth":I
    .end local v2    # "containingHeight":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    .restart local v26    # "width":I
    .restart local v28    # "height":I
    :cond_165
    move/from16 v3, v26

    move/from16 v4, v28

    .line 3473
    .end local v26    # "width":I
    .end local v28    # "height":I
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    :goto_169
    return-object v0
.end method

.method private obtainConsumerWrapper(Ljava/util/function/Consumer;)Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowContainer<",
            "TE;>.ForAllWindowsConsumerWrapper;"
        }
    .end annotation

    .line 2766
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    .line 2767
    .local v0, "wrapper":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    if-nez v0, :cond_11

    .line 2768
    new-instance v1, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper-IA;)V

    move-object v0, v1

    .line 2770
    :cond_11
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->setConsumer(Ljava/util/function/Consumer;)V

    .line 2771
    return-object v0
.end method

.method private onChildAdded(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 809
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 810
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 811
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    :goto_b
    if-eqz v0, :cond_19

    .line 812
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v2, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 813
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_b

    .line 815
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 816
    return-void
.end method

.method private onChildRemoved(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 837
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 838
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 839
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    :goto_b
    if-eqz v0, :cond_19

    .line 840
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v2, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 841
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_b

    .line 843
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 844
    return-void
.end method

.method private onSyncReparent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
    .registers 6
    .param p1, "oldParent"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "newParent"    # Lcom/android/server/wm/WindowContainer;

    .line 4101
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    if-eqz p2, :cond_6

    iget v0, p2, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_49

    .line 4102
    :cond_6
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_b

    .line 4103
    return-void

    .line 4105
    :cond_b
    const/4 v0, 0x1

    if-nez p2, :cond_3d

    .line 4107
    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz v1, :cond_18

    .line 4109
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Z)V

    goto :goto_23

    .line 4110
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    if-eqz v1, :cond_24

    .line 4113
    invoke-virtual {v1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->getOrphanTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 4118
    :goto_23
    return-void

    .line 4115
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This container is in sync mode without a sync group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4119
    :cond_3d
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    if-nez v1, :cond_49

    .line 4122
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 4123
    return-void

    .line 4134
    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 4135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 4137
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    .line 4138
    return-void
.end method

.method static overrideConfigurationPropagation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 4169
    .local p0, "receiver":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local p1, "supplier":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    new-instance v0, Lcom/android/server/wm/WindowContainer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/WindowContainer$1;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    .line 4175
    .local v0, "listener":Lcom/android/server/wm/ConfigurationContainerListener;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 4176
    new-instance v1, Lcom/android/server/wm/WindowContainer$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/WindowContainer$2;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ConfigurationContainerListener;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 4183
    return-void
.end method

.method private processForAllActivitiesWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Z
    .registers 13
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .param p5, "boundaryFound"    # [Z
    .param p6, "wc"    # Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z",
            "Lcom/android/server/wm/WindowContainer;",
            ")Z"
        }
    .end annotation

    .line 1855
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x0

    if-ne p6, p2, :cond_9

    .line 1856
    const/4 v1, 0x1

    aput-boolean v1, p5, v0

    .line 1857
    if-nez p3, :cond_9

    return v0

    .line 1860
    :cond_9
    aget-boolean v0, p5, v0

    if-eqz v0, :cond_12

    .line 1861
    invoke-virtual {p6, p1, p4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result v0

    return v0

    .line 1864
    :cond_12
    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Z

    move-result v0

    return v0
.end method

.method private processGetActivityWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .registers 13
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .param p5, "boundaryFound"    # [Z
    .param p6, "wc"    # Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z",
            "Lcom/android/server/wm/WindowContainer;",
            ")",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1965
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x0

    if-eq p6, p2, :cond_5

    if-nez p2, :cond_c

    .line 1966
    :cond_5
    const/4 v1, 0x1

    aput-boolean v1, p5, v0

    .line 1967
    if-nez p3, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 1970
    :cond_c
    aget-boolean v0, p5, v0

    if-eqz v0, :cond_15

    .line 1971
    invoke-virtual {p6, p1, p4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 1974
    :cond_15
    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private processGetTaskWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;
    .registers 13
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .param p5, "boundaryFound"    # [Z
    .param p6, "wc"    # Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z",
            "Lcom/android/server/wm/WindowContainer;",
            ")",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 2312
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x0

    if-eq p6, p2, :cond_5

    if-nez p2, :cond_c

    .line 2313
    :cond_5
    const/4 v1, 0x1

    aput-boolean v1, p5, v0

    .line 2314
    if-nez p3, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 2317
    :cond_c
    aget-boolean v0, p5, v0

    if-eqz v0, :cond_15

    .line 2318
    invoke-virtual {p6, p1, p4}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    .line 2321
    :cond_15
    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 7
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 783
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    iget-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-nez v0, :cond_5a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_5a

    .line 784
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 785
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t add to container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 786
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xf

    .line 787
    const-string v3, "\n"

    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_5a
    :goto_5a
    const/high16 v0, -0x80000000

    if-gez p2, :cond_60

    if-ne p2, v0, :cond_6e

    :cond_60
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 791
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-le p2, v1, :cond_97

    if-ne p2, v2, :cond_6e

    goto :goto_97

    .line 792
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChild: invalid position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", children number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 793
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_97
    :goto_97
    if-ne p2, v2, :cond_a0

    .line 797
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result p2

    goto :goto_a3

    .line 798
    :cond_a0
    if-ne p2, v0, :cond_a3

    .line 799
    const/4 p2, 0x0

    .line 802
    :cond_a3
    :goto_a3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 805
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 806
    return-void
.end method

.method protected addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/Comparator<",
            "TE;>;)V"
        }
    .end annotation

    .line 753
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    iget-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-nez v0, :cond_48

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_48

    .line 754
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 755
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t add to container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 756
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_48
    :goto_48
    const/4 v0, -0x1

    .line 760
    .local v0, "positionToAdd":I
    if-eqz p2, :cond_67

    .line 761
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 762
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_52
    if-ge v2, v1, :cond_67

    .line 763
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_64

    .line 764
    move v0, v2

    .line 765
    goto :goto_67

    .line 762
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 770
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_67
    :goto_67
    const/4 v1, -0x1

    if-ne v0, v1, :cond_70

    .line 771
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 773
    :cond_70
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 777
    :goto_75
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 778
    return-void
.end method

.method addLocalRectInsetsSourceProvider(Landroid/graphics/Rect;[I)V
    .registers 9
    .param p1, "providerFrame"    # Landroid/graphics/Rect;
    .param p2, "insetsTypes"    # [I

    .line 469
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    if-eqz p2, :cond_74

    array-length v0, p2

    if-eqz v0, :cond_74

    .line 472
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    if-nez v0, :cond_10

    .line 473
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    .line 475
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v1, p2

    if-ge v0, v1, :cond_69

    .line 476
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    aget v2, p2, v0

    .line 477
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 478
    .local v1, "insetsSourceProvider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v1, :cond_44

    .line 479
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v2, :cond_44

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The local insets provider for this type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists. Overwriting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_44
    new-instance v2, Lcom/android/server/wm/RectInsetsSourceProvider;

    new-instance v3, Landroid/view/InsetsSource;

    aget v4, p2, v0

    invoke-direct {v3, v4}, Landroid/view/InsetsSource;-><init>(I)V

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 485
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wm/RectInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    move-object v1, v2

    .line 486
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    aget v3, p2, v0

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    move-object v2, v1

    check-cast v2, Lcom/android/server/wm/RectInsetsSourceProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RectInsetsSourceProvider;->setRect(Landroid/graphics/Rect;)V

    .line 475
    .end local v1    # "insetsSourceProvider":Lcom/android/server/wm/InsetsSourceProvider;
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 489
    .end local v0    # "i":I
    :cond_69
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    .line 490
    return-void

    .line 470
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Insets type not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addTrustedOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;Lcom/android/server/wm/WindowState;)V
    .registers 11
    .param p1, "overlay"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .param p2, "initialWindowState"    # Lcom/android/server/wm/WindowState;

    .line 4271
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-nez v0, :cond_d

    .line 4272
    new-instance v0, Lcom/android/server/wm/TrustedOverlayHost;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TrustedOverlayHost;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 4274
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TrustedOverlayHost;->addOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;Landroid/view/SurfaceControl;)V

    .line 4280
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_16
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/ISurfaceControlViewHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_21} :catch_22

    .line 4285
    goto :goto_35

    .line 4281
    :catch_22
    move-exception v2

    .line 4282
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v3, :cond_32

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x1e9da14

    move-object v5, v1

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4284
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeTrustedOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 4289
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_35
    if-eqz p2, :cond_5a

    .line 4290
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    .line 4291
    .local v2, "insetsState":Landroid/view/InsetsState;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 4293
    .local v3, "dispBounds":Landroid/graphics/Rect;
    :try_start_3f
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/view/ISurfaceControlViewHost;->onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_46} :catch_47

    .line 4298
    goto :goto_5a

    .line 4294
    :catch_47
    move-exception v4

    .line 4295
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v5, :cond_57

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x4cd35f54    # 1.1082E8f

    move-object v7, v1

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v0, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4297
    :cond_57
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeTrustedOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 4300
    .end local v2    # "insetsState":Landroid/view/InsetsState;
    .end local v3    # "dispBounds":Landroid/graphics/Rect;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5a
    :goto_5a
    return-void
.end method

.method allSyncFinished()Z
    .registers 6

    .line 4084
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 4085
    :cond_8
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_f

    return v3

    .line 4086
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_16
    if-ltz v0, :cond_2a

    .line 4087
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 4088
    .local v2, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->allSyncFinished()Z

    move-result v4

    if-nez v4, :cond_27

    return v3

    .line 4086
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 4090
    .end local v0    # "i":I
    :cond_2a
    return v1
.end method

.method applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z
    .registers 21
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "isVoiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "IZZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)Z"
        }
    .end annotation

    .line 3040
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p5, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    move-object v7, p0

    move-object/from16 v8, p5

    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_24

    .line 3041
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v0, :cond_20

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x1f901cf

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {v4, v5, v3, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3044
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 3045
    return v3

    .line 3048
    :cond_24
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    if-eqz v0, :cond_4f

    if-eqz p3, :cond_4f

    if-eqz v8, :cond_4f

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 3049
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-interface {v0, v4}, Lcom/android/server/wm/MiuiCvwGestureControllerStub;->needFreezeHomeAppTransitionOnce(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 3050
    const-string v0, "WindowManager"

    const-string v1, "Debug applyAnimation needFreezeHomeAppTransitionOnce"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 3052
    return v3

    .line 3058
    :cond_4f
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    move/from16 v9, p2

    invoke-virtual {v0, p0, v9}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->shouldSkipApplyAnimation(Lcom/android/server/wm/WindowContainer;I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 3059
    return v3

    .line 3067
    :cond_5c
    const-wide/16 v10, 0x20

    :try_start_5e
    const-string v0, "WC#applyAnimation"

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3068
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 3069
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v0, :cond_93

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "protoLogParam0":Ljava/lang/String;
    move/from16 v4, p3

    .local v4, "protoLogParam1":Z
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam2":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x29caf6b6

    const/16 v13, 0xc

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v0, v14, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v14, v1

    const/4 v1, 0x2

    aput-object v5, v14, v1

    invoke-static {v6, v12, v13, v2, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3072
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Z
    .end local v5    # "protoLogParam2":Ljava/lang/String;
    :cond_93
    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V

    goto :goto_a5

    .line 3074
    :cond_a2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V
    :try_end_a5
    .catchall {:try_start_5e .. :try_end_a5} :catchall_ae

    .line 3077
    :goto_a5
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 3078
    nop

    .line 3080
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v0

    return v0

    .line 3077
    :catchall_ae
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 3078
    throw v0
.end method

.method protected applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V
    .registers 24
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "enter"    # Z
    .param p3, "transit"    # I
    .param p4, "isVoiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "ZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 3325
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p5, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 3326
    .local v4, "task":Lcom/android/server/wm/Task;
    const/4 v5, 0x1

    if-eqz v4, :cond_40

    if-nez v1, :cond_40

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isActivityTypeHomeOrRecents()Z

    move-result v6

    if-nez v6, :cond_40

    .line 3327
    iget-object v6, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    .line 3328
    .local v6, "imeTarget":Lcom/android/server/wm/InsetsControlTarget;
    if-eqz v6, :cond_32

    invoke-interface {v6}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v8

    if-eqz v8, :cond_32

    .line 3329
    invoke-interface {v6}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-ne v8, v4, :cond_32

    move v7, v5

    goto :goto_33

    :cond_32
    nop

    .line 3332
    .local v7, "isImeLayeringTarget":Z
    :goto_33
    if-eqz v7, :cond_40

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/AppTransition;->isTaskCloseTransitOld(I)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 3333
    iget-object v8, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->showImeScreenshot()V

    .line 3336
    .end local v6    # "imeTarget":Lcom/android/server/wm/InsetsControlTarget;
    .end local v7    # "isImeLayeringTarget":Z
    :cond_40
    move-object/from16 v6, p1

    move/from16 v7, p4

    invoke-virtual {v0, v6, v2, v1, v7}, Lcom/android/server/wm/WindowContainer;->getAnimationAdapter(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/util/Pair;

    move-result-object v8

    .line 3338
    .local v8, "adapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/wm/AnimationAdapter;

    .line 3339
    .local v9, "adapter":Lcom/android/server/wm/AnimationAdapter;
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v16, v10

    check-cast v16, Lcom/android/server/wm/AnimationAdapter;

    .line 3340
    .local v16, "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    if-eqz v9, :cond_f2

    .line 3341
    if-eqz v3, :cond_5b

    .line 3342
    iget-object v10, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 3345
    :cond_5b
    const/16 v10, 0x32

    if-eq v2, v10, :cond_63

    const/16 v10, 0x33

    if-ne v2, v10, :cond_65

    .line 3347
    :cond_63
    iput-boolean v5, v0, Lcom/android/server/wm/WindowContainer;->mInFloatWindowAnimation:Z

    .line 3350
    :cond_65
    new-instance v10, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder-IA;)V

    move-object v15, v10

    .line 3352
    .local v15, "animationRunnerBuilder":Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;, "Lcom/android/server/wm/WindowContainer<TE;>.AnimationRunnerBuilder;"
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/AppTransition;->isTaskTransitOld(I)Z

    move-result v10

    if-eqz v10, :cond_98

    .line 3354
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->inFreeformSmallWinMode()Z

    move-result v10

    if-nez v10, :cond_98

    .line 3355
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/wm/ActivityRecordStub;->isCompatibilityMode()Z

    move-result v10

    if-eqz v10, :cond_98

    .line 3356
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getTaskAnimationBackgroundColor()I

    move-result v10

    invoke-static {v15, v10}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->-$$Nest$msetTaskBackgroundColor(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;I)V

    .line 3358
    iget-object v10, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mTaskTransitionSpec:Landroid/view/TaskTransitionSpec;

    if-eqz v10, :cond_98

    .line 3359
    iget-object v10, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mTaskTransitionSpec:Landroid/view/TaskTransitionSpec;

    iget-object v10, v10, Landroid/view/TaskTransitionSpec;->animationBoundInsets:Ljava/util/Set;

    invoke-static {v15, v10}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->-$$Nest$mhideInsetSourceViewOverflows(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;Ljava/util/Set;)V

    .line 3364
    :cond_98
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v17

    .line 3365
    .local v17, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v17, :cond_cc

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/AppTransition;->isActivityTransitOld(I)Z

    move-result v10

    if-eqz v10, :cond_cc

    .line 3366
    invoke-interface {v9}, Lcom/android/server/wm/AnimationAdapter;->getShowBackground()Z

    move-result v10

    if-eqz v10, :cond_cc

    .line 3368
    invoke-interface {v9}, Lcom/android/server/wm/AnimationAdapter;->getBackgroundColor()I

    move-result v10

    if-eqz v10, :cond_b5

    .line 3371
    invoke-interface {v9}, Lcom/android/server/wm/AnimationAdapter;->getBackgroundColor()I

    move-result v10

    .local v10, "backgroundColorForTransition":I
    goto :goto_c9

    .line 3376
    .end local v10    # "backgroundColorForTransition":I
    :cond_b5
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 3377
    .local v10, "arTask":Lcom/android/server/wm/Task;
    nop

    .line 3378
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v11

    const/16 v12, 0xff

    .line 3377
    invoke-static {v11, v12}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    move v10, v11

    .line 3380
    .local v10, "backgroundColorForTransition":I
    :goto_c9
    invoke-static {v15, v10}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->-$$Nest$msetTaskBackgroundColor(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;I)V

    .line 3383
    .end local v10    # "backgroundColorForTransition":I
    :cond_cc
    invoke-static {v15}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->-$$Nest$mbuild(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;)Lcom/android/server/wm/WindowContainer$IAnimationStarter;

    move-result-object v10

    .line 3384
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v12

    xor-int/lit8 v13, v12, 0x1

    const/4 v14, 0x1

    move-object v12, v9

    move-object v5, v15

    .end local v15    # "animationRunnerBuilder":Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;, "Lcom/android/server/wm/WindowContainer<TE;>.AnimationRunnerBuilder;"
    .local v5, "animationRunnerBuilder":Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;, "Lcom/android/server/wm/WindowContainer<TE;>.AnimationRunnerBuilder;"
    move-object/from16 v15, v16

    invoke-interface/range {v10 .. v15}, Lcom/android/server/wm/WindowContainer$IAnimationStarter;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/AnimationAdapter;)V

    .line 3387
    invoke-interface {v9}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result v10

    if-eqz v10, :cond_f2

    .line 3388
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    iget v11, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3391
    .end local v5    # "animationRunnerBuilder":Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;, "Lcom/android/server/wm/WindowContainer<TE;>.AnimationRunnerBuilder;"
    .end local v17    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_f2
    return-void
.end method

.method applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V
    .registers 10
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .line 2798
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->shouldMagnify()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2799
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p2, Landroid/view/MagnificationSpec;->scale:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p2, Landroid/view/MagnificationSpec;->scale:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v3, p2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 2800
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 2801
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mLastMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_39

    .line 2803
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V

    .line 2804
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 2805
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 2804
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 2808
    .end local v0    # "i":I
    :cond_39
    :goto_39
    return-void
.end method

.method asActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 3867
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method asDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 2

    .line 3877
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method asDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 3892
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;
    .registers 2

    .line 3882
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method asTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 3847
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 2

    .line 3887
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method asTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 2

    .line 3852
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;
    .registers 2

    .line 3872
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method asWindowState()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 3862
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method asWindowToken()Lcom/android/server/wm/WindowToken;
    .registers 2

    .line 3857
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method assignChildLayers()V
    .registers 2

    .line 2703
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 2704
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 2705
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2680
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .line 2684
    .local v0, "layer":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 2685
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 2686
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 2687
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v3

    if-nez v3, :cond_21

    .line 2688
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "layer":I
    .local v3, "layer":I
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move v0, v3

    .line 2684
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "layer":I
    .restart local v0    # "layer":I
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2691
    .end local v1    # "j":I
    :cond_24
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_25
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 2692
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 2693
    .restart local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2694
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "layer":I
    .restart local v3    # "layer":I
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move v0, v3

    .line 2691
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "layer":I
    .restart local v0    # "layer":I
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 2697
    .end local v1    # "j":I
    :cond_44
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz v1, :cond_4e

    .line 2698
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "layer":I
    .local v2, "layer":I
    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/TrustedOverlayHost;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move v0, v2

    .line 2700
    .end local v2    # "layer":I
    .restart local v0    # "layer":I
    :cond_4e
    return-void
.end method

.method assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 2622
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2623
    :cond_9
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    if-ne p2, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 2624
    .local v0, "changed":Z
    :goto_15
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    .line 2625
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 2626
    iput p2, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 2627
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 2629
    :cond_23
    return-void
.end method

.method assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I

    .line 2642
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    .line 2643
    return-void
.end method

.method assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V
    .registers 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I
    .param p4, "forceUpdate"    # Z

    .line 2633
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    if-ne p3, v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eq v0, p2, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 2634
    .local v0, "changed":Z
    :goto_c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1b

    if-nez v0, :cond_14

    if-eqz p4, :cond_1b

    .line 2635
    :cond_14
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 2636
    iput p3, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 2637
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 2639
    :cond_1b
    return-void
.end method

.method canBeAnimationTarget()Z
    .registers 2

    .line 3500
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method canCreateRemoteAnimationTarget()Z
    .registers 2

    .line 3492
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method canCustomizeAppTransition()Z
    .registers 2

    .line 1186
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method canStartChangeTransition()Z
    .registers 2

    .line 2943
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_42

    .line 2944
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->inTransition()Z

    move-result v0

    if-nez v0, :cond_42

    .line 2945
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2947
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 2948
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    .line 2943
    :goto_43
    return v0
.end method

.method canStartChangeTransition(Z)Z
    .registers 3
    .param p1, "ignoreVisibleRequest"    # Z

    .line 4419
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_2e

    .line 4420
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->inTransition()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 4421
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-nez p1, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 4419
    :goto_2f
    return v0
.end method

.method cancelAnimation()V
    .registers 3

    .line 2934
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->clearTransitionDimmer()V

    .line 2935
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->clearTransitionAnimationDimmer()V

    .line 2936
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimationType()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->doAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 2937
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 2938
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 2939
    return-void
.end method

.method checkAppWindowsReadyToShow()V
    .registers 3

    .line 1447
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1448
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1449
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->checkAppWindowsReadyToShow()V

    .line 1447
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1451
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V
    .registers 9
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2811
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_17

    .line 2812
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2813
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 2815
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 2816
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 2817
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V

    .line 2816
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 2819
    .end local v0    # "i":I
    :cond_31
    return-void
.end method

.method clearSyncState()V
    .registers 2

    .line 4042
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 4043
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 4044
    return-void
.end method

.method clearTransitionAnimationDimmer()V
    .registers 3

    .line 3314
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mAnimationDimmer:Landroid/view/animation/Animation;

    if-nez v0, :cond_5

    .line 3315
    return-void

    .line 3317
    :cond_5
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mAnimationDimmer:Landroid/view/animation/Animation;

    invoke-interface {v0, v1, p0}, Lcom/android/server/wm/AppTransitionStub;->stopAnimationDimmer(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowContainer;)V

    .line 3318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mAnimationDimmer:Landroid/view/animation/Animation;

    .line 3319
    return-void
.end method

.method clearTransitionDimmer()V
    .registers 3

    .line 3478
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSplitDimmer:Landroid/view/animation/Animation;

    if-nez v0, :cond_5

    .line 3479
    return-void

    .line 3481
    :cond_5
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSplitDimmer:Landroid/view/animation/Animation;

    invoke-interface {v0, v1, p0}, Lcom/android/server/wm/AppTransitionStub;->stopSplitDimmer(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowContainer;)V

    .line 3482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSplitDimmer:Landroid/view/animation/Animation;

    .line 3483
    return-void
.end method

.method public commitPendingTransaction()V
    .registers 1

    .line 3519
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 3520
    return-void
.end method

.method public compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 12
    .param p1, "other"    # Lcom/android/server/wm/WindowContainer;

    .line 2507
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    if-ne p0, p1, :cond_4

    .line 2508
    const/4 v0, 0x0

    return v0

    .line 2511
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1d

    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-ne v0, v3, :cond_1d

    .line 2512
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2513
    .local v0, "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-le v3, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1

    .line 2516
    .end local v0    # "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 2517
    .local v0, "thisParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 2519
    .local v3, "otherParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    :try_start_21
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContainer;->getParents(Ljava/util/LinkedList;)V

    .line 2520
    invoke-direct {p1, v3}, Lcom/android/server/wm/WindowContainer;->getParents(Ljava/util/LinkedList;)V

    .line 2523
    const/4 v4, 0x0

    .line 2524
    .local v4, "commonAncestor":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 2525
    .local v5, "thisTop":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 2526
    .local v6, "otherTop":Lcom/android/server/wm/WindowContainer;
    :goto_34
    if-eqz v5, :cond_53

    if-eqz v6, :cond_53

    if-ne v5, v6, :cond_53

    .line 2527
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    move-object v4, v7

    .line 2528
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 2529
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    move-object v5, v7

    .line 2530
    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;
    :try_end_51
    .catchall {:try_start_21 .. :try_end_51} :catchall_b5

    move-object v6, v7

    goto :goto_34

    .line 2534
    :cond_53
    if-eqz v4, :cond_92

    .line 2541
    if-ne v4, p0, :cond_63

    .line 2542
    nop

    .line 2553
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 2554
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 2542
    return v2

    .line 2543
    :cond_63
    if-ne v4, p1, :cond_71

    .line 2544
    nop

    .line 2553
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 2554
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 2544
    return v1

    .line 2549
    :cond_71
    :try_start_71
    iget-object v7, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2550
    .local v7, "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v9
    :try_end_83
    .catchall {:try_start_71 .. :try_end_83} :catchall_b5

    if-le v8, v9, :cond_86

    .line 2551
    goto :goto_87

    :cond_86
    move v1, v2

    .line 2553
    :goto_87
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 2554
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 2550
    return v1

    .line 2535
    .end local v7    # "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    :cond_92
    :try_start_92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No in the same hierarchy this="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " other="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "thisParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    .end local v3    # "otherParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    .end local p0    # "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .end local p1    # "other":Lcom/android/server/wm/WindowContainer;
    throw v1
    :try_end_b5
    .catchall {:try_start_92 .. :try_end_b5} :catchall_b5

    .line 2553
    .end local v4    # "commonAncestor":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "thisTop":Lcom/android/server/wm/WindowContainer;
    .end local v6    # "otherTop":Lcom/android/server/wm/WindowContainer;
    .restart local v0    # "thisParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v3    # "otherParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    .restart local p0    # "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .restart local p1    # "other":Lcom/android/server/wm/WindowContainer;
    :catchall_b5
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 2554
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 2555
    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 151
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    check-cast p1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .registers 3
    .param p1, "record"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 3488
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method createSurfaceControl(Z)V
    .registers 3
    .param p1, "force"    # Z

    .line 663
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 664
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 3704
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3705
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ContainerAnimator:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3706
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/SurfaceAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3708
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p0, v0, :cond_6a

    .line 3709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastOrientationSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deepestLastOrientationSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3712
    :cond_6a
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 14
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 2730
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    .line 2731
    .local v0, "isVisible":Z
    const/4 v1, 0x2

    if-ne p4, v1, :cond_a

    if-nez v0, :cond_a

    .line 2732
    return-void

    .line 2735
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 2736
    .local v1, "token":J
    const-wide v3, 0x10b00000001L

    invoke-super {p0, p1, v3, v4, p4}, Lcom/android/server/wm/ConfigurationContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2737
    const-wide v3, 0x10500000002L

    iget v5, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2738
    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2739
    const-wide v3, 0x10b00000006L

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wm/WindowContainer;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2740
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2741
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const-wide v4, 0x10b00000004L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/SurfaceAnimator;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2743
    :cond_42
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_4e

    .line 2744
    const-wide v4, 0x10b00000007L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2748
    :cond_4e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_6f

    .line 2749
    const-wide v4, 0x20b00000005L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2750
    .local v4, "childToken":J
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 2751
    .local v6, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getProtoFieldId()J

    move-result-wide v7

    invoke-virtual {v6, p1, v7, v8, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2752
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2748
    .end local v4    # "childToken":J
    .end local v6    # "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 2754
    .end local v3    # "i":I
    :cond_6f
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2755
    return-void
.end method

.method endDelayingAnimationStart()V
    .registers 2

    .line 3689
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->endDelayingAnimationStart()V

    .line 3690
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 1721
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method finishSync(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 13
    .param p1, "outMergedTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "cancel"    # Z

    .line 4031
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_5

    return-void

    .line 4032
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    move v0, p2

    .local v0, "protoLogParam0":Z
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x161fa956

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v2, v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4033
    .end local v0    # "protoLogParam0":Z
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 4034
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_31
    if-ltz v0, :cond_41

    .line 4035
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 4034
    add-int/lit8 v0, v0, -0x1

    goto :goto_31

    .line 4037
    .end local v0    # "i":I
    :cond_41
    if-eqz p2, :cond_4a

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    if-eqz v0, :cond_4a

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->onCancelSync(Lcom/android/server/wm/WindowContainer;)V

    .line 4038
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->clearSyncState()V

    .line 4039
    return-void
.end method

.method forAllActivities(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 1797
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 1798
    return-void
.end method

.method forAllActivities(Ljava/util/function/Consumer;Z)V
    .registers 6
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    .line 1801
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    if-eqz p2, :cond_1b

    .line 1802
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_1a

    .line 1803
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 1802
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .end local v0    # "i":I
    :cond_1a
    goto :goto_32

    .line 1806
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1807
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    if-ge v1, v0, :cond_32

    .line 1808
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 1807
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1811
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_32
    :goto_32
    return-void
.end method

.method forAllActivities(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1778
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result v0

    return v0
.end method

.method final forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z
    .registers 12
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ)Z"
        }
    .end annotation

    .line 1825
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x1

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Z

    move-result v0

    return v0
.end method

.method forAllActivities(Ljava/util/function/Predicate;Z)Z
    .registers 7
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)Z"
        }
    .end annotation

    .line 1782
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_1f

    .line 1783
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1e

    .line 1784
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    return v0

    .line 1783
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .end local v1    # "i":I
    :cond_1e
    goto :goto_3a

    .line 1787
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 1788
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, v1, :cond_3a

    .line 1789
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result v3

    if-eqz v3, :cond_37

    return v0

    .line 1788
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1793
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    return v0
.end method

.method forAllDisplayAreas(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;)V"
        }
    .end annotation

    .line 2337
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayArea;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2338
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 2337
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2340
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V
    .registers 6
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    .line 2140
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskFragment;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2141
    .local v0, "count":I
    if-eqz p2, :cond_1b

    .line 2142
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1a

    .line 2143
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 2142
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .end local v1    # "i":I
    :cond_1a
    goto :goto_2c

    .line 2146
    :cond_1b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1c
    if-ge v1, v0, :cond_2c

    .line 2147
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 2146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 2150
    .end local v1    # "i":I
    :cond_2c
    :goto_2c
    return-void
.end method

.method forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;)Z"
        }
    .end annotation

    .line 2041
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/TaskFragment;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 2042
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2043
    return v1

    .line 2041
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2046
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .registers 6
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 2127
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2128
    .local v0, "count":I
    if-eqz p2, :cond_1b

    .line 2129
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1a

    .line 2130
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2129
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .end local v1    # "i":I
    :cond_1a
    goto :goto_2c

    .line 2133
    :cond_1b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1c
    if-ge v1, v0, :cond_2c

    .line 2134
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 2137
    .end local v1    # "i":I
    :cond_2c
    :goto_2c
    return-void
.end method

.method forAllLeafTasks(Ljava/util/function/Predicate;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)Z"
        }
    .end annotation

    .line 2032
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 2033
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2034
    return v1

    .line 2032
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2037
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method forAllRootTasks(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 2158
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 2159
    return-void
.end method

.method forAllRootTasks(Ljava/util/function/Consumer;Z)V
    .registers 7
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 2162
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2163
    .local v0, "count":I
    if-eqz p2, :cond_1b

    .line 2164
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1a

    .line 2165
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 2164
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .end local v1    # "i":I
    :cond_1a
    goto :goto_36

    .line 2168
    :cond_1b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1c
    if-ge v1, v0, :cond_36

    .line 2169
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 2172
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 2173
    .local v2, "newCount":I
    sub-int v3, v0, v2

    sub-int/2addr v1, v3

    .line 2174
    move v0, v2

    .line 2168
    .end local v2    # "newCount":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 2177
    .end local v1    # "i":I
    :cond_36
    :goto_36
    return-void
.end method

.method forAllRootTasks(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)Z"
        }
    .end annotation

    .line 2056
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;Z)Z

    move-result v0

    return v0
.end method

.method forAllRootTasks(Ljava/util/function/Predicate;Z)Z
    .registers 8
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)Z"
        }
    .end annotation

    .line 2060
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2061
    .local v0, "count":I
    const/4 v1, 0x1

    if-eqz p2, :cond_20

    .line 2062
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_1f

    .line 2063
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2064
    return v1

    .line 2062
    :cond_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .end local v2    # "i":I
    :cond_1f
    goto :goto_3e

    .line 2068
    :cond_20
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_21
    if-ge v2, v0, :cond_3e

    .line 2069
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;Z)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2070
    return v1

    .line 2074
    :cond_32
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    .line 2075
    .local v3, "newCount":I
    sub-int v4, v0, v3

    sub-int/2addr v2, v4

    .line 2076
    move v0, v3

    .line 2068
    .end local v3    # "newCount":I
    add-int/2addr v2, v1

    goto :goto_21

    .line 2079
    .end local v2    # "i":I
    :cond_3e
    :goto_3e
    const/4 v1, 0x0

    return v1
.end method

.method forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;)V"
        }
    .end annotation

    .line 2397
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskDisplayArea;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    .line 2398
    return-void
.end method

.method forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V
    .registers 6
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)V"
        }
    .end annotation

    .line 2383
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskDisplayArea;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2384
    .local v0, "childCount":I
    if-eqz p2, :cond_b

    add-int/lit8 v1, v0, -0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 2385
    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_22

    if-ge v1, v0, :cond_22

    .line 2386
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    .line 2387
    if-eqz p2, :cond_1f

    const/4 v2, -0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x1

    :goto_20
    add-int/2addr v1, v2

    goto :goto_c

    .line 2389
    :cond_22
    return-void
.end method

.method forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;)Z"
        }
    .end annotation

    .line 2373
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/TaskDisplayArea;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result v0

    return v0
.end method

.method forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z
    .registers 8
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)Z"
        }
    .end annotation

    .line 2353
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/TaskDisplayArea;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2354
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-eqz p2, :cond_c

    add-int/lit8 v2, v0, -0x1

    goto :goto_d

    :cond_c
    move v2, v1

    .line 2355
    .local v2, "i":I
    :goto_d
    if-ltz v2, :cond_26

    if-ge v2, v0, :cond_26

    .line 2356
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_21

    .line 2357
    return v4

    .line 2359
    :cond_21
    if-eqz p2, :cond_24

    const/4 v4, -0x1

    :cond_24
    add-int/2addr v2, v4

    goto :goto_d

    .line 2361
    :cond_26
    return v1
.end method

.method forAllTaskFragments(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;)V"
        }
    .end annotation

    .line 2110
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskFragment;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 2111
    return-void
.end method

.method forAllTaskFragments(Ljava/util/function/Consumer;Z)V
    .registers 6
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    .line 2114
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskFragment;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2115
    .local v0, "count":I
    if-eqz p2, :cond_1b

    .line 2116
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1a

    .line 2117
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 2116
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .end local v1    # "i":I
    :cond_1a
    goto :goto_2c

    .line 2120
    :cond_1b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1c
    if-ge v1, v0, :cond_2c

    .line 2121
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 2120
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 2124
    .end local v1    # "i":I
    :cond_2c
    :goto_2c
    return-void
.end method

.method forAllTasks(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 2088
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 2089
    return-void
.end method

.method forAllTasks(Ljava/util/function/Consumer;Z)V
    .registers 6
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 2092
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2093
    .local v0, "count":I
    if-eqz p2, :cond_1b

    .line 2094
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1a

    .line 2095
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 2094
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .end local v1    # "i":I
    :cond_1a
    goto :goto_2c

    .line 2098
    :cond_1b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1c
    if-ge v1, v0, :cond_2c

    .line 2099
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 2098
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 2102
    .end local v1    # "i":I
    :cond_2c
    :goto_2c
    return-void
.end method

.method forAllTasks(Ljava/util/function/Predicate;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)Z"
        }
    .end annotation

    .line 2023
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 2024
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2025
    return v1

    .line 2023
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2028
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method forAllWallpaperWindows(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 2011
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WallpaperWindowToken;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2012
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllWallpaperWindows(Ljava/util/function/Consumer;)V

    .line 2011
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2014
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method forAllWindowContainers(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 1737
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WindowContainer;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1738
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1739
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 1740
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindowContainers(Ljava/util/function/Consumer;)V

    .line 1739
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1742
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method forAllWindows(Ljava/util/function/Consumer;Z)V
    .registers 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)V"
        }
    .end annotation

    .line 1772
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WindowState;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->obtainConsumerWrapper(Ljava/util/function/Consumer;)Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    move-result-object v0

    .line 1773
    .local v0, "wrapper":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 1774
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->release()V

    .line 1775
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 7
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 1754
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_1f

    .line 1755
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1e

    .line 1756
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1757
    return v0

    .line 1755
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .end local v1    # "i":I
    :cond_1e
    goto :goto_3a

    .line 1761
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 1762
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, v1, :cond_3a

    .line 1763
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1764
    return v0

    .line 1762
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1768
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    return v0
.end method

.method getActivities(Ljava/util/function/Predicate;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 4366
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getActivities(Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getActivities(Ljava/util/function/Predicate;Z)Ljava/util/List;
    .registers 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 4370
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->getActivities(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getActivities(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Ljava/util/List;
    .registers 9
    .param p2, "traverseTopToBottom"    # Z
    .param p3, "boundary"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z",
            "Lcom/android/server/wm/ActivityRecord;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 4375
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4376
    .local v0, "activityRecordList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    if-eqz p2, :cond_2c

    .line 4377
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_2b

    .line 4378
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 4380
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    if-ne v2, p3, :cond_1f

    .line 4381
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4382
    goto :goto_2b

    .line 4384
    :cond_1f
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4385
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_28

    .line 4386
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4377
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .end local v1    # "i":I
    :cond_2b
    :goto_2b
    goto :goto_4f

    .line 4390
    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 4391
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v1, :cond_4f

    .line 4392
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 4394
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    if-ne v3, p3, :cond_43

    .line 4395
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4396
    goto :goto_4f

    .line 4398
    :cond_43
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 4399
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_4c

    .line 4400
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4391
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 4404
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_4f
    :goto_4f
    return-object v0
.end method

.method getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1879
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 12
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1928
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x1

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1883
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 8
    .param p2, "traverseTopToBottom"    # Z
    .param p3, "boundary"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z",
            "Lcom/android/server/wm/ActivityRecord;",
            ")",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1888
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    if-eqz p2, :cond_22

    .line 1889
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_21

    .line 1890
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1892
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    if-ne v1, p3, :cond_17

    return-object p3

    .line 1894
    :cond_17
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1895
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1e

    .line 1896
    return-object v2

    .line 1889
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .end local v0    # "i":I
    :cond_21
    goto :goto_40

    .line 1900
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1901
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    if-ge v1, v0, :cond_40

    .line 1902
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1904
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    if-ne v2, p3, :cond_36

    return-object p3

    .line 1906
    :cond_36
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1907
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_3d

    .line 1908
    return-object v3

    .line 1901
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1913
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_40
    :goto_40
    const/4 v0, 0x0

    return-object v0
.end method

.method getActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1979
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda10;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1984
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda6;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final getAnimatingContainer()Lcom/android/server/wm/WindowContainer;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3675
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    return-object v0
.end method

.method getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;
    .registers 6
    .param p1, "flags"    # I
    .param p2, "typesToCheck"    # I

    .line 3630
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3631
    return-object p0

    .line 3633
    :cond_7
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1d

    .line 3634
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 3635
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    :goto_f
    if-eqz v0, :cond_1d

    .line 3636
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3637
    return-object v0

    .line 3639
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_f

    .line 3642
    .end local v0    # "parent":Lcom/android/server/wm/WindowContainer;
    :cond_1d
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3e

    .line 3643
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 3644
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    and-int/lit8 v2, p1, -0x3

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 3646
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_3b

    .line 3647
    return-object v1

    .line 3643
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 3651
    .end local v0    # "i":I
    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method getAnimation()Lcom/android/server/wm/AnimationAdapter;
    .registers 2

    .line 3600
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    return-object v0
.end method

.method getAnimationAdapter(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/util/Pair;
    .registers 32
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "isVoiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "IZZ)",
            "Landroid/util/Pair<",
            "Lcom/android/server/wm/AnimationAdapter;",
            "Lcom/android/server/wm/AnimationAdapter;",
            ">;"
        }
    .end annotation

    .line 3096
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppRootTaskClipMode()I

    move-result v15

    .line 3099
    .local v15, "appRootTaskClipMode":I
    invoke-virtual {v6, v15}, Lcom/android/server/wm/WindowContainer;->getAnimationBounds(I)Landroid/graphics/Rect;

    move-result-object v14

    .line 3100
    .local v14, "screenBounds":Landroid/graphics/Rect;
    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3101
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isTaskTransitOld(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3102
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->adjustAnimationBoundsForTransition(Landroid/graphics/Rect;)V

    .line 3104
    :cond_2e
    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowContainer;->getAnimationPosition(Landroid/graphics/Point;)V

    .line 3105
    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3107
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3108
    .local v0, "scale":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->inFreeformSmallWinMode()Z

    move-result v1

    const/16 v2, 0x32

    const/16 v3, 0x33

    if-eqz v1, :cond_c9

    if-eq v7, v3, :cond_4d

    if-eq v2, v7, :cond_4d

    const/16 v1, 0x1b

    if-ne v1, v7, :cond_c9

    .line 3111
    :cond_4d
    instance-of v1, v6, Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_8e

    .line 3112
    move-object v1, v6

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3113
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_8b

    .line 3114
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v4

    .line 3115
    .local v4, "rootTaskId":I
    iget-object v5, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    .line 3116
    invoke-interface {v5, v4}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v5

    .line 3117
    .local v5, "freemAs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v5, :cond_8b

    .line 3118
    iget-object v9, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v5}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 3119
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v5}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 3118
    invoke-virtual {v9, v13, v13, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 3120
    invoke-virtual {v5}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v0

    .line 3123
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "rootTaskId":I
    .end local v5    # "freemAs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_8b
    move/from16 v17, v0

    goto :goto_cb

    :cond_8e
    instance-of v1, v6, Lcom/android/server/wm/Task;

    if-eqz v1, :cond_c9

    .line 3124
    move-object v1, v6

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    .line 3125
    .local v1, "rootTaskId":I
    iget-object v4, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    .line 3126
    invoke-interface {v4, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v4

    .line 3127
    .local v4, "freemAs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v4, :cond_c9

    .line 3128
    iget-object v5, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget-object v10, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 3129
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 3128
    invoke-virtual {v5, v13, v13, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 3130
    invoke-virtual {v4}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v0

    move/from16 v17, v0

    goto :goto_cb

    .line 3136
    .end local v1    # "rootTaskId":I
    .end local v4    # "freemAs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_c9
    move/from16 v17, v0

    .end local v0    # "scale":F
    .local v17, "scale":F
    :goto_cb
    nop

    .line 3137
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v18

    .line 3138
    .local v18, "controller":Lcom/android/server/wm/RemoteAnimationController;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isChangeTransitOld(I)Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_e7

    if-eqz v8, :cond_e7

    .line 3139
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_e7

    move v0, v12

    goto :goto_e8

    :cond_e7
    move v0, v13

    :goto_e8
    move/from16 v19, v0

    .line 3142
    .local v19, "isChanging":Z
    const/4 v0, 0x0

    if-eqz v18, :cond_133

    iget-object v1, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->isAnimationStartDelayed()Z

    move-result v1

    if-nez v1, :cond_133

    .line 3143
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v9, v1

    .line 3144
    .local v9, "localBounds":Landroid/graphics/Rect;
    iget-object v1, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3145
    iget-object v2, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    .line 3147
    if-eqz v19, :cond_110

    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v0, v0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    :cond_110
    move-object v5, v0

    .line 3146
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v3, v9

    move-object v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RemoteAnimationController;->createRemoteAnimationRecord(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    move-result-object v0

    .line 3148
    .local v0, "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    if-nez v19, :cond_124

    .line 3149
    if-eqz v8, :cond_120

    .line 3150
    goto :goto_121

    .line 3151
    :cond_120
    move v13, v12

    .line 3149
    :goto_121
    invoke-virtual {v0, v13}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->setMode(I)V

    .line 3153
    :cond_124
    new-instance v1, Landroid/util/Pair;

    iget-object v2, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v3, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 3154
    .end local v9    # "localBounds":Landroid/graphics/Rect;
    .local v0, "resultAdapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    move-object v5, v14

    move/from16 v20, v15

    goto/16 :goto_330

    .end local v0    # "resultAdapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    :cond_133
    if-eqz v19, :cond_1b6

    .line 3155
    iget-object v1, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v1

    .line 3156
    .local v1, "durationScale":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 3157
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v3, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3159
    new-instance v3, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v4, Lcom/android/server/wm/WindowChangeAnimationSpec;

    iget-object v5, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v5, v5, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    iget-object v9, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v9

    move-object/from16 v23, v2

    move/from16 v24, v1

    invoke-direct/range {v20 .. v26}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V

    .line 3163
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 3165
    .local v3, "adapter":Lcom/android/server/wm/AnimationAdapter;
    iget-object v4, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v4, v4, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    if-eqz v4, :cond_19b

    .line 3166
    new-instance v0, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v4, Lcom/android/server/wm/WindowChangeAnimationSpec;

    iget-object v5, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v5, v5, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    iget-object v9, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v9

    move-object/from16 v23, v2

    move/from16 v24, v1

    invoke-direct/range {v20 .. v26}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V

    .line 3168
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    goto :goto_19c

    .line 3169
    :cond_19b
    nop

    :goto_19c
    nop

    .line 3170
    .local v0, "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3171
    .local v4, "resultAdapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    iput v7, v6, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 3172
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v5

    iput v5, v6, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    .line 3173
    .end local v0    # "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    .end local v1    # "durationScale":F
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    move-object v0, v4

    move-object v5, v14

    move/from16 v20, v15

    goto/16 :goto_330

    .line 3174
    .end local v4    # "resultAdapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    :cond_1b6
    if-nez v15, :cond_1ba

    move v1, v12

    goto :goto_1bb

    :cond_1ba
    move v1, v13

    :goto_1bb
    iput-boolean v1, v6, Lcom/android/server/wm/WindowContainer;->mNeedsAnimationBoundsLayer:Z

    .line 3175
    invoke-direct/range {p0 .. p4}, Lcom/android/server/wm/WindowContainer;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3177
    .local v1, "a":Landroid/view/animation/Animation;
    if-eqz v1, :cond_327

    .line 3184
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->inMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_1d2

    .line 3185
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getWindowCornerRadius()F

    move-result v4

    goto :goto_1d3

    .line 3186
    :cond_1d2
    const/4 v4, 0x0

    :goto_1d3
    nop

    .line 3188
    .local v4, "windowCornerRadius":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->inFreeformSmallWinMode()Z

    move-result v5

    if-eqz v5, :cond_1e4

    if-eq v7, v3, :cond_1de

    if-ne v2, v7, :cond_1e4

    .line 3190
    :cond_1de
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeformRoundCorner()F

    move-result v2

    mul-float v4, v2, v17

    .line 3192
    :cond_1e4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->clearTransitionDimmer()V

    .line 3193
    instance-of v2, v1, Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_218

    .line 3194
    move-object v2, v1

    check-cast v2, Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    .line 3195
    .local v2, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    if-eqz v2, :cond_217

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_217

    .line 3196
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1fb
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_217

    .line 3197
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    .line 3198
    .local v5, "animation":Landroid/view/animation/Animation;
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v9

    .line 3199
    invoke-interface {v9, v5, v6}, Lcom/android/server/wm/AppTransitionStub;->dimSplitDimmerAboveIfNeeded(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v6, Lcom/android/server/wm/WindowContainer;->mSplitDimmer:Landroid/view/animation/Animation;

    .line 3200
    if-eqz v9, :cond_214

    .line 3201
    goto :goto_217

    .line 3196
    .end local v5    # "animation":Landroid/view/animation/Animation;
    :cond_214
    add-int/lit8 v3, v3, 0x1

    goto :goto_1fb

    .line 3205
    .end local v2    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v3    # "i":I
    :cond_217
    :goto_217
    goto :goto_222

    .line 3206
    :cond_218
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v2

    invoke-interface {v2, v1, v6}, Lcom/android/server/wm/AppTransitionStub;->dimSplitDimmerAboveIfNeeded(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v6, Lcom/android/server/wm/WindowContainer;->mSplitDimmer:Landroid/view/animation/Animation;

    .line 3216
    :goto_222
    new-instance v2, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v11, v6, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget-object v3, v6, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 3218
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v5

    const/16 v16, 0x1

    move-object v9, v2

    move-object v10, v1

    move-object v12, v3

    move v3, v13

    move v13, v5

    move-object v5, v14

    .end local v14    # "screenBounds":Landroid/graphics/Rect;
    .local v5, "screenBounds":Landroid/graphics/Rect;
    move v14, v15

    move/from16 v20, v15

    .end local v15    # "appRootTaskClipMode":I
    .local v20, "appRootTaskClipMode":I
    move/from16 v15, v16

    move/from16 v16, v4

    invoke-direct/range {v9 .. v16}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V

    .line 3223
    .local v2, "spec":Lcom/android/server/wm/WindowAnimationSpec;
    new-instance v9, Lcom/android/server/wm/LocalAnimationAdapter;

    .line 3224
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 3226
    .local v9, "adapter":Lcom/android/server/wm/AnimationAdapter;
    nop

    .line 3227
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 3228
    invoke-virtual {v10}, Lcom/android/server/wm/AppTransition;->shouldActivityTransitionRoundCorner()Z

    move-result v10

    iput-boolean v10, v2, Lcom/android/server/wm/WindowAnimationSpec;->mShouldActivityTransitionRoundCorner:Z

    .line 3230
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    if-eqz v10, :cond_266

    .line 3231
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    iput-object v2, v10, Lcom/android/server/wm/ActivityRecord;->mWindowAnimationSpec:Lcom/android/server/wm/WindowAnimationSpec;

    .line 3236
    :cond_266
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->clearTransitionAnimationDimmer()V

    .line 3237
    invoke-direct {v6, v8, v7}, Lcom/android/server/wm/WindowContainer;->isAddDimmerForTransitionAnimation(ZI)Z

    move-result v10

    if-eqz v10, :cond_2aa

    .line 3238
    instance-of v10, v1, Landroid/view/animation/AnimationSet;

    if-eqz v10, :cond_2a0

    .line 3239
    move-object v10, v1

    check-cast v10, Landroid/view/animation/AnimationSet;

    invoke-virtual {v10}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v10

    .line 3240
    .local v10, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    if-eqz v10, :cond_29f

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_29f

    .line 3241
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_283
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_29f

    .line 3242
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/animation/Animation;

    .line 3243
    .local v12, "animation":Landroid/view/animation/Animation;
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v13

    .line 3244
    invoke-interface {v13, v12, v6}, Lcom/android/server/wm/AppTransitionStub;->dimAnimationDimmerAboveIfNeeded(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v13

    iput-object v13, v6, Lcom/android/server/wm/WindowContainer;->mAnimationDimmer:Landroid/view/animation/Animation;

    .line 3245
    if-eqz v13, :cond_29c

    .line 3246
    goto :goto_29f

    .line 3241
    .end local v12    # "animation":Landroid/view/animation/Animation;
    :cond_29c
    add-int/lit8 v11, v11, 0x1

    goto :goto_283

    .line 3250
    .end local v10    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v11    # "i":I
    :cond_29f
    :goto_29f
    goto :goto_2aa

    .line 3251
    :cond_2a0
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v10

    .line 3252
    invoke-interface {v10, v1, v6}, Lcom/android/server/wm/AppTransitionStub;->dimAnimationDimmerAboveIfNeeded(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/wm/WindowContainer;->mAnimationDimmer:Landroid/view/animation/Animation;

    .line 3258
    :cond_2aa
    :goto_2aa
    invoke-direct {v6, v8, v7}, Lcom/android/server/wm/WindowContainer;->isAddDimmerForFloatWindow(ZI)Z

    move-result v10

    if-eqz v10, :cond_2eb

    .line 3259
    instance-of v10, v1, Landroid/view/animation/AnimationSet;

    if-eqz v10, :cond_2e1

    .line 3260
    move-object v10, v1

    check-cast v10, Landroid/view/animation/AnimationSet;

    invoke-virtual {v10}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v10

    .line 3261
    .restart local v10    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    if-eqz v10, :cond_2e0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2e0

    .line 3262
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2c4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_2e0

    .line 3263
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/animation/Animation;

    .line 3264
    .restart local v12    # "animation":Landroid/view/animation/Animation;
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v13

    .line 3265
    invoke-interface {v13, v12, v6}, Lcom/android/server/wm/AppTransitionStub;->dimAnimationDimmerBelowIfNeeded(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v13

    iput-object v13, v6, Lcom/android/server/wm/WindowContainer;->mAnimationDimmer:Landroid/view/animation/Animation;

    .line 3266
    if-eqz v13, :cond_2dd

    .line 3267
    goto :goto_2e0

    .line 3262
    .end local v12    # "animation":Landroid/view/animation/Animation;
    :cond_2dd
    add-int/lit8 v11, v11, 0x1

    goto :goto_2c4

    .line 3271
    .end local v10    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v11    # "i":I
    :cond_2e0
    :goto_2e0
    goto :goto_2eb

    .line 3272
    :cond_2e1
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v10

    .line 3273
    invoke-interface {v10, v1, v6}, Lcom/android/server/wm/AppTransitionStub;->dimAnimationDimmerBelowIfNeeded(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/wm/WindowContainer;->mAnimationDimmer:Landroid/view/animation/Animation;

    .line 3279
    :cond_2eb
    :goto_2eb
    new-instance v10, Landroid/util/Pair;

    invoke-direct {v10, v9, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v10

    .line 3280
    .local v0, "resultAdapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_301

    .line 3281
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isClosingTransitOld(I)Z

    move-result v10

    if-eqz v10, :cond_2ff

    goto :goto_301

    :cond_2ff
    move v13, v3

    goto :goto_302

    :cond_301
    :goto_301
    move v13, v11

    :goto_302
    iput-boolean v13, v6, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 3283
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v10

    iget-boolean v11, v6, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    invoke-interface {v10, v11, v7, v8, v6}, Lcom/android/server/wm/AppTransitionStub;->updateAnimationZBoostIfNeed(ZIZLcom/android/server/wm/WindowContainer;)Z

    move-result v10

    iput-boolean v10, v6, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 3285
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getTaskAnimationLevelState()Z

    move-result v10

    if-eqz v10, :cond_318

    .line 3286
    iput-boolean v3, v6, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 3289
    :cond_318
    iput v7, v6, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 3290
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v3

    iput v3, v6, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    .line 3291
    .end local v2    # "spec":Lcom/android/server/wm/WindowAnimationSpec;
    .end local v4    # "windowCornerRadius":F
    .end local v9    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    goto :goto_330

    .line 3292
    .end local v0    # "resultAdapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    .end local v5    # "screenBounds":Landroid/graphics/Rect;
    .end local v20    # "appRootTaskClipMode":I
    .restart local v14    # "screenBounds":Landroid/graphics/Rect;
    .restart local v15    # "appRootTaskClipMode":I
    :cond_327
    move-object v5, v14

    move/from16 v20, v15

    .end local v14    # "screenBounds":Landroid/graphics/Rect;
    .end local v15    # "appRootTaskClipMode":I
    .restart local v5    # "screenBounds":Landroid/graphics/Rect;
    .restart local v20    # "appRootTaskClipMode":I
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 3295
    .end local v1    # "a":Landroid/view/animation/Animation;
    .restart local v0    # "resultAdapters":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/AnimationAdapter;>;"
    :goto_330
    return-object v0
.end method

.method getAnimationBounds(I)Landroid/graphics/Rect;
    .registers 3
    .param p1, "appRootTaskClipMode"    # I

    .line 3014
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "outFrame"    # Landroid/graphics/Rect;
    .param p2, "outInsets"    # Landroid/graphics/Rect;
    .param p3, "outStableInsets"    # Landroid/graphics/Rect;
    .param p4, "outSurfaceInsets"    # Landroid/graphics/Rect;

    .line 3797
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 3798
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v2, v0, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3799
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3800
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 3801
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 3802
    return-void
.end method

.method public getAnimationLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 3571
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mAnimationLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 3008
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAnimationPosition(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "outPosition"    # Landroid/graphics/Point;

    .line 3019
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 3020
    return-void
.end method

.method getAnimationSources()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation

    .line 2981
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    return-object v0
.end method

.method getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 1989
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda13;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getBottomMostTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 2189
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda11;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 151
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    return-object p1
.end method

.method protected getChildAt(I)Lcom/android/server/wm/WindowContainer;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 546
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method protected getChildCount()I
    .registers 2

    .line 541
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    return v0
.end method

.method getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;
    .registers 2

    .line 530
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 3831
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_6

    .line 3832
    const/4 v0, 0x0

    return-object v0

    .line 3834
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 3

    .line 1119
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1120
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 1113
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method getDistanceFromTop(Lcom/android/server/wm/WindowContainer;)I
    .registers 4
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 1958
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1959
    .local v0, "idx":I
    if-gez v0, :cond_a

    const/4 v1, -0x1

    goto :goto_13

    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    :goto_13
    return v1
.end method

.method public getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .registers 3

    .line 2987
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 2988
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_1b

    .line 2991
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 2989
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/DisplayArea;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 2452
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/DisplayArea;TR;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 2453
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 2454
    .local v1, "result":Ljava/lang/Object;, "TR;"
    if-eqz v1, :cond_19

    .line 2455
    return-object v1

    .line 2452
    .end local v1    # "result":Ljava/lang/Object;, "TR;"
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2458
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 2498
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/TaskDisplayArea;TR;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .registers 7
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;>;Z)TR;"
        }
    .end annotation

    .line 2474
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/TaskDisplayArea;TR;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2475
    .local v0, "childCount":I
    if-eqz p2, :cond_b

    add-int/lit8 v1, v0, -0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 2476
    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_26

    if-ge v1, v0, :cond_26

    .line 2477
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 2478
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v2

    .line 2479
    .local v2, "result":Ljava/lang/Object;, "TR;"
    if-eqz v2, :cond_1f

    .line 2480
    return-object v2

    .line 2482
    :cond_1f
    if-eqz p2, :cond_23

    const/4 v3, -0x1

    goto :goto_24

    :cond_23
    const/4 v3, 0x1

    :goto_24
    add-int/2addr v1, v3

    .line 2483
    .end local v2    # "result":Ljava/lang/Object;, "TR;"
    goto :goto_c

    .line 2484
    :cond_26
    const/4 v2, 0x0

    return-object v2
.end method

.method getLastLayer()I
    .registers 2

    .line 2658
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    return v0
.end method

.method getLastOrientationSource()Lcom/android/server/wm/WindowContainer;
    .registers 3

    .line 1698
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 1699
    .local v0, "source":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_d

    if-eq v0, p0, :cond_d

    .line 1700
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1701
    .local v1, "nextSource":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_d

    .line 1702
    return-object v1

    .line 1705
    .end local v1    # "nextSource":Lcom/android/server/wm/WindowContainer;
    :cond_d
    return-object v0
.end method

.method getLastSurfacePosition()Landroid/graphics/Point;
    .registers 2

    .line 3781
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMiuiConfigFlag()I
    .registers 2

    .line 4321
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mMiuiConfigFlag:I

    return v0
.end method

.method public getMiuiProjection()Z
    .registers 2

    .line 4337
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mProjectioned:Z

    return v0
.end method

.method getOrientation()I
    .registers 2

    .line 1609
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v0

    return v0
.end method

.method getOrientation(I)I
    .registers 19
    .param p1, "candidate"    # I

    .line 1624
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 1627
    const/4 v2, 0x0

    .line 1628
    .local v2, "isReverseAdaEmbed":Z
    instance-of v3, v0, Lcom/android/server/wm/TaskFragment;

    if-eqz v3, :cond_1f

    .line 1629
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 1630
    .local v3, "tf":Lcom/android/server/wm/TaskFragment;
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mMiuiEmbeddingEnabled:Z

    if-eqz v4, :cond_1f

    .line 1631
    const/4 v2, 0x1

    .line 1634
    .end local v3    # "tf":Lcom/android/server/wm/TaskFragment;
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->providesOrientation()Z

    move-result v3

    const/4 v4, -0x2

    if-nez v3, :cond_29

    if-nez v2, :cond_29

    .line 1636
    return v4

    .line 1640
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_3c

    if-nez v2, :cond_3c

    .line 1641
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->provideOrientationForMiuiEmbeddingDivider()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1642
    return v4

    .line 1650
    :cond_3c
    iget v3, v0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    const/4 v5, -0x1

    if-eq v3, v4, :cond_46

    if-eq v3, v5, :cond_46

    .line 1652
    iput-object v0, v0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 1653
    return v3

    .line 1656
    :cond_46
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    move v7, v3

    move/from16 v3, p1

    .end local p1    # "candidate":I
    .local v3, "candidate":I
    .local v7, "i":I
    :goto_51
    if-ltz v7, :cond_b0

    .line 1657
    iget-object v8, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 1661
    .local v8, "wc":Lcom/android/server/wm/WindowContainer;
    const/4 v9, 0x3

    if-ne v3, v9, :cond_60

    .line 1662
    move v10, v9

    goto :goto_61

    :cond_60
    move v10, v4

    .line 1661
    :goto_61
    invoke-virtual {v8, v10}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v10

    .line 1663
    .local v10, "orientation":I
    if-ne v10, v9, :cond_6b

    .line 1667
    move v3, v10

    .line 1668
    iput-object v8, v0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 1669
    goto :goto_7d

    .line 1672
    :cond_6b
    if-ne v10, v4, :cond_6e

    .line 1673
    goto :goto_7d

    .line 1677
    :cond_6e
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->providesOrientation()Z

    move-result v11

    if-nez v11, :cond_80

    if-ne v10, v5, :cond_80

    .line 1678
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v11

    if-eqz v11, :cond_7d

    goto :goto_80

    .line 1656
    .end local v8    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v10    # "orientation":I
    :cond_7d
    :goto_7d
    add-int/lit8 v7, v7, -0x1

    goto :goto_51

    .line 1681
    .restart local v8    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v10    # "orientation":I
    :cond_80
    :goto_80
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v4, :cond_ad

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    int-to-long v11, v10

    .local v11, "protoLogParam1":J
    invoke-static {v10}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam2":Ljava/lang/String;
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, -0x42169418

    const/4 v15, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v9, v16

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v9, v6

    const/4 v6, 0x2

    aput-object v5, v9, v6

    invoke-static {v13, v14, v15, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1684
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam2":Ljava/lang/String;
    .end local v11    # "protoLogParam1":J
    :cond_ad
    iput-object v8, v0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 1685
    return v10

    .line 1689
    .end local v7    # "i":I
    .end local v8    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v10    # "orientation":I
    :cond_b0
    return v3
.end method

.method protected bridge synthetic getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 151
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    return-object v0
.end method

.method protected final getParent()Lcom/android/server/wm/WindowContainer;
    .registers 2

    .line 536
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 3

    .line 2589
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2590
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_8

    .line 2591
    const/4 v1, 0x0

    return-object v1

    .line 2593
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    .line 2878
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2879
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_d

    if-eq v0, p0, :cond_d

    .line 2880
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    return-object v1

    .line 2886
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v1
.end method

.method getPrefixOrderIndex()I
    .registers 2

    .line 906
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_6

    .line 907
    const/4 v0, 0x0

    return v0

    .line 909
    :cond_6
    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    return v0
.end method

.method getProtoFieldId()J
    .registers 3

    .line 2762
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const-wide v0, 0x10b00000002L

    return-wide v0
.end method

.method public getProvidedInsetsSources()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation

    .line 1106
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mProvidedInsetsSources:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 1107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mProvidedInsetsSources:Landroid/util/SparseArray;

    .line 1109
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mProvidedInsetsSources:Landroid/util/SparseArray;

    return-object v0
.end method

.method getRelativeDisplayRotation()I
    .registers 5

    .line 3817
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 3818
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    .line 3819
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v1

    .line 3820
    .local v1, "rotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v2

    .line 3821
    .local v2, "parentRotation":I
    invoke-static {v1, v2}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v3

    return v3
.end method

.method getRelativePosition(Landroid/graphics/Point;)V
    .registers 7
    .param p1, "outPos"    # Landroid/graphics/Point;

    .line 3805
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3806
    .local v0, "dispBounds":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 3807
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 3808
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_1e

    .line 3809
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3810
    .local v2, "parentBounds":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Point;->offset(II)V

    .line 3812
    .end local v2    # "parentBounds":Landroid/graphics/Rect;
    :cond_1e
    return-void
.end method

.method getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;
    .registers 2

    .line 3842
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method getRequestedConfigurationOrientation()I
    .registers 2

    .line 1499
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation(Z)I

    move-result v0

    return v0
.end method

.method getRequestedConfigurationOrientation(Z)I
    .registers 6
    .param p1, "forDisplay"    # Z

    .line 1516
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 1517
    .local v0, "requestedOrientation":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    .line 1518
    .local v1, "root":Lcom/android/server/wm/RootDisplayArea;
    if-eqz p1, :cond_16

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/RootDisplayArea;->isOrientationDifferentFromDisplay()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1526
    iget v2, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->reverseOrientation(I)I

    move-result v0

    .line 1529
    :cond_16
    const/4 v2, 0x5

    if-ne v0, v2, :cond_22

    .line 1531
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_3d

    .line 1532
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getNaturalOrientation()I

    move-result v2

    return v2

    .line 1534
    :cond_22
    const/16 v2, 0xe

    if-ne v0, v2, :cond_2d

    .line 1536
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    return v2

    .line 1537
    :cond_2d
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1538
    const/4 v2, 0x2

    return v2

    .line 1539
    :cond_35
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1540
    const/4 v2, 0x1

    return v2

    .line 1543
    :cond_3d
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientation:I

    invoke-interface {v2, p0, v0, v3}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->adaptRequestedOrientation(Lcom/android/server/wm/WindowContainer;II)I

    move-result v2

    .line 1544
    .local v2, "ori":I
    if-ltz v2, :cond_4a

    .line 1545
    return v2

    .line 1548
    :cond_4a
    const/4 v3, 0x0

    return v3
.end method

.method getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;
    .registers 3

    .line 1126
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1127
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 2269
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 8
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 2274
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2275
    .local v0, "count":I
    if-eqz p2, :cond_21

    .line 2276
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_20

    .line 2278
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 2279
    .local v2, "child":Lcom/android/server/wm/WindowContainer;
    if-eqz v2, :cond_1d

    .line 2280
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2282
    .local v3, "t":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_1d

    .line 2283
    return-object v3

    .line 2276
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "t":Lcom/android/server/wm/Task;
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .end local v1    # "i":I
    :cond_20
    goto :goto_42

    .line 2288
    :cond_21
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_22
    if-ge v1, v0, :cond_42

    .line 2290
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 2291
    .restart local v2    # "child":Lcom/android/server/wm/WindowContainer;
    if-eqz v2, :cond_35

    .line 2292
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2294
    .restart local v3    # "t":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_35

    .line 2295
    return-object v3

    .line 2300
    .end local v3    # "t":Lcom/android/server/wm/Task;
    :cond_35
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    .line 2301
    .local v3, "newCount":I
    sub-int v4, v0, v3

    sub-int/2addr v1, v4

    .line 2302
    move v0, v3

    .line 2288
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "newCount":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 2306
    .end local v1    # "i":I
    :cond_42
    :goto_42
    const/4 v1, 0x0

    return-object v1
.end method

.method getSession()Landroid/view/SurfaceSession;
    .registers 2

    .line 2613
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2614
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    return-object v0

    .line 2616
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method final getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;
    .registers 2

    .line 3406
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 2854
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .registers 2

    .line 3699
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSurfaceWidth()I
    .registers 2

    .line 3694
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v0

    return v0
.end method

.method public getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 2866
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    if-lez v0, :cond_7

    .line 2867
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0

    .line 2869
    :cond_7
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz v0, :cond_e

    .line 2870
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0

    .line 2873
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 2197
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method final getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;
    .registers 12
    .param p2, "boundary"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includeBoundary"    # Z
    .param p4, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 2233
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x1

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 6
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 2201
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    if-eqz p2, :cond_1f

    .line 2202
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_1e

    .line 2203
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2204
    .local v1, "t":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1b

    .line 2205
    return-object v1

    .line 2202
    .end local v1    # "t":Lcom/android/server/wm/Task;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .end local v0    # "i":I
    :cond_1e
    goto :goto_3a

    .line 2209
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2210
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    if-ge v1, v0, :cond_3a

    .line 2211
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2212
    .local v2, "t":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_37

    .line 2213
    return-object v2

    .line 2210
    .end local v2    # "t":Lcom/android/server/wm/Task;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 2218
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    return-object v0
.end method

.method getTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .registers 4
    .param p1, "t"    # Lcom/android/server/wm/Task;

    .line 2180
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda12;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .registers 5
    .param p1, "t"    # Lcom/android/server/wm/Task;

    .line 2185
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda9;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 3

    .line 1132
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1133
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "includeFinishing"    # Z
    .param p2, "includeOverlays"    # Z

    .line 1998
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    if-eqz p1, :cond_18

    .line 1999
    if-eqz p2, :cond_e

    .line 2000
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 2002
    :cond_e
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 2003
    :cond_18
    if-eqz p2, :cond_24

    .line 2004
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 2007
    :cond_24
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopChild()Lcom/android/server/wm/WindowContainer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1418
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method getTopMostActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 1993
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda8;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopMostTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 2193
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda7;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getTreeWeight()I
    .registers 2

    .line 899
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    return v0
.end method

.method getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowState;"
        }
    .end annotation

    .line 2326
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 2327
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 2328
    .local v1, "w":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_19

    .line 2329
    return-object v1

    .line 2326
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2333
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowType()I
    .registers 2

    .line 4189
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method handleCompleteDeferredRemoval()Z
    .registers 5

    .line 1427
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .line 1429
    .local v0, "stillDeferringRemoval":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_23

    .line 1430
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1431
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result v3

    or-int/2addr v0, v3

    .line 1432
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->hasChild()Z

    move-result v3

    if-nez v3, :cond_20

    .line 1438
    const/4 v3, 0x0

    return v3

    .line 1429
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1442
    .end local v1    # "i":I
    :cond_23
    return v0
.end method

.method handlesOrientationChangeFromDescendant()Z
    .registers 3

    .line 1486
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1487
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method hasActivity()Z
    .registers 4

    .line 1870
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1871
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1872
    return v1

    .line 1870
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1875
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method hasChild(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 946
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1f

    .line 947
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 948
    .local v2, "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    if-eq v2, p1, :cond_1e

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_1e

    .line 946
    .end local v2    # "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 949
    .restart local v2    # "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_1e
    :goto_1e
    return v1

    .line 952
    .end local v0    # "i":I
    .end local v2    # "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method hasCommittedReparentToAnimationLeash()Z
    .registers 2

    .line 2835
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mCommittedReparentToAnimationLeash:Z

    return v0
.end method

.method hasContentToDisplay()Z
    .registers 5

    .line 1311
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1312
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1313
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1314
    return v1

    .line 1311
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1317
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method inTransition()Z
    .registers 2

    .line 1275
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    return v0
.end method

.method initializeChangeTransition(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "startBounds"    # Landroid/graphics/Rect;

    .line 2977
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->initializeChangeTransition(Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    .line 2978
    return-void
.end method

.method initializeChangeTransition(Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .registers 8
    .param p1, "startBounds"    # Landroid/graphics/Rect;
    .param p2, "freezeTarget"    # Landroid/view/SurfaceControl;

    .line 2968
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 2969
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2971
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2972
    .local v0, "parentBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 2973
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/server/wm/SurfaceFreezer;->freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/SurfaceControl;)V

    .line 2974
    return-void
.end method

.method final isAnimating()Z
    .registers 2

    .line 1264
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    return v0
.end method

.method final isAnimating(I)Z
    .registers 3
    .param p1, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1225
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v0

    return v0
.end method

.method final isAnimating(II)Z
    .registers 4
    .param p1, "flags"    # I
    .param p2, "typesToCheck"    # I

    .line 1216
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isAppTransitioning()Z
    .registers 3

    .line 1243
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1256
    .local v0, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method isAttached()Z
    .registers 3

    .line 1137
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1138
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isChangingAppTransition()Z
    .registers 2

    .line 1271
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z
    .registers 5
    .param p1, "ancestor"    # Lcom/android/server/wm/WindowContainer;

    .line 957
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 958
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v1, 0x1

    if-ne v0, p1, :cond_8

    return v1

    .line 959
    :cond_8
    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method isEmbedded()Z
    .registers 2

    .line 3905
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isEmbeddedFullScreen()Z
    .registers 3

    .line 4425
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4426
    return v1

    .line 4428
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-nez v0, :cond_f

    .line 4429
    return v1

    .line 4431
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_31

    .line 4434
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 4432
    :cond_31
    :goto_31
    return v1
.end method

.method isExitAnimationRunningSelfOrChild()Z
    .registers 5

    .line 1279
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1280
    const/4 v0, 0x5

    const/16 v1, 0x19

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v0

    return v0

    .line 1282
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 1283
    return v1

    .line 1286
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_21
    if-ltz v0, :cond_35

    .line 1287
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1288
    .local v2, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isExitAnimationRunningSelfOrChild()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1289
    return v1

    .line 1286
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 1292
    .end local v0    # "i":I
    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method isFocusable()Z
    .registers 3

    .line 1395
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1396
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_c
    iget-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method isOnTop()Z
    .registers 3

    .line 1412
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1413
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-ne v1, p0, :cond_14

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method isOrganized()Z
    .registers 2

    .line 3900
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected isSelfAnimating(II)Z
    .registers 5
    .param p1, "flags"    # I
    .param p2, "typesToCheck"    # I

    .line 3659
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 3660
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimationType()I

    move-result v0

    and-int/2addr v0, p2

    if-lez v0, :cond_13

    .line 3661
    return v1

    .line 3663
    :cond_13
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isWaitingForTransitionStart()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3664
    return v1

    .line 3666
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method isSyncFinished()Z
    .registers 7

    .line 4054
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 4055
    return v1

    .line 4057
    :cond_8
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_f

    .line 4058
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    .line 4060
    :cond_f
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    .line 4061
    return v2

    .line 4065
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_1c
    if-ltz v0, :cond_3f

    .line 4066
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 4067
    .local v3, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isSyncFinished()Z

    move-result v4

    .line 4068
    .local v4, "childFinished":Z
    if-eqz v4, :cond_39

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 4070
    return v1

    .line 4072
    :cond_39
    if-nez v4, :cond_3c

    .line 4073
    return v2

    .line 4065
    .end local v3    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "childFinished":Z
    :cond_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 4076
    .end local v0    # "i":I
    :cond_3f
    return v1
.end method

.method isVisible()Z
    .registers 5

    .line 1334
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1335
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1336
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1337
    return v1

    .line 1334
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1340
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method isVisibleRequested()Z
    .registers 5

    .line 1349
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1350
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1351
    .local v2, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1352
    return v1

    .line 1349
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1355
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method isWaitingForChangeTransitionStart()Z
    .registers 4

    .line 4410
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inFreeformSmallWinMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 4411
    return v1

    .line 4413
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4414
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_26

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isChangeTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 4415
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    nop

    .line 4414
    :goto_27
    return v1
.end method

.method isWaitingForTransitionStart()Z
    .registers 2

    .line 1233
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$isAppTransitioning$1$com-android-server-wm-WindowContainer(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "app"    # Lcom/android/server/wm/ActivityRecord;

    .line 1245
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return v1

    .line 1246
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inFreeformSmallWinMode()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1247
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    .line 1248
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 1249
    .local v0, "freemAs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isInMiniFreeFormMode()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->inPinMode()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1250
    :cond_2b
    return v1

    .line 1253
    .end local v0    # "freemAs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_2c
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$waitForAllWindowsDrawn$14$com-android-server-wm-WindowContainer(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3826
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->requestDrawIfNeeded(Ljava/util/List;)V

    .line 3827
    return-void
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 3003
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 2577
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2580
    .local v0, "p":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2581
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 2580
    return-object v1
.end method

.method makeSurface()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 2568
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2569
    .local v0, "p":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    return-object v1
.end method

.method migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 688
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 690
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 691
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    .line 693
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 695
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 697
    .local v0, "b":Landroid/view/SurfaceControl$Builder;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 703
    instance-of v2, p0, Lcom/android/server/wm/Task;

    if-eqz v2, :cond_42

    move-object v2, p0

    check-cast v2, Lcom/android/server/wm/Task;

    .line 704
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isInChangeTransition()Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mAnimationLeash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_42

    .line 706
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 707
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mAnimationLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_50

    .line 709
    :cond_42
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v3, :cond_49

    goto :goto_4d

    :cond_49
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    :goto_4d
    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 713
    :goto_50
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_5c

    .line 714
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_63

    .line 716
    :cond_5c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 719
    :goto_63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_64
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_82

    .line 720
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 721
    .local v2, "sc":Landroid/view/SurfaceControl;
    if-eqz v2, :cond_7f

    .line 722
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 719
    .end local v2    # "sc":Landroid/view/SurfaceControl;
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 726
    .end local v1    # "i":I
    :cond_82
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz v1, :cond_8b

    .line 727
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/TrustedOverlayHost;->setParent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 730
    :cond_8b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 731
    return-void
.end method

.method needsZBoost()Z
    .registers 4

    .line 2708
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 2709
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 2710
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2711
    return v1

    .line 2709
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2714
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method okToAnimate()Z
    .registers 2

    .line 3509
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowContainer;->okToAnimate(ZZ)Z

    move-result v0

    return v0
.end method

.method okToAnimate(ZZ)Z
    .registers 5
    .param p1, "ignoreFrozen"    # Z
    .param p2, "ignoreScreenOn"    # Z

    .line 3513
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3514
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->okToAnimate(ZZ)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method okToDisplay()Z
    .registers 3

    .line 3504
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3505
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->okToDisplay()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method protected onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 3589
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->clearTransitionDimmer()V

    .line 3590
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->clearTransitionAnimationDimmer()V

    .line 3591
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->doAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 3592
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->onAnimationFinished()V

    .line 3593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 3594
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 3551
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 3552
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mAnimationLeash:Landroid/view/SurfaceControl;

    .line 3553
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 3556
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V

    .line 3557
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 3561
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 3562
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mAnimationLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationLeashLost(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 3563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mAnimationLeash:Landroid/view/SurfaceControl;

    .line 3564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 3565
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 3566
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 3567
    return-void
.end method

.method onAppTransitionDone()V
    .registers 3

    .line 1454
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1455
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1456
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    .line 1454
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1458
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 2
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 1025
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    return-void
.end method

.method onChildVisibilityRequested(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 1365
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    if-nez p1, :cond_2b

    .line 1367
    invoke-static {}, Lcom/android/server/wm/MiuiDesktopModeControllerStub;->getInstance()Lcom/android/server/wm/MiuiDesktopModeControllerStub;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiDesktopModeControllerStub;->shouldRemainFrozen(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1368
    return-void

    .line 1370
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->shouldRemainFrozen(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1371
    return-void

    .line 1374
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 1376
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1377
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_34

    .line 1378
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->onChildVisibilityRequested(Z)V

    .line 1380
    :cond_34
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 551
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 552
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 553
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz v0, :cond_14

    .line 555
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TrustedOverlayHost;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 557
    :cond_14
    return-void
.end method

.method onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 4
    .param p1, "requestingContainer"    # Lcom/android/server/wm/WindowContainer;

    .line 1468
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1469
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_8

    .line 1470
    const/4 v1, 0x0

    return v1

    .line 1472
    :cond_8
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    return v1
.end method

.method onDescendantOverrideConfigurationChanged()V
    .registers 2

    .line 1058
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_7

    .line 1059
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    .line 1061
    :cond_7
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1072
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isWaitingForChangeTransitionStart()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_5a

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1074
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1076
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 1077
    .local v0, "control":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_51

    instance-of v1, p0, Lcom/android/server/wm/Task;

    if-eqz v1, :cond_51

    if-eqz p1, :cond_51

    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    .line 1078
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->getAnimatingRecents()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayChanged addTaskToTargets this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .local v1, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    move-object v2, p0

    check-cast v2, Lcom/android/server/wm/Task;

    new-instance v3, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda15;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/RecentsAnimationController;->addTaskToTargets(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 1090
    .end local v1    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    :cond_51
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 1092
    .end local v0    # "control":Lcom/android/server/wm/RecentsAnimationController;
    :cond_5a
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1093
    if-eqz p1, :cond_69

    if-eq p1, p0, :cond_69

    .line 1094
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1096
    :cond_69
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_71
    if-ltz v0, :cond_81

    .line 1097
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1098
    .local v1, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1096
    .end local v1    # "child":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_71

    .line 1100
    .end local v0    # "i":I
    :cond_81
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_89
    if-ltz v0, :cond_99

    .line 1101
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainerListener;

    invoke-interface {v1, p1}, Lcom/android/server/wm/WindowContainerListener;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1100
    add-int/lit8 v0, v0, -0x1

    goto :goto_89

    .line 1103
    .end local v0    # "i":I
    :cond_99
    return-void
.end method

.method onMovedByResize()V
    .registers 3

    .line 1168
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1169
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1170
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 1168
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1172
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 4
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 628
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;)V

    .line 629
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;)V
    .registers 7
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p3, "callback"    # Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;

    .line 633
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_8

    .line 635
    return-void

    .line 638
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_11

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->createSurfaceControl(Z)V

    goto :goto_1c

    .line 647
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 650
    :goto_1c
    if-eqz p3, :cond_21

    .line 651
    invoke-interface {p3}, Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;->onPreAssignChildLayers()V

    .line 655
    :cond_21
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/WindowContainer;->mForceStop:Z

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/PreloadStateManagerStub;->stackOnParentChanged(Lcom/android/server/wm/DisplayContent;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mForceStop:Z

    .line 658
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 659
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 660
    return-void
.end method

.method onParentResize()V
    .registers 2

    .line 1159
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->hasOverrideBounds()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1160
    return-void

    .line 1164
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 1165
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 1036
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1037
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1036
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->diffRequestedOverrideBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 1038
    .local v0, "diff":I
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1039
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_14

    .line 1040
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    .line 1043
    :cond_14
    if-nez v0, :cond_17

    .line 1044
    return-void

    .line 1047
    :cond_17
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    goto :goto_23

    .line 1050
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 1052
    :goto_23
    return-void
.end method

.method onResize()V
    .registers 3

    .line 1149
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1150
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1151
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onParentResize()V

    .line 1149
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1153
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method onSurfaceShown(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 738
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    return-void
.end method

.method onSyncFinishedDrawing()Z
    .registers 8

    .line 3980
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3981
    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 3982
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3983
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x725d1383

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-static {v3, v4, v1, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3984
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_26
    return v2
.end method

.method onSyncTransactionCommitted(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4353
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    .line 4354
    if-lez v0, :cond_9

    .line 4355
    return-void

    .line 4357
    :cond_9
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz v0, :cond_e

    .line 4358
    return-void

    .line 4361
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 4362
    return-void
.end method

.method public onUnfrozen()V
    .registers 2

    .line 2996
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_9

    .line 2997
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2999
    :cond_9
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 7
    .param p1, "position"    # I
    .param p3, "includingParents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;Z)V"
        }
    .end annotation

    .line 974
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p2, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_80

    .line 980
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_14

    .line 981
    const p1, 0x7fffffff

    goto :goto_18

    .line 982
    :cond_14
    if-gtz p1, :cond_18

    .line 983
    const/high16 p1, -0x80000000

    .line 986
    :cond_18
    :goto_18
    sparse-switch p1, :sswitch_data_ba

    .line 1014
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_7f

    .line 1015
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 1016
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 1017
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_7f

    .line 988
    :sswitch_31
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_46

    .line 989
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 990
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 991
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 993
    :cond_46
    if-eqz p3, :cond_7f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 994
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_7f

    .line 999
    :sswitch_59
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_6e

    .line 1000
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 1001
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->addFirst(Ljava/lang/Object;)V

    .line 1002
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 1004
    :cond_6e
    if-eqz p3, :cond_7f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 1005
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1020
    :cond_7f
    :goto_7f
    return-void

    .line 975
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "positionChildAt: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 976
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 977
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_ba
    .sparse-switch
        -0x80000000 -> :sswitch_59
        0x7fffffff -> :sswitch_31
    .end sparse-switch
.end method

.method prepareSurfaces()V
    .registers 3

    .line 2824
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mCommittedReparentToAnimationLeash:Z

    .line 2825
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 2826
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 2825
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2828
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method prepareSync()Z
    .registers 4

    .line 4007
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz v0, :cond_6

    .line 4009
    const/4 v0, 0x0

    return v0

    .line 4011
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_18

    .line 4012
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 4013
    .local v2, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    .line 4011
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 4015
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 4016
    return v1
.end method

.method providesOrientation()Z
    .registers 2

    .line 1709
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v0

    return v0
.end method

.method reassignLayer(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 3533
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 3534
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_9

    .line 3535
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 3537
    :cond_9
    return-void
.end method

.method reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;TR;>;TR;)TR;"
        }
    .end annotation

    .line 2438
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "accumulator":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/android/server/wm/TaskDisplayArea;TR;TR;>;"
    .local p2, "initValue":Ljava/lang/Object;, "TR;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 8
    .param p3, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;TR;>;TR;Z)TR;"
        }
    .end annotation

    .line 2414
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "accumulator":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/android/server/wm/TaskDisplayArea;TR;TR;>;"
    .local p2, "initValue":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2415
    .local v0, "childCount":I
    if-eqz p3, :cond_b

    add-int/lit8 v1, v0, -0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 2416
    .local v1, "i":I
    :goto_c
    move-object v2, p2

    .line 2417
    .local v2, "result":Ljava/lang/Object;, "TR;"
    :goto_d
    if-ltz v1, :cond_24

    if-ge v1, v0, :cond_24

    .line 2418
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 2419
    invoke-virtual {v3, p1, v2, p3}, Lcom/android/server/wm/WindowContainer;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    .line 2420
    if-eqz p3, :cond_21

    const/4 v3, -0x1

    goto :goto_22

    :cond_21
    const/4 v3, 0x1

    :goto_22
    add-int/2addr v1, v3

    goto :goto_d

    .line 2422
    :cond_24
    return-object v2
.end method

.method registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/WindowContainerListener;

    .line 4141
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;Z)V

    .line 4142
    return-void
.end method

.method registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;Z)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/wm/WindowContainerListener;
    .param p2, "shouldDispatchConfig"    # Z

    .line 4146
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4147
    return-void

    .line 4149
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4151
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;Z)V

    .line 4152
    if-eqz p2, :cond_1a

    .line 4153
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/server/wm/WindowContainerListener;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 4155
    :cond_1a
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 825
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 826
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildRemoved(Lcom/android/server/wm/WindowContainer;)V

    .line 827
    iget-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-nez v0, :cond_13

    .line 828
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 834
    :cond_13
    return-void

    .line 831
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 832
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeIfPossible()V
    .registers 3

    .line 938
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 939
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 940
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->removeIfPossible()V

    .line 938
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 942
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method removeImmediately()V
    .registers 5

    .line 854
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 855
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_f

    .line 856
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 858
    :cond_f
    :goto_f
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 859
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 860
    .local v1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 864
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 865
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowContainer;->onChildRemoved(Lcom/android/server/wm/WindowContainer;)V

    .line 867
    .end local v1    # "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_2d
    goto :goto_f

    .line 869
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v1, :cond_5c

    .line 870
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 871
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 872
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Point;->set(II)V

    .line 874
    instance-of v1, p0, Lcom/android/server/wm/Task;

    if-eqz v1, :cond_57

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inFreeformSmallWinMode()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 875
    move-object v1, p0

    check-cast v1, Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Point;->set(II)V

    .line 878
    :cond_57
    iput v3, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    .line 879
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 881
    :cond_5c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz v1, :cond_65

    .line 882
    invoke-virtual {v1}, Lcom/android/server/wm/TrustedOverlayHost;->release()V

    .line 883
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 888
    :cond_65
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_6c

    .line 889
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 892
    :cond_6c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_74
    if-ltz v1, :cond_84

    .line 893
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainerListener;

    invoke-interface {v2}, Lcom/android/server/wm/WindowContainerListener;->onRemoved()V

    .line 892
    add-int/lit8 v1, v1, -0x1

    goto :goto_74

    .line 895
    .end local v1    # "i":I
    :cond_84
    return-void
.end method

.method removeLocalInsetsSourceProvider([I)V
    .registers 6
    .param p1, "insetsTypes"    # [I

    .line 493
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    if-eqz p1, :cond_54

    array-length v0, p1

    if-eqz v0, :cond_54

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    if-nez v0, :cond_a

    .line 497
    return-void

    .line 500
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_49

    .line 501
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    aget v2, p1, v0

    .line 502
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 503
    .local v1, "insetsSourceProvider":Lcom/android/server/wm/InsetsSourceProvider;
    if-nez v1, :cond_3f

    .line 504
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v2, :cond_46

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Given insets type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t have a local insetsSourceProvider."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 510
    :cond_3f
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 500
    .end local v1    # "insetsSourceProvider":Lcom/android/server/wm/InsetsSourceProvider;
    :cond_46
    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 512
    .end local v0    # "i":I
    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    .line 513
    return-void

    .line 494
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Insets type not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeTrustedOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 3
    .param p1, "overlay"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 4303
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TrustedOverlayHost;->removeOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4304
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    invoke-virtual {v0}, Lcom/android/server/wm/TrustedOverlayHost;->release()V

    .line 4305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 4307
    :cond_12
    return-void
.end method

.method reparent(Lcom/android/server/wm/WindowContainer;I)V
    .registers 8
    .param p1, "newParent"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "position"    # I

    .line 560
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    if-eqz p1, :cond_88

    .line 564
    if-eq p1, p0, :cond_6f

    .line 568
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 569
    .local v0, "oldParent":Lcom/android/server/wm/WindowContainer;
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eq v1, p1, :cond_4a

    .line 575
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 576
    .local v1, "prevDc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 578
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    .line 579
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 580
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 581
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    .line 584
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 585
    if-eq v1, v2, :cond_29

    .line 586
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 587
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 589
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 593
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 594
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->onSyncReparent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 598
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->onParentChanged(Lcom/android/server/wm/Task;)V

    .line 601
    :cond_49
    return-void

    .line 570
    .end local v1    # "prevDc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 565
    .end local v0    # "oldParent":Lcom/android/server/wm/WindowContainer;
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not reparent to itself "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reparent: can\'t reparent to null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"    # Landroid/view/SurfaceControl;

    .line 2675
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 2676
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2677
    return-void

    .line 2675
    :cond_19
    :goto_19
    return-void
.end method

.method resetDragResizingChangeReported()V
    .registers 3

    .line 1175
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1176
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1177
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    .line 1175
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1179
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 3540
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 3541
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 3542
    .local v0, "syncTransaction":Landroid/view/SurfaceControl$Transaction;
    if-eq p1, v0, :cond_11

    .line 3544
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 3546
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 3547
    return-void
.end method

.method scheduleAnimation()V
    .registers 2

    .line 2843
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_7

    .line 2844
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 2846
    :cond_7
    return-void
.end method

.method sendAppVisibilityToClients()V
    .registers 3

    .line 1296
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1297
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1298
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 1296
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1300
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method setCanScreenshot(Landroid/view/SurfaceControl$Transaction;Z)Z
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "canScreenshot"    # Z

    .line 4193
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    .line 4194
    const/4 v0, 0x0

    return v0

    .line 4196
    :cond_6
    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 4197
    const/4 v0, 0x1

    return v0
.end method

.method setControllableInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V
    .registers 2
    .param p1, "insetProvider"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 526
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 527
    return-void
.end method

.method setFocusable(Z)Z
    .registers 3
    .param p1, "focusable"    # Z

    .line 1401
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    if-ne v0, p1, :cond_6

    .line 1402
    const/4 v0, 0x0

    return v0

    .line 1404
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    .line 1405
    const/4 v0, 0x1

    return v0
.end method

.method setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .registers 4
    .param p1, "b"    # Landroid/view/SurfaceControl$Builder;

    .line 667
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const-string v0, "WindowContainer.setInitialSurfaceControlProperties"

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 668
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->showSurfaceOnCreation()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 669
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 671
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onSurfaceShown(Landroid/view/SurfaceControl$Transaction;)V

    .line 672
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 673
    return-void
.end method

.method protected setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 2646
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2649
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SurfaceFreezer;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_13

    .line 2653
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SurfaceAnimator;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 2655
    :goto_13
    return-void
.end method

.method public setMiuiProjection(Z)V
    .registers 2
    .param p1, "projectioned"    # Z

    .line 4329
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iput-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mProjectioned:Z

    .line 4330
    return-void
.end method

.method setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .line 1558
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->setOrientation(ILcom/android/server/wm/WindowContainer;)V

    .line 1559
    return-void
.end method

.method setOrientation(ILcom/android/server/wm/WindowContainer;)V
    .registers 7
    .param p1, "orientation"    # I
    .param p2, "requestingContainer"    # Lcom/android/server/wm/WindowContainer;

    .line 1573
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .line 1574
    .local v0, "inMiuiSizeCompatMode":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->inMiuiSizeCompatMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1575
    const/4 v0, 0x1

    .line 1577
    :cond_12
    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    if-ne v1, p1, :cond_27

    if-nez v0, :cond_27

    .line 1578
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wm/MiuiOrientationStub;->isNeedUpdateConfig(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1580
    return-void

    .line 1584
    :cond_27
    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientation:I

    .line 1585
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 1586
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1587
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_65

    .line 1588
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v3

    if-eq v2, v3, :cond_4b

    .line 1595
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_5b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v2

    if-eqz v2, :cond_5b

    :cond_4b
    if-nez v0, :cond_5b

    .line 1599
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wm/MiuiOrientationStub;->isNeedUpdateConfig(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1601
    :cond_5b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1603
    :cond_62
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    .line 1605
    :cond_65
    return-void
.end method

.method protected final setParent(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 604
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 605
    .local v0, "oldParent":Lcom/android/server/wm/WindowContainer;
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 607
    if-eqz p1, :cond_a

    .line 608
    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowContainer;->onChildAdded(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_17

    .line 609
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 610
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 612
    :cond_17
    :goto_17
    iget-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-nez v1, :cond_34

    .line 613
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->onSyncReparent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    .line 614
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_2f

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_2f

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eq v2, v1, :cond_2f

    .line 616
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 618
    :cond_2f
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 620
    :cond_34
    return-void
.end method

.method protected setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I

    .line 2662
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2665
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SurfaceFreezer;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    goto :goto_13

    .line 2669
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimator;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 2671
    :goto_13
    return-void
.end method

.method setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 2
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 3838
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 3839
    return-void
.end method

.method setSyncGroup(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 11
    .param p1, "group"    # Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 3988
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    if-eqz v0, :cond_21

    iget v0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v0, v0

    .local v0, "protoLogParam0":J
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x39309b66

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3989
    .end local v0    # "protoLogParam0":J
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    :cond_21
    if-eqz p1, :cond_53

    .line 3990
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    if-eqz v0, :cond_53

    if-ne v0, p1, :cond_2a

    goto :goto_53

    .line 3993
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t sync on 2 engines simultaneously currentSyncId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget v2, v2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newSyncId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3997
    :cond_53
    :goto_53
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 3998
    return-void
.end method

.method setWaitingForDrawnIfResizingChanged()V
    .registers 3

    .line 1142
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1143
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1144
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->setWaitingForDrawnIfResizingChanged()V

    .line 1142
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1146
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method shouldMagnify()Z
    .registers 4

    .line 2600
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2601
    return v1

    .line 2604
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 2605
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->shouldMagnify()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2606
    return v1

    .line 2604
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2609
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method showSurfaceOnCreation()Z
    .registers 2

    .line 3912
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method showToCurrentUser()Z
    .registers 2

    .line 1733
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method showWallpaper()Z
    .registers 6

    .line 3917
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 3920
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2b

    .line 3923
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_16
    if-ltz v0, :cond_2a

    .line 3924
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 3925
    .local v3, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 3926
    return v2

    .line 3923
    .end local v3    # "child":Lcom/android/server/wm/WindowContainer;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 3929
    .end local v0    # "i":I
    :cond_2a
    return v1

    .line 3921
    :cond_2b
    :goto_2b
    return v1
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V
    .registers 11
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z
    .param p4, "type"    # I

    .line 2925
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 2926
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 14
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z
    .param p4, "type"    # I
    .param p5, "animationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 2919
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;)V

    .line 2921
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;)V
    .registers 21
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z
    .param p4, "type"    # I
    .param p5, "animationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .param p6, "animationCancelledCallback"    # Ljava/lang/Runnable;
    .param p7, "snapshotAnim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 2907
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    move-object v0, p0

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v1, :cond_2b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move/from16 v11, p4

    .local v1, "protoLogParam0":Ljava/lang/String;
    int-to-long v2, v11

    .local v2, "protoLogParam1":J
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam2":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x16fbb7db

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d

    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":J
    .end local v4    # "protoLogParam2":Ljava/lang/String;
    :cond_2b
    move/from16 v11, p4

    .line 2912
    :goto_2d
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v10, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceFreezer;)V

    .line 2914
    return-void
.end method

.method startDelayingAnimationStart()V
    .registers 2

    .line 3682
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->startDelayingAnimationStart()V

    .line 3683
    return-void
.end method

.method switchUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1726
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1727
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    .line 1726
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1729
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method transferAnimation(Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "from"    # Lcom/android/server/wm/WindowContainer;

    .line 2929
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceAnimator;->transferAnimation(Lcom/android/server/wm/SurfaceAnimator;)V

    .line 2930
    return-void
.end method

.method transformFrameToSurfacePosition(IILandroid/graphics/Point;)V
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "outPoint"    # Landroid/graphics/Point;

    .line 3523
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 3524
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 3525
    .local v0, "parentWindowContainer":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_a

    .line 3526
    return-void

    .line 3528
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3529
    .local v1, "parentBounds":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 3530
    return-void
.end method

.method unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/WindowContainerListener;

    .line 4158
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4159
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 4160
    return-void
.end method

.method updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V
    .registers 8
    .param p1, "aboveInsetsState"    # Landroid/view/InsetsState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsSourceProvider;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 432
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p2, "localInsetsSourceProvidersFromParent":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/InsetsSourceProvider;>;"
    .local p3, "insetsChangedWindows":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowState;>;"
    move-object v0, p2

    .line 434
    .local v0, "mergedLocalInsetsSourceProviders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/InsetsSourceProvider;>;"
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_2c

    .line 435
    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->createShallowCopy(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    .line 436
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 437
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    .line 438
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    .line 439
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    .line 437
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 443
    .end local v1    # "i":I
    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_34
    if-ltz v1, :cond_44

    .line 444
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V

    .line 443
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    .line 447
    .end local v1    # "i":I
    :cond_44
    return-void
.end method

.method updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "originalChange"    # Lcom/android/server/wm/WindowState;

    .line 4310
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 4311
    .local v0, "p":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_9

    .line 4312
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V

    .line 4314
    :cond_9
    return-void
.end method

.method updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V
    .registers 11
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 3727
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_8f

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_8f

    .line 3731
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 3732
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    move-result v0

    .line 3733
    .local v0, "deltaRotation":I
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    if-ne v0, v1, :cond_2e

    .line 3734
    return-void

    .line 3737
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 3739
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 3741
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 3742
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v1

    if-nez v1, :cond_71

    .line 3743
    if-eqz v0, :cond_61

    .line 3744
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/wm/WindowContainer;->updateSurfaceRotation(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)V

    goto :goto_71

    .line 3745
    :cond_61
    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    if-eq v0, v1, :cond_71

    .line 3746
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 3749
    :cond_71
    :goto_71
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    .line 3752
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3753
    .local v1, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->inMiuiSizeCompatMode()Z

    move-result v3

    if-nez v3, :cond_8b

    .line 3754
    :cond_7f
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v1, v4, v5}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isActivityInFixedOrientation(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 3755
    :cond_8b
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 3758
    :cond_8e
    return-void

    .line 3728
    .end local v0    # "deltaRotation":I
    .end local v1    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_8f
    :goto_8f
    return-void
.end method

.method final updateSurfacePositionNonOrganized()V
    .registers 2

    .line 3716
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3717
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 3718
    return-void
.end method

.method protected updateSurfaceRotation(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)V
    .registers 9
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "deltaRotation"    # I
    .param p3, "positionLeash"    # Landroid/view/SurfaceControl;

    .line 3768
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p1, v0, p2}, Landroid/util/RotationUtils;->rotateSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 3769
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 3770
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3771
    .local v0, "parentBounds":Landroid/graphics/Rect;
    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 3772
    .local v1, "flipped":Z
    :goto_21
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 3773
    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_2e

    :cond_2a
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 3774
    :goto_2e
    if-eqz v1, :cond_35

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    goto :goto_39

    :cond_35
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 3772
    :goto_39
    invoke-static {v2, p2, v3, v4}, Landroid/util/RotationUtils;->rotatePoint(Landroid/graphics/Point;III)V

    .line 3775
    if-eqz p3, :cond_40

    move-object v2, p3

    goto :goto_42

    :cond_40
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    :goto_42
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 3777
    return-void
.end method

.method useBLASTSync()Z
    .registers 2

    .line 4020
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method waitForAllWindowsDrawn()V
    .registers 3

    .line 3825
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/WindowContainer;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3828
    return-void
.end method

.method waitForSyncTransactionCommit(Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 4341
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "wcAwaitingCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4342
    return-void

    .line 4344
    :cond_7
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    .line 4345
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4347
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_18
    if-ltz v0, :cond_28

    .line 4348
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->waitForSyncTransactionCommit(Landroid/util/ArraySet;)V

    .line 4347
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 4350
    .end local v0    # "i":I
    :cond_28
    return-void
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1383
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1384
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1385
    const-wide v2, 0x10500000002L

    const/16 v4, -0x2710

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1386
    const-wide v2, 0x10900000003L

    const-string v4, "WindowContainer"

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1387
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1388
    return-void
.end method
