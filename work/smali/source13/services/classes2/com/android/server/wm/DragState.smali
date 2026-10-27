.class Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragState$AnimationListener;,
        Lcom/android/server/wm/DragState$InputInterceptor;
    }
.end annotation


# static fields
.field private static final ANIMATED_PROPERTY_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIMATED_PROPERTY_SCALE:Ljava/lang/String; = "scale"

.field private static final ANIMATED_PROPERTY_X:Ljava/lang/String; = "x"

.field private static final ANIMATED_PROPERTY_Y:Ljava/lang/String; = "y"

.field private static final DRAG_FLAGS_URI_ACCESS:I = 0x3

.field private static final DRAG_FLAGS_URI_PERMISSIONS:I = 0xc3

.field private static final MAX_ANIMATION_DURATION_MS:J = 0x177L

.field private static final MIN_ANIMATION_DURATION_MS:J = 0xc3L


# instance fields
.field volatile mAnimationCompleted:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAnimatorSet:Landroid/animation/Animator;

.field mCrossProfileCopyAllowed:Z

.field private final mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field mCurrentX:F

.field mCurrentY:F

.field mData:Landroid/content/ClipData;

.field mDataDescription:Landroid/content/ClipDescription;

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplaySize:Landroid/graphics/Point;

.field final mDragDropController:Lcom/android/server/wm/DragDropController;

.field mDragInProgress:Z

.field mDragResult:Z

.field private mDragStateStub:Lcom/android/server/wm/DragStateStub;

.field mDragWindow:Lcom/android/server/wm/WindowState;

.field mDropWindow:Lcom/android/server/wm/WindowState;

.field mFlags:I

.field mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

.field mInputSurface:Landroid/view/SurfaceControl;

.field private mIsClosing:Z

.field mLocalWin:Landroid/os/IBinder;

.field mNotifiedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mOriginalAlpha:F

.field mOriginalX:F

.field mOriginalY:F

.field mPid:I

.field mRelinquishDragSurfaceToDropTarget:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mSourceUserId:I

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mThumbOffsetX:F

.field mThumbOffsetY:F

.field private final mTmpClipRect:Landroid/graphics/Rect;

.field mToken:Landroid/os/IBinder;

.field mTouchSource:I

.field final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field mUid:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .registers 9
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "controller"    # Lcom/android/server/wm/DragDropController;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "surface"    # Landroid/view/SurfaceControl;
    .param p5, "flags"    # I
    .param p6, "localWin"    # Landroid/os/IBinder;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    .line 129
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 130
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 152
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 153
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 154
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 155
    iput-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 156
    iput p5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 157
    iput-object p6, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 159
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 161
    invoke-static {}, Lcom/android/server/wm/DragStateStub;->newInstance()Lcom/android/server/wm/DragStateStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDragStateStub:Lcom/android/server/wm/DragStateStub;

    .line 162
    return-void
.end method

.method private containsApplicationExtras(Landroid/content/ClipDescription;)Z
    .registers 4
    .param p1, "desc"    # Landroid/content/ClipDescription;

    .line 539
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 540
    return v0

    .line 542
    :cond_4
    const-string v1, "application/vnd.android.activity"

    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 543
    const-string v1, "application/vnd.android.shortcut"

    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 544
    const-string v1, "application/vnd.android.task"

    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    .line 542
    :cond_1d
    return v0
.end method

