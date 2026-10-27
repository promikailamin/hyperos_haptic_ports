.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$PopupDecorView;,
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
.method public static synthetic blacklist $r8$lambda$sBySINsQ840RHdfSximM8t-0I0Y(Landroid/widget/PopupWindow;)V
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
    .registers 3

    .line 236
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 367
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 368
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 395
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 294
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 302
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 303
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 312
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 145
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 146
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 147
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 179
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 180
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 182
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 183
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 184
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 185
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 189
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 190
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 193
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 194
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 201
    const/4 v4, -0x2

    iput v4, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 206
    iput v4, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 224
    const/16 v4, 0x3e8

    iput v4, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 229
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 231
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 234
    iput v1, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 240
    new-instance v4, Landroid/widget/PopupWindow$1;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 255
    new-instance v4, Landroid/widget/PopupWindow$2;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 271
    new-instance v4, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 274
    new-instance v4, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 320
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 321
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 323
    sget-object v4, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 325
    .local v4, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 326
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 327
    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 332
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 333
    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 334
    .local v0, "animStyle":I
    const v2, 0x1030304

    if-ne v0, v2, :cond_90

    .line 335
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_92

    .line 337
    :cond_90
    iput v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 339
    .end local v0    # "animStyle":I
    :goto_92
    goto :goto_95

    .line 340
    :cond_93
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 343
    :goto_95
    const/4 v0, 0x4

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v0

    .line 346
    .local v0, "enterTransition":Landroid/transition/Transition;
    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 347
    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .local v1, "exitTransition":Landroid/transition/Transition;
    goto :goto_b6

    .line 350
    .end local v1    # "exitTransition":Landroid/transition/Transition;
    :cond_ae
    if-nez v0, :cond_b2

    const/4 v1, 0x0

    goto :goto_b6

    :cond_b2
    invoke-virtual {v0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v1

    .line 353
    .restart local v1    # "exitTransition":Landroid/transition/Transition;
    :goto_b6
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 355
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 356
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 357
    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "contentView"    # Landroid/view/View;

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 381
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;II)V
    .registers 5
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 411
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;IIZ)V
    .registers 8
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 145
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 146
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 180
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 182
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 183
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 184
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 185
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 189
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 190
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 193
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 194
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 201
    const/4 v1, -0x2

    iput v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 206
    iput v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 224
    const/16 v1, 0x3e8

    iput v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 229
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 231
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 234
    iput v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 240
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 255
    new-instance v0, Landroid/widget/PopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 271
    new-instance v0, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 274
    new-instance v0, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 426
    if-eqz p1, :cond_6c

    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 428
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 431
    :cond_6c
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 432
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 433
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 434
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 435
    return-void
.end method

.method private greylist-max-o alignToAnchor()V
    .registers 12

    .line 2519
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2520
    .local v0, "anchor":Landroid/view/View;
    :goto_c
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2521
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 2523
    .local v10, "p":Landroid/view/WindowManager$LayoutParams;
    iget v4, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v5, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget v6, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v10

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2525
    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2527
    .end local v10    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_3e
    return-void
.end method

.method private greylist computeAnimationResource()I
    .registers 3

    .line 1707
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 1708
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_15

    .line 1709
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_11

    .line 1710
    const v0, 0x10302f8

    goto :goto_14

    .line 1711
    :cond_11
    const v0, 0x10302f7

    .line 1709
    :goto_14
    return v0

    .line 1713
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 1715
    :cond_17
    return v0
.end method

.method private greylist-max-o computeFlags(I)I
    .registers 5
    .param p1, "curFlags"    # I

    .line 1659
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1667
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_c

    .line 1668
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1670
    :cond_c
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    const/high16 v1, 0x20000

    if-nez v0, :cond_1b

    .line 1671
    or-int/lit8 p1, p1, 0x8

    .line 1672
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 1673
    or-int/2addr p1, v1

    goto :goto_21

    .line 1675
    :cond_1b
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    .line 1676
    or-int/2addr p1, v1

    .line 1678
    :cond_21
    :goto_21
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_27

    .line 1679
    or-int/lit8 p1, p1, 0x10

    .line 1681
    :cond_27
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_2e

    .line 1682
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1684
    :cond_2e
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v0, :cond_38

    .line 1685
    :cond_36
    or-int/lit16 p1, p1, 0x200

    .line 1687
    :cond_38
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1688
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1690
    :cond_41
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_47

    .line 1691
    or-int/lit16 p1, p1, 0x100

    .line 1693
    :cond_47
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_4e

    .line 1694
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1696
    :cond_4e
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_54

    .line 1697
    or-int/lit8 p1, p1, 0x20

    .line 1699
    :cond_54
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_5b

    .line 1700
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    .line 1702
    :cond_5b
    return p1
.end method

.method private greylist-max-o computeGravity()I
    .registers 3

    .line 1600
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    if-nez v0, :cond_7

    const v0, 0x800033

    .line 1601
    .local v0, "gravity":I
    :cond_7
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v1, :cond_16

    .line 1602
    :cond_13
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 1604
    :cond_16
    return v0
.end method

.method private greylist-max-o createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .registers 7
    .param p1, "contentView"    # Landroid/view/View;

    .line 1525
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1527
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_f

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_f

    .line 1528
    const/4 v1, -0x2

    .local v1, "height":I
    goto :goto_10

    .line 1530
    .end local v1    # "height":I
    :cond_f
    const/4 v1, -0x1

    .line 1533
    .restart local v1    # "height":I
    :goto_10
    new-instance v2, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1534
    .local v2, "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1536
    .local v3, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, p1, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1538
    return-object v2
.end method

.method private greylist-max-o createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .registers 6
    .param p1, "contentView"    # Landroid/view/View;

    .line 1548
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1550
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_f

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_f

    .line 1551
    const/4 v1, -0x2

    .local v1, "height":I
    goto :goto_10

    .line 1553
    .end local v1    # "height":I
    :cond_f
    const/4 v1, -0x1

    .line 1556
    .restart local v1    # "height":I
    :goto_10
    new-instance v2, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1557
    .local v2, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    .line 1558
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    .line 1559
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    .line 1561
    return-object v2
