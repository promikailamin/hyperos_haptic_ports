.class public Landroid/view/InsetsController;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;
.implements Landroid/view/InsetsAnimationControlCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsController$PendingControlRequest;,
        Landroid/view/InsetsController$RunningAnimation;,
        Landroid/view/InsetsController$InternalAnimationControlListener;,
        Landroid/view/InsetsController$AnimationType;,
        Landroid/view/InsetsController$LayoutInsetsDuringAnimation;,
        Landroid/view/InsetsController$Host;
    }
.end annotation


# static fields
.field private static final blacklist ANIMATION_DELAY_DIM_MS:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_FADE_IN_MS:I = 0x1f4

.field private static final blacklist ANIMATION_DURATION_FADE_OUT_MS:I = 0x5dc

.field private static final blacklist ANIMATION_DURATION_MOVE_IN_MS:I = 0x113

.field private static final blacklist ANIMATION_DURATION_MOVE_OUT_MS:I = 0x154

.field public static final blacklist ANIMATION_DURATION_RESIZE:I = 0x12c

.field private static final blacklist ANIMATION_DURATION_SYNC_IME_MS:I = 0x11d

.field private static final blacklist ANIMATION_DURATION_UNSYNC_IME_MS:I = 0xc8

.field public static final blacklist ANIMATION_TYPE_HIDE:I = 0x1

.field public static final blacklist ANIMATION_TYPE_NONE:I = -0x1

.field public static final blacklist ANIMATION_TYPE_RESIZE:I = 0x3

.field public static final blacklist ANIMATION_TYPE_SHOW:I = 0x0

.field public static final blacklist ANIMATION_TYPE_USER:I = 0x2

.field static final blacklist DEBUG:Z = false

.field private static final blacklist FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist FLOATING_IME_BOTTOM_INSET_DP:I = -0x50

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_HIDDEN:I = 0x1

.field public static final blacklist LAYOUT_INSETS_DURING_ANIMATION_SHOWN:I = 0x0

.field private static final blacklist LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist PENDING_CONTROL_TIMEOUT_MS:I = 0x7d0

.field public static final blacklist RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "InsetsController"

.field static final blacklist WARN:Z = false

.field private static blacklist sEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAnimCallback:Ljava/lang/Runnable;

.field private blacklist mAnimCallbackScheduled:Z

.field private blacklist mAnimationsDisabled:Z

.field private blacklist mCaptionInsetsHeight:I

.field private final blacklist mConsumerCreator:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mControllableInsetsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDisabledUserAnimationInsetsTypes:I

.field private final blacklist mFrame:Landroid/graphics/Rect;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHost:Landroid/view/InsetsController$Host;

.field private final blacklist mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

.field private final blacklist mLastDispatchedState:Landroid/view/InsetsState;

.field private blacklist mLastInsets:Landroid/view/WindowInsets;

.field private blacklist mLastLegacySoftInputMode:I

.field private blacklist mLastLegacySystemUiFlags:I

.field private blacklist mLastLegacyWindowFlags:I

.field private blacklist mLastStartedAnimTypes:I

.field private blacklist mLastWindowingMode:I

.field private final blacklist mPendingControlTimeout:Ljava/lang/Runnable;

.field private blacklist mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

.field private final blacklist mRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field private final blacklist mRequestedVisibilityChanged:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InsetsController$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSourceConsumers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStartingAnimation:Z

.field private final blacklist mState:Landroid/view/InsetsState;

.field private final blacklist mTmpControlArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTypesBeingCancelled:I

.field private blacklist mWindowType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$PRU-rByC-T6Cyol8QANPZ-P3LX8(Landroid/view/InsetsController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ePJ4opFbfn8Q38r5Oo7RWmAEQ48(Landroid/view/InsetsController;)I
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFAST_OUT_LINEAR_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYNC_IME_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;
    .registers 1

    sget-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 231
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_INSETS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 233
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 235
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->SYSTEM_BARS_DIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 247
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 249
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 251
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 255
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 323
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;)V
    .registers 4
    .param p1, "host"    # Landroid/view/InsetsController$Host;

    .line 618
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda5;-><init>()V

    .line 625
    invoke-interface {p1}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 618
    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;Ljava/util/function/BiFunction;Landroid/os/Handler;)V

    .line 626
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsController$Host;Ljava/util/function/BiFunction;Landroid/os/Handler;)V
    .registers 5
    .param p1, "host"    # Landroid/view/InsetsController$Host;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsController$Host;",
            "Ljava/util/function/BiFunction<",
            "Landroid/view/InsetsController;",
            "Ljava/lang/Integer;",
            "Landroid/view/InsetsSourceConsumer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 631
    .local p2, "consumerCreator":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Landroid/view/InsetsController;Ljava/lang/Integer;Landroid/view/InsetsSourceConsumer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    .line 572
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    .line 575
    new-instance v0, Landroid/view/InsetsVisibilities;

    invoke-direct {v0}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 577
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 579
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    .line 583
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    .line 585
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    .line 601
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    .line 604
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    .line 614
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda9;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    .line 632
    iput-object p1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 633
    iput-object p2, p0, Landroid/view/InsetsController;->mConsumerCreator:Ljava/util/function/BiFunction;

    .line 634
    iput-object p3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    .line 635
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda10;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    .line 680
    return-void
.end method

.method private blacklist abortPendingImeControlRequest()V
    .registers 3

    .line 1308
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v0, :cond_13

    .line 1309
    iget-object v0, v0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1310
    iput-object v1, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1311
    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1314
    :cond_13
    return-void
.end method

.method private blacklist applyLocalVisibilityOverride()V
    .registers 3

    .line 1385
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1386
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    .line 1387
    .local v1, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    .line 1385
    .end local v1    # "consumer":Landroid/view/InsetsSourceConsumer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1389
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method private blacklist calculateControllableTypes()I
    .registers 6

    .line 1677
    const/4 v0, 0x0

    .line 1678
    .local v0, "result":I
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_33

    .line 1679
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 1680
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget v4, v2, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 1681
    .local v3, "source":Landroid/view/InsetsSource;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    if-eqz v4, :cond_30

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isUserControllable()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1682
    iget v4, v2, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v4}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v4

    or-int/2addr v0, v4

    .line 1678
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v3    # "source":Landroid/view/InsetsSource;
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1685
    .end local v1    # "i":I
    :cond_33
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v0

    return v1
.end method

.method private blacklist cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V
    .registers 12
    .param p1, "control"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "invokeCallback"    # Z

    .line 1356
    if-eqz p2, :cond_5

    .line 1357
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->cancel()V

    .line 1359
    :cond_5
    const/4 v0, 0x0

    .line 1360
    .local v0, "stateChanged":Z
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_74

    .line 1361
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    .line 1362
    .local v2, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v3, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v3, p1, :cond_71

    .line 1363
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1364
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v3

    invoke-static {v3}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 1365
    .local v3, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_2f
    if-ltz v4, :cond_65

    .line 1366
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x13

    if-ne v5, v6, :cond_4f

    .line 1367
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v5

    iget-object v6, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1369
    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    const/4 v7, 0x0

    .line 1367
    const-string v8, "InsetsSourceConsumer#notifyAnimationFinished"

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1371
    :cond_4f
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InsetsSourceConsumer;->notifyAnimationFinished()Z

    move-result v5

    or-int/2addr v0, v5

    .line 1365
    add-int/lit8 v4, v4, -0x1

    goto :goto_2f

    .line 1373
    .end local v4    # "j":I
    :cond_65
    if-eqz p2, :cond_74

    .line 1374
    iget-object v4, v2, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    invoke-interface {v4}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    goto :goto_74

    .line 1360
    .end local v2    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    .end local v3    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_71
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1379
    .end local v1    # "i":I
    :cond_74
    :goto_74
    if-eqz v0, :cond_7b

    .line 1380
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 1382
    :cond_7b
    return-void
.end method

.method private blacklist cancelExistingControllers(I)V
    .registers 7
    .param p1, "types"    # I

    .line 1290
    iget v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1291
    .local v0, "originalmTypesBeingCancelled":I
    iget v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1293
    :try_start_7
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_28

    .line 1294
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1295
    .local v3, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_25

    .line 1296
    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1293
    .end local v3    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 1299
    .end local v1    # "i":I
    :cond_28
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_32

    .line 1300
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_36

    .line 1303
    :cond_32
    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1304
    nop

    .line 1305
    return-void

    .line 1303
    :catchall_36
    move-exception v1

    iput v0, p0, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1304
    throw v1