.method private createCancelAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 8

    .line 734
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v4, v3, v4

    const/4 v5, 0x0

    aput v4, v2, v5

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 735
    const-string/jumbo v3, "x"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v5

    new-array v2, v1, [F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v6, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v6, v3, v6

    aput v6, v2, v5

    aput v3, v2, v4

    .line 737
    const-string/jumbo v3, "y"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_78

    .line 739
    const-string/jumbo v3, "scale"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v2, v1, v5

    const/4 v2, 0x0

    aput v2, v1, v4

    .line 740
    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 734
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 741
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$AnimationListener-IA;)V

    .line 742
    .local v1, "listener":Lcom/android/server/wm/DragState$AnimationListener;
    const-wide/16 v2, 0xc3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 743
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 744
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 745
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 747
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 748
    return-object v0

    nop

    :array_78
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createReturnAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 13

    .line 704
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    aput v3, v2, v5

    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 705
    const-string/jumbo v3, "x"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v5

    new-array v2, v1, [F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v6, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v3, v6

    aput v3, v2, v5

    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    sub-float/2addr v3, v6

    aput v3, v2, v4

    .line 708
    const-string/jumbo v3, "y"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_b4

    .line 711
    const-string/jumbo v3, "scale"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v2, v1, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v1, v4

    .line 712
    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 704
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 715
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget v1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    sub-float/2addr v1, v2

    .line 716
    .local v1, "translateX":F
    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    sub-float/2addr v2, v3

    .line 718
    .local v2, "translateY":F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 719
    .local v3, "travelDistance":D
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-double v5, v5

    .line 720
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 721
    .local v5, "displayDiagonal":D
    div-double v7, v3, v5

    const-wide v9, 0x4066800000000000L    # 180.0

    mul-double/2addr v7, v9

    double-to-long v7, v7

    const-wide/16 v9, 0xc3

    add-long/2addr v7, v9

    .line 723
    .local v7, "duration":J
    new-instance v9, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$AnimationListener-IA;)V

    .line 724
    .local v9, "listener":Lcom/android/server/wm/DragState$AnimationListener;
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 725
    iget-object v10, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 726
    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 727
    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 729
    iget-object v10, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 730
    return-object v0

    nop

    :array_b4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isFromSource(I)Z
    .registers 3
    .param p1, "source"    # I

    .line 752
    iget v0, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isValidDropTarget(Lcom/android/server/wm/WindowState;ZZ)Z
    .registers 9
    .param p1, "targetWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "containsAppExtras"    # Z
    .param p3, "interceptsGlobalDrag"    # Z

    .line 549
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 550
    return v0

    .line 552
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_11

    move v1, v3

    goto :goto_12

    :cond_11
    move v1, v0

    .line 553
    .local v1, "isLocalWindow":Z
    :goto_12
    if-nez v1, :cond_19

    if-nez p3, :cond_19

    if-eqz p2, :cond_19

    .line 556
    return v0

    .line 558
    :cond_19
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget(Z)Z

    move-result v2

    if-nez v2, :cond_20

    .line 559
    return v0

    .line 561
    :cond_20
    iget v2, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_2c

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 563
    :cond_2c
    if-nez v1, :cond_2f

    .line 564
    return v0

    .line 568
    :cond_2f
    if-nez p3, :cond_41

    iget-boolean v2, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    if-nez v2, :cond_41

    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 570
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v2, v4, :cond_42

    :cond_41
    move v0, v3

    .line 568
    :cond_42
    return v0
.end method

