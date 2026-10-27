.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;
.implements Landroid/view/ViewRootImpl$CastProjectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;,
        Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEBUG_POSITION:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field private blacklist lastCastModeOpen:Z

.field private blacklist lastProjectionModeOpen:Z

.field private blacklist mAlreadySetCastMode:Z

.field private blacklist mAlreadySetProjectionMode:Z

.field private greylist-max-o mAttachedToWindow:Z

.field blacklist mBackgroundColor:I

.field blacklist mBackgroundControl:Landroid/view/SurfaceControl;

.field private blacklist mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private blacklist mBlastSurfaceControl:Landroid/view/SurfaceControl;

.field final greylist mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mClipSurfaceToBounds:Z

.field blacklist mCornerRadius:F

.field private blacklist mDisableBackgroundLayer:Z

.field greylist-max-o mDrawFinished:Z

.field private final greylist mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field greylist-max-p mDrawingStopped:Z

.field greylist mFormat:I

.field private final blacklist mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

.field private greylist-max-o mGlobalListenersAdded:Z

.field greylist mHaveFrame:Z

.field blacklist mIsAddCastProjectionCallback:Z

.field greylist-max-p mIsCreating:Z

.field greylist-max-p mLastLockTime:J

.field greylist-max-o mLastSurfaceHeight:I

.field greylist-max-o mLastSurfaceWidth:I

.field greylist-max-o mLastWindowVisibility:Z