.end method

.method private blacklist captionInsetsUnchanged()Z
    .registers 5

    .line 800
    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 801
    return v1

    .line 803
    :cond_6
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-nez v0, :cond_14

    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    if-nez v0, :cond_14

    .line 805
    return v1

    .line 807
    :cond_14
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    .line 809
    invoke-virtual {v3, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v0, v2, :cond_2f

    .line 810
    return v1

    .line 813
    :cond_2f
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist collectSourceControls(ZLandroid/util/ArraySet;Landroid/util/SparseArray;I)Landroid/util/Pair;
    .registers 21
    .param p1, "fromIme"    # Z
    .param p4, "animationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1195
    .local p2, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local p3, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    const/4 v3, 0x0

    .line 1196
    .local v3, "typesReady":I
    const/4 v4, 0x1

    .line 1197
    .local v4, "imeReady":Z
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_e
    if-ltz v5, :cond_af

    .line 1198
    move-object/from16 v7, p2

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    .line 1199
    .local v8, "consumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v2, :cond_28

    const/4 v9, 0x2

    if-ne v2, v9, :cond_26

    goto :goto_28

    :cond_26
    const/4 v9, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    move v9, v6

    .line 1201
    .local v9, "show":Z
    :goto_29
    const/4 v10, 0x0

    .line 1202
    .local v10, "canRun":Z
    const/4 v11, 0x0

    if-eqz v9, :cond_4b

    .line 1204
    if-eqz v1, :cond_3e

    .line 1205
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v12

    iget-object v13, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1206
    invoke-interface {v13}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    .line 1205
    const-string v14, "ImeInsetsSourceConsumer#requestShow"

    invoke-virtual {v12, v14, v13, v11}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1209
    :cond_3e
    invoke-virtual {v8, v1}, Landroid/view/InsetsSourceConsumer;->requestShow(Z)I

    move-result v12

    packed-switch v12, :pswitch_data_c2

    goto :goto_4a

    .line 1214
    :pswitch_46
    const/4 v4, 0x0

    .line 1216
    goto :goto_4a

    .line 1211
    :pswitch_48
    const/4 v10, 0x1

    .line 1212
    nop

    .line 1222
    :goto_4a
    goto :goto_51

    .line 1228
    :cond_4b
    if-nez v1, :cond_50

    .line 1229
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->notifyHidden()V

    .line 1231
    :cond_50
    const/4 v10, 0x1

    .line 1233
    :goto_51
    if-nez v10, :cond_56

    .line 1237
    move-object/from16 v14, p3

    goto :goto_aa

    .line 1239
    :cond_56
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v12

    .line 1240
    .local v12, "control":Landroid/view/InsetsSourceControl;
    if-eqz v12, :cond_7a

    invoke-virtual {v12}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    if-eqz v13, :cond_7a

    .line 1241
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v11

    new-instance v13, Landroid/view/InsetsSourceControl;

    invoke-direct {v13, v12}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    move-object/from16 v14, p3

    invoke-virtual {v14, v11, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1242
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v11

    invoke-static {v11}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v11

    or-int/2addr v3, v11

    goto :goto_aa

    .line 1240
    :cond_7a
    move-object/from16 v14, p3

    .line 1243
    if-nez v2, :cond_93

    .line 1248
    if-eqz v1, :cond_8f

    .line 1249
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v13

    iget-object v15, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1250
    invoke-interface {v15}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v15

    .line 1249
    const-string v6, "InsetsSourceConsumer#show"

    invoke-virtual {v13, v6, v15, v11}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1253
    :cond_8f
    invoke-virtual {v8, v1}, Landroid/view/InsetsSourceConsumer;->show(Z)V

    goto :goto_aa

    .line 1254
    :cond_93
    const/4 v6, 0x1

    if-ne v2, v6, :cond_aa

    .line 1255
    if-eqz v1, :cond_a7

    .line 1256
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v13

    iget-object v15, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1257
    invoke-interface {v15}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v15

    .line 1256
    const-string v6, "InsetsSourceConsumer#hide"

    invoke-virtual {v13, v6, v15, v11}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1260
    :cond_a7
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->hide()V

    .line 1197
    .end local v8    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v9    # "show":Z
    .end local v10    # "canRun":Z
    .end local v12    # "control":Landroid/view/InsetsSourceControl;
    :cond_aa
    :goto_aa
    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    goto/16 :goto_e

    :cond_af
    move-object/from16 v7, p2

    move-object/from16 v14, p3

    .line 1263
    .end local v5    # "i":I
    new-instance v5, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_48
        :pswitch_46
    .end packed-switch
.end method

.method private blacklist controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V
    .registers 37
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "frame"    # Landroid/graphics/Rect;
    .param p5, "fromIme"    # Z
    .param p6, "durationMs"    # J
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "animationType"    # I
    .param p10, "layoutInsetsDuringAnimation"    # I
    .param p11, "useInsetsAnimationThread"    # Z

    .line 1089
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v13, p3

    move/from16 v12, p5

    move/from16 v11, p9

    iget v0, v14, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    and-int v0, p1, v0

    if-nez v0, :cond_16e

    .line 1095
    const/4 v0, 0x2

    if-ne v11, v0, :cond_3b

    .line 1096
    iget v0, v14, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    and-int v1, p1, v0

    .line 1098
    .local v1, "disabledTypes":I
    not-int v0, v0

    and-int v0, p1, v0

    .line 1100
    .end local p1    # "types":I
    .local v0, "types":I
    if-eqz v12, :cond_39

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_39

    iget-object v2, v14, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    .line 1101
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-nez v2, :cond_39

    .line 1104
    invoke-virtual {v14, v3}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v11}, Landroid/view/InsetsSourceConsumer;->hide(ZI)V

    .line 1107
    .end local v1    # "disabledTypes":I
    :cond_39
    move v10, v0

    goto :goto_3d

    .line 1095
    .end local v0    # "types":I
    .restart local p1    # "types":I
    :cond_3b
    move/from16 v10, p1

    .line 1107
    .end local p1    # "types":I
    .local v10, "types":I
    :goto_3d
    const/4 v9, 0x0

    if-nez v10, :cond_47

    .line 1109
    invoke-interface {v13, v9}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1110
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1112
    return-void

    .line 1114
    :cond_47
    invoke-direct {v14, v10}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1116
    iget v0, v14, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    or-int/2addr v0, v10

    iput v0, v14, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    .line 1118
    invoke-static {v10}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v8

    .line 1119
    .local v8, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v7, v0

    .line 1121
    .local v7, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-direct {v14, v12, v8, v7, v11}, Landroid/view/InsetsController;->collectSourceControls(ZLandroid/util/ArraySet;Landroid/util/SparseArray;I)Landroid/util/Pair;

    move-result-object v6

    .line 1123
    .local v6, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1124
    .local v16, "typesReady":I
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 1127
    .local v17, "imeReady":Z
    const-wide/16 v3, 0x8

    const/4 v5, 0x0

    if-nez v17, :cond_b4

    .line 1129
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1130
    new-instance v18, Landroid/view/InsetsController$PendingControlRequest;

    move-object/from16 v0, v18

    move v1, v10

    move-object/from16 v2, p3

    move-wide v11, v3

    move-wide/from16 v3, p6

    move v9, v5

    move-object/from16 v5, p8

    move-object/from16 v19, v6

    .end local v6    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .local v19, "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    move/from16 v6, p9

    move-object/from16 v20, v7

    .end local v7    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .local v20, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move/from16 v7, p10

    move-object/from16 v21, v8

    .end local v8    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v21, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move-object/from16 v8, p2

    move/from16 p1, v10

    move v10, v9

    .end local v10    # "types":I
    .restart local p1    # "types":I
    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Landroid/view/InsetsController$PendingControlRequest;-><init>(ILandroid/view/WindowInsetsAnimationControlListener;JLandroid/view/animation/Interpolator;IILandroid/os/CancellationSignal;Z)V

    .line 1134
    .local v0, "request":Landroid/view/InsetsController$PendingControlRequest;
    iput-object v0, v14, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 1135
    iget-object v1, v14, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v2, v14, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1137
    if-eqz v15, :cond_ab

    .line 1138
    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda6;

    invoke-direct {v1, v14, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda6;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V

    invoke-virtual {v15, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1146
    :cond_ab
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1147
    const-string v1, "IC.showRequestFromApi"

    invoke-static {v11, v12, v1, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1148
    return-void

    .line 1151
    .end local v0    # "request":Landroid/view/InsetsController$PendingControlRequest;
    .end local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v20    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v21    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local p1    # "types":I
    .restart local v6    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v7    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v8    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v10    # "types":I
    :cond_b4
    move-wide v11, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 p1, v10

    move v10, v5

    .end local v6    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v7    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v8    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v10    # "types":I
    .restart local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v20    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .restart local v21    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local p1    # "types":I
    if-nez v16, :cond_c7

    .line 1153
    invoke-interface {v13, v9}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1154
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1155
    return-void

    .line 1159
    :cond_c7
    if-eqz p11, :cond_fa

    .line 1160
    new-instance v18, Landroid/view/InsetsAnimationThreadControlRunner;

    iget-object v3, v14, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v0, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1162
    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v22

    iget-object v0, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1163
    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getHandler()Landroid/os/Handler;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v6, p0

    move-wide/from16 v7, p6

    move-object v15, v9

    move-object/from16 v9, p8

    move/from16 v24, p1

    .end local p1    # "types":I
    .local v24, "types":I
    move/from16 v10, p9

    move/from16 v12, p9

    move/from16 v11, p10

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    invoke-direct/range {v0 .. v13}, Landroid/view/InsetsAnimationThreadControlRunner;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/os/Handler;)V

    goto :goto_11e

    .line 1164
    .end local v24    # "types":I
    .restart local p1    # "types":I
    :cond_fa
    move/from16 v24, p1

    move-object v15, v9

    .end local p1    # "types":I
    .restart local v24    # "types":I
    new-instance v18, Landroid/view/InsetsAnimationControlImpl;

    iget-object v3, v14, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v0, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1166
    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v12

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v6, p0

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;)V

    :goto_11e
    move-object/from16 v0, v18

    .line 1167
    .local v0, "runner":Landroid/view/InsetsAnimationControlRunner;
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int v1, v16, v1

    if-eqz v1, :cond_137

    .line 1168
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    iget-object v2, v14, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1169
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1168
    const-string v3, "InsetsAnimationControlImpl"

    invoke-virtual {v1, v3, v2, v15}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1171
    :cond_137
    iget-object v1, v14, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v2, Landroid/view/InsetsController$RunningAnimation;

    move/from16 v3, p9

    invoke-direct {v2, v0, v3}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    move-object/from16 v1, p2

    if-eqz v1, :cond_151

    .line 1175
    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda7;

    invoke-direct {v2, v14, v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda7;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;)V

    invoke-virtual {v1, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    const/4 v6, 0x0

    goto :goto_159

    .line 1179
    :cond_151
    const-string v2, "IC.pendingAnim"

    const-wide/16 v4, 0x8

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1181
    :goto_159
    if-nez p10, :cond_163

    .line 1182
    move/from16 v2, p5

    move/from16 v4, v24

    .end local v24    # "types":I
    .local v4, "types":I
    invoke-direct {v14, v4, v2}, Landroid/view/InsetsController;->showDirectly(IZ)V

    goto :goto_16a

    .line 1184
    .end local v4    # "types":I
    .restart local v24    # "types":I
    :cond_163
    move/from16 v2, p5

    move/from16 v4, v24

    .end local v24    # "types":I
    .restart local v4    # "types":I
    invoke-direct {v14, v4, v6, v3, v2}, Landroid/view/InsetsController;->hideDirectly(IZIZ)V

    .line 1186
    :goto_16a
    invoke-direct/range {p0 .. p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1187
    return-void

    .line 1090
    .end local v0    # "runner":Landroid/view/InsetsAnimationControlRunner;
    .end local v4    # "types":I
    .end local v16    # "typesReady":I
    .end local v17    # "imeReady":Z
    .end local v19    # "typesReadyPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v20    # "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    .end local v21    # "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local p1    # "types":I
    :cond_16e
    move v3, v11

    move v2, v12

    move-object v1, v15

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot start a new insets animation of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1091
    invoke-static/range {p1 .. p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while an existing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v14, Landroid/view/InsetsController;->mTypesBeingCancelled:I

    .line 1092
    invoke-static {v5}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is being cancelled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;I)V
    .registers 23
    .param p1, "types"    # I
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p4, "fromIme"    # Z
    .param p5, "durationMs"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "animationType"    # I

    .line 1067
    move-object v12, p0

    iget-object v0, v12, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, v12, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I

    move-result v0

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1068
    move-object/from16 v13, p3

    invoke-interface {v13, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 1069
    return-void

    .line 1071
    :cond_13
    move-object/from16 v13, p3

    if-eqz p4, :cond_26

    .line 1072
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v2, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1074
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1072
    const-string v3, "InsetsController#controlWindowInsetsAnimation"

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1077
    :cond_26
    iget-object v4, v12, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 1078
    invoke-direct {p0, p1}, Landroid/view/InsetsController;->getLayoutInsetsDuringAnimationMode(I)I

    move-result v10

    const/4 v11, 0x0

    .line 1077
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    .line 1080
    return-void
.end method

.method private blacklist getLayoutInsetsDuringAnimationMode(I)I
    .registers 7
    .param p1, "types"    # I

    .line 1269
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1277
    .local v0, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_2c

    .line 1278
    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    .line 1279
    .local v3, "consumer":Landroid/view/InsetsSourceConsumer;
    if-nez v3, :cond_21

    .line 1280
    goto :goto_29

    .line 1282
    :cond_21
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v4

    if-nez v4, :cond_29

    .line 1283
    const/4 v2, 0x0

    return v2

    .line 1277
    .end local v3    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_29
    :goto_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1286
    .end local v1    # "i":I
    :cond_2c
    return v2
.end method

.method private blacklist hideDirectly(IZIZ)V
    .registers 10
    .param p1, "types"    # I
    .param p2, "animationFinished"    # Z
    .param p3, "animationType"    # I
    .param p4, "fromIme"    # Z

    .line 1521
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_17

    .line 1522
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1523
    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1522
    const-string v3, "InsetsController#hideDirectly"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1525
    :cond_17
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1526
    .local v0, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_21
    if-ltz v1, :cond_37

    .line 1527
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/view/InsetsSourceConsumer;->hide(ZI)V

    .line 1526
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 1529
    .end local v1    # "i":I
    :cond_37
    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1531
    if-eqz p4, :cond_44

    .line 1532
    const-wide/16 v1, 0x8

    const/4 v3, 0x0

    const-string v4, "IC.hideRequestFromIme"

    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1534
    :cond_44
    return-void
.end method

.method private blacklist invokeControllableInsetsChangedListeners()I
    .registers 5

    .line 1692
    iget-object v0, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1693
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    .line 1694
    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    .line 1695
    .local v0, "types":I
    iget-object v1, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1696
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_25

    .line 1697
    iget-object v3, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    invoke-interface {v3, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 1696
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1699
    .end local v2    # "i":I
    :cond_25
    iget v2, p0, Landroid/view/InsetsController;->mLastStartedAnimTypes:I

    return v2
.end method

.method static synthetic blacklist lambda$new$2(Landroid/view/InsetsController;Ljava/lang/Integer;)Landroid/view/InsetsSourceConsumer;
    .registers 6
    .param p0, "controller"    # Landroid/view/InsetsController;
    .param p1, "type"    # Ljava/lang/Integer;

    .line 619
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_15

    .line 620
    new-instance v0, Landroid/view/ImeInsetsSourceConsumer;

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, v1, v2, p0}, Landroid/view/ImeInsetsSourceConsumer;-><init>(Landroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0

    .line 622
    :cond_15
    new-instance v0, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/view/InsetsSourceConsumer;-><init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(F)F
    .registers 6
    .param p0, "alphaFraction"    # F

    .line 238
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p0

    .line 239
    .local v1, "fraction":F
    const v2, 0x3eaaaaab

    .line 240
    .local v2, "fractionDelay":F
    const v3, 0x3eaaaaab

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_f

    .line 241
    return v0

    .line 243
    :cond_f
    sub-float v3, v1, v3

    const v4, 0x3f2aaaaa

    div-float/2addr v3, v4

    .line 244
    .local v3, "innerFraction":F
    sget-object v4, Landroid/view/InsetsController;->SYSTEM_BARS_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v0, v4

    return v0
.end method

.method static synthetic blacklist lambda$static$1(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .registers 9
    .param p0, "fraction"    # F
    .param p1, "startValue"    # Landroid/graphics/Insets;
    .param p2, "endValue"    # Landroid/graphics/Insets;

    .line 323
    iget v0, p1, Landroid/graphics/Insets;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Insets;->top:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Insets;->right:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Insets;->right:I

    iget v4, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Insets;->bottom:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Insets;->bottom:I

    iget v5, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private blacklist showDirectly(IZ)V
    .registers 8
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 1537
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_17

    .line 1538
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1539
    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1538
    const-string v3, "InsetsController#showDirectly"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1541
    :cond_17
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1542
    .local v0, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_21
    const/4 v2, 0x0

    if-ltz v1, :cond_38

    .line 1543
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/InsetsSourceConsumer;->show(Z)V

    .line 1542
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 1545
    .end local v1    # "i":I
    :cond_38
    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 1547
    if-eqz p2, :cond_44

    .line 1548
    const-wide/16 v3, 0x8

    const-string v1, "IC.showRequestFromIme"

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1550
    :cond_44
    return-void
.end method

.method private blacklist startResizingAnimationIfNeeded(Landroid/view/InsetsState;)V
    .registers 15
    .param p1, "fromState"    # Landroid/view/InsetsState;

    .line 817
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 818
    return-void

    .line 820
    :cond_11
    const/4 v0, 0x0

    .line 821
    .local v0, "types":I
    const/4 v1, 0x0

    .line 822
    .local v1, "toState":Landroid/view/InsetsState;
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-static {v2}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 823
    .local v2, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_21
    if-ltz v3, :cond_89

    .line 824
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 825
    .local v4, "type":I
    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    .line 826
    .local v5, "fromSource":Landroid/view/InsetsSource;
    iget-object v6, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v6, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    .line 827
    .local v6, "toSource":Landroid/view/InsetsSource;
    if-eqz v5, :cond_86

    if-eqz v6, :cond_86

    .line 828
    invoke-virtual {v5}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-virtual {v6}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_86

    .line 829
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_86

    iget-object v7, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 830
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_6d

    iget-object v7, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    .line 831
    invoke-virtual {v6}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 832
    :cond_6d
    invoke-virtual {v6}, Landroid/view/InsetsSource;->getType()I

    move-result v7

    invoke-static {v7}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    or-int/2addr v0, v7

    .line 833
    if-nez v1, :cond_7e

    .line 834
    new-instance v7, Landroid/view/InsetsState;

    invoke-direct {v7}, Landroid/view/InsetsState;-><init>()V

    move-object v1, v7

    .line 836
    :cond_7e
    new-instance v7, Landroid/view/InsetsSource;

    invoke-direct {v7, v6}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v1, v7}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 823
    .end local v4    # "type":I
    .end local v5    # "fromSource":Landroid/view/InsetsSource;
    .end local v6    # "toSource":Landroid/view/InsetsSource;
    :cond_86
    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    .line 839
    .end local v3    # "i":I
    :cond_89
    if-nez v0, :cond_8c

    .line 840
    return-void

    .line 842
    :cond_8c
    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 843
    new-instance v3, Landroid/view/InsetsResizeAnimationRunner;

    iget-object v5, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    sget-object v8, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-wide/16 v9, 0x12c

    move-object v4, v3

    move-object v6, p1

    move-object v7, v1

    move v11, v0

    move-object v12, p0

    invoke-direct/range {v4 .. v12}, Landroid/view/InsetsResizeAnimationRunner;-><init>(Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/animation/Interpolator;JILandroid/view/InsetsAnimationControlCallbacks;)V

    .line 846
    .local v3, "runner":Landroid/view/InsetsAnimationControlRunner;
    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v5, Landroid/view/InsetsController$RunningAnimation;

    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v6

    invoke-direct {v5, v3, v6}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    return-void
.end method

.method private blacklist updateDisabledUserAnimationTypes(I)V
    .registers 7
    .param p1, "disabledUserAnimationTypes"    # I

    .line 784
    iget v0, p0, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    xor-int/2addr v0, p1

    .line 785
    .local v0, "diff":I
    if-eqz v0, :cond_3c

    .line 786
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_3a

    .line 787
    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 788
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 789
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_37

    .line 790
    iget-object v3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 791
    iget-object v3, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/InsetsController;->mInvokeControllableInsetsChangedListeners:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 792
    goto :goto_3a

    .line 786
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 795
    .end local v1    # "i":I
    :cond_3a
    :goto_3a
    iput p1, p0, Landroid/view/InsetsController;->mDisabledUserAnimationInsetsTypes:I

    .line 797
    :cond_3c
    return-void
.end method

.method private blacklist updateRequestedVisibilities()V
    .registers 7

    .line 1453
    const/4 v0, 0x0

    .line 1454
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_30

    .line 1455
    iget-object v2, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    .line 1456
    .local v2, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    .line 1457
    .local v3, "type":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    .line 1458
    goto :goto_2d

    .line 1460
    :cond_1b
    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v4

    .line 1461
    .local v4, "requestedVisible":Z
    iget-object v5, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {v5, v3}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result v5

    if-eq v5, v4, :cond_2d

    .line 1462
    iget-object v5, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {v5, v3, v4}, Landroid/view/InsetsVisibilities;->setVisibility(IZ)V

    .line 1463
    const/4 v0, 0x1

    .line 1454
    .end local v2    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v3    # "type":I
    .end local v4    # "requestedVisible":Z
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1466
    .end local v1    # "i":I
    :cond_30
    iget-object v1, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1467
    if-nez v0, :cond_38

    .line 1468
    return-void

    .line 1470
    :cond_38
    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v2, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-interface {v1, v2}, Landroid/view/InsetsController$Host;->updateRequestedVisibilities(Landroid/view/InsetsVisibilities;)V

    .line 1471
    return-void
.end method

.method private blacklist updateState(Landroid/view/InsetsState;)V
    .registers 10
    .param p1, "newState"    # Landroid/view/InsetsState;

    .line 747
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "disabledUserAnimationTypes":I
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v1, v2, v1

    .line 750
    .local v2, "cancelledUserAnimationTypes":[I
    const/4 v3, 0x0

    .local v3, "type":I
    :goto_d
    const/4 v4, 0x2

    const/16 v5, 0x18

    if-ge v3, v5, :cond_3a

    .line 751
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    .line 752
    .local v5, "source":Landroid/view/InsetsSource;
    if-nez v5, :cond_19

    goto :goto_37

    .line 753
    :cond_19
    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v6

    .line 754
    .local v6, "animationType":I
    invoke-virtual {v5}, Landroid/view/InsetsSource;->isUserControllable()Z

    move-result v7

    if-nez v7, :cond_30

    .line 755
    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    .line 757
    .local v7, "insetsType":I
    or-int/2addr v0, v7

    .line 758
    if-ne v6, v4, :cond_30

    .line 760
    const/4 v6, -0x1

    .line 761
    aget v4, v2, v1

    or-int/2addr v4, v7

    aput v4, v2, v1

    .line 764
    .end local v7    # "insetsType":I
    :cond_30
    invoke-virtual {p0, v3}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroid/view/InsetsSourceConsumer;->updateSource(Landroid/view/InsetsSource;I)V

    .line 750
    .end local v5    # "source":Landroid/view/InsetsSource;
    .end local v6    # "animationType":I
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 766
    .end local v3    # "type":I
    :cond_3a
    const/4 v3, 0x0

    .restart local v3    # "type":I
    :goto_3b
    if-ge v3, v5, :cond_57

    .line 768
    if-ne v3, v4, :cond_40

    goto :goto_54

    .line 769
    :cond_40
    iget-object v6, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v6, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    .line 770
    .local v6, "source":Landroid/view/InsetsSource;
    if-nez v6, :cond_49

    goto :goto_54

    .line 771
    :cond_49
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    if-nez v7, :cond_54

    .line 772
    iget-object v7, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v7, v3}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 766
    .end local v6    # "source":Landroid/view/InsetsSource;
    :cond_54
    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 776
    .end local v3    # "type":I
    :cond_57
    invoke-direct {p0, v0}, Landroid/view/InsetsController;->updateDisabledUserAnimationTypes(I)V

    .line 778
    aget v1, v2, v1

    if-eqz v1, :cond_68

    .line 779
    iget-object v1, p0, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>(Landroid/view/InsetsController;[I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 781
    :cond_68
    return-void
.end method


# virtual methods
.method public whitelist addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 1705
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    invoke-direct {p0}, Landroid/view/InsetsController;->calculateControllableTypes()I

    move-result v0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V

    .line 1708
    return-void
.end method

.method public blacklist applyAnimation(IZZ)V
    .registers 8
    .param p1, "types"    # I
    .param p2, "show"    # Z
    .param p3, "fromIme"    # Z

    .line 1480
    const/4 v0, 0x0

    .line 1481
    .local v0, "skipAnim":Z
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2e

    .line 1482
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    .line 1483
    .local v1, "consumer":Landroid/view/InsetsSourceConsumer;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v2

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    .line 1486
    .local v2, "imeControl":Landroid/view/InsetsSourceControl;
    :goto_1a
    if-eqz v2, :cond_2e

    .line 1487
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v3

    if-eqz v3, :cond_2c

    if-eqz p2, :cond_2c

    .line 1488
    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->hasViewFocusWhenWindowFocusGain()Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    move v0, v3

    .line 1491
    .end local v1    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v2    # "imeControl":Landroid/view/InsetsSourceControl;
    :cond_2e
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/InsetsController;->applyAnimation(IZZZ)V

    .line 1492
    return-void
.end method

.method public blacklist applyAnimation(IZZZ)V
    .registers 19
    .param p1, "types"    # I
    .param p2, "show"    # Z
    .param p3, "fromIme"    # Z
    .param p4, "skipAnim"    # Z

    .line 1497
    move-object v12, p0

    if-nez p1, :cond_4

    .line 1500
    return-void

    .line 1503
    :cond_4
    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->hasAnimationCallbacks()Z

    move-result v13

    .line 1504
    .local v13, "hasAnimationCallbacks":Z
    new-instance v7, Landroid/view/InsetsController$InternalAnimationControlListener;

    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1505
    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v4

    if-nez p4, :cond_1b

    iget-boolean v0, v12, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    move v5, v0

    iget-object v0, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    const/16 v1, -0x50

    .line 1506
    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->dipToPx(I)I

    move-result v6

    move-object v0, v7

    move/from16 v1, p2

    move v2, v13

    move v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsController$InternalAnimationControlListener;-><init>(ZZIIZI)V

    move-object v3, v7

    .line 1510
    .local v3, "listener":Landroid/view/InsetsController$InternalAnimationControlListener;
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1512
    invoke-virtual {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->getDurationMs()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/view/InsetsController$InternalAnimationControlListener;->getInsetsInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 1513
    nop

    .line 1514
    xor-int/lit8 v9, p2, 0x1

    xor-int/lit8 v10, p2, 0x1

    .line 1510
    xor-int/lit8 v11, v13, 0x1

    move-object v0, p0

    move v1, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    .line 1516
    return-void
.end method

.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 3
    .param p1, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 1336
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 1337
    return-void
.end method

.method public blacklist calculateInsets(ZZIIIII)Landroid/view/WindowInsets;
    .registers 25
    .param p1, "isScreenRound"    # Z
    .param p2, "alwaysConsumeSystemBars"    # Z
    .param p3, "windowType"    # I
    .param p4, "windowingMode"    # I
    .param p5, "legacySoftInputMode"    # I
    .param p6, "legacyWindowFlags"    # I
    .param p7, "legacySystemUiFlags"    # I

    .line 856
    move-object/from16 v0, p0

    move/from16 v12, p3

    iput v12, v0, Landroid/view/InsetsController;->mWindowType:I

    .line 857
    move/from16 v13, p4

    iput v13, v0, Landroid/view/InsetsController;->mLastWindowingMode:I

    .line 858
    move/from16 v14, p5

    iput v14, v0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    .line 859
    move/from16 v15, p6

    iput v15, v0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    .line 860
    move/from16 v11, p7

    iput v11, v0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    .line 862
    invoke-virtual/range {p0 .. p0}, Landroid/view/InsetsController;->updateEmbeddingScale()V

    .line 864
    iget-object v1, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, v0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/16 v16, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v1

    iput-object v1, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    .line 867
    return-object v1
.end method

.method public blacklist calculateVisibleInsets(IIII)Landroid/graphics/Insets;
    .registers 11
    .param p1, "windowType"    # I
    .param p2, "windowingMode"    # I
    .param p3, "softInputMode"    # I
    .param p4, "windowFlags"    # I

    .line 875
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist cancelExistingAnimations()V
    .registers 2

    .line 1557
    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    .line 1558
    return-void
.end method

.method public whitelist controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 16
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 1058
    const/4 v4, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    move v1, p1

    move-object v2, p5

    move-object v3, p6

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;I)V

    .line 1060
    return-void
.end method

.method public blacklist dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 6
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 1605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1606
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1607
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    .line 1605
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1608
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 1609
    return-void
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1561
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "InsetsController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1563
    return-void
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1566
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1567
    .local v0, "token":J
    iget-object v2, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1568
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_16
    if-ltz v2, :cond_2d

    .line 1569
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1570
    .local v3, "runner":Landroid/view/InsetsAnimationControlRunner;
    const-wide v4, 0x20b00000002L

    invoke-interface {v3, p1, v4, v5}, Landroid/view/InsetsAnimationControlRunner;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1568
    .end local v3    # "runner":Landroid/view/InsetsAnimationControlRunner;
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 1572
    .end local v2    # "i":I
    :cond_2d
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1573
    return-void
.end method

.method public blacklist getAnimationType(I)I
    .registers 5
    .param p1, "type"    # I

    .line 1435
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_28

    .line 1436
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsController$RunningAnimation;

    iget-object v1, v1, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1437
    .local v1, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v1, p1}, Landroid/view/InsetsAnimationControlRunner;->controlsInternalType(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1438
    iget-object v2, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsController$RunningAnimation;

    iget v2, v2, Landroid/view/InsetsController$RunningAnimation;->type:I

    return v2

    .line 1435
    .end local v1    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1441
    .end local v0    # "i":I
    :cond_28
    const/4 v0, -0x1

    return v0
.end method

.method blacklist getHost()Landroid/view/InsetsController$Host;
    .registers 2

    .line 1750
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    return-object v0
.end method

.method public blacklist getLastDispatchedState()Landroid/view/InsetsState;
    .registers 2

    .line 702
    iget-object v0, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    return-object v0
.end method

.method blacklist getRequestedVisibilities()Landroid/view/InsetsVisibilities;
    .registers 2

    .line 1474
    iget-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    return-object v0
.end method

.method public blacklist getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;
    .registers 5
    .param p1, "type"    # I

    .line 1393
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    .line 1394
    .local v0, "controller":Landroid/view/InsetsSourceConsumer;
    if-eqz v0, :cond_b

    .line 1395
    return-object v0

    .line 1397
    :cond_b
    iget-object v1, p0, Landroid/view/InsetsController;->mConsumerCreator:Ljava/util/function/BiFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    .line 1398
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1399
    return-object v0
.end method

.method public blacklist getState()Landroid/view/InsetsState;
    .registers 2

    .line 693
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public whitelist getSystemBarsAppearance()I
    .registers 2

    .line 1632
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->isSystemBarsAppearanceControlled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1634
    const/4 v0, 0x0

    return v0

    .line 1636
    :cond_a
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsAppearance()I

    move-result v0

    return v0
.end method

.method public whitelist getSystemBarsBehavior()I
    .registers 2

    .line 1664
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->isSystemBarsBehaviorControlled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1666
    const/4 v0, 0x0

    return v0

    .line 1668
    :cond_a
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method public whitelist hide(I)V
    .registers 3
    .param p1, "types"    # I

    .line 1025
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->hide(IZ)V

    .line 1026
    return-void
.end method

.method public blacklist hide(IZ)V
    .registers 12
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 1030
    const-wide/16 v0, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    .line 1031
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1032
    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 1031
    const-string v6, "InsetsController#hide"

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1033
    const-string v3, "IC.hideRequestFromIme"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_20

    .line 1035
    :cond_1b
    const-string v3, "IC.hideRequestFromApi"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1037
    :goto_20
    const/4 v0, 0x0

    .line 1038
    .local v0, "typesReady":I
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 1039
    .local v1, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_2b
    if-ltz v3, :cond_57

    .line 1040
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1041
    .local v5, "internalType":I
    invoke-virtual {p0, v5}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v6

    .line 1042
    .local v6, "animationType":I
    invoke-virtual {p0, v5}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v7

    .line 1043
    .local v7, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v7}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v8

    if-nez v8, :cond_48

    const/4 v8, -0x1

    if-eq v6, v8, :cond_54

    :cond_48
    if-ne v6, v4, :cond_4b

    .line 1046
    goto :goto_54

    .line 1048
    :cond_4b
    invoke-virtual {v7}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-static {v8}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v8

    or-int/2addr v0, v8

    .line 1039
    .end local v5    # "internalType":I
    .end local v6    # "animationType":I
    .end local v7    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_54
    :goto_54
    add-int/lit8 v3, v3, -0x1

    goto :goto_2b

    .line 1050
    .end local v3    # "i":I
    :cond_57
    invoke-virtual {p0, v0, v2, p2}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    .line 1051
    return-void
.end method

.method public blacklist isRequestedVisible(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 698
    invoke-virtual {p0, p1}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$controlAnimationUnchecked$5$android-view-InsetsController(Landroid/view/InsetsController$PendingControlRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/view/InsetsController$PendingControlRequest;

    .line 1139
    iget-object v0, p0, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-ne v0, p1, :cond_7

    .line 1142
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1144
    :cond_7
    return-void
.end method

.method synthetic blacklist lambda$controlAnimationUnchecked$6$android-view-InsetsController(Landroid/view/InsetsAnimationControlRunner;)V
    .registers 3
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 1176
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1177
    return-void
.end method

.method synthetic blacklist lambda$new$3$android-view-InsetsController()V
    .registers 18

    .line 636
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 637
    iget-object v1, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 638
    return-void

    .line 641
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v1, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v2, "finishedAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    new-instance v3, Landroid/view/InsetsState;

    iget-object v4, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 644
    .local v3, "state":Landroid/view/InsetsState;
    iget-object v4, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_27
    if-ltz v4, :cond_55

    .line 645
    iget-object v6, v0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsController$RunningAnimation;

    .line 647
    .local v6, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v7, v6, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 648
    .local v7, "runner":Landroid/view/InsetsAnimationControlRunner;
    instance-of v8, v7, Landroid/view/WindowInsetsAnimationController;

    if-eqz v8, :cond_52

    .line 653
    iget-boolean v8, v6, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    if-eqz v8, :cond_42

    .line 654
    invoke-interface {v7}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_42
    move-object v8, v7

    check-cast v8, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v8, v3}, Landroid/view/InternalInsetsAnimationController;->applyChangeInsets(Landroid/view/InsetsState;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 658
    invoke-interface {v7}, Landroid/view/InsetsAnimationControlRunner;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    .end local v6    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    .end local v7    # "runner":Landroid/view/InsetsAnimationControlRunner;
    :cond_52
    add-int/lit8 v4, v4, -0x1

    goto :goto_27

    .line 663
    .end local v4    # "i":I
    :cond_55
    iget-object v7, v0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v8, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v4, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    .line 664
    invoke-virtual {v4}, Landroid/view/WindowInsets;->isRound()Z

    move-result v9

    iget-object v4, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->shouldAlwaysConsumeSystemBars()Z

    move-result v10

    iget v11, v0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    iget v12, v0, Landroid/view/InsetsController;->mLastLegacyWindowFlags:I

    iget v13, v0, Landroid/view/InsetsController;->mLastLegacySystemUiFlags:I

    iget v14, v0, Landroid/view/InsetsController;->mWindowType:I

    iget v15, v0, Landroid/view/InsetsController;->mLastWindowingMode:I

    const/16 v16, 0x0

    .line 663
    move-object v6, v3

    invoke-virtual/range {v6 .. v16}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v4

    .line 667
    .local v4, "insets":Landroid/view/WindowInsets;
    iget-object v6, v0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 668
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 667
    invoke-interface {v6, v4, v7}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    .line 676
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .local v6, "i":I
    :goto_84
    if-ltz v6, :cond_92

    .line 677
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0, v5}, Landroid/view/InsetsController;->dispatchAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 676
    add-int/lit8 v6, v6, -0x1

    goto :goto_84

    .line 679
    .end local v6    # "i":I
    :cond_92
    return-void
.end method

.method synthetic blacklist lambda$startAnimation$7$android-view-InsetsController(Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 12
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "types"    # I
    .param p3, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p4, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;
    .param p5, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 1582
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1584
    return-void

    .line 1586
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1587
    invoke-static {p2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1586
    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1588
    iget-object v0, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_2e
    if-ltz v0, :cond_41

    .line 1589
    iget-object v4, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsController$RunningAnimation;

    .line 1590
    .local v4, "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    iget-object v5, v4, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    if-ne v5, p1, :cond_3e

    .line 1591
    iput-boolean v3, v4, Landroid/view/InsetsController$RunningAnimation;->startDispatched:Z

    .line 1588
    .end local v4    # "runningAnimation":Landroid/view/InsetsController$RunningAnimation;
    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 1594
    .end local v0    # "i":I
    :cond_41
    const-string v0, "IC.pendingAnim"

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1595
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p3, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 1596
    iput-boolean v3, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    .line 1597
    move-object v0, p1

    check-cast v0, Landroid/view/InternalInsetsAnimationController;

    invoke-interface {v0, v3}, Landroid/view/InternalInsetsAnimationController;->setReadyDispatched(Z)V

    .line 1598
    move-object v0, p1

    check-cast v0, Landroid/view/WindowInsetsAnimationController;

    invoke-interface {p5, v0, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    .line 1599
    iput-boolean v4, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    .line 1600
    return-void
.end method

.method synthetic blacklist lambda$updateState$4$android-view-InsetsController([I)V
    .registers 3
    .param p1, "cancelledUserAnimationTypes"    # [I

    .line 779
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->show(I)V

    return-void
.end method

.method blacklist notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V
    .registers 7
    .param p1, "consumer"    # Landroid/view/InsetsSourceConsumer;

    .line 1340
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v0

    .line 1341
    .local v0, "types":I
    iget-object v1, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_2b

    .line 1342
    iget-object v3, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsController$RunningAnimation;

    iget-object v3, v3, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    .line 1343
    .local v3, "control":Landroid/view/InsetsAnimationControlRunner;
    invoke-interface {v3, v0}, Landroid/view/InsetsAnimationControlRunner;->notifyControlRevoked(I)V

    .line 1344
    invoke-interface {v3}, Landroid/view/InsetsAnimationControlRunner;->getControllingTypes()I

    move-result v4

    if-nez v4, :cond_28

    .line 1345
    invoke-direct {p0, v3, v2}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1341
    .end local v3    # "control":Landroid/view/InsetsAnimationControlRunner;
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1348
    .end local v1    # "i":I
    :cond_2b
    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_36

    .line 1349
    invoke-direct {p0}, Landroid/view/InsetsController;->abortPendingImeControlRequest()V

    .line 1351
    :cond_36
    return-void
.end method

.method public blacklist notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .registers 6
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "shown"    # Z

    .line 1319
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 1321
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 1324
    return-void

    .line 1326
    :cond_c
    const/4 v0, 0x1

    if-eqz p2, :cond_17

    .line 1327
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    invoke-direct {p0, v1, v0}, Landroid/view/InsetsController;->showDirectly(IZ)V

    goto :goto_22

    .line 1329
    :cond_17
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    .line 1330
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v2

    .line 1329
    invoke-direct {p0, v1, v0, v2, v0}, Landroid/view/InsetsController;->hideDirectly(IZIZ)V

    .line 1332
    :goto_22
    return-void
.end method

.method public blacklist notifyVisibilityChanged()V
    .registers 2

    .line 1404
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 1405
    return-void
.end method

.method public blacklist onControlsChanged([Landroid/view/InsetsSourceControl;)V
    .registers 15
    .param p1, "activeControls"    # [Landroid/view/InsetsSourceControl;

    .line 883
    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 884
    array-length v1, p1

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    .line 885
    .local v3, "activeControl":Landroid/view/InsetsSourceControl;
    if-eqz v3, :cond_14

    .line 887
    iget-object v4, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 884
    .end local v3    # "activeControl":Landroid/view/InsetsSourceControl;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 892
    :cond_17
    const/4 v1, 0x0

    .line 893
    .local v1, "requestedVisibilityStale":Z
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 894
    .local v3, "showTypes":[I
    new-array v4, v2, [I

    .line 897
    .local v4, "hideTypes":[I
    iget-object v5, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_24
    if-ltz v5, :cond_40

    .line 898
    iget-object v6, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsSourceConsumer;

    .line 899
    .local v6, "consumer":Landroid/view/InsetsSourceConsumer;
    iget-object v7, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InsetsSourceControl;

    .line 903
    .local v7, "control":Landroid/view/InsetsSourceControl;
    invoke-virtual {v6, v7, v3, v4}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    .line 897
    .end local v6    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v7    # "control":Landroid/view/InsetsSourceControl;
    add-int/lit8 v5, v5, -0x1

    goto :goto_24

    .line 907
    .end local v5    # "i":I
    :cond_40
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .restart local v5    # "i":I
    :goto_47
    if-ltz v5, :cond_82

    .line 908
    iget-object v6, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsSourceControl;

    .line 909
    .local v6, "control":Landroid/view/InsetsSourceControl;
    invoke-virtual {v6}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v7

    .line 910
    .local v7, "type":I
    invoke-virtual {p0, v7}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v8

    .line 911
    .local v8, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v8, v6, v3, v4}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    .line 913
    if-nez v1, :cond_7f

    .line 914
    invoke-virtual {v8}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v9

    .line 919
    .local v9, "requestedVisible":Z
    iget-object v10, p0, Landroid/view/InsetsController;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 920
    invoke-virtual {v10, v7}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result v10

    if-eq v9, v10, :cond_6c

    move v10, v2

    goto :goto_6d

    :cond_6c
    move v10, v0

    .line 924
    .local v10, "requestedVisibilityChanged":Z
    :goto_6d
    const/16 v11, 0x13

    if-ne v7, v11, :cond_75

    if-eqz v9, :cond_75

    move v11, v2

    goto :goto_76

    :cond_75
    move v11, v0

    .line 926
    .local v11, "imeRequestedVisible":Z
    :goto_76
    if-nez v10, :cond_7d

    if-eqz v11, :cond_7b

    goto :goto_7d

    :cond_7b
    move v12, v0

    goto :goto_7e

    :cond_7d
    :goto_7d
    move v12, v2

    :goto_7e
    move v1, v12

    .line 907
    .end local v6    # "control":Landroid/view/InsetsSourceControl;
    .end local v7    # "type":I
    .end local v8    # "consumer":Landroid/view/InsetsSourceConsumer;
    .end local v9    # "requestedVisible":Z
    .end local v10    # "requestedVisibilityChanged":Z
    .end local v11    # "imeRequestedVisible":Z
    :cond_7f
    add-int/lit8 v5, v5, -0x1

    goto :goto_47

    .line 930
    .end local v5    # "i":I
    :cond_82
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_a5

    .line 932
    iget-object v5, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .restart local v5    # "i":I
    :goto_91
    if-ltz v5, :cond_a5

    .line 933
    iget-object v6, p0, Landroid/view/InsetsController;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InsetsController$RunningAnimation;

    iget-object v6, v6, Landroid/view/InsetsController$RunningAnimation;->runner:Landroid/view/InsetsAnimationControlRunner;

    iget-object v7, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-interface {v6, v7}, Landroid/view/InsetsAnimationControlRunner;->updateSurfacePosition(Landroid/util/SparseArray;)V

    .line 932
    add-int/lit8 v5, v5, -0x1

    goto :goto_91

    .line 936
    .end local v5    # "i":I
    :cond_a5
    iget-object v5, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 939
    invoke-virtual {p0}, Landroid/view/InsetsController;->updateEmbeddingScale()V

    .line 944
    invoke-direct {p0}, Landroid/view/InsetsController;->invokeControllableInsetsChangedListeners()I

    move-result v5

    .line 945
    .local v5, "animatingTypes":I
    aget v6, v3, v0

    not-int v7, v5

    and-int/2addr v6, v7

    aput v6, v3, v0

    .line 946
    aget v6, v4, v0

    not-int v7, v5

    and-int/2addr v6, v7

    aput v6, v4, v0

    .line 948
    aget v6, v3, v0

    if-eqz v6, :cond_c6

    .line 949
    aget v6, v3, v0

    invoke-virtual {p0, v6, v2, v0}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    .line 951
    :cond_c6
    aget v2, v4, v0

    if-eqz v2, :cond_cf

    .line 952
    aget v2, v4, v0

    invoke-virtual {p0, v2, v0, v0}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    .line 956
    :cond_cf
    invoke-direct {p0}, Landroid/view/InsetsController;->updateRequestedVisibilities()V

    .line 957
    return-void
.end method

.method public blacklist onFrameChanged(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 684
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 685
    return-void

    .line 687
    :cond_9
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 688
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 689
    return-void
.end method

.method public blacklist onRequestedVisibilityChanged(Landroid/view/InsetsSourceConsumer;)V
    .registers 3
    .param p1, "consumer"    # Landroid/view/InsetsSourceConsumer;

    .line 1446
    iget-object v0, p0, Landroid/view/InsetsController;->mRequestedVisibilityChanged:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1447
    return-void
.end method

.method public blacklist onStateChanged(Landroid/view/InsetsState;)Z
    .registers 7
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 708
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 709
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 710
    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v1

    .line 709
    invoke-interface {v0, v1, p1}, Lmiui/window/MiuiEmbeddingWindowStub;->adaptImeForEmbeddingScaleIfNeeded(Landroid/app/Activity;Landroid/view/InsetsState;)V

    .line 715
    :cond_25
    invoke-virtual {p0}, Landroid/view/InsetsController;->updateEmbeddingScale()V

    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, "stateChanged":Z
    sget-boolean v1, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_43

    .line 720
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v3, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 722
    invoke-direct {p0}, Landroid/view/InsetsController;->captionInsetsUnchanged()Z

    move-result v1

    if-eqz v1, :cond_3e

    goto :goto_40

    :cond_3e
    move v1, v2

    goto :goto_41

    :cond_40
    :goto_40
    move v1, v3

    :goto_41
    move v0, v1

    goto :goto_4b

    .line 724
    :cond_43
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v2, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v1

    xor-int/2addr v1, v3

    move v0, v1

    .line 727
    :goto_4b
    if-nez v0, :cond_56

    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 728
    return v2

    .line 731
    :cond_56
    iget-object v1, p0, Landroid/view/InsetsController;->mLastDispatchedState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 733
    new-instance v1, Landroid/view/InsetsState;

    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-direct {v1, v4, v3}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 734
    .local v1, "lastState":Landroid/view/InsetsState;
    invoke-direct {p0, p1}, Landroid/view/InsetsController;->updateState(Landroid/view/InsetsState;)V

    .line 735
    invoke-direct {p0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    .line 737
    iget-object v4, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v4, v1, v2, v3}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v2

    if-nez v2, :cond_78

    .line 740
    iget-object v2, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 741
    invoke-direct {p0, v1}, Landroid/view/InsetsController;->startResizingAnimationIfNeeded(Landroid/view/InsetsState;)V

    .line 743
    :cond_78
    return v3
.end method

.method public blacklist onWindowFocusGained(Z)V
    .registers 4
    .param p1, "hasViewFocused"    # Z

    .line 1419
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    .line 1421
    invoke-static {}, Landroid/view/FramePredict;->getInstance()Landroid/view/FramePredict;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/FramePredict;->notifyFocusChanged(Z)V

    .line 1422
    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .registers 3

    .line 1428
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    .line 1430
    invoke-static {}, Landroid/view/FramePredict;->getInstance()Landroid/view/FramePredict;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/FramePredict;->notifyFocusChanged(Z)V

    .line 1431
    return-void
.end method

.method public blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 1719
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V

    .line 1720
    return-void
.end method

.method public whitelist removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 1713
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    iget-object v0, p0, Landroid/view/InsetsController;->mControllableInsetsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1715
    return-void
.end method

.method public blacklist reportPerceptible(IZ)V
    .registers 8
    .param p1, "types"    # I
    .param p2, "perceptible"    # Z

    .line 1724
    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1725
    .local v0, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1726
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_29

    .line 1727
    iget-object v3, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    .line 1728
    .local v3, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1729
    invoke-virtual {v3, p2}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    .line 1726
    .end local v3    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1732
    .end local v2    # "i":I
    :cond_29
    return-void
.end method

.method public blacklist scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .registers 4
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 1614
    iget-boolean v0, p0, Landroid/view/InsetsController;->mStartingAnimation:Z

    if-nez v0, :cond_1b

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    goto :goto_1b

    .line 1619
    :cond_c
    iget-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    if-nez v0, :cond_1a

    .line 1620
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    iget-object v1, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->postInsetsAnimationCallback(Ljava/lang/Runnable;)V

    .line 1621
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 1623
    :cond_1a
    return-void

    .line 1615
    :cond_1b
    :goto_1b
    iget-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1616
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    .line 1617
    return-void
.end method

.method public blacklist setAnimationsDisabled(Z)V
    .registers 2
    .param p1, "disable"    # Z

    .line 1673
    iput-boolean p1, p0, Landroid/view/InsetsController;->mAnimationsDisabled:Z

    .line 1674
    return-void
.end method

.method public blacklist setCaptionInsetsHeight(I)V
    .registers 8
    .param p1, "height"    # I

    .line 1642
    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-eqz v0, :cond_5

    .line 1643
    return-void

    .line 1645
    :cond_5
    iget v0, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    if-eq v0, p1, :cond_35

    .line 1646
    iput p1, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    .line 1647
    const/4 v0, 0x2

    if-eqz p1, :cond_2b

    .line 1648
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v0}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/view/InsetsController;->mCaptionInsetsHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/InsetsSource;->setFrame(IIII)V

    goto :goto_30

    .line 1651
    :cond_2b
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v0}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 1653
    :goto_30
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->notifyInsetsChanged()V

    .line 1655
    :cond_35
    return-void
.end method

.method public whitelist setSystemBarsAppearance(II)V
    .registers 4
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 1627
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsController$Host;->setSystemBarsAppearance(II)V

    .line 1628
    return-void
.end method

.method public whitelist setSystemBarsBehavior(I)V
    .registers 3
    .param p1, "behavior"    # I

    .line 1659
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1}, Landroid/view/InsetsController$Host;->setSystemBarsBehavior(I)V

    .line 1660
    return-void
.end method

.method public whitelist show(I)V
    .registers 3
    .param p1, "types"    # I

    .line 961
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsController;->show(IZ)V

    .line 962
    return-void
.end method

.method public blacklist show(IZ)V
    .registers 18
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 966
    move-object v12, p0

    move/from16 v13, p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int v0, p1, v0

    if-eqz v0, :cond_2a

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show(ime(), fromIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_2a
    const/4 v0, 0x0

    const-string v1, "IC.showRequestFromApiToImeReady"

    const/4 v2, 0x0

    const-wide/16 v3, 0x8

    if-eqz v13, :cond_4a

    .line 970
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v5

    iget-object v6, v12, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 971
    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 970
    const-string v7, "InsetsController#show"

    invoke-virtual {v5, v7, v6, v0}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 972
    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 973
    const-string v1, "IC.showRequestFromIme"

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_52

    .line 975
    :cond_4a
    const-string v5, "IC.showRequestFromApi"

    invoke-static {v3, v4, v5, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 976
    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 979
    :goto_52
    if-eqz v13, :cond_7a

    iget-object v1, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    if-eqz v1, :cond_7a

    .line 980
    iget-object v14, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 981
    .local v14, "pendingRequest":Landroid/view/InsetsController$PendingControlRequest;
    iput-object v0, v12, Landroid/view/InsetsController;->mPendingImeControlRequest:Landroid/view/InsetsController$PendingControlRequest;

    .line 982
    iget-object v0, v12, Landroid/view/InsetsController;->mHandler:Landroid/os/Handler;

    iget-object v1, v12, Landroid/view/InsetsController;->mPendingControlTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 986
    iget v1, v14, Landroid/view/InsetsController$PendingControlRequest;->types:I

    iget-object v2, v14, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    iget-object v3, v14, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-wide v6, v14, Landroid/view/InsetsController$PendingControlRequest;->durationMs:J

    iget-object v8, v14, Landroid/view/InsetsController$PendingControlRequest;->interpolator:Landroid/view/animation/Interpolator;

    iget v9, v14, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    iget v10, v14, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    iget-boolean v11, v14, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;ZJLandroid/view/animation/Interpolator;IIZ)V

    .line 993
    return-void

    .line 998
    .end local v14    # "pendingRequest":Landroid/view/InsetsController$PendingControlRequest;
    :cond_7a
    const/4 v0, 0x0

    .line 999
    .local v0, "typesReady":I
    invoke-static/range {p1 .. p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 1000
    .local v1, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_85
    if-ltz v2, :cond_b7

    .line 1001
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1002
    .local v4, "internalType":I
    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->getAnimationType(I)I

    move-result v5

    .line 1003
    .local v5, "animationType":I
    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v6

    .line 1004
    .local v6, "consumer":Landroid/view/InsetsSourceConsumer;
    invoke-virtual {v6}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v7

    if-eqz v7, :cond_a2

    const/4 v7, -0x1

    if-eq v5, v7, :cond_b4

    :cond_a2
    if-nez v5, :cond_a5

    .line 1011
    goto :goto_b4

    .line 1013
    :cond_a5
    if-eqz v13, :cond_ab

    const/4 v7, 0x2

    if-ne v5, v7, :cond_ab

    .line 1015
    goto :goto_b4

    .line 1017
    :cond_ab
    invoke-virtual {v6}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v7

    invoke-static {v7}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    or-int/2addr v0, v7

    .line 1000
    .end local v4    # "internalType":I
    .end local v5    # "animationType":I
    .end local v6    # "consumer":Landroid/view/InsetsSourceConsumer;
    :cond_b4
    :goto_b4
    add-int/lit8 v2, v2, -0x1

    goto :goto_85

    .line 1020
    .end local v2    # "i":I
    :cond_b7
    invoke-virtual {p0, v0, v3, v13}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    .line 1021
    return-void
.end method

.method public blacklist startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .registers 15
    .param p2, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p3, "types"    # I
    .param p4, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p5, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/view/InsetsAnimationControlRunner;",
            ":",
            "Landroid/view/InternalInsetsAnimationController;",
            ">(TT;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/WindowInsetsAnimation;",
            "Landroid/view/WindowInsetsAnimation$Bounds;",
            ")V"
        }
    .end annotation

    .line 1580
    .local p1, "runner":Landroid/view/InsetsAnimationControlRunner;, "TT;"
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p4}, Landroid/view/InsetsController$Host;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 1581
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    new-instance v8, Landroid/view/InsetsController$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/view/InsetsController$$ExternalSyntheticLambda3;-><init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlRunner;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    invoke-interface {v0, v8}, Landroid/view/InsetsController$Host;->addOnPreDrawRunnable(Ljava/lang/Runnable;)V

    .line 1601
    return-void
.end method

.method public blacklist updateCompatSysUiVisibility(IZZ)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "visible"    # Z
    .param p3, "hasControl"    # Z

    .line 1412
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/InsetsController$Host;->updateCompatSysUiVisibility(IZZ)V

    .line 1413
    return-void
.end method

.method public blacklist updateEmbeddingScale()V
    .registers 4

    .line 1739
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    .line 1740
    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1741
    iget-object v0, p0, Landroid/view/InsetsController;->mHost:Landroid/view/InsetsController$Host;

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1742
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_39

    .line 1743
    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0}, Landroid/app/Activity;->getEmbeddingScaleParameter()Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    move-result-object v2

    iget v2, v2, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;->scale:F

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->updateEmbeddingScale(F)V

    .line 1746
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_39
    return-void
.end method