.method static synthetic lambda$createCancelAnimationLocked$2(Landroid/animation/ValueAnimator;)V
    .registers 1
    .param p0, "animator"    # Landroid/animation/ValueAnimator;

    .line 747
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$createReturnAnimationLocked$1(Landroid/animation/ValueAnimator;)V
    .registers 1
    .param p0, "animator"    # Landroid/animation/ValueAnimator;

    .line 729
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;
    .registers 19
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "data"    # Landroid/content/ClipData;
    .param p5, "includeDragSurface"    # Z
    .param p6, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;

    .line 697
    move-object v0, p0

    iget v4, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget-object v7, v0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 699
    if-eqz p5, :cond_c

    iget-object v1, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    move-object v9, v1

    const/4 v11, 0x0

    .line 697
    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p6

    invoke-static/range {v1 .. v11}, Landroid/view/DragEvent;->obtain(IFFFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v1

    return-object v1
.end method

.method private relinquishDragSurfaceToDragSource()Z
    .registers 2

    .line 806
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V
    .registers 21
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F
    .param p4, "containsAppExtras"    # Z

    .line 487
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v13

    .line 488
    .local v13, "interceptsGlobalDrag":Z
    iget-boolean v0, v15, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_d1

    move/from16 v11, p4

    invoke-direct {v15, v14, v11, v13}, Lcom/android/server/wm/DragState;->isValidDropTarget(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 490
    if-eqz v13, :cond_1d

    iget-object v0, v15, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->copyForTransferWithActivityInfo()Landroid/content/ClipData;

    move-result-object v0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    move-object v12, v0

    .line 496
    .local v12, "data":Landroid/content/ClipData;
    const/4 v0, 0x0

    .line 497
    .local v0, "event":Landroid/view/DragEvent;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.mirror"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 498
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 500
    .local v10, "targetUserId":I
    iget v1, v15, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_5d

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_5d

    iget-object v1, v15, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v1, :cond_5d

    .line 502
    new-instance v1, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget-object v2, v15, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v4, v15, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v5, v15, Lcom/android/server/wm/DragState;->mUid:I

    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    iget v2, v15, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v7, v2, 0xc3

    iget v8, v15, Lcom/android/server/wm/DragState;->mSourceUserId:I

    move-object v2, v1

    move v9, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V

    move-object v8, v1

    .local v1, "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    goto :goto_5f

    .line 511
    .end local v1    # "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    :cond_5d
    const/4 v1, 0x0

    move-object v8, v1

    .line 513
    .local v8, "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    :goto_5f
    const/4 v2, 0x1

    iget-object v5, v15, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object v0

    .line 515
    .end local v8    # "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    .end local v10    # "targetUserId":I
    move-object v2, v0

    move v3, v13

    move-object v1, v14

    goto :goto_84

    .line 516
    :cond_72
    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v8, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move v3, v13

    .end local v13    # "interceptsGlobalDrag":Z
    .local v3, "interceptsGlobalDrag":Z
    move v13, v1

    move-object v1, v14

    move-object v14, v2

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object v0

    move-object v2, v0

    .line 521
    .end local v0    # "event":Landroid/view/DragEvent;
    .local v2, "event":Landroid/view/DragEvent;
    :goto_84
    :try_start_84
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 523
    iget-object v0, v15, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_8e} :catch_9e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_9c

    .line 528
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v4, :cond_d3

    .line 529
    :goto_98
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    goto :goto_d3

    .line 528
    :catchall_9c
    move-exception v0

    goto :goto_c3

    .line 524
    :catch_9e
    move-exception v0

    .line 525
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_9f
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to drag-start window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_9f .. :try_end_b7} :catchall_9c

    .line 528
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v4, :cond_d3

    .line 529
    goto :goto_98

    .line 528
    :goto_c3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v5, v5, Lcom/android/server/wm/Session;->mPid:I

    if-eq v4, v5, :cond_d0

    .line 529
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    .line 531
    :cond_d0
    throw v0

    .line 488
    .end local v2    # "event":Landroid/view/DragEvent;
    .end local v3    # "interceptsGlobalDrag":Z
    .end local v12    # "data":Landroid/content/ClipData;
    .restart local v13    # "interceptsGlobalDrag":Z
    :cond_d1
    move v3, v13

    move-object v1, v14

    .line 533
    .end local v13    # "interceptsGlobalDrag":Z
    .restart local v3    # "interceptsGlobalDrag":Z
    :cond_d3
    :goto_d3
    return-void
.end method

.method private showInputSurface()V
    .registers 6

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_30

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 172
    const-string v1, "Drag and Drop Input Consumer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 173
    const-string v1, "DragState.showInputSurface"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 174
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 177
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object v0

    .line 178
    .local v0, "h":Landroid/view/InputWindowHandle;
    if-nez v0, :cond_3e

    .line 179
    const-string v1, "WindowManager"

    const-string v2, "Drag is in progress but there is no drag window handle."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 185
    :cond_3e
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 187
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 188
    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    const v3, 0x7fffffff

    .line 189
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 190
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 194
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x1

    .line 195
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 196
    return-void