.field final greylist-max-o mLocation:[I

.field private blacklist mParentSurfaceSequenceId:I

.field private blacklist mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

.field private final greylist-max-o mRTLastReportedPosition:Landroid/graphics/Rect;

.field private final blacklist mRTLastReportedSurfaceSize:Landroid/graphics/Point;

.field private blacklist mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

.field greylist mRequestedFormat:I

.field greylist-max-p mRequestedHeight:I

.field greylist-max-o mRequestedVisible:Z

.field greylist-max-p mRequestedWidth:I

.field blacklist mRoundedViewportPaint:Landroid/graphics/Paint;

.field private final greylist-max-o mRtTransaction:Landroid/view/SurfaceControl$Transaction;

.field final greylist-max-o mScreenRect:Landroid/graphics/Rect;

.field private final greylist-max-o mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field greylist-max-o mSubLayer:I

.field final greylist mSurface:Landroid/view/Surface;

.field blacklist mSurfaceAlpha:F

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field final blacklist mSurfaceControlLock:Ljava/lang/Object;

.field greylist-max-o mSurfaceCreated:Z

.field private greylist-max-o mSurfaceFlags:I

.field final greylist-max-p mSurfaceFrame:Landroid/graphics/Rect;

.field greylist-max-o mSurfaceHeight:I

.field private final greylist mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final greylist mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private final greylist-max-o mSurfaceSession:Landroid/view/SurfaceSession;

.field private final blacklist mSurfaceSyncer:Landroid/window/SurfaceSyncer;

.field greylist-max-o mSurfaceWidth:I

.field private final blacklist mSyncIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field final greylist-max-o mTmpRect:Landroid/graphics/Rect;

.field blacklist mTransformHint:I

.field blacklist mUseAlpha:Z

.field greylist-max-o mViewVisibility:Z

.field greylist-max-o mVisible:Z

.field greylist-max-o mWindowSpaceLeft:I

.field greylist-max-o mWindowSpaceTop:I

.field greylist-max-o mWindowStopped:Z

.field greylist-max-o mWindowVisibility:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$PgOqH-1CHTj5xz7zBHK88fj8o94(Landroid/view/SurfaceView;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$st27mCkd9jfJkTrN_P3qIGKX6NY(Landroid/view/SurfaceView;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRTLastReportedSurfaceSize(Landroid/view/SurfaceView;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastReportedSurfaceSize:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;->applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 259
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 263
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 266
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    .line 267
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "disableBackgroundLayer"    # Z

    .line 272
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 128
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 130
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 137
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 139
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 140
    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 144
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    .line 150
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    .line 151
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    .line 155
    const/4 v2, -0x2

    iput v2, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 157
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 160
    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 163
    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 171
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 172
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 173
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 174
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 175
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 177
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 179
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 184
    const/4 v3, 0x4

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 187
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    .line 188
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    .line 190
    const/high16 v4, -0x1000000

    iput v4, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 192
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 194
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 195
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 198
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 199
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 200
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 201
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 202
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 204
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 206
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 208
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 209
    iput v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    .line 216
    iput-boolean v1, p0, Landroid/view/SurfaceView;->lastCastModeOpen:Z

    .line 217
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsAddCastProjectionCallback:Z

    .line 221
    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 223
    new-instance v1, Landroid/window/SurfaceSyncer;

    invoke-direct {v1}, Landroid/window/SurfaceSyncer;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    .line 224
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    .line 230
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 237
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 242
    new-instance v1, Landroid/view/RemoteAccessibilityController;

    invoke-direct {v1, p0}, Landroid/view/RemoteAccessibilityController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    .line 245
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 1437
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 1438
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedSurfaceSize:Landroid/graphics/Point;

    .line 1523
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    .line 1586
    new-instance v1, Landroid/view/SurfaceView$1;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 273
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 274
    iput-boolean p5, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    .line 275
    return-void
.end method

.method private blacklist applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "frameNumber"    # J

    .line 1428
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1429
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_a

    .line 1431
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_d

    .line 1433
    :cond_a
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1435
    :goto_d
    return-void
.end method

.method private blacklist applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1989
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1990
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_a

    .line 1992
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_d

    .line 1994
    :cond_a
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1996
    :goto_d
    return-void
.end method

.method private blacklist clearSurfaceViewPort(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 586
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_37

    .line 587
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 588
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1b

    .line 589
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 591
    :cond_1b
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget v7, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFF)V

    goto :goto_49

    .line 600
    :cond_37
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFF)V

    .line 602
    :goto_49
    return-void
.end method

.method private blacklist copySurface(ZZ)V
    .registers 6
    .param p1, "surfaceControlCreated"    # Z
    .param p2, "bufferSizeChanged"    # Z

    .line 1266
    if-eqz p2, :cond_12

    .line 1267
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1268
    .local v0, "needsWorkaround":Z
    :goto_13
    if-nez p1, :cond_18

    if-nez v0, :cond_18

    .line 1269
    return-void

    .line 1271
    :cond_18
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1273
    if-eqz p1, :cond_29

    .line 1274
    :try_start_1f
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/graphics/BLASTBufferQueue;)V

    goto :goto_29

    .line 1283
    :catchall_27
    move-exception v1

    goto :goto_39

    .line 1277
    :cond_29
    :goto_29
    if-eqz v0, :cond_3f

    .line 1278
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_3f

    .line 1279
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->createSurfaceWithHandle()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_27

    goto :goto_3f

    .line 1283
    :goto_39
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1284
    throw v1

    .line 1283
    :cond_3f
    :goto_3f
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1284
    nop

    .line 1285
    return-void
.end method

.method private blacklist createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "surfaceUpdateTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1321
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "SurfaceView.updateSurface"

    if-nez v0, :cond_2b

    .line 1322
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 1323
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1324
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1325
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getBoundsLayer()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1326
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1327
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1328
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1331
    :cond_2b
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_72

    .line 1332
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(BLAST)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1333
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1334
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1335
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 1336
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1337
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1338
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1339
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1340
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_93

    .line 1343
    :cond_72
    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_7a

    move v4, v2

    goto :goto_7b

    :cond_7a
    move v4, v3

    .line 1344
    :goto_7b
    invoke-virtual {p3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_89

    move v5, v2

    goto :goto_8a

    :cond_89
    move v5, v3

    .line 1345
    :goto_8a
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    .line 1346
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1349
    :goto_93
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_d1

    .line 1350
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1351
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1352
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1353
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1354
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1355
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1356
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1357
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 1362
    :cond_d1
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_d8

    .line 1363
    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 1365
    :cond_d8
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceView;->mTransformHint:I

    .line 1366
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1368
    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {v0, p2, v3}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1369
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1370
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    sget-object v1, Landroid/view/ViewRootImpl;->sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    .line 1371
    return-void
.end method

.method private blacklist getFixedAlpha()F
    .registers 3

    .line 402
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    .line 403
    .local v0, "alpha":F
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v1, :cond_13

    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gtz v1, :cond_11

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_13

    :cond_11
    move v1, v0

    goto :goto_15

    :cond_13
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_15
    return v1
.end method

.method private greylist-max-o getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .registers 4

    .line 1527
    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1528
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 1529
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1530
    monitor-exit v0

    .line 1531
    return-object v1

    .line 1530
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    .registers 5
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    .line 1183
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/SurfaceView$$ExternalSyntheticLambda6;-><init>(Landroid/view/SurfaceView;[Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->addToSync(Landroid/window/SurfaceSyncer$SyncTarget;)V

    .line 1194
    return-void
.end method

.method private blacklist handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    .registers 6
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;

    .line 1197
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/window/SurfaceSyncer;->setupSync(Ljava/lang/Runnable;)I

    move-result v0

    .line 1199
    .local v0, "syncId":I
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;-><init>(Landroid/view/SurfaceView;[Landroid/view/SurfaceHolder$Callback;I)V

    invoke-virtual {v1, v0, v2}, Landroid/window/SurfaceSyncer;->addToSync(ILandroid/window/SurfaceSyncer$SyncTarget;)Z

    .line 1207
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    invoke-virtual {v1, v0}, Landroid/window/SurfaceSyncer;->markSyncReady(I)V

    .line 1208
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1209
    :try_start_1d
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1210
    monitor-exit v1

    .line 1211
    return-void

    .line 1210
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    throw v2
.end method

.method private blacklist initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 6
    .param p1, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1919
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    .line 1920
    .local v0, "connection":Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v1, v0}, Landroid/view/RemoteAccessibilityController;->alreadyAssociated(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1921
    return-void

    .line 1923
    :cond_d
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    .line 1924
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAccessibilityViewId()I

    move-result v3

    .line 1923
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/RemoteAccessibilityController;->assosciateHierarchy(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;I)V

    .line 1926
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    .line 1927
    return-void
.end method

.method private greylist-max-o isAboveParent()Z
    .registers 2

    .line 1556
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist notifySurfaceDestroyed()V
    .registers 6

    .line 1930
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1933
    invoke-direct {p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1934
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 1935
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1934
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1948
    :cond_1a
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1949
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->forceScopedDisconnect()V

    .line 1952
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_27
    return-void
.end method

.method private greylist-max-o onDrawFinished()V
    .registers 2

    .line 1379
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda8;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1380
    return-void
.end method

.method private greylist-max-o performDrawFinished()V
    .registers 2

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 432
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_f

    .line 433
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 434
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 436
    :cond_f
    return-void
.end method

.method private blacklist performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZLandroid/view/SurfaceControl$Transaction;)Z
    .registers 19
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;
    .param p3, "creating"    # Z
    .param p4, "sizeChanged"    # Z
    .param p5, "hintChanged"    # Z
    .param p6, "surfaceUpdateTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 845
    move-object v7, p0

    move-object v8, p2

    move-object/from16 v9, p6

    const/4 v10, 0x0

    .line 847
    .local v10, "realSizeChanged":Z
    iget-boolean v0, v7, Landroid/view/SurfaceView;->mVisible:Z

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    iput-boolean v0, v7, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 857
    if-eqz p3, :cond_17

    .line 858
    invoke-direct {p0, v9}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 859
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_17

    .line 860
    invoke-direct {p0, v9, v0}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 863
    :cond_17
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceSequenceId()I

    move-result v0

    iput v0, v7, Landroid/view/SurfaceView;->mParentSurfaceSequenceId:I

    .line 865
    iget-boolean v0, v7, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_27

    .line 866
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2c

    .line 868
    :cond_27
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 873
    :goto_2c
    invoke-direct {p0, v9}, Landroid/view/SurfaceView;->updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V

    .line 875
    iget-object v2, v7, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 876
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v7, Landroid/view/SurfaceView;->mSubLayer:I

    iget-boolean v5, v7, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 875
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-static/range {v0 .. v6}, Landroid/util/MiuiFreeformUtils;->getSurfaceViewBackgroundVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/res/Resources;IZLjava/lang/String;)V

    .line 878
    invoke-direct {p0, v9}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 879
    iget-boolean v0, v7, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v0, :cond_59

    .line 880
    invoke-direct {p0}, Landroid/view/SurfaceView;->getFixedAlpha()F

    move-result v0

    .line 881
    .local v0, "alpha":F
    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 882
    iput v0, v7, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    .line 885
    .end local v0    # "alpha":F
    :cond_59
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v7, Landroid/view/SurfaceView;->mCornerRadius:F

    invoke-virtual {v9, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 886
    if-nez p4, :cond_64

    if-eqz p5, :cond_69

    :cond_64
    if-nez p3, :cond_69

    .line 887
    invoke-direct {p0, v9}, Landroid/view/SurfaceView;->setBufferSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 889
    :cond_69
    if-nez p4, :cond_73

    if-nez p3, :cond_73

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_cb

    .line 894
    :cond_73
    iget-boolean v0, v7, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_83

    iget-object v0, v7, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_83

    .line 895
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, v7, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8c

    .line 897
    :cond_83
    iget-object v0, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 901
    :goto_8c
    iget-object v0, v7, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDesintationFrame(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 904
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 907
    iget v0, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView;->replacePositionUpdateListener(II)V

    goto :goto_cb

    .line 909
    :cond_a3
    iget-object v2, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 912
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float v5, v0, v1

    iget-object v0, v7, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 913
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 909
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v6}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 925
    :cond_cb
    :goto_cb
    invoke-direct {p0, v9}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 926
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    .line 927
    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 928
    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 929
    if-nez v8, :cond_e9

    .line 930
    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 931
    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_101

    .line 933
    :cond_e9
    iget v1, v8, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 934
    .local v1, "appInvertedScale":F
    iget-object v2, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v3, v7, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 935
    iget-object v2, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v3, v7, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 937
    .end local v1    # "appInvertedScale":F
    :goto_101
    iget-object v1, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 938
    .local v1, "surfaceWidth":I
    iget-object v2, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 939
    .local v2, "surfaceHeight":I
    iget v3, v7, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    if-ne v3, v1, :cond_113

    iget v3, v7, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    if-eq v3, v2, :cond_112

    goto :goto_113

    :cond_112
    move v11, v0

    :cond_113
    :goto_113
    move v0, v11

    .line 941
    .end local v10    # "realSizeChanged":Z
    .local v0, "realSizeChanged":Z
    iput v1, v7, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 942
    iput v2, v7, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 944
    return v0
.end method

.method private blacklist redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "callbacksCollected"    # Ljava/lang/Runnable;

    .line 1215
    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-direct {v0, p2}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    .line 1216
    .local v0, "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    .line 1217
    return-void
.end method

.method private blacklist releaseSurfaces(Z)V
    .registers 6
    .param p1, "releaseSurfacePackage"    # Z

    .line 793
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    .line 794
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 796
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    :try_start_c
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 798
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 799
    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 802
    :cond_16
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 804
    .local v1, "transaction":Landroid/view/SurfaceControl$Transaction;
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/SurfaceView;->mAlreadySetProjectionMode:Z

    .line 805
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_27

    .line 806
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 807
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 809
    :cond_27
    iget-object v3, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_30

    .line 810
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 811
    iput-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 813
    :cond_30
    iget-object v3, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_39

    .line 814
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 815
    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    .line 818
    :cond_39
    if-eqz p1, :cond_44

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v3, :cond_44

    .line 819
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 820
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 823
    :cond_44
    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 824
    .end local v1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    monitor-exit v0

    .line 825
    return-void

    .line 824
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private blacklist reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1885
    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 1886
    .local v0, "sc":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1a

    .line 1889
    :cond_d
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;->initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 1890
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1891
    return-void

    .line 1887
    :cond_1a
    :goto_1a
    return-void
.end method

.method private blacklist replacePositionUpdateListener(II)V
    .registers 5
    .param p1, "surfaceWidth"    # I
    .param p2, "surfaceHeight"    # I

    .line 835
    iget-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    if-eqz v0, :cond_b

    .line 836
    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->removePositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 838
    :cond_b
    new-instance v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;-><init>(Landroid/view/SurfaceView;II)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    .line 839
    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 840
    return-void
.end method

.method private greylist-max-o runOnUiThread(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1535
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1536
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_14

    .line 1537
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 1539
    :cond_14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1541
    :goto_17
    return-void
.end method

.method private blacklist setBufferSize(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1288
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1289
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_16

    .line 1290
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1293
    :cond_16
    return-void
.end method

.method private blacklist setWindowStopped(Z)V
    .registers 2
    .param p1, "stopped"    # Z

    .line 292
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 293
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 294
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 295
    return-void
.end method

.method private blacklist updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 786
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 787
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 788
    .local v0, "colorComponents":[F
    iget-object v1, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 789
    return-object p1
.end method

.method private blacklist updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 774
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 775
    return-void

    .line 777
    :cond_5
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v1, :cond_17

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    if-nez v1, :cond_17

    .line 779
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1a

    .line 781
    :cond_17
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 783
    :goto_1a
    return-void
.end method

.method private greylist-max-o updateOpaqueFlag()V
    .registers 2

    .line 766
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 767
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_15

    .line 769
    :cond_f
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 771
    :goto_15
    return-void
.end method

.method private blacklist updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1834
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1835
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_7

    .line 1837
    return-void

    .line 1839
    :cond_7
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 1840
    .local v1, "viewRootControl":Landroid/view/SurfaceControl;
    iget-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1841
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1842
    return-void
.end method

.method private greylist-max-o updateRequestedVisibility()V
    .registers 2

    .line 288
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 289
    return-void
.end method

.method private blacklist updateSurfaceAlpha()V
    .registers 6

    .line 407
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v0, :cond_60

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-eqz v0, :cond_60

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_d

    goto :goto_60

    .line 410
    :cond_d
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    .line 411
    .local v0, "viewAlpha":F
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v1, :cond_3c

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3c

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3c

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateSurfaceAlpha: translucent color is not supported for a surface placed z-below."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_3c
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 417
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_43

    .line 418
    return-void

    .line 420
    :cond_43
    invoke-direct {p0}, Landroid/view/SurfaceView;->getFixedAlpha()F

    move-result v2

    .line 421
    .local v2, "alpha":F
    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_5f

    .line 422
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 423
    .local v3, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 424
    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 425
    invoke-virtual {p0}, Landroid/view/SurfaceView;->damageInParent()V

    .line 426
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    .line 428
    .end local v3    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_5f
    return-void

    .line 408
    .end local v0    # "viewAlpha":F
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v2    # "alpha":F
    :cond_60
    :goto_60
    return-void
.end method


# virtual methods
.method public whitelist castModeChanged()V
    .registers 1

    .line 300
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 301
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 538
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_14

    .line 540
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    .line 542
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    .line 545
    :cond_14
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 546
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 526
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_13

    .line 528
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_13

    .line 530
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    .line 533
    :cond_13
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 534
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 13
    .param p1, "region"    # Landroid/graphics/Region;

    .line 499
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_48

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_b

    goto :goto_48

    .line 503
    :cond_b
    const/4 v0, 0x1

    .line 504
    .local v0, "opaque":Z
    iget v1, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_17

    .line 506
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    goto :goto_3e

    .line 507
    :cond_17
    if-eqz p1, :cond_3e

    .line 508
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 509
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    .line 510
    .local v2, "h":I
    if-lez v1, :cond_3e

    if-lez v2, :cond_3e

    .line 511
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 513
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v4, v3, v4

    .line 514
    .local v4, "l":I
    const/4 v5, 0x1

    aget v3, v3, v5

    .line 515
    .local v3, "t":I
    add-int v8, v4, v1

    add-int v9, v3, v2

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v5, p1

    move v6, v4

    move v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 518
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "t":I
    .end local v4    # "l":I
    :cond_3e
    :goto_3e
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 519
    const/4 v0, 0x0

    .line 521
    :cond_47
    return v0

    .line 500
    .end local v0    # "opaque":Z
    :cond_48
    :goto_48
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public blacklist getCornerRadius()F
    .registers 2

    .line 628
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    return v0
.end method

.method public whitelist getHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public whitelist getHostToken()Landroid/os/IBinder;
    .registers 3

    .line 1793
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1794
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_8

    .line 1795
    const/4 v1, 0x0

    return-object v1

    .line 1797
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getImportantForAccessibility()I
    .registers 3

    .line 1907
    invoke-super {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    .line 1911
    .local v0, "mode":I
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    if-eqz v0, :cond_11

    .line 1913
    :cond_10
    return v0

    .line 1915
    :cond_11
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 1783
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getSurfaceRenderPosition()Landroid/graphics/Rect;
    .registers 2

    .line 1424
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist isFixedSize()Z
    .registers 3

    .line 1552
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public blacklist isZOrderedOnTop()Z
    .registers 2

    .line 677
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method synthetic blacklist lambda$handleSyncBufferCallback$1$android-view-SurfaceView(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 5
    .param p1, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .param p2, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;

    .line 1185
    const/4 v0, 0x0

    .line 1186
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_c

    .line 1187
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->stopContinuousSyncTransaction()V

    .line 1188
    invoke-virtual {p1}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->waitForTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1191
    :cond_c
    invoke-interface {p2, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    .line 1192
    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    .line 1193
    return-void
.end method

.method synthetic blacklist lambda$handleSyncBufferCallback$2$android-view-SurfaceView([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 5
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .param p3, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;

    .line 1184
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$handleSyncNoBuffer$3$android-view-SurfaceView(Landroid/window/SurfaceSyncer$SyncBufferCallback;I)V
    .registers 6
    .param p1, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;
    .param p2, "syncId"    # I

    .line 1201
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    .line 1202
    iget-object v0, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1203
    :try_start_7
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1204
    monitor-exit v0

    .line 1205
    return-void

    .line 1204
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method

.method synthetic blacklist lambda$handleSyncNoBuffer$4$android-view-SurfaceView([Landroid/view/SurfaceHolder$Callback;ILandroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 5
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "syncId"    # I
    .param p3, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;

    .line 1199
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3, p2}, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncer$SyncBufferCallback;I)V

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$new$0$android-view-SurfaceView()Z
    .registers 3

    .line 166
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_f

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 167
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 168
    return v1
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4

    .line 312
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 314
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 318
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mIsAddCastProjectionCallback:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1f

    .line 319
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->addCastProjectionCallback(Landroid/view/ViewRootImpl$CastProjectionCallback;)V

    .line 320
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mAlreadySetCastMode:Z

    .line 321
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mAlreadySetProjectionMode:Z

    .line 322
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mIsAddCastProjectionCallback:Z

    .line 327
    :cond_1f
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_26

    move v0, v2

    :cond_26
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 328
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 330
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 331
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 332
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_46

    .line 333
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 334
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 335
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 336
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 338
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_46
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 5

    .line 440
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 446
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 447
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 449
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mIsAddCastProjectionCallback:Z

    if-eqz v2, :cond_13

    .line 450
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeCastProjectionCallback(Landroid/view/ViewRootImpl$CastProjectionCallback;)V

    .line 451
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsAddCastProjectionCallback:Z

    .line 456
    :cond_13
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAlreadySetCastMode:Z

    .line 457
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAlreadySetProjectionMode:Z

    .line 460
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 461
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_2d

    .line 462
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 463
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 464
    iget-object v3, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 465
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 468
    .end local v2    # "observer":Landroid/view/ViewTreeObserver;
    :cond_2d
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 470
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 471
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 473
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 474
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 475
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 8
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 1974
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1975
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1976
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v1, :cond_3a

    if-nez v0, :cond_e

    goto :goto_3a

    .line 1980
    :cond_e
    :try_start_e
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1981
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getInputToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1980
    invoke-interface {v1, v2, v3, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    .line 1985
    goto :goto_39

    .line 1982
    :catch_1c
    move-exception v1

    .line 1983
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exception requesting focus on embedded window"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceView"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1986
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_39
    return-void

    .line 1977
    :cond_3a
    :goto_3a
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1896
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1897
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1898
    return-void

    .line 1902
    :cond_c
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->getLeashToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/os/IBinder;)V

    .line 1903
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 479
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_a

    .line 480
    invoke-static {v0, p1, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    goto :goto_e

    .line 481
    :cond_a
    invoke-static {v1, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    :goto_e
    nop

    .line 482
    .local v0, "width":I
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_18

    .line 483
    invoke-static {v2, p2, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    goto :goto_1c

    .line 484
    :cond_18
    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    :goto_1c
    nop

    .line 485
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 486
    return-void
.end method

.method protected blacklist onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V
    .registers 15
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"    # Landroid/view/SurfaceControl;
    .param p3, "positionLeft"    # I
    .param p4, "positionTop"    # I
    .param p5, "postScaleX"    # F
    .param p6, "postScaleY"    # F

    .line 1398
    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1399
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1401
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 342
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 343
    if-nez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 344
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 345
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 346
    return-void
.end method

.method public whitelist projectionModeChanged()V
    .registers 2

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mAlreadySetProjectionMode:Z

    .line 306
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 307
    return-void
.end method

.method public blacklist requestUpdateSurfacePositionAndScale()V
    .registers 9

    .line 1405
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1406
    return-void

    .line 1408
    :cond_5
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1409
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1412
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float v6, v1, v2

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1413
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v2, v2

    div-float v7, v1, v2

    .line 1409
    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1414
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1415
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1416
    return-void
.end method

.method public whitelist setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .line 396
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 397
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateSurfaceAlpha()V

    .line 398
    return-void
.end method

.method public whitelist setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 6
    .param p1, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1868
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1869
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    .line 1870
    .local v0, "lastSc":Landroid/view/SurfaceControl;
    :goto_b
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1871
    .local v2, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_24

    .line 1872
    if-eqz v0, :cond_1e

    .line 1873
    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1874
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 1876
    :cond_1e
    invoke-direct {p0, v2, p1}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 1877
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1879
    :cond_24
    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1880
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1881
    return-void
.end method

.method public whitelist setClipBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .line 562
    invoke-super {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 564
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_c

    goto :goto_45

    .line 570
    :cond_c
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 571
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 574
    :cond_1c
    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_28

    .line 575
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_32

    .line 577
    :cond_28
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 579
    :goto_32
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 580
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 581
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 582
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 583
    return-void

    .line 565
    .end local v0    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_45
    :goto_45
    return-void
.end method

.method public blacklist setCornerRadius(F)V
    .registers 4
    .param p1, "cornerRadius"    # F

    .line 612
    iput p1, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    .line 613
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1e

    .line 614
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    .line 615
    sget-object v1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 616
    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 618
    :cond_1e
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 619
    return-void
.end method

.method public blacklist setEnableSurfaceClipping(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 556
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    .line 557
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 558
    return-void
.end method

.method protected greylist setFrame(IIII)Z
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 492
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 493
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 494
    return v0
.end method

.method public blacklist setProtected(Z)V
    .registers 3
    .param p1, "isProtected"    # Z

    .line 758
    if-eqz p1, :cond_9

    .line 759
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_f

    .line 761
    :cond_9
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 763
    :goto_f
    return-void
.end method

.method public greylist-max-o setResizeBackgroundColor(I)V
    .registers 3
    .param p1, "bgColor"    # I

    .line 1567
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1568
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1569
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1570
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1571
    return-void
.end method

.method public blacklist setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "bgColor"    # I

    .line 1579
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1580
    return-void

    .line 1582
    :cond_5
    iput p2, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 1583
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1584
    return-void
.end method

.method public whitelist setSecure(Z)V
    .registers 3
    .param p1, "isSecure"    # Z

    .line 738
    if-eqz p1, :cond_9

    .line 739
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_f

    .line 741
    :cond_9
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 743
    :goto_f
    return-void
.end method

.method public blacklist setUseAlpha()V
    .registers 2

    .line 376
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-nez v0, :cond_a

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    .line 378
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateSurfaceAlpha()V

    .line 380
    :cond_a
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 6
    .param p1, "visibility"    # I

    .line 350
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 352
    iget-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v3, :cond_17

    if-eqz v2, :cond_17

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v2, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    .line 353
    .local v0, "newRequestedVisible":Z
    :goto_18
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_1f

    .line 360
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 362
    :cond_1f
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 363
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 364
    return-void
.end method

.method public whitelist setZOrderMediaOverlay(Z)V
    .registers 3
    .param p1, "isMediaOverlay"    # Z

    .line 643
    if-eqz p1, :cond_4

    .line 644
    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x2

    :goto_5
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 645
    return-void
.end method

.method public whitelist setZOrderOnTop(Z)V
    .registers 4
    .param p1, "onTop"    # Z

    .line 666
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 668
    .local v0, "allowDynamicChange":Z
    :goto_11
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    .line 669
    return-void
.end method

.method public blacklist setZOrderedOnTop(ZZ)Z
    .registers 7
    .param p1, "onTop"    # Z
    .param p2, "allowDynamicChange"    # Z

    .line 698
    if-eqz p1, :cond_4

    .line 699
    const/4 v0, 0x1

    .local v0, "subLayer":I
    goto :goto_5

    .line 701
    .end local v0    # "subLayer":I
    :cond_4
    const/4 v0, -0x2

    .line 703
    .restart local v0    # "subLayer":I
    :goto_5
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_b

    .line 704
    return v2

    .line 706
    :cond_b
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 708
    if-nez p2, :cond_10

    .line 709
    return v2

    .line 711
    :cond_10
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-nez v1, :cond_16

    .line 712
    return v2

    .line 714
    :cond_16
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 715
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_1d

    .line 716
    return v2

    .line 718
    :cond_1d
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 719
    .local v3, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-direct {p0, v3}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 720
    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 721
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 722
    return v2
.end method

.method public blacklist surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1807
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    .line 1808
    return-void
.end method

.method public blacklist surfaceDestroyed()V
    .registers 2

    .line 1817
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    .line 1818
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->disassosciateHierarchy()V

    .line 1819
    return-void
.end method

.method public blacklist surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1828
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    .line 1829
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 1831
    :cond_b
    return-void
.end method

.method public blacklist surfaceSyncStarted()V
    .registers 6

    .line 1224
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1225
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_2a

    .line 1226
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1227
    :try_start_9
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1228
    .local v3, "syncId":I
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->mergeSync(ILandroid/window/SurfaceSyncer;)V

    .line 1229
    .end local v3    # "syncId":I
    goto :goto_f

    .line 1230
    :cond_25
    monitor-exit v1

    goto :goto_2a

    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_27

    throw v2

    .line 1232
    :cond_2a
    :goto_2a
    return-void
.end method

.method public blacklist syncNextFrame(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 2002
    .local p1, "t":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, p1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)V

    .line 2003
    return-void
.end method

.method blacklist updateEmbeddedAccessibilityMatrix(Z)V
    .registers 6
    .param p1, "force"    # Z

    .line 1955
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1956
    return-void

    .line 1958
    :cond_9
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 1963
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1964
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1965
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1966
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1967
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1966
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1968
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p1}, Landroid/view/RemoteAccessibilityController;->setWindowMatrix(Landroid/graphics/Matrix;Z)V

    .line 1969
    return-void
.end method

.method protected greylist-max-o updateSurface()V
    .registers 31

    .line 949
    move-object/from16 v8, p0

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v0, :cond_7

    .line 953
    return-void

    .line 955
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v9

    .line 957
    .local v9, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v9, :cond_e

    .line 958
    return-void

    .line 961
    :cond_e
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    const/4 v10, 0x0

    if-eqz v0, :cond_377

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_377

    .line 967
    :cond_1d
    iget-object v11, v9, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 968
    .local v11, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    if-eqz v11, :cond_26

    .line 969
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v11}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 973
    :cond_26
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mAlreadySetCastMode:Z

    const-string v1, "UPDATE "

    const-string v12, "SurfaceView"

    const/4 v13, 0x1

    if-eqz v0, :cond_35

    iget-boolean v0, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    iget-boolean v2, v8, Landroid/view/SurfaceView;->lastCastModeOpen:Z

    if-eq v0, v2, :cond_6f

    .line 976
    :cond_35
    iget-boolean v0, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    iput-boolean v0, v8, Landroid/view/SurfaceView;->lastCastModeOpen:Z

    .line 977
    iput-boolean v13, v8, Landroid/view/SurfaceView;->mAlreadySetCastMode:Z

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mIsCastMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_66

    .line 982
    iget-boolean v2, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setCastLayer(Z)V

    .line 984
    :cond_66
    iget-object v0, v8, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6f

    .line 985
    iget-boolean v2, v9, Landroid/view/ViewRootImpl;->mIsCastMode:Z

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setCastLayer(Z)V

    .line 989
    :cond_6f
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_fa

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mAlreadySetProjectionMode:Z

    if-eqz v0, :cond_7f

    .line 990
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v0

    iget-boolean v2, v8, Landroid/view/SurfaceView;->lastProjectionModeOpen:Z

    if-eq v0, v2, :cond_fa

    .line 992
    :cond_7f
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v0

    iput-boolean v0, v8, Landroid/view/SurfaceView;->lastProjectionModeOpen:Z

    .line 993
    iput-boolean v13, v8, Landroid/view/SurfaceView;->mAlreadySetProjectionMode:Z

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsProjectionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 995
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 994
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v0

    .line 997
    .local v0, "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_c8

    .line 998
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 999
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-interface {v0}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    goto :goto_c8

    .line 1001
    :cond_c3
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 1005
    :cond_c8
    :goto_c8
    iget-object v1, v8, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_e1

    .line 1006
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 1007
    iget-object v1, v8, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-interface {v0}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    goto :goto_e1

    .line 1009
    :cond_dc
    iget-object v1, v8, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 1014
    :cond_e1
    :goto_e1
    iget-object v1, v8, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_fa

    .line 1015
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getIsProjectionMode()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 1016
    iget-object v1, v8, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-interface {v0}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    goto :goto_fa

    .line 1018
    :cond_f5
    iget-object v1, v8, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 1024
    .end local v0    # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    :cond_fa
    :goto_fa
    iget v0, v8, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1025
    .local v0, "myWidth":I
    if-gtz v0, :cond_102

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    :cond_102
    move v14, v0

    .line 1026
    .end local v0    # "myWidth":I
    .local v14, "myWidth":I
    iget v0, v8, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1027
    .local v0, "myHeight":I
    if-gtz v0, :cond_10b

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    :cond_10b
    move v15, v0

    .line 1029
    .end local v0    # "myHeight":I
    .local v15, "myHeight":I
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getFixedAlpha()F

    move-result v16

    .line 1030
    .local v16, "alpha":F
    iget v0, v8, Landroid/view/SurfaceView;->mFormat:I

    iget v1, v8, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v0, v1, :cond_118

    move v0, v13

    goto :goto_119

    :cond_118
    move v0, v10

    :goto_119
    move/from16 v17, v0

    .line 1031
    .local v17, "formatChanged":Z
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mVisible:Z

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_123

    move v0, v13

    goto :goto_124

    :cond_123
    move v0, v10

    :goto_124
    move/from16 v18, v0

    .line 1032
    .local v18, "visibleChanged":Z
    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    cmpl-float v0, v0, v16

    if-eqz v0, :cond_12e

    move v0, v13

    goto :goto_12f

    :cond_12e
    move v0, v10

    :goto_12f
    move/from16 v19, v0

    .line 1033
    .local v19, "alphaChanged":Z
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_139

    if-nez v17, :cond_139

    if-eqz v18, :cond_13d

    :cond_139
    if-eqz v1, :cond_13d

    move v0, v13

    goto :goto_13e

    :cond_13d
    move v0, v10

    :goto_13e
    move v7, v0

    .line 1035
    .local v7, "creating":Z
    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    if-ne v0, v14, :cond_14a

    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    if-eq v0, v15, :cond_148

    goto :goto_14a

    :cond_148
    move v0, v10

    goto :goto_14b

    :cond_14a
    :goto_14a
    move v0, v13

    :goto_14b
    move v6, v0

    .line 1036
    .local v6, "sizeChanged":Z
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v0, v1, :cond_154

    move v0, v13

    goto :goto_155

    :cond_154
    move v0, v10

    :goto_155
    move/from16 v20, v0

    .line 1037
    .local v20, "windowVisibleChanged":Z
    iget-object v0, v8, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v8, v0}, Landroid/view/SurfaceView;->getLocationInSurface([I)V

    .line 1038
    iget v0, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v1, v8, Landroid/view/SurfaceView;->mLocation:[I

    aget v2, v1, v10

    if-ne v0, v2, :cond_16d

    iget v0, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    aget v1, v1, v13

    if-eq v0, v1, :cond_16b

    goto :goto_16d

    :cond_16b
    move v0, v10

    goto :goto_16e

    :cond_16d
    :goto_16d
    move v0, v13

    :goto_16e
    move/from16 v21, v0

    .line 1040
    .local v21, "positionChanged":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_18b

    .line 1041
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_189

    goto :goto_18b

    :cond_189
    move v0, v10

    goto :goto_18c

    :cond_18b
    :goto_18b
    move v0, v13

    :goto_18c
    move/from16 v22, v0

    .line 1042
    .local v22, "layoutSizeChanged":Z
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iget v1, v8, Landroid/view/SurfaceView;->mTransformHint:I

    if-eq v0, v1, :cond_19c

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v0, :cond_19c

    move v0, v13

    goto :goto_19d

    :cond_19c
    move v0, v10

    :goto_19d
    move/from16 v23, v0

    .line 1045
    .local v23, "hintChanged":Z
    if-nez v7, :cond_1ba

    if-nez v17, :cond_1ba

    if-nez v6, :cond_1ba

    if-nez v18, :cond_1ba

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v0, :cond_1ad

    if-nez v19, :cond_1ba

    :cond_1ad
    if-nez v20, :cond_1ba

    if-nez v21, :cond_1ba

    if-nez v22, :cond_1ba

    if-eqz v23, :cond_1b6

    goto :goto_1ba

    :cond_1b6
    move v13, v6

    move v4, v7

    goto/16 :goto_376

    .line 1048
    :cond_1ba
    :goto_1ba
    iget-object v0, v8, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v8, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 1061
    :try_start_1bf
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v0, v8, Landroid/view/SurfaceView;->mVisible:Z

    .line 1062
    iget-object v0, v8, Landroid/view/SurfaceView;->mLocation:[I

    aget v1, v0, v10

    iput v1, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 1063
    aget v0, v0, v13

    iput v0, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 1064
    iput v14, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 1065
    iput v15, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 1066
    iget v0, v8, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v0, v8, Landroid/view/SurfaceView;->mFormat:I

    .line 1067
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v0, v8, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 1068
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, v8, Landroid/view/SurfaceView;->mTransformHint:I

    .line 1070
    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1071
    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1072
    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1073
    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_201} :catch_36e

    .line 1074
    if-eqz v11, :cond_20e

    .line 1075
    :try_start_203
    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_203 .. :try_end_208} :catch_209

    goto :goto_20e

    .line 1161
    :catch_209
    move-exception v0

    move v13, v6

    move v4, v7

    goto/16 :goto_371

    .line 1078
    :cond_20e
    :goto_20e
    :try_start_20e
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object v5, v0

    .line 1079
    .local v5, "surfaceInsets":Landroid/graphics/Rect;
    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    iget v2, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1082
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_221
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_221} :catch_36e

    move-object v4, v0

    .line 1083
    .local v4, "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    if-eqz v7, :cond_24c

    .line 1084
    :try_start_224
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceView["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, "name":Ljava/lang/String;
    invoke-direct {v8, v9, v0, v4}, Landroid/view/SurfaceView;->createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_24b
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_24b} :catch_209

    .end local v0    # "name":Ljava/lang/String;
    goto :goto_251

    .line 1087
    :cond_24c
    :try_start_24c
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_24e} :catch_36e

    if-nez v0, :cond_251

    .line 1088
    return-void

    .line 1087
    :cond_251
    :goto_251
    nop

    .line 1091
    if-nez v6, :cond_263

    if-nez v7, :cond_263

    if-nez v23, :cond_263

    :try_start_258
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v0, :cond_261

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_261

    goto :goto_263

    :cond_261
    move v0, v10

    goto :goto_264

    :cond_263
    :goto_263
    move v0, v13

    :goto_264
    move/from16 v24, v0

    .line 1093
    .local v24, "redrawNeeded":Z
    if-eqz v24, :cond_276

    .line 1094
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->wasRelayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_276

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->isInLocalSync()Z

    move-result v0

    if-eqz v0, :cond_276

    move v0, v13

    goto :goto_277

    :cond_276
    move v0, v10

    :goto_277
    move/from16 v25, v0

    .line 1095
    .local v25, "shouldSyncBuffer":Z
    const/4 v0, 0x0

    .line 1096
    .local v0, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    if-eqz v25, :cond_292

    .line 1097
    new-instance v1, Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback-IA;)V

    move-object v0, v1

    .line 1098
    iget-object v1, v8, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1100
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda7;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    .line 1098
    invoke-virtual {v1, v10, v2}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(ZLjava/util/function/Consumer;)V
    :try_end_290
    .catch Ljava/lang/Exception; {:try_start_258 .. :try_end_290} :catch_209

    move-object v3, v0

    goto :goto_293

    .line 1096
    :cond_292
    move-object v3, v0

    .line 1103
    .end local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v3, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    :goto_293
    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v26, v3

    .end local v3    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v26, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    move-object v3, v11

    move-object/from16 v27, v4

    .end local v4    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .local v27, "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    move v4, v7

    move-object/from16 v28, v5

    .end local v5    # "surfaceInsets":Landroid/graphics/Rect;
    .local v28, "surfaceInsets":Landroid/graphics/Rect;
    move v5, v6

    move v13, v6

    .end local v6    # "sizeChanged":Z
    .local v13, "sizeChanged":Z
    move/from16 v6, v23

    move/from16 v29, v7

    .end local v7    # "creating":Z
    .local v29, "creating":Z
    move-object/from16 v7, v27

    :try_start_2a6
    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceView;->performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZLandroid/view/SurfaceControl$Transaction;)Z

    move-result v1
    :try_end_2aa
    .catch Ljava/lang/Exception; {:try_start_2a6 .. :try_end_2aa} :catch_36a

    .line 1107
    .local v1, "realSizeChanged":Z
    const/4 v2, 0x0

    .line 1109
    .local v2, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move/from16 v3, v29

    .line 1110
    .local v3, "surfaceChanged":Z
    :try_start_2ad
    iget-boolean v4, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_2af
    .catchall {:try_start_2ad .. :try_end_2af} :catchall_352

    if-eqz v4, :cond_2c6

    if-nez v3, :cond_2b9

    :try_start_2b3
    iget-boolean v4, v8, Landroid/view/SurfaceView;->mVisible:Z

    if-nez v4, :cond_2c6

    if-eqz v18, :cond_2c6

    .line 1111
    :cond_2b9
    iput-boolean v10, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1112
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V
    :try_end_2be
    .catchall {:try_start_2b3 .. :try_end_2be} :catchall_2bf

    goto :goto_2c6

    .line 1156
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v3    # "surfaceChanged":Z
    :catchall_2bf
    move-exception v0

    move-object/from16 v5, v26

    move/from16 v4, v29

    goto/16 :goto_357

    .line 1115
    .restart local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v3    # "surfaceChanged":Z
    :cond_2c6
    :goto_2c6
    move/from16 v4, v29

    .end local v29    # "creating":Z
    .local v4, "creating":Z
    :try_start_2c8
    invoke-direct {v8, v4, v13}, Landroid/view/SurfaceView;->copySurface(ZZ)V

    .line 1117
    iget-boolean v5, v8, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v5, :cond_33c

    iget-object v5, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-eqz v5, :cond_33c

    .line 1118
    iget-boolean v5, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_2d9
    .catchall {:try_start_2c8 .. :try_end_2d9} :catchall_34e

    if-nez v5, :cond_2fc

    if-nez v3, :cond_2df

    if-eqz v18, :cond_2fc

    .line 1119
    :cond_2df
    const/4 v0, 0x1

    :try_start_2e0
    iput-boolean v0, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1120
    iput-boolean v0, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1123
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    move-object v2, v0

    .line 1124
    array-length v0, v2

    move v5, v10

    :goto_2eb
    if-ge v5, v0, :cond_2fc

    aget-object v6, v2, v5

    .line 1125
    .local v6, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v7, v8, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1124
    .end local v6    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2eb

    .line 1156
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v3    # "surfaceChanged":Z
    :catchall_2f7
    move-exception v0

    move-object/from16 v5, v26

    goto/16 :goto_357

    .line 1128
    .restart local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v3    # "surfaceChanged":Z
    :cond_2fc
    if-nez v4, :cond_308

    if-nez v17, :cond_308

    if-nez v13, :cond_308

    if-nez v23, :cond_308

    if-nez v18, :cond_308

    if-eqz v1, :cond_320

    .line 1133
    :cond_308
    if-nez v2, :cond_30f

    .line 1134
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0
    :try_end_30e
    .catchall {:try_start_2e0 .. :try_end_30e} :catchall_2f7

    move-object v2, v0

    .line 1136
    :cond_30f
    :try_start_30f
    array-length v0, v2
    :try_end_310
    .catchall {:try_start_30f .. :try_end_310} :catchall_34e

    move v5, v10

    :goto_311
    if-ge v5, v0, :cond_320

    :try_start_313
    aget-object v6, v2, v5

    .line 1137
    .restart local v6    # "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v7, v8, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v10, v8, Landroid/view/SurfaceView;->mFormat:I

    invoke-interface {v6, v7, v10, v14, v15}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1136
    .end local v6    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x0

    goto :goto_311

    .line 1140
    :cond_320
    if-eqz v24, :cond_339

    .line 1144
    if-nez v2, :cond_329

    .line 1145
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0
    :try_end_328
    .catchall {:try_start_313 .. :try_end_328} :catchall_2f7

    move-object v2, v0

    .line 1148
    :cond_329
    if-eqz v25, :cond_331

    .line 1149
    move-object/from16 v5, v26

    .end local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v5, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    :try_start_32d
    invoke-direct {v8, v2, v5}, Landroid/view/SurfaceView;->handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    goto :goto_33e

    .line 1151
    .end local v5    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    :cond_331
    move-object/from16 v5, v26

    .end local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v5    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    invoke-direct {v8, v2}, Landroid/view/SurfaceView;->handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    :try_end_336
    .catchall {:try_start_32d .. :try_end_336} :catchall_337

    goto :goto_33e

    .line 1156
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v3    # "surfaceChanged":Z
    :catchall_337
    move-exception v0

    goto :goto_357

    .line 1140
    .end local v5    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v3    # "surfaceChanged":Z
    .restart local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    :cond_339
    move-object/from16 v5, v26

    .end local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v5    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    goto :goto_33e

    .line 1117
    .end local v5    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    :cond_33c
    move-object/from16 v5, v26

    .line 1156
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v3    # "surfaceChanged":Z
    .end local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v5    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    :goto_33e
    const/4 v2, 0x0

    :try_start_33f
    iput-boolean v2, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1157
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_34d

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v0, :cond_34d

    .line 1158
    const/4 v2, 0x0

    invoke-direct {v8, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1163
    .end local v1    # "realSizeChanged":Z
    .end local v5    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v24    # "redrawNeeded":Z
    .end local v25    # "shouldSyncBuffer":Z
    .end local v27    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v28    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_34d
    goto :goto_376

    .line 1156
    .restart local v1    # "realSizeChanged":Z
    .restart local v24    # "redrawNeeded":Z
    .restart local v25    # "shouldSyncBuffer":Z
    .restart local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v27    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v28    # "surfaceInsets":Landroid/graphics/Rect;
    :catchall_34e
    move-exception v0

    move-object/from16 v5, v26

    .end local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v5    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    goto :goto_357

    .end local v4    # "creating":Z
    .end local v5    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v29    # "creating":Z
    :catchall_352
    move-exception v0

    move-object/from16 v5, v26

    move/from16 v4, v29

    .end local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v29    # "creating":Z
    .restart local v4    # "creating":Z
    .restart local v5    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    :goto_357
    const/4 v2, 0x0

    iput-boolean v2, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1157
    iget-object v2, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_366

    iget-boolean v2, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v2, :cond_366

    .line 1158
    const/4 v2, 0x0

    invoke-direct {v8, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1160
    :cond_366
    nop

    .end local v4    # "creating":Z
    .end local v9    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v11    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local v13    # "sizeChanged":Z
    .end local v14    # "myWidth":I
    .end local v15    # "myHeight":I
    .end local v16    # "alpha":F
    .end local v17    # "formatChanged":Z
    .end local v18    # "visibleChanged":Z
    .end local v19    # "alphaChanged":Z
    .end local v20    # "windowVisibleChanged":Z
    .end local v21    # "positionChanged":Z
    .end local v22    # "layoutSizeChanged":Z
    .end local v23    # "hintChanged":Z
    .end local p0    # "this":Landroid/view/SurfaceView;
    throw v0
    :try_end_368
    .catch Ljava/lang/Exception; {:try_start_33f .. :try_end_368} :catch_368

    .line 1161
    .end local v1    # "realSizeChanged":Z
    .end local v5    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v24    # "redrawNeeded":Z
    .end local v25    # "shouldSyncBuffer":Z
    .end local v27    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v28    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v4    # "creating":Z
    .restart local v9    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v11    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v13    # "sizeChanged":Z
    .restart local v14    # "myWidth":I
    .restart local v15    # "myHeight":I
    .restart local v16    # "alpha":F
    .restart local v17    # "formatChanged":Z
    .restart local v18    # "visibleChanged":Z
    .restart local v19    # "alphaChanged":Z
    .restart local v20    # "windowVisibleChanged":Z
    .restart local v21    # "positionChanged":Z
    .restart local v22    # "layoutSizeChanged":Z
    .restart local v23    # "hintChanged":Z
    .restart local p0    # "this":Landroid/view/SurfaceView;
    :catch_368
    move-exception v0

    goto :goto_371

    .end local v4    # "creating":Z
    .restart local v29    # "creating":Z
    :catch_36a
    move-exception v0

    move/from16 v4, v29

    .end local v29    # "creating":Z
    .restart local v4    # "creating":Z
    goto :goto_371

    .end local v4    # "creating":Z
    .end local v13    # "sizeChanged":Z
    .local v6, "sizeChanged":Z
    .restart local v7    # "creating":Z
    :catch_36e
    move-exception v0

    move v13, v6

    move v4, v7

    .line 1162
    .end local v6    # "sizeChanged":Z
    .end local v7    # "creating":Z
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v4    # "creating":Z
    .restart local v13    # "sizeChanged":Z
    :goto_371
    const-string v1, "Exception configuring surface"

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1169
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_376
    return-void

    .line 962
    .end local v4    # "creating":Z
    .end local v11    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local v13    # "sizeChanged":Z
    .end local v14    # "myWidth":I
    .end local v15    # "myHeight":I
    .end local v16    # "alpha":F
    .end local v17    # "formatChanged":Z
    .end local v18    # "visibleChanged":Z
    .end local v19    # "alphaChanged":Z
    .end local v20    # "windowVisibleChanged":Z
    .end local v21    # "positionChanged":Z
    .end local v22    # "layoutSizeChanged":Z
    .end local v23    # "hintChanged":Z
    :cond_377
    :goto_377
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V

    .line 963
    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 964
    return-void
.end method
