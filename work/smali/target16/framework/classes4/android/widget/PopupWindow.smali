.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupDecorView;,
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o ABOVE_ANCHOR_STATE_SET:[I

.field private static final greylist-max-o ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final greylist-max-o DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final whitelist INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final whitelist INPUT_METHOD_NEEDED:I = 0x1

.field public static final whitelist INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private greylist mAboveAnchor:Z

.field private greylist-max-p mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mAllowScrollingAnchorParent:Z

.field private greylist mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAnchorRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAnchorXoff:I

.field private greylist-max-o mAnchorYoff:I

.field private greylist-max-o mAnchoredGravity:I

.field private greylist mAnimationStyle:I

.field private greylist-max-o mAttachedInDecor:Z

.field private greylist-max-o mAttachedInDecorSet:Z

.field private blacklist mBackCallback:Landroid/window/OnBackInvokedCallback;

.field private greylist-max-o mBackground:Landroid/graphics/drawable/Drawable;

.field private greylist mBackgroundView:Landroid/view/View;

.field private greylist-max-p mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mClipToScreen:Z

.field private greylist-max-o mClippingEnabled:Z

.field private greylist mContentView:Landroid/view/View;

.field private greylist mContext:Landroid/content/Context;

.field private greylist mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private greylist-max-o mElevation:F

.field private greylist-max-o mEnterTransition:Landroid/transition/Transition;

.field private greylist-max-o mEpicenterBounds:Landroid/graphics/Rect;

.field private greylist-max-o mExitTransition:Landroid/transition/Transition;

.field private greylist-max-o mFocusable:Z

.field private greylist-max-o mGravity:I

.field private greylist-max-o mHeight:I

.field private greylist mHeightMode:I

.field private greylist-max-o mIgnoreCheekPress:Z

.field private greylist-max-o mInputMethodMode:I

.field private greylist-max-o mIsAnchorRootAttached:Z

.field private greylist mIsDropdown:Z

.field private greylist mIsShowing:Z

.field private greylist-max-o mIsTransitioningToDismiss:Z

.field private greylist mLastHeight:I

.field private greylist mLastWidth:I

.field private greylist mLayoutInScreen:Z

.field private greylist-max-o mLayoutInsetDecor:Z

.field private greylist-max-r mNotTouchModal:Z

.field private final greylist-max-o mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final greylist-max-o mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private greylist mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final greylist-max-o mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final greylist-max-p mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private greylist-max-o mOutsideTouchable:Z

.field private greylist-max-p mOverlapAnchor:Z

.field private greylist-max-o mParentRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPopupViewInitialLayoutDirectionInherited:Z

.field private greylist-max-o mSoftInputMode:I

.field private greylist-max-o mSplitTouchEnabled:I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTmpAppLocation:[I

.field private final greylist-max-o mTmpDrawingLocation:[I

.field private final greylist-max-o mTmpScreenLocation:[I

.field private greylist mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private greylist-max-o mTouchable:Z

.field private greylist-max-o mWidth:I

.field private greylist mWidthMode:I

.field private greylist mWindowLayoutType:I

.field private greylist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$0x_ylo_rVcDtWMJ6Hi3r2rqQ1EU(Landroid/widget/PopupWindow;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Landroid/widget/PopupWindow;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DcwrQHyoN5xOfp9rZ8TGiebc06c(Landroid/widget/PopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAboveAnchor(Landroid/widget/PopupWindow;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackCallback(Landroid/widget/PopupWindow;)Landroid/window/OnBackInvokedCallback;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentRootView(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchInterceptor(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBackCallback(Landroid/widget/PopupWindow;Landroid/window/OnBackInvokedCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAnchorRootAttached(Landroid/widget/PopupWindow;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$malignToAnchor(Landroid/widget/PopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissImmediate(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterBackCallback(Landroid/widget/PopupWindow;Landroid/window/OnBackInvokedDispatcher;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetABOVE_ANCHOR_STATE_SET()[I
    .registers 1

    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 233
    const v0, 0x10100aa

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 364
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 365
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 4

    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 392
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 291
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 299
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 300
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 309
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 142
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 143
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 144
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 176
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 177
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 179
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 180
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 181
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 182
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 186
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 187
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 190
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 191
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 198
    const/4 v4, -0x2

    iput v4, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 203
    iput v4, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 221
    const/16 v4, 0x3e8

    iput v4, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 226
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 228
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 231
    iput v1, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 237
    new-instance v4, Landroid/widget/PopupWindow$1;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 252
    new-instance v4, Landroid/widget/PopupWindow$2;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 268
    new-instance v4, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 271
    new-instance v4, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 317
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 318
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 320
    sget-object v4, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 322
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 323
    const/4 p3, 0x3

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 324
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 329
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p3

    if-eqz p3, :cond_92

    .line 330
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 331
    const p4, 0x1030311

    if-ne p3, p4, :cond_8f

    .line 332
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_91

    .line 334
    :cond_8f
    iput p3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 336
    :goto_91
    goto :goto_94

    .line 337
    :cond_92
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 340
    :goto_94
    const/4 p3, 0x4

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-direct {p0, p3}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object p3

    .line 343
    const/4 p4, 0x5

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 344
    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    invoke-direct {p0, p4}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object p4

    goto :goto_b5

    .line 347
    :cond_ad
    if-nez p3, :cond_b1

    const/4 p4, 0x0

    goto :goto_b5

    :cond_b1
    invoke-virtual {p3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p4

    .line 350
    :goto_b5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 352
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 353
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 354
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;)V
    .registers 3

    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 378
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;II)V
    .registers 5

    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 408
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;IIZ)V
    .registers 8

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 142
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 143
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 177
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 179
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 180
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 181
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 182
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 186
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 187
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 190
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 191
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 198
    const/4 v1, -0x2

    iput v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 203
    iput v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 221
    const/16 v1, 0x3e8

    iput v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 226
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 228
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 231
    iput v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 237
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 252
    new-instance v0, Landroid/widget/PopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 268
    new-instance v0, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 271
    new-instance v0, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 423
    if-eqz p1, :cond_6d

    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 425
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 428
    :cond_6d
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 429
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 430
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 431
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 432
    return-void
.end method

.method private greylist-max-o alignToAnchor()V
    .registers 11

    .line 2509
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move-object v2, v0

    .line 2510
    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2511
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2513
    iget v4, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v5, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/4 v9, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2515
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v7, -0x1

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2517
    :cond_3f
    return-void
.end method

.method private greylist computeAnimationResource()I
    .registers 3

    .line 1703
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 1704
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_15

    .line 1705
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_11

    .line 1706
    const v0, 0x1030305

    goto :goto_14

    .line 1707
    :cond_11
    const v0, 0x1030304

    .line 1705
    :goto_14
    return v0

    .line 1709
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 1711
    :cond_17
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method private greylist-max-o computeFlags(I)I
    .registers 5

    .line 1655
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1663
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_c

    .line 1664
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1666
    :cond_c
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    const/high16 v1, 0x20000

    if-nez v0, :cond_1b

    .line 1667
    or-int/lit8 p1, p1, 0x8

    .line 1668
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 1669
    or-int/2addr p1, v1

    goto :goto_21

    .line 1671
    :cond_1b
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    .line 1672
    or-int/2addr p1, v1

    .line 1674
    :cond_21
    :goto_21
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_27

    .line 1675
    or-int/lit8 p1, p1, 0x10

    .line 1677
    :cond_27
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_2e

    .line 1678
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1680
    :cond_2e
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v0, :cond_38

    .line 1681
    :cond_36
    or-int/lit16 p1, p1, 0x200

    .line 1683
    :cond_38
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1684
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1686
    :cond_41
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_47

    .line 1687
    or-int/lit16 p1, p1, 0x100

    .line 1689
    :cond_47
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_4e

    .line 1690
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1692
    :cond_4e
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_54

    .line 1693
    or-int/lit8 p1, p1, 0x20

    .line 1695
    :cond_54
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_5b

    .line 1696
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    .line 1698
    :cond_5b
    return p1
.end method

.method private greylist-max-o computeGravity()I
    .registers 3

    .line 1597
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    if-nez v0, :cond_8

    const v0, 0x800033

    goto :goto_a

    :cond_8
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 1598
    :goto_a
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v1, :cond_19

    .line 1599
    :cond_16
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 1601
    :cond_19
    return v0
.end method

.method private greylist-max-o createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .registers 6

    .line 1522
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1524
    const/4 v1, -0x1

    if-eqz v0, :cond_f

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_f

    .line 1525
    goto :goto_10

    .line 1527
    :cond_f
    move v2, v1

    .line 1530
    :goto_10
    new-instance v0, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1531
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1533
    invoke-virtual {v0, p1, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1535
    return-object v0
.end method

.method private greylist-max-o createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .registers 6

    .line 1545
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1547
    const/4 v1, -0x1

    if-eqz v0, :cond_f

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_f

    .line 1548
    goto :goto_10

    .line 1550
    :cond_f
    move v2, v1

    .line 1553
    :goto_10
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1554
    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    .line 1555
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    .line 1556
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    .line 1558
    return-object v0
.end method

.method private greylist-max-o dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5

    .line 2144
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2145
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2148
    :cond_b
    if-eqz p2, :cond_10

    .line 2149
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2154
    :cond_10
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2155
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 2156
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 2157
    return-void
.end method

.method private greylist-max-o getAppRootView(Landroid/view/View;)Landroid/view/View;
    .registers 4

    .line 2520
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 2521
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2520
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v0

    .line 2522
    if-eqz v0, :cond_f

    .line 2523
    return-object v0

    .line 2525
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o getTransition(I)Landroid/transition/Transition;
    .registers 3

    .line 519
    if-eqz p1, :cond_25

    const/high16 v0, 0x10f0000

    if-eq p1, v0, :cond_25

    .line 520
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 521
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object p1

    .line 522
    if-eqz p1, :cond_25

    .line 523
    instance-of v0, p1, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_21

    move-object v0, p1

    check-cast v0, Landroid/transition/TransitionSet;

    .line 524
    invoke-virtual {v0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 525
    :goto_22
    if-nez v0, :cond_25

    .line 526
    return-object p1

    .line 530
    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-p invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .line 1571
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 1572
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1575
    :cond_c
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1576
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    .line 1578
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1580
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1582
    iget-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz p1, :cond_24

    .line 1583
    iget-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    .line 1585
    :cond_24
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 272
    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method private greylist-max-o positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 9

    .line 1901
    nop

    .line 1904
    sub-int/2addr p4, p3

    .line 1905
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr p3, p4

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1907
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr p3, p2

    .line 1908
    if-le p3, p6, :cond_12

    .line 1910
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr p3, p6

    sub-int/2addr v0, p3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1913
    :cond_12
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge p3, p5, :cond_22

    .line 1916
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1918
    sub-int/2addr p6, p5

    .line 1919
    if-eqz p7, :cond_20

    if-le p2, p6, :cond_20

    .line 1920
    iput p6, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_22

    .line 1922
    :cond_20
    const/4 p2, 0x0

    goto :goto_23

    .line 1926
    :cond_22
    :goto_22
    const/4 p2, 0x1

    :goto_23
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr p3, p4

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1928
    return p2
.end method

.method private greylist-max-o positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 9

    .line 1850
    nop

    .line 1852
    sub-int/2addr p4, p3

    .line 1853
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr p3, p4

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1854
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1856
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr p3, p2

    .line 1857
    if-le p3, p6, :cond_14

    .line 1859
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr p3, p6

    sub-int/2addr v0, p3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1862
    :cond_14
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge p3, p5, :cond_24

    .line 1865
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1867
    sub-int/2addr p6, p5

    .line 1868
    if-eqz p7, :cond_22

    if-le p2, p6, :cond_22

    .line 1869
    iput p6, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_24

    .line 1871
    :cond_22
    const/4 p2, 0x0

    goto :goto_25

    .line 1875
    :cond_24
    :goto_24
    const/4 p2, 0x1

    :goto_25
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr p3, p4

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1877
    return p2
.end method

.method private greylist preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .registers 5

    .line 1477
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_64

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_64

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_64

    .line 1482
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1b

    .line 1483
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x104091d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 1488
    :cond_1b
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_24

    .line 1489
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1494
    :cond_24
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_38

    .line 1495
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1496
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3c

    .line 1498
    :cond_38
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1501
    :goto_3c
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1502
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setIsRootNamespace(Z)V

    .line 1505
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v2, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 1509
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 1511
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 1512
    invoke-virtual {p1}, Landroid/view/View;->getRawLayoutDirection()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_60

    goto :goto_61

    :cond_60
    const/4 v1, 0x0

    :goto_61
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1513
    return-void

    .line 1478
    :cond_64
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o setLayoutDirectionFromAnchor()V
    .registers 3

    .line 1588
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1b

    .line 1589
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1590
    if-eqz v0, :cond_1b

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_1b

    .line 1591
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    .line 1594
    :cond_1b
    return-void
.end method

.method private greylist-max-o tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .registers 19

    .line 1883
    sub-int p2, p6, p5

    .line 1884
    iget p4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr p4, p2

    .line 1885
    sub-int p2, p8, p4

    .line 1886
    const/4 v0, 0x1

    move/from16 v6, p7

    if-lt p4, v6, :cond_f

    if-gt p3, p2, :cond_f

    .line 1887
    return v0

    .line 1890
    :cond_f
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p5

    move v5, p6

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/widget/PopupWindow;->positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 1892
    return v0

    .line 1895
    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .registers 19

    .line 1821
    move/from16 v5, p7

    sub-int v0, p6, p5

    .line 1822
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v0

    .line 1823
    sub-int v0, p8, v1

    .line 1824
    const/4 v8, 0x1

    if-lt v1, v5, :cond_f

    if-gt p3, v0, :cond_f

    .line 1825
    return v8

    .line 1828
    :cond_f
    sub-int/2addr v1, p4

    sub-int/2addr v1, v5

    .line 1829
    if-gt p3, v1, :cond_1d

    .line 1831
    iget-boolean p6, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz p6, :cond_18

    .line 1832
    add-int/2addr p2, p4

    .line 1834
    :cond_18
    sub-int/2addr p5, p3

    add-int/2addr p5, p2

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1836
    return v8

    .line 1839
    :cond_1d
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 1841
    return v8

    .line 1844
    :cond_2d
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V
    .registers 4

    .line 2091
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 2092
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 2093
    if-eqz p1, :cond_c

    if-eqz v0, :cond_c

    .line 2094
    invoke-interface {p1, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 2097
    :cond_c
    return-void
.end method

.method private greylist-max-o update(Landroid/view/View;ZIIII)V
    .registers 23

    .line 2401
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_a1

    .line 2405
    :cond_16
    iget-object v4, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2406
    iget v7, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2408
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz p2, :cond_28

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    if-ne v5, v2, :cond_26

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    if-eq v5, v3, :cond_28

    :cond_26
    move v5, v9

    goto :goto_29

    :cond_28
    move v5, v10

    .line 2409
    :goto_29
    if-eqz v4, :cond_3f

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3f

    if-eqz v5, :cond_38

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v4, :cond_38

    goto :goto_3f

    .line 2411
    :cond_38
    if-eqz v5, :cond_42

    .line 2413
    iput v2, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2414
    iput v3, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_42

    .line 2410
    :cond_3f
    :goto_3f
    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 2417
    :cond_42
    :goto_42
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2418
    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2419
    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2420
    iget v13, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2421
    iget v14, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2422
    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2426
    if-gez p5, :cond_56

    .line 2427
    iget v3, v0, Landroid/widget/PopupWindow;->mWidth:I

    move v5, v3

    goto :goto_58

    .line 2426
    :cond_56
    move/from16 v5, p5

    .line 2429
    :goto_58
    if-gez p6, :cond_5e

    .line 2430
    iget v3, v0, Landroid/widget/PopupWindow;->mHeight:I

    move v6, v3

    goto :goto_60

    .line 2429
    :cond_5e
    move/from16 v6, p6

    .line 2433
    :goto_60
    iget v3, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget-boolean v8, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    .line 2435
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2437
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v11, v1, :cond_83

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v14, v1, :cond_83

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v15, v1, :cond_83

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v12, v1, :cond_83

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v13, v1, :cond_82

    goto :goto_83

    :cond_82
    move v9, v10

    .line 2444
    :cond_83
    :goto_83
    if-gez v5, :cond_86

    goto :goto_88

    :cond_86
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2445
    :goto_88
    if-gez v6, :cond_8b

    goto :goto_8d

    :cond_8b
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2446
    :goto_8d
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v9

    invoke-virtual/range {p1 .. p6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2447
    return-void

    .line 2402
    :cond_a1
    :goto_a1
    return-void
.end method


# virtual methods
.method protected greylist-max-o attachToAnchor(Landroid/view/View;III)V
    .registers 7

    .line 2481
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2483
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2484
    if-eqz v0, :cond_e

    .line 2485
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2487
    :cond_e
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2489
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2490
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2491
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2493
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2494
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2495
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2496
    iget-object p1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 2498
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2499
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 2500
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2501
    return-void
.end method

.method protected final greylist createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .registers 4

    .line 1615
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1621
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1622
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1623
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1624
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1625
    iget p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1626
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1628
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_30

    .line 1629
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_33

    .line 1631
    :cond_30
    const/4 p1, -0x3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1634
    :goto_33
    iget p1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez p1, :cond_3e

    .line 1635
    iget p1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput p1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_44

    .line 1637
    :cond_3e
    iget p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput p1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1640
    :goto_44
    iget p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez p1, :cond_4f

    .line 1641
    iget p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput p1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_55

    .line 1643
    :cond_4f
    iget p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput p1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1646
    :goto_55
    const/16 p1, 0x4000

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1649
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PopupWindow:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1651
    return-object v0
.end method

.method protected greylist-max-o detachFromAnchor()V
    .registers 4

    .line 2461
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 2462
    if-eqz v0, :cond_14

    .line 2463
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2464
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2465
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2468
    :cond_14
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_23

    :cond_22
    move-object v0, v1

    .line 2469
    :goto_23
    if-eqz v0, :cond_2f

    .line 2470
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2471
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2474
    :cond_2f
    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2475
    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2476
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2477
    return-void
.end method

.method public whitelist dismiss()V
    .registers 9

    .line 2027
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_89

    .line 2031
    :cond_e
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2032
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 2034
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V

    .line 2037
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2038
    instance-of v3, v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    .line 2039
    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_26

    .line 2041
    :cond_25
    move-object v2, v4

    .line 2045
    :goto_26
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 2047
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 2048
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 2055
    iget-object v3, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 2056
    if-eqz v3, :cond_79

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v5

    if-eqz v5, :cond_79

    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    if-nez v5, :cond_41

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_79

    .line 2059
    :cond_41
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 2060
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2061
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2062
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, -0x20001

    and-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2063
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6, v0, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2065
    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_6c

    iget-object v4, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2066
    :cond_6c
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v5

    .line 2071
    new-instance v6, Landroid/widget/PopupWindow$3;

    invoke-direct {v6, p0, v0, v2, v1}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V

    .line 2078
    goto :goto_7c

    .line 2079
    :cond_79
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2083
    :goto_7c
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2085
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_88

    .line 2086
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 2088
    :cond_88
    return-void

    .line 2028
    :cond_89
    :goto_89
    return-void
.end method

.method protected greylist-max-o findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 34

    .line 1735
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p2

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1736
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 1737
    iget-boolean v2, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v2, :cond_15

    .line 1738
    sub-int v2, p4, v4

    goto :goto_17

    .line 1737
    :cond_15
    move/from16 v2, p4

    .line 1742
    :goto_17
    iget-object v12, v0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 1743
    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 1744
    invoke-virtual {v3, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1746
    iget-object v13, v0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 1747
    invoke-virtual {v10, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1749
    iget-object v14, v0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 1750
    const/4 v15, 0x0

    aget v5, v13, v15

    aget v6, v12, v15

    sub-int/2addr v5, v6

    aput v5, v14, v15

    .line 1751
    const/4 v5, 0x1

    aget v6, v13, v5

    aget v7, v12, v5

    sub-int/2addr v6, v7

    aput v6, v14, v5

    .line 1752
    aget v6, v14, v15

    add-int v6, v6, p3

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1753
    aget v6, v14, v5

    add-int/2addr v6, v4

    add-int/2addr v6, v2

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1755
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1756
    invoke-virtual {v3, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1757
    const/4 v3, -0x1

    move/from16 v7, p5

    if-ne v7, v3, :cond_55

    .line 1758
    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    .line 1760
    :cond_55
    move/from16 v8, p6

    if-ne v8, v3, :cond_5f

    .line 1761
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v8

    goto :goto_60

    .line 1760
    :cond_5f
    move v3, v8

    .line 1765
    :goto_60
    invoke-direct {v0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1766
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1767
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1771
    invoke-virtual {v10}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    move/from16 v9, p7

    invoke-static {v9, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    .line 1773
    const/4 v9, 0x5

    if-ne v8, v9, :cond_84

    .line 1774
    move/from16 p4, v5

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v16, v7, v11

    sub-int v5, v5, v16

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_86

    .line 1773
    :cond_84
    move/from16 p4, v5

    .line 1778
    :goto_86
    aget v5, v14, p4

    aget v16, v13, p4

    move/from16 v17, v7

    iget v7, v6, Landroid/graphics/Rect;->top:I

    move/from16 v18, v8

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v9

    const/4 v9, 0x0

    move/from16 v20, v15

    move-object v15, v6

    move/from16 v6, v16

    move/from16 v16, v11

    move/from16 v11, v18

    move-object/from16 v18, v12

    move/from16 v12, p4

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v21

    .line 1783
    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v22, v4

    aget v5, v14, v20

    aget v6, v13, v20

    iget v7, v15, Landroid/graphics/Rect;->left:I

    iget v8, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, v16

    move/from16 v3, v17

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v5

    .line 1788
    if-eqz v21, :cond_c6

    if-nez v5, :cond_136

    .line 1789
    :cond_c6
    invoke-virtual {v10}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 1790
    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 1791
    new-instance v4, Landroid/graphics/Rect;

    add-int v7, v2, v17

    add-int v7, v7, p3

    add-int v5, v3, v24

    add-int v5, v5, v22

    add-int v5, v5, v23

    invoke-direct {v4, v2, v3, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1793
    if-eqz p8, :cond_10e

    invoke-virtual {v10, v4, v12}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 1795
    invoke-virtual {v10, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1796
    aget v2, v13, v20

    aget v3, v18, v20

    sub-int/2addr v2, v3

    aput v2, v14, v20

    .line 1797
    aget v2, v13, v12

    aget v3, v18, v12

    sub-int/2addr v2, v3

    aput v2, v14, v12

    .line 1798
    aget v2, v14, v20

    add-int v2, v2, p3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1799
    aget v2, v14, v12

    add-int v2, v2, v22

    add-int v2, v2, v23

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1802
    const/4 v2, 0x5

    if-ne v11, v2, :cond_10e

    .line 1803
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v7, v17, v16

    sub-int/2addr v2, v7

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1808
    :cond_10e
    aget v5, v14, v12

    aget v6, v13, v12

    iget v7, v15, Landroid/graphics/Rect;->top:I

    iget v8, v15, Landroid/graphics/Rect;->bottom:I

    iget-boolean v9, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v4, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1810
    aget v5, v14, v20

    aget v6, v13, v20

    iget v7, v15, Landroid/graphics/Rect;->left:I

    iget v8, v15, Landroid/graphics/Rect;->right:I

    iget-boolean v9, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, v16

    move/from16 v3, v17

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1815
    :cond_136
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    aget v1, v14, v12

    if-ge v0, v1, :cond_13e

    move v15, v12

    goto :goto_140

    :cond_13e
    move/from16 v15, v20

    :goto_140
    return v15
.end method

.method protected final greylist-max-o getAllowScrollingAnchorParent()Z
    .registers 2

    .line 955
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return v0
.end method

.method protected greylist-max-o getAnchor()Landroid/view/View;
    .registers 2

    .line 2505
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public whitelist getAnimationStyle()I
    .registers 2

    .line 619
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 541
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getContentView()Landroid/view/View;
    .registers 2

    .line 662
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected greylist-max-o getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .line 2361
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public whitelist getElevation()F
    .registers 2

    .line 599
    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 454
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getEpicenterBounds()Landroid/graphics/Rect;
    .registers 3

    .line 496
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .registers 2

    .line 478
    iget-object v0, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 1186
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public whitelist getInputMethodMode()I
    .registers 2

    .line 750
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;)I
    .registers 3

    .line 1942
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result p1

    return p1
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;I)I
    .registers 4

    .line 1957
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result p1

    return p1
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;IZ)I
    .registers 8

    .line 1977
    nop

    .line 1978
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1980
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 1981
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1982
    if-eqz p3, :cond_25

    .line 1987
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 1988
    invoke-virtual {p1, p3}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    .line 1989
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 1990
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 1991
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    move-object v0, p3

    goto :goto_26

    .line 1993
    :cond_25
    nop

    .line 1996
    :goto_26
    iget-object p3, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 1997
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1999
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2002
    iget-boolean v2, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    .line 2003
    aget p1, p3, v3

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    goto :goto_40

    .line 2005
    :cond_37
    aget v2, p3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    .line 2007
    :goto_40
    aget p1, p3, v3

    iget p3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 2010
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2011
    iget-object p2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5f

    .line 2012
    iget-object p2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2013
    iget-object p2, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p3

    sub-int/2addr p1, p2

    .line 2016
    :cond_5f
    return p1
.end method

.method protected final greylist-max-o getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .registers 2

    .line 2170
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method public whitelist getOverlapAnchor()Z
    .registers 2

    .line 1264
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return v0
.end method

.method public whitelist getSoftInputMode()I
    .registers 2

    .line 792
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method protected final greylist-max-o getTransitionEpicenter()Landroid/graphics/Rect;
    .registers 7

    .line 2112
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_f

    :cond_e
    move-object v0, v1

    .line 2113
    :goto_f
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2114
    if-eqz v0, :cond_4d

    if-nez v2, :cond_16

    goto :goto_4d

    .line 2118
    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 2119
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v2}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v2

    .line 2122
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2123
    aget v0, v1, v5

    aget v4, v2, v5

    sub-int/2addr v0, v4

    const/4 v4, 0x1

    aget v1, v1, v4

    aget v2, v2, v4

    sub-int/2addr v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2126
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_4c

    .line 2127
    iget v0, v3, Landroid/graphics/Rect;->left:I

    .line 2128
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 2129
    iget-object v2, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2130
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2133
    :cond_4c
    return-object v3

    .line 2115
    :cond_4d
    :goto_4d
    return-object v1
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 1218
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public whitelist getWindowLayoutType()I
    .registers 2

    .line 1113
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method protected greylist-max-o hasContentView()Z
    .registers 2

    .line 2351
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected greylist-max-o hasDecorView()Z
    .registers 2

    .line 2356
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isAboveAnchor()Z
    .registers 2

    .line 1465
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public whitelist isAttachedInDecor()Z
    .registers 2

    .line 1052
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public greylist isClipToScreenEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 897
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return v0
.end method

.method public whitelist isClippedToScreen()Z
    .registers 2

    .line 924
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return v0
.end method

.method public whitelist isClippingEnabled()Z
    .registers 2

    .line 866
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public whitelist isFocusable()Z
    .registers 2

    .line 721
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public whitelist isLaidOutInScreen()Z
    .registers 2

    .line 1026
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public greylist isLayoutInScreenEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1000
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method protected final greylist-max-o isLayoutInsetDecor()Z
    .registers 2

    .line 1091
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return v0
.end method

.method public whitelist isOutsideTouchable()Z
    .registers 2

    .line 834
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public whitelist isShowing()Z
    .registers 2

    .line 1273
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public whitelist isSplitTouchEnabled()Z
    .registers 5

    .line 966
    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_18

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_18

    .line 967
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_17

    move v1, v2

    :cond_17
    return v1

    .line 969
    :cond_18
    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-ne v0, v2, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method

.method public whitelist isTouchModal()Z
    .registers 2

    .line 1125
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isTouchable()Z
    .registers 2

    .line 803
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method protected final greylist-max-o isTransitioningToDismiss()Z
    .registers 2

    .line 1293
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return v0
.end method

.method greylist setAllowScrollingAnchorParent(Z)V
    .registers 2

    .line 950
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 951
    return-void
.end method

.method public whitelist setAnimationStyle(I)V
    .registers 2

    .line 651
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 652
    return-void
.end method

.method public whitelist setAttachedInDecor(Z)V
    .registers 2

    .line 1068
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 1069
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 1070
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 553
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 564
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of p1, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz p1, :cond_39

    .line 565
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 568
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->findStateDrawableIndex([I)I

    move-result v0

    .line 572
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v1

    .line 573
    nop

    .line 574
    const/4 v2, 0x0

    :goto_18
    const/4 v3, -0x1

    if-ge v2, v1, :cond_22

    .line 575
    if-eq v2, v0, :cond_1f

    .line 576
    nop

    .line 577
    goto :goto_23

    .line 574
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_22
    move v2, v3

    .line 583
    :goto_23
    if-eq v0, v3, :cond_34

    if-eq v2, v3, :cond_34

    .line 584
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 585
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_39

    .line 587
    :cond_34
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 588
    iput-object p1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 591
    :cond_39
    :goto_39
    return-void
.end method

.method public greylist setClipToScreenEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 912
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 913
    return-void
.end method

.method public whitelist setClippingEnabled(Z)V
    .registers 2

    .line 884
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 885
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 3

    .line 677
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 678
    return-void

    .line 681
    :cond_7
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 683
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez p1, :cond_19

    iget-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_19

    .line 684
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 687
    :cond_19
    iget-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez p1, :cond_2d

    iget-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_2d

    .line 688
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 695
    :cond_2d
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_47

    iget-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    if-nez p1, :cond_47

    .line 699
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_43

    const/4 p1, 0x1

    goto :goto_44

    :cond_43
    const/4 p1, 0x0

    :goto_44
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 703
    :cond_47
    return-void
.end method

.method protected final greylist-max-o setDropDown(Z)V
    .registers 2

    .line 1283
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1284
    return-void
.end method

.method public whitelist setElevation(F)V
    .registers 2

    .line 610
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 611
    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 442
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 443
    return-void
.end method

.method public whitelist setEpicenterBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 515
    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 516
    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .registers 2

    .line 465
    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 466
    return-void
.end method

.method public whitelist setFocusable(Z)V
    .registers 2

    .line 741
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 742
    return-void
.end method

.method public whitelist setHeight(I)V
    .registers 2

    .line 1204
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 1205
    return-void
.end method

.method public whitelist setIgnoreCheekPress()V
    .registers 2

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 635
    return-void
.end method

.method public whitelist setInputMethodMode(I)V
    .registers 2

    .line 767
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 768
    return-void
.end method

.method public whitelist setIsClippedToScreen(Z)V
    .registers 2

    .line 939
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 940
    return-void
.end method

.method public whitelist setIsLaidOutInScreen(Z)V
    .registers 2

    .line 1039
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 1040
    return-void
.end method

.method public greylist setLayoutInScreenEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1014
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 1015
    return-void
.end method

.method public greylist setLayoutInsetDecor(Z)V
    .registers 2

    .line 1086
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 1087
    return-void
.end method

.method public whitelist setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    .line 2165
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2166
    return-void
.end method

.method public whitelist setOutsideTouchable(Z)V
    .registers 2

    .line 855
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 856
    return-void
.end method

.method public whitelist setOverlapAnchor(Z)V
    .registers 2

    .line 1252
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 1253
    return-void
.end method

.method protected final greylist-max-o setShowing(Z)V
    .registers 2

    .line 1278
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1279
    return-void
.end method

.method public whitelist setSoftInputMode(I)V
    .registers 2

    .line 781
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 782
    return-void
.end method

.method public whitelist setSplitTouchEnabled(Z)V
    .registers 2

    .line 986
    iput p1, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 987
    return-void
.end method

.method public whitelist setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .line 710
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 711
    return-void
.end method

.method public whitelist setTouchModal(Z)V
    .registers 2

    .line 1142
    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 1143
    return-void
.end method

.method public whitelist setTouchable(Z)V
    .registers 2

    .line 822
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 823
    return-void
.end method

.method protected final greylist-max-o setTransitioningToDismiss(Z)V
    .registers 2

    .line 1288
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 1289
    return-void
.end method

.method public whitelist setWidth(I)V
    .registers 2

    .line 1236
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 1237
    return-void
.end method

.method public whitelist setWindowLayoutMode(II)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1171
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1172
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1173
    return-void
.end method

.method public whitelist setWindowLayoutType(I)V
    .registers 2

    .line 1104
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 1105
    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;)V
    .registers 3

    .line 1362
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1363
    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;II)V
    .registers 5

    .line 1383
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 1384
    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;III)V
    .registers 15

    .line 1407
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_48

    .line 1411
    :cond_d
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1413
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 1415
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1416
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1418
    nop

    .line 1419
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1420
    invoke-direct {p0, v3}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1422
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean v9, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p1

    .line 1424
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1425
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    int-to-long p1, p1

    goto :goto_42

    :cond_40
    const-wide/16 p1, -0x1

    :goto_42
    iput-wide p1, v3, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 1427
    invoke-direct {p0, v3}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1428
    return-void

    .line 1408
    :cond_48
    :goto_48
    return-void
.end method

.method public greylist showAtLocation(Landroid/os/IBinder;III)V
    .registers 6

    .line 1328
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_b

    goto :goto_2a

    .line 1332
    :cond_b
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1334
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 1336
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1337
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1338
    iput p2, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 1340
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 1341
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1343
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1344
    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1346
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1347
    return-void

    .line 1329
    :cond_2a
    :goto_2a
    return-void
.end method

.method public whitelist showAtLocation(Landroid/view/View;III)V
    .registers 7

    .line 1311
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 1312
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 1313
    return-void
.end method

.method public whitelist update()V
    .registers 6

    .line 2190
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4d

    .line 2194
    :cond_d
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2196
    nop

    .line 2198
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    .line 2199
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1f

    .line 2200
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2201
    move v1, v3

    goto :goto_20

    .line 2199
    :cond_1f
    const/4 v1, 0x0

    .line 2204
    :goto_20
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v2

    .line 2205
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v4, :cond_2d

    .line 2206
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2207
    move v1, v3

    .line 2210
    :cond_2d
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v2

    .line 2211
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v2, v4, :cond_38

    .line 2212
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2213
    goto :goto_39

    .line 2211
    :cond_38
    move v3, v1

    .line 2216
    :goto_39
    if-eqz v3, :cond_4c

    .line 2217
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    invoke-virtual {p0, v1, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2219
    :cond_4c
    return-void

    .line 2191
    :cond_4d
    :goto_4d
    return-void
.end method

.method public whitelist update(II)V
    .registers 10

    .line 2237
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2238
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2239
    return-void
.end method

.method public whitelist update(IIII)V
    .registers 11

    .line 2254
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2255
    return-void
.end method

.method public whitelist update(IIIIZ)V
    .registers 10

    .line 2273
    if-ltz p3, :cond_7

    .line 2274
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 2275
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2278
    :cond_7
    if-ltz p4, :cond_e

    .line 2279
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 2280
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2283
    :cond_e
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_a9

    .line 2287
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2289
    nop

    .line 2291
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_28

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    goto :goto_2a

    :cond_28
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 2292
    :goto_2a
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p3, v2, :cond_37

    iget p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq p3, v1, :cond_37

    .line 2293
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2294
    move p5, v3

    .line 2297
    :cond_37
    iget p3, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez p3, :cond_3e

    iget p3, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    goto :goto_40

    :cond_3e
    iget p3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 2298
    :goto_40
    if-eq p4, v2, :cond_4b

    iget p4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq p4, p3, :cond_4b

    .line 2299
    iput p3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2300
    move p5, v3

    .line 2303
    :cond_4b
    iget p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq p3, p1, :cond_52

    .line 2304
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2305
    move p5, v3

    .line 2308
    :cond_52
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq p1, p2, :cond_59

    .line 2309
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2310
    move p5, v3

    .line 2313
    :cond_59
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result p1

    .line 2314
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq p1, p2, :cond_64

    .line 2315
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2316
    move p5, v3

    .line 2319
    :cond_64
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result p1

    .line 2320
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq p1, p2, :cond_71

    .line 2321
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2322
    move p5, v3

    .line 2325
    :cond_71
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result p1

    .line 2326
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq p1, p2, :cond_7c

    .line 2327
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2328
    move p5, v3

    .line 2331
    :cond_7c
    nop

    .line 2332
    nop

    .line 2334
    iget-object p1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_97

    iget-object p1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_97

    .line 2335
    iget-object p1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 2336
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    goto :goto_98

    .line 2339
    :cond_97
    const/4 p1, 0x0

    :goto_98
    int-to-long p2, v2

    iget-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long p4, p2, v1

    if-eqz p4, :cond_a2

    .line 2340
    iput-wide p2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2341
    goto :goto_a3

    .line 2339
    :cond_a2
    move v3, p5

    .line 2344
    :goto_a3
    if-eqz v3, :cond_a8

    .line 2345
    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2347
    :cond_a8
    return-void

    .line 2284
    :cond_a9
    :goto_a9
    return-void
.end method

.method public whitelist update(Landroid/view/View;II)V
    .registers 11

    .line 2375
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    .line 2376
    return-void
.end method

.method public whitelist update(Landroid/view/View;IIII)V
    .registers 13

    .line 2395
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    .line 2396
    return-void
.end method

.method protected greylist-max-o update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .line 2223
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 2224
    iget-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {p1, v0, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2225
    return-void
.end method

.method protected final greylist updateAboveAnchor(Z)V
    .registers 3

    .line 1433
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_2b

    .line 1434
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 1436
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2b

    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz p1, :cond_2b

    .line 1440
    iget-object p1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_26

    .line 1441
    iget-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz p1, :cond_1e

    .line 1442
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    .line 1444
    :cond_1e
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    .line 1447
    :cond_26
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1451
    :cond_2b
    :goto_2b
    return-void
.end method