.end method

.method private targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "targetWin"    # Lcom/android/server/wm/WindowState;

    .line 576
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method


# virtual methods
.method broadcastDragStartedLocked(FF)V
    .registers 8
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 452
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iput p1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    .line 453
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 461
    iget v1, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 463
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 464
    .local v1, "userManager":Lcom/android/server/pm/UserManagerInternal;
    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    const-string/jumbo v3, "no_cross_profile_copy_paste"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    .line 467
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_64

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcasting DRAG_STARTED at ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_64
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, v0}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    move-result v0

    .line 472
    .local v0, "containsAppExtras":Z
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DragState;FFZ)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 475
    return-void
.end method

.method cancelDragLocked(Z)V
    .registers 3
    .param p1, "skipAnimation"    # Z

    .line 644
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 645
    return-void

    .line 647
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_19

    if-nez p1, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_19

    .line 656
    :cond_12
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createCancelAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 657
    return-void

    .line 653
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 654
    return-void
.end method

.method closeLocked()V
    .registers 23

    .line 203
    move-object/from16 v1, p0

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/DragState;->mIsClosing:Z

    .line 205
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    const-string v3, "WindowManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_1f

    .line 206
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v2, :cond_16

    .line 207
    const-string/jumbo v2, "unregistering drag input channel"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_16
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v5, v1, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 212
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 216
    :cond_1f
    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_b3

    .line 217
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 219
    .local v5, "myPid":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_31

    .line 220
    const-string v0, "broadcasting DRAG_ENDED"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_31
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_37
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 223
    .local v7, "ws":Lcom/android/server/wm/WindowState;
    const/4 v0, 0x0

    .line 224
    .local v0, "x":F
    const/4 v8, 0x0

    .line 225
    .local v8, "y":F
    const/4 v9, 0x0

    .line 226
    .local v9, "dragSurface":Landroid/view/SurfaceControl;
    iget-boolean v10, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v10, :cond_69

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v10, v10, Lcom/android/server/wm/Session;->mPid:I

    iget v11, v1, Lcom/android/server/wm/DragState;->mPid:I

    if-ne v10, v11, :cond_69

    .line 228
    iget v0, v1, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 229
    iget v8, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v10

    if-eqz v10, :cond_64

    .line 233
    iget-object v9, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v21, v9

    move v9, v8

    move v8, v0

    goto :goto_6d

    .line 230
    :cond_64
    move-object/from16 v21, v9

    move v9, v8

    move v8, v0

    goto :goto_6d

    .line 236
    :cond_69
    move-object/from16 v21, v9

    move v9, v8

    move v8, v0

    .end local v0    # "x":F
    .local v8, "x":F
    .local v9, "y":F
    .local v21, "dragSurface":Landroid/view/SurfaceControl;
    :goto_6d
    const/4 v10, 0x4

    iget v13, v1, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v14, v1, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    move v11, v8

    move v12, v9

    move-object/from16 v18, v21

    move/from16 v20, v0

    invoke-static/range {v10 .. v20}, Landroid/view/DragEvent;->obtain(IFFFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v10

    .line 240
    .local v10, "event":Landroid/view/DragEvent;
    :try_start_85
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v10}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8a} :catch_8b

    .line 243
    goto :goto_a2

    .line 241
    :catch_8b
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to drag-end window "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a2
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v5, v0, :cond_ab

    .line 247
    invoke-virtual {v10}, Landroid/view/DragEvent;->recycle()V

    .line 249
    .end local v7    # "ws":Lcom/android/server/wm/WindowState;
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v10    # "event":Landroid/view/DragEvent;
    .end local v21    # "dragSurface":Landroid/view/SurfaceControl;
    :cond_ab
    goto :goto_37

    .line 250
    :cond_ac
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iput-boolean v2, v1, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 255
    .end local v5    # "myPid":I
    :cond_b3
    const/16 v0, 0x2002

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 256
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v1, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v7, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    .line 257
    iput v2, v1, Lcom/android/server/wm/DragState;->mTouchSource:I

    .line 261
    :cond_c8
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_d7

    .line 262
    iget-object v5, v1, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 263
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 265
    :cond_d7
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11d

    .line 268
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDragStateStub:Lcom/android/server/wm/DragStateStub;

    invoke-interface {v0}, Lcom/android/server/wm/DragStateStub;->isDropSuccessAnimEnabled()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 269
    const-string/jumbo v0, "remove miui multi window drag surface"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/4 v5, 0x4

    iget-object v6, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 273
    iget-boolean v7, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-eqz v7, :cond_f5

    const-wide/16 v7, 0xc8

    goto :goto_f7

    :cond_f5
    const-wide/16 v7, 0x0

    .line 272
    :goto_f7
    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_11b

    .line 276
    :cond_fb
    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    if-nez v0, :cond_111

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v0

    if-nez v0, :cond_111

    .line 277
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_11b

    .line 279
    :cond_111
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/4 v5, 0x3

    iget-object v6, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-wide/16 v7, 0x1388

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V

    .line 283
    :goto_11b
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 285
    :cond_11d
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_12a

    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    if-nez v0, :cond_12a

    .line 286
    const-string v0, "Unexpectedly destroying mSurfaceControl while animation is running"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_12a
    invoke-static {}, Lcom/android/server/wm/DragDropControllerStub;->get()Lcom/android/server/wm/DragDropControllerStub;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/DragState;->mDragWindow:Lcom/android/server/wm/WindowState;

    iget-object v5, v1, Lcom/android/server/wm/DragState;->mDropWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    iget-object v7, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    invoke-interface {v0, v3, v5, v6, v7}, Lcom/android/server/wm/DragDropControllerStub;->notifyDragDropResultToOneTrack(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;ZLandroid/content/ClipData;)V

    .line 292
    iput v2, v1, Lcom/android/server/wm/DragState;->mFlags:I

    .line 293
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 294
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 295
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 296
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v0, v1, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 297
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 300
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DragDropController;->onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V

    .line 301
    return-void