.end method

.method private greylist-max-o dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "contentHolder"    # Landroid/view/ViewGroup;
    .param p3, "contentView"    # Landroid/view/View;

    .line 2154
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2155
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2158
    :cond_b
    if-eqz p2, :cond_10

    .line 2159
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2164
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2165
    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 2166
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 2167
    return-void
.end method

.method private greylist-max-o getAppRootView(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;

    .line 2530
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 2531
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2530
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v0

    .line 2532
    .local v0, "appWindowView":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 2533
    return-object v0

    .line 2535
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getTransition(I)Landroid/transition/Transition;
    .registers 5
    .param p1, "resId"    # I

    .line 522
    if-eqz p1, :cond_25

    const/high16 v0, 0x10f0000

    if-eq p1, v0, :cond_25

    .line 523
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 524
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 525
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v1, :cond_25

    .line 526
    instance-of v2, v1, Landroid/transition/TransitionSet;

    if-eqz v2, :cond_21

    move-object v2, v1

    check-cast v2, Landroid/transition/TransitionSet;

    .line 527
    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    if-nez v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    .line 528
    .local v2, "isEmpty":Z
    :goto_22
    if-nez v2, :cond_25

    .line 529
    return-object v1

    .line 533
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "transition":Landroid/transition/Transition;
    .end local v2    # "isEmpty":Z
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-p invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 1574
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    .line 1575
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1578
    :cond_a
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1579
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    .line 1581
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1583
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1585
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz v1, :cond_20

    .line 1586
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    .line 1588
    :cond_20
    return-void
.end method

.method private greylist-max-o positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 13
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "width"    # I
    .param p3, "drawingLocationX"    # I
    .param p4, "screenLocationX"    # I
    .param p5, "displayFrameLeft"    # I
    .param p6, "displayFrameRight"    # I
    .param p7, "canResize"    # Z

    .line 1911
    const/4 v0, 0x1

    .line 1914
    .local v0, "fitsInDisplay":Z
    sub-int v1, p4, p3

    .line 1915
    .local v1, "winOffsetX":I
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1917
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, p2

    .line 1918
    .local v2, "right":I
    if-le v2, p6, :cond_14

    .line 1920
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, v2, p6

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1923
    :cond_14
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v3, p5, :cond_24

    .line 1926
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1928
    sub-int v3, p6, p5

    .line 1929
    .local v3, "displayFrameWidth":I
    if-eqz p7, :cond_23

    if-le p2, v3, :cond_23

    .line 1930
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_24

    .line 1932
    :cond_23
    const/4 v0, 0x0

    .line 1936
    .end local v3    # "displayFrameWidth":I
    :cond_24
    :goto_24
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1938
    return v0
.end method

.method private greylist-max-o positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 13
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "height"    # I
    .param p3, "drawingLocationY"    # I
    .param p4, "screenLocationY"    # I
    .param p5, "displayFrameTop"    # I
    .param p6, "displayFrameBottom"    # I
    .param p7, "canResize"    # Z

    .line 1860
    const/4 v0, 0x1

    .line 1862
    .local v0, "fitsInDisplay":Z
    sub-int v1, p4, p3

    .line 1863
    .local v1, "winOffsetY":I
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1864
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1866
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, p2

    .line 1867
    .local v2, "bottom":I
    if-le v2, p6, :cond_16

    .line 1869
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v4, v2, p6

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1872
    :cond_16
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v3, p5, :cond_26

    .line 1875
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1877
    sub-int v3, p6, p5

    .line 1878
    .local v3, "displayFrameHeight":I
    if-eqz p7, :cond_25

    if-le p2, v3, :cond_25

    .line 1879
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_26

    .line 1881
    :cond_25
    const/4 v0, 0x0

    .line 1885
    .end local v3    # "displayFrameHeight":I
    :cond_26
    :goto_26
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1887
    return v0
.end method

.method private greylist preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 1480
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_5e

    .line 1485
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1b

    .line 1486
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x104080f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 1491
    :cond_1b
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_22

    .line 1492
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1497
    :cond_22
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_34

    .line 1498
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1499
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_38

    .line 1501
    :cond_34
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1504
    :goto_38
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1505
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setIsRootNamespace(Z)V

    .line 1508
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v2, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 1512
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 1514
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 1515
    invoke-virtual {v0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v1, 0x0

    :goto_5b
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1516
    return-void

    .line 1481
    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o setLayoutDirectionFromAnchor()V
    .registers 4

    .line 1591
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_19

    .line 1592
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1593
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_19

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_19

    .line 1594
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    .line 1597
    .end local v0    # "anchor":Landroid/view/View;
    :cond_19
    return-void
.end method

.method private greylist-max-o tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .registers 25
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "xOffset"    # I
    .param p3, "width"    # I
    .param p4, "anchorWidth"    # I
    .param p5, "drawingLocationX"    # I
    .param p6, "screenLocationX"    # I
    .param p7, "displayFrameLeft"    # I
    .param p8, "displayFrameRight"    # I
    .param p9, "allowResize"    # Z

    .line 1893
    sub-int v8, p6, p5

    .line 1894
    .local v8, "winOffsetX":I
    move-object/from16 v9, p1

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v10, v0, v8

    .line 1895
    .local v10, "anchorLeftInScreen":I
    sub-int v11, p8, v10

    .line 1896
    .local v11, "spaceRight":I
    const/4 v12, 0x1

    move/from16 v13, p7

    if-lt v10, v13, :cond_14

    move/from16 v14, p3

    if-gt v14, v11, :cond_16

    .line 1897
    return v12

    .line 1896
    :cond_14
    move/from16 v14, p3

    .line 1900
    :cond_16
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1902
    return v12

    .line 1905
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .registers 26
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "yOffset"    # I
    .param p3, "height"    # I
    .param p4, "anchorHeight"    # I
    .param p5, "drawingLocationY"    # I
    .param p6, "screenLocationY"    # I
    .param p7, "displayFrameTop"    # I
    .param p8, "displayFrameBottom"    # I
    .param p9, "allowResize"    # Z

    .line 1831
    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p7

    sub-int v11, p6, p5

    .line 1832
    .local v11, "winOffsetY":I
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v12, v0, v11

    .line 1833
    .local v12, "anchorTopInScreen":I
    sub-int v13, p8, v12

    .line 1834
    .local v13, "spaceBelow":I
    const/4 v14, 0x1

    if-lt v12, v10, :cond_14

    if-gt v9, v13, :cond_14

    .line 1835
    return v14

    .line 1838
    :cond_14
    sub-int v0, v12, p4

    sub-int v15, v0, v10

    .line 1839
    .local v15, "spaceAbove":I
    if-gt v9, v15, :cond_2b

    .line 1841
    move-object/from16 v7, p0

    iget-boolean v0, v7, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_23

    .line 1842
    add-int v0, p2, p4

    .end local p2    # "yOffset":I
    .local v0, "yOffset":I
    goto :goto_25

    .line 1841
    .end local v0    # "yOffset":I
    .restart local p2    # "yOffset":I
    :cond_23
    move/from16 v0, p2

    .line 1844
    .end local p2    # "yOffset":I
    .restart local v0    # "yOffset":I
    :goto_25
    sub-int v1, p5, v9

    add-int/2addr v1, v0

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1846
    return v14

    .line 1849
    .end local v0    # "yOffset":I
    .restart local p2    # "yOffset":I
    :cond_2b
    move-object/from16 v7, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1851
    return v14

    .line 1854
    :cond_44
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V
    .registers 4
    .param p1, "onBackInvokedDispatcher"    # Landroid/window/OnBackInvokedDispatcher;

    .line 2101
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 2102
    .local v0, "backCallback":Landroid/window/OnBackInvokedCallback;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 2103
    if-eqz p1, :cond_c

    if-eqz v0, :cond_c

    .line 2104
    invoke-interface {p1, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 2107
    :cond_c
    return-void
.end method

.method private greylist-max-o update(Landroid/view/View;ZIIII)V
    .registers 30
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 2411
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_c5

    .line 2415
    :cond_16
    iget-object v13, v9, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2416
    .local v13, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    iget v14, v9, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2418
    .local v14, "gravity":I
    const/16 v16, 0x0

    if-eqz p2, :cond_28

    iget v0, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    if-ne v0, v11, :cond_26

    iget v0, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    if-eq v0, v12, :cond_28

    :cond_26
    const/4 v0, 0x1

    goto :goto_2a

    :cond_28
    move/from16 v0, v16

    :goto_2a
    move/from16 v17, v0

    .line 2419
    .local v17, "needsUpdate":Z
    if-eqz v13, :cond_42

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_42

    if-eqz v17, :cond_3b

    iget-boolean v0, v9, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v0, :cond_3b

    goto :goto_42

    .line 2421
    :cond_3b
    if-eqz v17, :cond_45

    .line 2423
    iput v11, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2424
    iput v12, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_45

    .line 2420
    :cond_42
    :goto_42
    invoke-virtual {v9, v10, v11, v12, v14}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 2427
    :cond_45
    :goto_45
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 2428
    .local v8, "p":Landroid/view/WindowManager$LayoutParams;
    iget v7, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2429
    .local v7, "oldGravity":I
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2430
    .local v6, "oldWidth":I
    iget v5, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2431
    .local v5, "oldHeight":I
    iget v4, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2432
    .local v4, "oldX":I
    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2436
    .local v3, "oldY":I
    if-gez p5, :cond_5a

    .line 2437
    iget v0, v9, Landroid/widget/PopupWindow;->mWidth:I

    move/from16 v18, v0

    .end local p5    # "width":I
    .local v0, "width":I
    goto :goto_5c

    .line 2436
    .end local v0    # "width":I
    .restart local p5    # "width":I
    :cond_5a
    move/from16 v18, p5

    .line 2439
    .end local p5    # "width":I
    .local v18, "width":I
    :goto_5c
    if-gez p6, :cond_63

    .line 2440
    iget v0, v9, Landroid/widget/PopupWindow;->mHeight:I

    move/from16 v19, v0

    .end local p6    # "height":I
    .local v0, "height":I
    goto :goto_65

    .line 2439
    .end local v0    # "height":I
    .restart local p6    # "height":I
    :cond_63
    move/from16 v19, p6

    .line 2443
    .end local p6    # "height":I
    .local v19, "height":I
    :goto_65
    iget v2, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v1, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget-boolean v0, v9, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object/from16 v1, p1

    move/from16 v22, v2

    move-object v2, v8

    move v15, v3

    .end local v3    # "oldY":I
    .local v15, "oldY":I
    move/from16 v3, v22

    move v10, v4

    .end local v4    # "oldX":I
    .local v10, "oldX":I
    move/from16 v4, v21

    move v11, v5

    .end local v5    # "oldHeight":I
    .local v11, "oldHeight":I
    move/from16 v5, v18

    move v12, v6

    .end local v6    # "oldWidth":I
    .local v12, "oldWidth":I
    move/from16 v6, v19

    move-object/from16 v21, v13

    move v13, v7

    .end local v7    # "oldGravity":I
    .local v13, "oldGravity":I
    .local v21, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    move v7, v14

    move/from16 v22, v14

    move-object v14, v8

    .end local v8    # "p":Landroid/view/WindowManager$LayoutParams;
    .local v14, "p":Landroid/view/WindowManager$LayoutParams;
    .local v22, "gravity":I
    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v6

    .line 2445
    .local v6, "aboveAnchor":Z
    invoke-virtual {v9, v6}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2447
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v13, v0, :cond_aa

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v10, v0, :cond_aa

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v15, v0, :cond_aa

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v12, v0, :cond_aa

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v11, v0, :cond_a7

    goto :goto_aa

    :cond_a7
    move/from16 v5, v16

    goto :goto_ab

    :cond_aa
    :goto_aa
    const/4 v5, 0x1

    .line 2454
    .local v5, "paramsChanged":Z
    :goto_ab
    if-gez v18, :cond_b0

    move/from16 v3, v18

    goto :goto_b3

    :cond_b0
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    move v3, v0

    .line 2455
    .local v3, "newWidth":I
    :goto_b3
    if-gez v19, :cond_b8

    move/from16 v4, v19

    goto :goto_bb

    :cond_b8
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    move v4, v0

    .line 2456
    .local v4, "newHeight":I
    :goto_bb
    iget v1, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2457
    return-void

    .line 2412
    .end local v3    # "newWidth":I
    .end local v4    # "newHeight":I
    .end local v5    # "paramsChanged":Z
    .end local v6    # "aboveAnchor":Z
    .end local v10    # "oldX":I
    .end local v11    # "oldHeight":I
    .end local v12    # "oldWidth":I
    .end local v13    # "oldGravity":I
    .end local v14    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "oldY":I
    .end local v17    # "needsUpdate":Z
    .end local v18    # "width":I
    .end local v19    # "height":I
    .end local v21    # "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v22    # "gravity":I
    .restart local p5    # "width":I
    .restart local p6    # "height":I
    :cond_c5
    :goto_c5
    return-void
.end method


# virtual methods
.method protected greylist-max-o attachToAnchor(Landroid/view/View;III)V
    .registers 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 2491
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2493
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2494
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_e

    .line 2495
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2497
    :cond_e
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2499
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 2500
    .local v1, "anchorRoot":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2501
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2503
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2504
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2505
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2506
    iget-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 2508
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2509
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 2510
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2511
    return-void
.end method

.method protected final greylist createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1618
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1624
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1625
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1626
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1627
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1628
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1629
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1631
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2e

    .line 1632
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_31

    .line 1634
    :cond_2e
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1637
    :goto_31
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3a

    .line 1638
    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_40

    .line 1640
    :cond_3a
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1643
    :goto_40
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_49

    .line 1644
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_4f

    .line 1646
    :cond_49
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1649
    :goto_4f
    const v1, 0x18000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1655
    return-object v0
.end method

.method protected greylist-max-o detachFromAnchor()V
    .registers 5

    .line 2471
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 2472
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_14

    .line 2473
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2474
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2475
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2478
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_14
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_21

    :cond_20
    move-object v1, v2

    .line 2479
    .local v1, "anchorRoot":Landroid/view/View;
    :goto_21
    if-eqz v1, :cond_2d

    .line 2480
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2481
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2484
    :cond_2d
    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2485
    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2486
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2487
    return-void
.end method

.method public whitelist dismiss()V
    .registers 10

    .line 2037
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_87

    .line 2041
    :cond_e
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2042
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 2044
    .local v1, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V

    .line 2047
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2048
    .local v2, "contentParent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_25

    .line 2049
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .local v3, "contentHolder":Landroid/view/ViewGroup;
    goto :goto_26

    .line 2051
    .end local v3    # "contentHolder":Landroid/view/ViewGroup;
    :cond_25
    const/4 v3, 0x0

    .line 2055
    .restart local v3    # "contentHolder":Landroid/view/ViewGroup;
    :goto_26
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 2057
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 2058
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 2065
    iget-object v4, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 2066
    .local v4, "exitTransition":Landroid/transition/Transition;
    if-eqz v4, :cond_79

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v5

    if-eqz v5, :cond_79

    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    if-nez v5, :cond_41

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_79

    .line 2069
    :cond_41
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 2070
    .local v5, "p":Landroid/view/WindowManager$LayoutParams;
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2071
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2072
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, -0x20001

    and-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2073
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6, v0, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2075
    iget-object v6, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_6b

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_6c

    :cond_6b
    const/4 v6, 0x0

    .line 2076
    .local v6, "anchorRoot":Landroid/view/View;
    :goto_6c
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v7

    .line 2081
    .local v7, "epicenter":Landroid/graphics/Rect;
    new-instance v8, Landroid/widget/PopupWindow$3;

    invoke-direct {v8, p0, v0, v3, v1}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V

    .line 2088
    .end local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "anchorRoot":Landroid/view/View;
    .end local v7    # "epicenter":Landroid/graphics/Rect;
    goto :goto_7c

    .line 2089
    :cond_79
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2093
    :goto_7c
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2095
    iget-object v5, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v5, :cond_86

    .line 2096
    invoke-interface {v5}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 2098
    :cond_86
    return-void

    .line 2038
    .end local v0    # "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    .end local v1    # "contentView":Landroid/view/View;
    .end local v2    # "contentParent":Landroid/view/ViewParent;
    .end local v3    # "contentHolder":Landroid/view/ViewGroup;
    .end local v4    # "exitTransition":Landroid/transition/Transition;
    :cond_87
    :goto_87
    return-void
.end method

.method protected greylist-max-o findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 40
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "gravity"    # I
    .param p8, "allowScroll"    # Z

    .line 1739
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 1740
    .local v13, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    .line 1741
    .local v14, "anchorWidth":I
    iget-boolean v0, v10, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_16

    .line 1742
    sub-int v0, p4, v13

    move v15, v0

    .end local p4    # "yOffset":I
    .local v0, "yOffset":I
    goto :goto_18

    .line 1741
    .end local v0    # "yOffset":I
    .restart local p4    # "yOffset":I
    :cond_16
    move/from16 v15, p4

    .line 1746
    .end local p4    # "yOffset":I
    .local v15, "yOffset":I
    :goto_18
    iget-object v9, v10, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 1747
    .local v9, "appScreenLocation":[I
    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    .line 1748
    .local v8, "appRootView":Landroid/view/View;
    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1750
    iget-object v7, v10, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 1751
    .local v7, "screenLocation":[I
    invoke-virtual {v11, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1754
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1755
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getMIUIAutoUI()Lcom/miui/autoui/MIUIAutoUIStub;

    move-result-object v0

    invoke-interface {v0, v11, v7}, Lcom/miui/autoui/MIUIAutoUIStub;->getDrawLocation(Landroid/view/View;[I)V

    .line 1759
    :cond_3b
    iget-object v6, v10, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 1760
    .local v6, "drawingLocation":[I
    const/16 v16, 0x0

    aget v0, v7, v16

    aget v1, v9, v16

    sub-int/2addr v0, v1

    aput v0, v6, v16

    .line 1761
    const/4 v5, 0x1

    aget v0, v7, v5

    aget v1, v9, v5

    sub-int/2addr v0, v1

    aput v0, v6, v5

    .line 1762
    aget v0, v6, v16

    add-int v0, v0, p3

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1763
    aget v0, v6, v5

    add-int/2addr v0, v13

    add-int/2addr v0, v15

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1765
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v0

    .line 1766
    .local v4, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v8, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1767
    const/4 v0, -0x1

    move/from16 v1, p5

    if-ne v1, v0, :cond_70

    .line 1768
    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v3, v4, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v3

    move v3, v1

    .end local p5    # "width":I
    .local v1, "width":I
    goto :goto_71

    .line 1767
    .end local v1    # "width":I
    .restart local p5    # "width":I
    :cond_70
    move v3, v1

    .line 1770
    .end local p5    # "width":I
    .local v3, "width":I
    :goto_71
    move/from16 v1, p6

    if-ne v1, v0, :cond_7c

    .line 1771
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    move v2, v0

    .end local p6    # "height":I
    .local v0, "height":I
    goto :goto_7d

    .line 1770
    .end local v0    # "height":I
    .restart local p6    # "height":I
    :cond_7c
    move v2, v1

    .line 1775
    .end local p6    # "height":I
    .local v2, "height":I
    :goto_7d
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v0

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1776
    iput v3, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1777
    iput v2, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1781
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    move/from16 v1, p7

    invoke-static {v1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 1783
    .local v0, "hgrav":I
    move-object/from16 p4, v9

    .end local v9    # "appScreenLocation":[I
    .local p4, "appScreenLocation":[I
    const/4 v9, 0x5

    if-ne v0, v9, :cond_a0

    .line 1784
    iget v9, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v17, v3, v14

    sub-int v9, v9, v17

    iput v9, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1788
    :cond_a0
    aget v9, v6, v5

    aget v17, v7, v5

    move-object/from16 v18, v7

    .end local v7    # "screenLocation":[I
    .local v18, "screenLocation":[I
    iget v7, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v19, v8

    .end local v8    # "appRootView":Landroid/view/View;
    .local v19, "appRootView":Landroid/view/View;
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    const/16 v20, 0x0

    move v10, v0

    .end local v0    # "hgrav":I
    .local v10, "hgrav":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v21, v2

    .end local v2    # "height":I
    .local v21, "height":I
    move v2, v15

    move/from16 v22, v3

    .end local v3    # "width":I
    .local v22, "width":I
    move/from16 v3, v21

    move/from16 p6, v10

    move-object v10, v4

    .end local v4    # "displayFrame":Landroid/graphics/Rect;
    .local v10, "displayFrame":Landroid/graphics/Rect;
    .local p6, "hgrav":I
    move v4, v13

    move v12, v5

    move v5, v9

    move-object/from16 v23, v6

    .end local v6    # "drawingLocation":[I
    .local v23, "drawingLocation":[I
    move/from16 v6, v17

    move-object/from16 v9, v18

    .end local v18    # "screenLocation":[I
    .local v9, "screenLocation":[I
    move-object/from16 v17, v19

    .end local v19    # "appRootView":Landroid/view/View;
    .local v17, "appRootView":Landroid/view/View;
    move-object/from16 v18, p4

    move-object v12, v9

    .end local v9    # "screenLocation":[I
    .end local p4    # "appScreenLocation":[I
    .local v12, "screenLocation":[I
    .local v18, "appScreenLocation":[I
    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v20

    .line 1793
    .local v20, "fitsVertical":Z
    aget v5, v23, v16

    aget v6, v12, v16

    iget v7, v10, Landroid/graphics/Rect;->left:I

    iget v8, v10, Landroid/graphics/Rect;->right:I

    const/4 v9, 0x0

    move/from16 v2, p3

    move/from16 v3, v22

    move v4, v14

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v25

    .line 1798
    .local v25, "fitsHorizontal":Z
    if-eqz v20, :cond_f4

    if-nez v25, :cond_e8

    goto :goto_f4

    :cond_e8
    move-object/from16 v11, p0

    move/from16 v26, p6

    move/from16 v30, v13

    const/16 v19, 0x1

    move-object/from16 v13, p2

    goto/16 :goto_191

    .line 1799
    :cond_f4
    :goto_f4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1800
    .local v9, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    .line 1801
    .local v8, "scrollY":I
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, v9, v22

    add-int v3, v3, p3

    add-int v2, v8, v21

    add-int/2addr v2, v13

    add-int/2addr v2, v15

    invoke-direct {v0, v9, v8, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v0

    .line 1803
    .local v7, "r":Landroid/graphics/Rect;
    if-eqz p8, :cond_148

    const/4 v0, 0x1

    invoke-virtual {v11, v7, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v1

    if-eqz v1, :cond_141

    .line 1805
    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1806
    aget v1, v12, v16

    aget v2, v18, v16

    sub-int/2addr v1, v2

    aput v1, v23, v16

    .line 1807
    aget v1, v12, v0

    aget v2, v18, v0

    sub-int/2addr v1, v2

    aput v1, v23, v0

    .line 1808
    aget v1, v23, v16

    add-int v1, v1, p3

    move-object/from16 v6, p2

    move/from16 v19, v0

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1809
    aget v0, v23, v19

    add-int/2addr v0, v13

    add-int/2addr v0, v15

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1812
    move/from16 v0, p6

    const/4 v1, 0x5

    .end local p6    # "hgrav":I
    .restart local v0    # "hgrav":I
    if-ne v0, v1, :cond_14e

    .line 1813
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v3, v22, v14

    sub-int/2addr v1, v3

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_14e

    .line 1803
    .end local v0    # "hgrav":I
    .restart local p6    # "hgrav":I
    :cond_141
    move-object/from16 v6, p2

    move/from16 v19, v0

    move/from16 v0, p6

    goto :goto_14e

    :cond_148
    move-object/from16 v6, p2

    move/from16 v0, p6

    const/16 v19, 0x1

    .line 1818
    .end local p6    # "hgrav":I
    .restart local v0    # "hgrav":I
    :cond_14e
    :goto_14e
    aget v5, v23, v19

    aget v24, v12, v19

    iget v4, v10, Landroid/graphics/Rect;->top:I

    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v2, p0

    move/from16 v26, v0

    .end local v0    # "hgrav":I
    .local v26, "hgrav":I
    iget-boolean v1, v2, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move-object/from16 v0, p0

    move/from16 v27, v1

    move-object/from16 v1, p2

    move-object v11, v2

    move v2, v15

    move/from16 v28, v3

    move/from16 v3, v21

    move/from16 v29, v4

    move v4, v13

    move/from16 v30, v13

    move-object v13, v6

    .end local v13    # "anchorHeight":I
    .local v30, "anchorHeight":I
    move/from16 v6, v24

    move-object/from16 v24, v7

    .end local v7    # "r":Landroid/graphics/Rect;
    .local v24, "r":Landroid/graphics/Rect;
    move/from16 v7, v29

    move/from16 v29, v8

    .end local v8    # "scrollY":I
    .local v29, "scrollY":I
    move/from16 v8, v28

    move/from16 v28, v9

    .end local v9    # "scrollX":I
    .local v28, "scrollX":I
    move/from16 v9, v27

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1820
    aget v5, v23, v16

    aget v6, v12, v16

    iget v7, v10, Landroid/graphics/Rect;->left:I

    iget v8, v10, Landroid/graphics/Rect;->right:I

    iget-boolean v9, v11, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v2, p3

    move/from16 v3, v22

    move v4, v14

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1825
    .end local v24    # "r":Landroid/graphics/Rect;
    .end local v28    # "scrollX":I
    .end local v29    # "scrollY":I
    :goto_191
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    aget v1, v23, v19

    if-ge v0, v1, :cond_199

    move/from16 v16, v19

    :cond_199
    return v16
.end method

.method protected final greylist-max-o getAllowScrollingAnchorParent()Z
    .registers 2

    .line 958
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return v0
.end method

.method protected greylist-max-o getAnchor()Landroid/view/View;
    .registers 2

    .line 2515
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getAnimationStyle()I
    .registers 2

    .line 622
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 544
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getContentView()Landroid/view/View;
    .registers 2

    .line 665
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected greylist-max-o getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .line 2371
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public whitelist getElevation()F
    .registers 2

    .line 602
    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 457
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getEpicenterBounds()Landroid/graphics/Rect;
    .registers 3

    .line 499
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

    .line 481
    iget-object v0, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 1189
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public whitelist getInputMethodMode()I
    .registers 2

    .line 753
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "anchor"    # Landroid/view/View;

    .line 1952
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;I)I
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .line 1967
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;IZ)I
    .registers 14
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .line 1987
    const/4 v0, 0x0

    .line 1988
    .local v0, "displayFrame":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1990
    .local v1, "visibleDisplayFrame":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 1991
    .local v2, "appView":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1992
    if-eqz p3, :cond_25

    .line 1997
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v3

    .line 1998
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    .line 1999
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2000
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2001
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    goto :goto_26

    .line 2003
    :cond_25
    move-object v0, v1

    .line 2006
    :goto_26
    iget-object v3, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 2007
    .local v3, "anchorPos":[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2009
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 2012
    .local v4, "bottomEdge":I
    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_38

    .line 2013
    aget v5, v3, v6

    sub-int v5, v4, v5

    sub-int/2addr v5, p2

    .local v5, "distanceToBottom":I
    goto :goto_42

    .line 2015
    .end local v5    # "distanceToBottom":I
    :cond_38
    aget v5, v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    sub-int v5, v4, v5

    sub-int/2addr v5, p2

    .line 2017
    .restart local v5    # "distanceToBottom":I
    :goto_42
    aget v6, v3, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    .line 2020
    .local v6, "distanceToTop":I
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2021
    .local v7, "returnedHeight":I
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5f

    .line 2022
    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2023
    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 2026
    :cond_5f
    return v7
.end method

.method protected final greylist-max-o getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .registers 2

    .line 2180
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method public whitelist getOverlapAnchor()Z
    .registers 2

    .line 1267
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return v0
.end method

.method public whitelist getSoftInputMode()I
    .registers 2

    .line 795
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method protected final greylist-max-o getTransitionEpicenter()Landroid/graphics/Rect;
    .registers 9

    .line 2122
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 2123
    .local v0, "anchor":Landroid/view/View;
    :goto_d
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2124
    .local v2, "decor":Landroid/view/View;
    if-eqz v0, :cond_4b

    if-nez v2, :cond_14

    goto :goto_4b

    .line 2128
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 2129
    .local v1, "anchorLocation":[I
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v3

    .line 2132
    .local v3, "popupLocation":[I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2133
    .local v4, "bounds":Landroid/graphics/Rect;
    aget v5, v1, v7

    aget v6, v3, v7

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    aget v7, v1, v6

    aget v6, v3, v6

    sub-int/2addr v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 2136
    iget-object v5, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_4a

    .line 2137
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 2138
    .local v5, "offsetX":I
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 2139
    .local v6, "offsetY":I
    iget-object v7, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2140
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2143
    .end local v5    # "offsetX":I
    .end local v6    # "offsetY":I
    :cond_4a
    return-object v4

    .line 2125
    .end local v1    # "anchorLocation":[I
    .end local v3    # "popupLocation":[I
    .end local v4    # "bounds":Landroid/graphics/Rect;
    :cond_4b
    :goto_4b
    return-object v1
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 1221
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public whitelist getWindowLayoutType()I
    .registers 2

    .line 1116
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method protected greylist-max-o hasContentView()Z
    .registers 2

    .line 2361
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

    .line 2366
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

    .line 1468
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public whitelist isAttachedInDecor()Z
    .registers 2

    .line 1055
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public greylist isClipToScreenEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 900
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return v0
.end method

.method public whitelist isClippedToScreen()Z
    .registers 2

    .line 927
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return v0
.end method

.method public whitelist isClippingEnabled()Z
    .registers 2

    .line 869
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public whitelist isFocusable()Z
    .registers 2

    .line 724
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public whitelist isLaidOutInScreen()Z
    .registers 2

    .line 1029
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public greylist isLayoutInScreenEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1003
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method protected final greylist-max-o isLayoutInsetDecor()Z
    .registers 2

    .line 1094
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return v0
.end method

.method public whitelist isOutsideTouchable()Z
    .registers 2

    .line 837
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public whitelist isShowing()Z
    .registers 2

    .line 1276
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public whitelist isSplitTouchEnabled()Z
    .registers 5

    .line 969
    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_16

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_16

    .line 970
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_15

    move v1, v2

    :cond_15
    return v1

    .line 972
    :cond_16
    if-ne v0, v2, :cond_19

    move v1, v2

    :cond_19
    return v1
.end method

.method public whitelist isTouchModal()Z
    .registers 2

    .line 1128
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isTouchable()Z
    .registers 2

    .line 806
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method protected final greylist-max-o isTransitioningToDismiss()Z
    .registers 2

    .line 1296
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return v0
.end method

.method synthetic blacklist lambda$new$0$android-widget-PopupWindow(Landroid/view/View;IIIIIIII)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 275
    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method greylist setAllowScrollingAnchorParent(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 953
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 954
    return-void
.end method

.method public whitelist setAnimationStyle(I)V
    .registers 2
    .param p1, "animationStyle"    # I

    .line 654
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 655
    return-void
.end method

.method public whitelist setAttachedInDecor(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1071
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 1072
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 1073
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 556
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 567
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_35

    .line 568
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 571
    .local v0, "stateList":Landroid/graphics/drawable/StateListDrawable;
    sget-object v1, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->findStateDrawableIndex([I)I

    move-result v1

    .line 575
    .local v1, "aboveAnchorStateIndex":I
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    .line 576
    .local v2, "count":I
    const/4 v3, -0x1

    .line 577
    .local v3, "belowAnchorStateIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    if-ge v4, v2, :cond_1e

    .line 578
    if-eq v4, v1, :cond_1b

    .line 579
    move v3, v4

    .line 580
    goto :goto_1e

    .line 577
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 586
    .end local v4    # "i":I
    :cond_1e
    :goto_1e
    const/4 v4, -0x1

    if-eq v1, v4, :cond_30

    if-eq v3, v4, :cond_30

    .line 587
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 588
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_35

    .line 590
    :cond_30
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 591
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 594
    .end local v0    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "aboveAnchorStateIndex":I
    .end local v2    # "count":I
    .end local v3    # "belowAnchorStateIndex":I
    :cond_35
    :goto_35
    return-void
.end method

.method public greylist setClipToScreenEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 915
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 916
    return-void
.end method

.method public whitelist setClippingEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 887
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 888
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 4
    .param p1, "contentView"    # Landroid/view/View;

    .line 680
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 681
    return-void

    .line 684
    :cond_7
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 686
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_15

    if-eqz p1, :cond_15

    .line 687
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 690
    :cond_15
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 691
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 698
    :cond_2a
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_42

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    if-nez v1, :cond_42

    .line 702
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_3e

    const/4 v0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 706
    :cond_42
    return-void
.end method

.method protected final greylist-max-o setDropDown(Z)V
    .registers 2
    .param p1, "isDropDown"    # Z

    .line 1286
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1287
    return-void
.end method

.method public whitelist setElevation(F)V
    .registers 2
    .param p1, "elevation"    # F

    .line 613
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 614
    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 445
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 446
    return-void
.end method

.method public whitelist setEpicenterBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 518
    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 519
    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .line 468
    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 469
    return-void
.end method

.method public whitelist setFocusable(Z)V
    .registers 2
    .param p1, "focusable"    # Z

    .line 744
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 745
    return-void
.end method

.method public whitelist setHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 1207
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 1208
    return-void
.end method

.method public whitelist setIgnoreCheekPress()V
    .registers 2

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 638
    return-void
.end method

.method public whitelist setInputMethodMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 770
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 771
    return-void
.end method

.method public whitelist setIsClippedToScreen(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 942
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 943
    return-void
.end method

.method public whitelist setIsLaidOutInScreen(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1042
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 1043
    return-void
.end method

.method public greylist setLayoutInScreenEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1017
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 1018
    return-void
.end method

.method public greylist setLayoutInsetDecor(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1089
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 1090
    return-void
.end method

.method public whitelist setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 2175
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2176
    return-void
.end method

.method public whitelist setOutsideTouchable(Z)V
    .registers 2
    .param p1, "touchable"    # Z

    .line 858
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 859
    return-void
.end method

.method public whitelist setOverlapAnchor(Z)V
    .registers 2
    .param p1, "overlapAnchor"    # Z

    .line 1255
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 1256
    return-void
.end method

.method protected final greylist-max-o setShowing(Z)V
    .registers 2
    .param p1, "isShowing"    # Z

    .line 1281
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1282
    return-void
.end method

.method public whitelist setSoftInputMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 784
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 785
    return-void
.end method

.method public whitelist setSplitTouchEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 989
    iput p1, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 990
    return-void
.end method

.method public whitelist setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .line 713
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 714
    return-void
.end method

.method public whitelist setTouchModal(Z)V
    .registers 3
    .param p1, "touchModal"    # Z

    .line 1145
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 1146
    return-void
.end method

.method public whitelist setTouchable(Z)V
    .registers 2
    .param p1, "touchable"    # Z

    .line 825
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 826
    return-void
.end method

.method protected final greylist-max-o setTransitioningToDismiss(Z)V
    .registers 2
    .param p1, "transitioningToDismiss"    # Z

    .line 1291
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 1292
    return-void
.end method

.method public whitelist setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 1239
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 1240
    return-void
.end method

.method public whitelist setWindowLayoutMode(II)V
    .registers 3
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1174
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1175
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1176
    return-void
.end method

.method public whitelist setWindowLayoutType(I)V
    .registers 2
    .param p1, "layoutType"    # I

    .line 1107
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 1108
    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;)V
    .registers 3
    .param p1, "anchor"    # Landroid/view/View;

    .line 1365
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1366
    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;II)V
    .registers 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .line 1386
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 1387
    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;III)V
    .registers 15
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 1410
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_49

    .line 1414
    :cond_d
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1416
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 1418
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1419
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1421
    nop

    .line 1422
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1423
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1425
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean v9, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    .line 1427
    .local v1, "aboveAnchor":Z
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1428
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    int-to-long v2, v2

    goto :goto_43

    :cond_41
    const-wide/16 v2, -0x1

    :goto_43
    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 1430
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1431
    return-void

    .line 1411
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "aboveAnchor":Z
    :cond_49
    :goto_49
    return-void
.end method

.method public greylist showAtLocation(Landroid/os/IBinder;III)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 1331
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_b

    goto :goto_2a

    .line 1335
    :cond_b
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1337
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 1339
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1340
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1341
    iput p2, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 1343
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1344
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1346
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1347
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1349
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1350
    return-void

    .line 1332
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_2a
    :goto_2a
    return-void
.end method

.method public whitelist showAtLocation(Landroid/view/View;III)V
    .registers 7
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 1314
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 1315
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 1316
    return-void
.end method

.method public whitelist update()V
    .registers 7

    .line 2200
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_47

    .line 2204
    :cond_d
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2206
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    .line 2208
    .local v1, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 2209
    .local v2, "newAnim":I
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_1d

    .line 2210
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2211
    const/4 v1, 0x1

    .line 2214
    :cond_1d
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v3}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 2215
    .local v3, "newFlags":I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v4, :cond_2a

    .line 2216
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2217
    const/4 v1, 0x1

    .line 2220
    :cond_2a
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v4

    .line 2221
    .local v4, "newGravity":I
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v4, v5, :cond_35

    .line 2222
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2223
    const/4 v1, 0x1

    .line 2226
    :cond_35
    if-eqz v1, :cond_46

    .line 2227
    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_42

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_43

    :cond_42
    const/4 v5, 0x0

    :goto_43
    invoke-virtual {p0, v5, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2229
    :cond_46
    return-void

    .line 2201
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "update":Z
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    .end local v4    # "newGravity":I
    :cond_47
    :goto_47
    return-void
.end method

.method public whitelist update(II)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2247
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2248
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2249
    return-void
.end method

.method public whitelist update(IIII)V
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 2264
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2265
    return-void
.end method

.method public whitelist update(IIIIZ)V
    .registers 22
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .line 2283
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-ltz v3, :cond_11

    .line 2284
    iput v3, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 2285
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2288
    :cond_11
    if-ltz v4, :cond_18

    .line 2289
    iput v4, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 2290
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2293
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v5

    if-nez v5, :cond_26

    goto/16 :goto_ac

    .line 2297
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 2299
    .local v5, "p":Landroid/view/WindowManager$LayoutParams;
    move/from16 v6, p5

    .line 2301
    .local v6, "update":Z
    iget v7, v0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v7, :cond_31

    goto :goto_33

    :cond_31
    iget v7, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 2302
    .local v7, "finalWidth":I
    :goto_33
    const/4 v8, -0x1

    if-eq v3, v8, :cond_3f

    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v9, v7, :cond_3f

    .line 2303
    iput v7, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2304
    const/4 v6, 0x1

    .line 2307
    :cond_3f
    iget v9, v0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v9, :cond_44

    goto :goto_46

    :cond_44
    iget v9, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 2308
    .local v9, "finalHeight":I
    :goto_46
    if-eq v4, v8, :cond_51

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v8, v9, :cond_51

    .line 2309
    iput v9, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2310
    const/4 v6, 0x1

    .line 2313
    :cond_51
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v8, v1, :cond_58

    .line 2314
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2315
    const/4 v6, 0x1

    .line 2318
    :cond_58
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v8, v2, :cond_5f

    .line 2319
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2320
    const/4 v6, 0x1

    .line 2323
    :cond_5f
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v8

    .line 2324
    .local v8, "newAnim":I
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v8, v10, :cond_6a

    .line 2325
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2326
    const/4 v6, 0x1

    .line 2329
    :cond_6a
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {v0, v10}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v10

    .line 2330
    .local v10, "newFlags":I
    iget v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v10, v11, :cond_77

    .line 2331
    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2332
    const/4 v6, 0x1

    .line 2335
    :cond_77
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v11

    .line 2336
    .local v11, "newGravity":I
    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v11, v12, :cond_82

    .line 2337
    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2338
    const/4 v6, 0x1

    .line 2341
    :cond_82
    const/4 v12, 0x0

    .line 2342
    .local v12, "anchor":Landroid/view/View;
    const/4 v13, -0x1

    .line 2344
    .local v13, "newAccessibilityIdOfAnchor":I
    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v14, :cond_9b

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_9b

    .line 2345
    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    move-object v12, v14

    check-cast v12, Landroid/view/View;

    .line 2346
    invoke-virtual {v12}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v13

    .line 2349
    :cond_9b
    int-to-long v14, v13

    iget-wide v1, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long v1, v14, v1

    if-eqz v1, :cond_a6

    .line 2350
    int-to-long v1, v13

    iput-wide v1, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2351
    const/4 v6, 0x1

    .line 2354
    :cond_a6
    if-eqz v6, :cond_ab

    .line 2355
    invoke-virtual {v0, v12, v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2357
    :cond_ab
    return-void

    .line 2294
    .end local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "update":Z
    .end local v7    # "finalWidth":I
    .end local v8    # "newAnim":I
    .end local v9    # "finalHeight":I
    .end local v10    # "newFlags":I
    .end local v11    # "newGravity":I
    .end local v12    # "anchor":Landroid/view/View;
    .end local v13    # "newAccessibilityIdOfAnchor":I
    :cond_ac
    :goto_ac
    return-void
.end method

.method public whitelist update(Landroid/view/View;II)V
    .registers 11
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 2385
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    .line 2386
    return-void
.end method

.method public whitelist update(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 2405
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    .line 2406
    return-void
.end method

.method protected greylist-max-o update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 2233
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 2234
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2235
    return-void
.end method

.method protected final greylist updateAboveAnchor(Z)V
    .registers 4
    .param p1, "aboveAnchor"    # Z

    .line 1436
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_21

    .line 1437
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 1439
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 1443
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1444
    if-eqz p1, :cond_18

    .line 1445
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_21

    .line 1447
    :cond_18
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_21

    .line 1450
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 1454
    :cond_21
    :goto_21
    return-void
.end method