.end method

.method endDragLocked()V
    .registers 3

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Landroid/animation/Animator;

    if-eqz v0, :cond_9

    goto :goto_4e

    .line 620
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v0, :cond_30

    .line 621
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-direct {p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragStateStub:Lcom/android/server/wm/DragStateStub;

    .line 623
    invoke-interface {v0}, Lcom/android/server/wm/DragStateStub;->needFinishAnimator()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragStateStub:Lcom/android/server/wm/DragStateStub;

    .line 626
    invoke-interface {v0}, Lcom/android/server/wm/DragStateStub;->isDropSuccessAnimEnabled()Z

    move-result v0

    if-nez v0, :cond_30

    .line 628
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createReturnAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 629
    return-void

    .line 634
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragStateStub:Lcom/android/server/wm/DragStateStub;

    invoke-interface {v0}, Lcom/android/server/wm/DragStateStub;->isDropSuccessAnimEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragStateStub:Lcom/android/server/wm/DragStateStub;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    invoke-interface {v0, p0, v1}, Lcom/android/server/wm/DragStateStub;->createDragEndedAnimationLocked(Lcom/android/server/wm/DragState;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Landroid/animation/Animator;

    .line 636
    const-string v0, "WindowManager"

    const-string v1, "end drag and create drag ended animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void

    .line 640
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 641
    return-void

    .line 618
    :cond_4e
    :goto_4e
    return-void
.end method

.method getInputChannel()Landroid/view/InputChannel;
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    :goto_8
    return-object v0
.end method

.method getInputWindowHandle()Landroid/view/InputWindowHandle;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    :goto_8
    return-object v0
.end method

.method isAccessibilityDragDrop()Z
    .registers 2

    .line 802
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isClosing()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    return v0
.end method

.method isDropSuccessAnimEnabled()Z
    .registers 2

    .line 819
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragStateStub:Lcom/android/server/wm/DragStateStub;

    invoke-interface {v0}, Lcom/android/server/wm/DragStateStub;->isDropSuccessAnimEnabled()Z

    move-result v0

    return v0
.end method

.method isInProgress()Z
    .registers 2

    .line 692
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    return v0
.end method

.method isWindowNotified(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    .line 606
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 607
    .local v1, "ws":Lcom/android/server/wm/WindowState;
    if-ne v1, p1, :cond_16

    .line 608
    const/4 v0, 0x1

    return v0

    .line 610
    .end local v1    # "ws":Lcom/android/server/wm/WindowState;
    :cond_16
    goto :goto_6

    .line 611
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$broadcastDragStartedLocked$0$com-android-server-wm-DragState(FFZLcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F
    .param p3, "containsAppExtras"    # Z
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 473
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V

    .line 474
    return-void
.end method

.method overridePointerIconLocked(I)V
    .registers 4
    .param p1, "touchSource"    # I

    .line 756
    iput p1, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    .line 757
    const/16 v0, 0x2002

    invoke-direct {p0, v0}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 758
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 760
    :cond_13
    return-void
.end method

.method register(Landroid/view/Display;)V
    .registers 4
    .param p1, "display"    # Landroid/view/Display;

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 440
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_11

    const-string/jumbo v0, "registering drag input channel"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v0, :cond_1b

    .line 442
    const-string v0, "Duplicate register of drag input channel"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 444
    :cond_1b
    new-instance v0, Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DragState$InputInterceptor;-><init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 445
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->showInputSurface()V

    .line 447
    :goto_25
    return-void
.end method

.method reportDropWindowLock(Landroid/os/IBinder;FF)Z
    .registers 25
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 308
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v9, 0x0

    if-eqz v0, :cond_8

    .line 309
    return v9

    .line 312
    :cond_8
    iget-object v0, v8, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 314
    .local v11, "touchedWin":Lcom/android/server/wm/WindowState;
    iput-object v11, v8, Lcom/android/server/wm/DragState;->mDropWindow:Lcom/android/server/wm/WindowState;

    .line 315
    invoke-virtual {v8, v11}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const-string v12, "WindowManager"

    if-nez v0, :cond_3f

    .line 318
    iput-boolean v9, v8, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 320
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drop outside a valid window "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_3e
    return v9

    .line 324
    :cond_3f
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sending DROP to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_5a
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 329
    .local v7, "targetUserId":I
    iget v0, v8, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_91

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_91

    iget-object v0, v8, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_91

    .line 331
    new-instance v0, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget-object v1, v8, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v15, v8, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v1, v8, Lcom/android/server/wm/DragState;->mUid:I

    .line 334
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v17

    iget v2, v8, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v2, v2, 0xc3

    iget v3, v8, Lcom/android/server/wm/DragState;->mSourceUserId:I

    move-object v13, v0

    move/from16 v16, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v7

    invoke-direct/range {v13 .. v20}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V

    .local v0, "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    goto :goto_93

    .line 339
    .end local v0    # "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    :cond_91
    const/4 v0, 0x0

    move-object v13, v0

    .line 341
    .local v13, "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    :goto_93
    iget v0, v8, Lcom/android/server/wm/DragState;->mSourceUserId:I

    if-eq v0, v7, :cond_9e

    .line 342
    iget-object v1, v8, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v1, :cond_9e

    .line 343
    invoke-virtual {v1, v0}, Landroid/content/ClipData;->fixUris(I)V

    .line 346
    :cond_9e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    .line 347
    .local v14, "myPid":I
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 348
    .local v15, "clientToken":Landroid/os/IBinder;
    const/4 v2, 0x3

    iget-object v5, v8, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 349
    invoke-virtual {v8, v11}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    .line 348
    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v16, v7

    .end local v7    # "targetUserId":I
    .local v16, "targetUserId":I
    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object v1

    .line 352
    .local v1, "event":Landroid/view/DragEvent;
    :try_start_bc
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 355
    iget-object v0, v8, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v9, v15, v2, v3}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_c8} :catch_d7
    .catchall {:try_start_bc .. :try_end_c8} :catchall_d5

    .line 362
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v14, v0, :cond_d1

    .line 363
    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    .line 366
    :cond_d1
    iput-object v15, v8, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 367
    const/4 v0, 0x1

    return v0

    .line 362
    :catchall_d5
    move-exception v0

    goto :goto_fc

    .line 357
    :catch_d7
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_d8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t send drop notification to win "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->endDragLocked()V
    :try_end_f1
    .catchall {:try_start_d8 .. :try_end_f1} :catchall_d5

    .line 360
    nop

    .line 362
    iget-object v2, v11, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v14, v2, :cond_fb

    .line 363
    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    .line 360
    :cond_fb
    return v9

    .line 362
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_fc
    iget-object v2, v11, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v14, v2, :cond_105

    .line 363
    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    .line 365
    :cond_105
    throw v0
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    .line 592
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_35

    .line 594
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 595
    return-void

    .line 597
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_28

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "need to send DRAG_STARTED to new window "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_28
    iget v0, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 601
    invoke-direct {p0, v2}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    move-result v2

    .line 600
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V

    .line 603
    :cond_35
    return-void
.end method

.method setFreeformDragBound(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "dropBound"    # Landroid/graphics/Rect;

    .line 827
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragStateStub:Lcom/android/server/wm/DragStateStub;

    invoke-interface {v0, p1}, Lcom/android/server/wm/DragStateStub;->setFreeformDragBound(Landroid/graphics/Rect;)V

    .line 828
    return-void
.end method

.method setIsDropSuccessAnimEnabled(Z)V
    .registers 4
    .param p1, "isDropSuccess"    # Z

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIsDropSuccessAnimEnabled isDropSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragStateStub:Lcom/android/server/wm/DragStateStub;

    invoke-interface {v0, p1}, Lcom/android/server/wm/DragStateStub;->setIsDropSuccessAnimEnabled(Z)V

    .line 816
    return-void
.end method

.method setPendingDragEndedLoc(IIII)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 823
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragStateStub:Lcom/android/server/wm/DragStateStub;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/wm/DragStateStub;->setPendingDragEndedLoc(IIII)V

    .line 824
    return-void
.end method

.method public targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "targetWin"    # Lcom/android/server/wm/WindowState;

    .line 584
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method updateDragSurfaceLocked(ZFF)V
    .registers 20
    .param p1, "keepHandling"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 660
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_b

    .line 661
    return-void

    .line 663
    :cond_b
    iput v1, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 664
    iput v2, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 666
    if-nez p1, :cond_12

    .line 667
    return-void

    .line 671
    :cond_12
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v4, "WindowManager"

    if-eqz v3, :cond_1d

    .line 672
    const-string v3, ">>> OPEN TRANSACTION notifyMoveLocked"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_1d
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v6, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v6, v1, v6

    iget v7, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v7, v2, v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 675
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v3, :cond_65

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    iget v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v5, v1, v5

    float-to-int v5, v5

    int-to-long v5, v5

    .local v5, "protoLogParam1":J
    iget v7, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v7, v2, v7

    float-to-int v7, v7

    int-to-long v7, v7

    .local v7, "protoLogParam2":J
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x14698a26

    const/16 v11, 0x14

    const/4 v12, 0x0

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const/4 v14, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 679
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":J
    .end local v7    # "protoLogParam2":J
    :cond_65
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v3, :cond_be

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyMoveLocked x="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " y="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (x - mThumbOffsetX)="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (y - mThumbOffsetY)="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mThumbOffsetX="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mThumbOffsetY="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_be
    return-void
.end method
