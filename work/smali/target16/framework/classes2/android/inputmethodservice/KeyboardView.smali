.class public Landroid/inputmethodservice/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/KeyboardView$SwipeTracker;,
        Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DEBOUNCE_TIME:I = 0x46

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DELAY_AFTER_PREVIEW:I = 0x46

.field private static final greylist-max-o DELAY_BEFORE_PREVIEW:I = 0x0

.field private static final greylist-max-o KEY_DELETE:[I

.field private static final greylist-max-o LONG_PRESSABLE_STATE_SET:[I

.field private static greylist-max-o MAX_NEARBY_KEYS:I = 0x0

.field private static final greylist-max-o MSG_LONGPRESS:I = 0x4

.field private static final greylist-max-o MSG_REMOVE_PREVIEW:I = 0x2

.field private static final greylist-max-o MSG_REPEAT:I = 0x3

.field private static final greylist-max-o MSG_SHOW_PREVIEW:I = 0x1

.field private static final greylist-max-o MULTITAP_INTERVAL:I = 0x320

.field private static final greylist-max-o NOT_A_KEY:I = -0x1

.field private static final greylist-max-o REPEAT_INTERVAL:I = 0x32

.field private static final greylist-max-o REPEAT_START_DELAY:I = 0x190


# instance fields
.field private greylist-max-o mAbortKey:Z

.field private greylist-max-o mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private greylist-max-o mAudioManager:Landroid/media/AudioManager;

.field private greylist-max-o mBackgroundDimAmount:F

.field private greylist-max-o mBuffer:Landroid/graphics/Bitmap;

.field private greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field private greylist-max-o mClipRegion:Landroid/graphics/Rect;

.field private final greylist-max-o mCoordinates:[I

.field private greylist-max-o mCurrentKey:I

.field private greylist-max-o mCurrentKeyIndex:I

.field private greylist-max-o mCurrentKeyTime:J

.field private greylist-max-o mDirtyRect:Landroid/graphics/Rect;

.field private greylist-max-o mDisambiguateSwipe:Z

.field private greylist-max-o mDistances:[I

.field private greylist-max-o mDownKey:I

.field private greylist-max-o mDownTime:J

.field private greylist-max-o mDrawPending:Z

.field private greylist-max-o mGestureDetector:Landroid/view/GestureDetector;

.field greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mHeadsetRequiredToHearPasswordsAnnounced:Z

.field private greylist-max-o mInMultiTap:Z

.field private greylist-max-o mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private greylist mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mKeyIndices:[I

.field private greylist-max-o mKeyTextColor:I

.field private greylist-max-o mKeyTextSize:I

.field private greylist-max-o mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private greylist-max-o mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private greylist-max-o mKeyboardChanged:Z

.field private greylist-max-o mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private greylist mLabelTextSize:I

.field private greylist-max-o mLastCodeX:I

.field private greylist-max-o mLastCodeY:I

.field private greylist-max-o mLastKey:I

.field private greylist-max-o mLastKeyTime:J

.field private greylist-max-o mLastMoveTime:J

.field private greylist-max-o mLastSentIndex:I

.field private greylist-max-o mLastTapTime:J

.field private greylist-max-o mLastX:I

.field private greylist-max-o mLastY:I

.field private greylist-max-o mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

.field private greylist-max-o mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMiniKeyboardContainer:Landroid/view/View;

.field private greylist-max-o mMiniKeyboardOffsetX:I

.field private greylist-max-o mMiniKeyboardOffsetY:I

.field private greylist-max-o mMiniKeyboardOnScreen:Z

.field private greylist-max-o mOldPointerCount:I

.field private greylist-max-o mOldPointerX:F

.field private greylist-max-o mOldPointerY:F

.field private greylist-max-o mPadding:Landroid/graphics/Rect;

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mPopupKeyboard:Landroid/widget/PopupWindow;

.field private greylist-max-o mPopupLayout:I

.field private greylist-max-o mPopupParent:Landroid/view/View;

.field private greylist-max-o mPopupPreviewX:I

.field private greylist-max-o mPopupPreviewY:I

.field private greylist-max-o mPopupX:I

.field private greylist-max-o mPopupY:I

.field private greylist-max-o mPossiblePoly:Z

.field private greylist-max-o mPreviewCentered:Z

.field private greylist-max-o mPreviewHeight:I

.field private greylist-max-o mPreviewLabel:Ljava/lang/StringBuilder;

.field private greylist-max-o mPreviewOffset:I

.field private greylist-max-o mPreviewPopup:Landroid/widget/PopupWindow;

.field private greylist mPreviewText:Landroid/widget/TextView;

.field private greylist-max-o mPreviewTextSizeLarge:I

.field private greylist-max-o mProximityCorrectOn:Z

.field private greylist-max-o mProximityThreshold:I

.field private greylist-max-o mRepeatKeyIndex:I

.field private greylist-max-o mShadowColor:I

.field private greylist-max-o mShadowRadius:F

.field private greylist-max-o mShowPreview:Z

.field private greylist-max-o mShowTouchPoints:Z

.field private greylist-max-o mStartX:I

.field private greylist-max-o mStartY:I

.field private greylist-max-o mSwipeThreshold:I

.field private greylist-max-o mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

.field private greylist-max-o mTapCount:I

.field private greylist-max-o mVerticalCorrection:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisambiguateSwipe(Landroid/inputmethodservice/KeyboardView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDownKey(Landroid/inputmethodservice/KeyboardView;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyboardActionListener(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPossiblePoly(Landroid/inputmethodservice/KeyboardView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewText(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartX(Landroid/inputmethodservice/KeyboardView;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartY(Landroid/inputmethodservice/KeyboardView;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSwipeThreshold(Landroid/inputmethodservice/KeyboardView;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSwipeTracker(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdetectAndSendKey(Landroid/inputmethodservice/KeyboardView;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissPopupKeyboard(Landroid/inputmethodservice/KeyboardView;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mopenPopupIfRequired(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrepeatKey(Landroid/inputmethodservice/KeyboardView;)Z
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mshowKey(Landroid/inputmethodservice/KeyboardView;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 137
    const/4 v0, -0x5

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    .line 138
    const v0, 0x101023c

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 234
    const/16 v0, 0xc

    sput v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 265
    const v0, 0x1120078

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 266
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 270
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    .line 273
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 157
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    .line 184
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    .line 185
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 186
    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mShowTouchPoints:Z

    .line 205
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 206
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    .line 209
    const/16 v4, 0xc

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    .line 213
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 217
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 219
    new-instance v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>(Landroid/inputmethodservice/KeyboardView-IA;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    .line 224
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 235
    sget v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 248
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 275
    sget-object v0, Landroid/R$styleable;->KeyboardView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 278
    nop

    .line 280
    const-string p3, "layout_inflater"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 282
    nop

    .line 283
    nop

    .line 285
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p4

    .line 287
    move v0, v2

    move v5, v0

    :goto_5b
    if-ge v0, p4, :cond_bc

    .line 288
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 290
    packed-switch v6, :pswitch_data_174

    goto :goto_b9

    .line 316
    :pswitch_65
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    .line 317
    goto :goto_b9

    .line 295
    :pswitch_6c
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    .line 296
    goto :goto_b9

    .line 304
    :pswitch_73
    const/16 v7, 0x50

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    .line 305
    goto :goto_b9

    .line 301
    :pswitch_7c
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    .line 302
    goto :goto_b9

    .line 298
    :pswitch_83
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 299
    goto :goto_b9

    .line 310
    :pswitch_88
    const/high16 v7, -0x1000000

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    .line 311
    goto :goto_b9

    .line 313
    :pswitch_91
    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    .line 314
    goto :goto_b9

    .line 307
    :pswitch_9a
    const/16 v7, 0x12

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    .line 308
    goto :goto_b9

    .line 292
    :pswitch_a3
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 293
    goto :goto_b9

    .line 322
    :pswitch_aa
    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    goto :goto_b9

    .line 319
    :pswitch_b2
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    .line 320
    nop

    .line 287
    :goto_b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 327
    :cond_bc
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 328
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget-object p4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p2, p4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 330
    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p4

    iput p4, p0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    .line 331
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 333
    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 334
    if-eqz v5, :cond_f9

    .line 335
    invoke-virtual {p3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 336
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    .line 337
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 338
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_fb

    .line 340
    :cond_f9
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 343
    :goto_fb
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 345
    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 346
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    iput-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 352
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 353
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 354
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float p3, v2

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 355
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 356
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 358
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 359
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 360
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 362
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x43fa0000    # 500.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    .line 363
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x111029d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    .line 366
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 367
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    .line 369
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 370
    return-void

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_aa
        :pswitch_a3
        :pswitch_9a
        :pswitch_91
        :pswitch_88
        :pswitch_83
        :pswitch_7c
        :pswitch_73
        :pswitch_6c
        :pswitch_65
    .end packed-switch
.end method

.method private greylist-max-o adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 598
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_24

    .line 599
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 600
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 602
    :cond_24
    return-object p1
.end method

.method private greylist-max-o checkMultiTap(JI)V
    .registers 12

    .line 1445
    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    return-void

    .line 1446
    :cond_4
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, p3

    .line 1447
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    const-wide/16 v3, 0x320

    const/4 v5, 0x1

    if-le v2, v5, :cond_2a

    .line 1448
    iput-boolean v5, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 1449
    iget-wide v6, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v6, v3

    cmp-long p1, p1, v6

    if-gez p1, :cond_27

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-ne p3, p1, :cond_27

    .line 1451
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    add-int/2addr p1, v5

    iget-object p2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1452
    return-void

    .line 1454
    :cond_27
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1455
    return-void

    .line 1458
    :cond_2a
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v0, v3

    cmp-long p1, p1, v0

    if-gtz p1, :cond_35

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-eq p3, p1, :cond_38

    .line 1459
    :cond_35
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1461
    :cond_38
    return-void
.end method

.method private greylist-max-o computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .registers 8

    .line 626
    if-nez p1, :cond_3

    return-void

    .line 627
    :cond_3
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 628
    if-nez p1, :cond_8

    return-void

    .line 629
    :cond_8
    array-length v0, p1

    .line 630
    nop

    .line 631
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v1, v0, :cond_1f

    .line 632
    aget-object v3, p1, v1

    .line 633
    iget v4, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v5, v3, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v3, v3, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 635
    :cond_1f
    if-ltz v2, :cond_36

    if-nez v0, :cond_24

    goto :goto_36

    .line 636
    :cond_24
    int-to-float p1, v2

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    .line 637
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    mul-int/2addr p1, v0

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    .line 638
    return-void

    .line 635
    :cond_36
    :goto_36
    return-void
.end method

.method private greylist-max-o detectAndSendKey(IIIJ)V
    .registers 11

    .line 827
    const/4 v0, -0x1

    if-eq p1, v0, :cond_53

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v1

    if-ge p1, v1, :cond_53

    .line 828
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, p1

    .line 829
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1d

    .line 830
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    iget-object p3, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {p2, p3}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_4f

    .line 833
    :cond_1d
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 835
    sget v4, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v4, v4, [I

    .line 836
    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 837
    invoke-direct {p0, p2, p3, v4}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    .line 839
    iget-boolean p2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz p2, :cond_45

    .line 840
    iget p2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-eq p2, v0, :cond_3d

    .line 841
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 p3, -0x5

    sget-object v0, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    invoke-interface {p2, p3, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto :goto_3f

    .line 843
    :cond_3d
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 845
    :goto_3f
    iget-object p2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget p3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    aget v2, p2, p3

    .line 847
    :cond_45
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v2, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 848
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v2}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 850
    :goto_4f
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 851
    iput-wide p4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 853
    :cond_53
    return-void
.end method

.method private greylist-max-o dismissPopupKeyboard()V
    .registers 2

    .line 1422
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1423
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1424
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1425
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 1427
    :cond_13
    return-void
.end method

.method private greylist-max-o getKeyIndices(II[I)I
    .registers 22

    .line 776
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 777
    nop

    .line 778
    nop

    .line 779
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    add-int/lit8 v5, v5, 0x1

    .line 780
    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    const v7, 0x7fffffff

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 781
    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v6, v1, v2}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v6

    .line 782
    array-length v7, v6

    .line 783
    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_22
    if-ge v10, v7, :cond_ab

    .line 784
    aget v13, v6, v10

    aget-object v13, v4, v13

    .line 785
    nop

    .line 786
    invoke-virtual {v13, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v14

    .line 787
    if-eqz v14, :cond_31

    .line 788
    aget v11, v6, v10

    .line 791
    :cond_31
    iget-boolean v15, v0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    if-eqz v15, :cond_40

    .line 792
    invoke-virtual {v13, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v15

    const/16 v16, 0x0

    iget v9, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    if-lt v15, v9, :cond_46

    goto :goto_44

    .line 791
    :cond_40
    const/16 v16, 0x0

    move/from16 v15, v16

    .line 792
    :goto_44
    if-eqz v14, :cond_9f

    :cond_46
    iget-object v9, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v9, v9, v16

    const/16 v14, 0x20

    if-le v9, v14, :cond_9f

    .line 796
    iget-object v9, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v9, v9

    .line 797
    if-ge v15, v5, :cond_57

    .line 798
    nop

    .line 799
    aget v12, v6, v10

    move v5, v15

    .line 802
    :cond_57
    if-nez v3, :cond_5c

    move-object/from16 v17, v4

    goto :goto_a1

    .line 804
    :cond_5c
    move/from16 v14, v16

    :goto_5e
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    array-length v8, v8

    if-ge v14, v8, :cond_9c

    .line 805
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    aget v8, v8, v14

    if-le v8, v15, :cond_93

    .line 807
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    add-int v2, v14, v9

    move-object/from16 v17, v4

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    array-length v4, v4

    sub-int/2addr v4, v14

    sub-int/2addr v4, v9

    invoke-static {v8, v14, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    array-length v1, v3

    sub-int/2addr v1, v14

    sub-int/2addr v1, v9

    invoke-static {v3, v14, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    move/from16 v1, v16

    :goto_81
    if-ge v1, v9, :cond_92

    .line 812
    add-int v2, v14, v1

    iget-object v4, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v1

    aput v4, v3, v2

    .line 813
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    aput v15, v4, v2

    .line 811
    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    .line 815
    :cond_92
    goto :goto_a1

    .line 804
    :cond_93
    move-object/from16 v17, v4

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_5e

    :cond_9c
    move-object/from16 v17, v4

    goto :goto_a1

    .line 792
    :cond_9f
    move-object/from16 v17, v4

    .line 783
    :goto_a1
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, v17

    goto/16 :goto_22

    .line 820
    :cond_ab
    const/4 v0, -0x1

    if-ne v11, v0, :cond_af

    .line 821
    move v11, v12

    .line 823
    :cond_af
    return v11
.end method

.method private greylist-max-o getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .registers 5

    .line 859
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v0, :cond_22

    .line 861
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 862
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-gez v2, :cond_13

    goto :goto_15

    :cond_13
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    :goto_15
    aget p1, p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 863
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 865
    :cond_22
    iget-object p1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o initGestureDetector()V
    .registers 4

    .line 403
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_1a

    .line 404
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/KeyboardView$2;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/KeyboardView$2;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 456
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 458
    :cond_1a
    return-void
.end method

.method private greylist-max-o onBufferDraw()V
    .registers 21

    .line 660
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v1, :cond_52

    .line 661
    :cond_c
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2c

    iget-boolean v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v1, :cond_4d

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 662
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_2c

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_4d

    .line 664
    :cond_2c
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 665
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 666
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 667
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 669
    :cond_4d
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 670
    iput-boolean v3, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 673
    :cond_52
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_57

    return-void

    .line 675
    :cond_57
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 676
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 677
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 679
    iget-object v9, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 680
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 681
    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 682
    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 683
    iget v7, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    .line 684
    iget v8, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    .line 685
    iget-object v10, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 686
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 688
    iget v12, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 689
    nop

    .line 690
    if-eqz v11, :cond_a9

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_a9

    .line 692
    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int/2addr v12, v7

    sub-int/2addr v12, v2

    iget v13, v5, Landroid/graphics/Rect;->left:I

    if-gt v12, v13, :cond_a9

    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int/2addr v12, v8

    sub-int/2addr v12, v2

    iget v13, v5, Landroid/graphics/Rect;->top:I

    if-gt v12, v13, :cond_a9

    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v13, v11, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v12, v13

    add-int/2addr v12, v7

    add-int/2addr v12, v2

    iget v13, v5, Landroid/graphics/Rect;->right:I

    if-lt v12, v13, :cond_a9

    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v13, v11, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v12, v13

    add-int/2addr v12, v8

    add-int/2addr v12, v2

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-lt v12, v5, :cond_a9

    .line 696
    move v5, v2

    goto :goto_aa

    .line 699
    :cond_a9
    move v5, v3

    :goto_aa
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 700
    array-length v12, v10

    .line 701
    move v13, v3

    :goto_b1
    if-ge v13, v12, :cond_1dc

    .line 702
    aget-object v15, v10, v13

    .line 703
    if-eqz v5, :cond_c1

    if-eq v11, v15, :cond_c1

    .line 704
    move-object/from16 v18, v1

    move/from16 v17, v5

    move-object/from16 v19, v6

    goto/16 :goto_1d0

    .line 706
    :cond_c1
    invoke-virtual {v15}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v14

    .line 707
    invoke-virtual {v1, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 710
    iget-object v14, v15, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v14, :cond_ce

    const/4 v14, 0x0

    goto :goto_d8

    :cond_ce
    iget-object v14, v15, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {v0, v14}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 712
    :goto_d8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 713
    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v17, v5

    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-ne v3, v5, :cond_ea

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v2, :cond_f2

    .line 715
    :cond_ea
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 717
    :cond_f2
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int/2addr v2, v7

    int-to-float v2, v2

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 718
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 720
    const/4 v2, 0x2

    if-eqz v14, :cond_169

    .line 722
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_11b

    iget-object v3, v15, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v3, v3

    if-ge v3, v2, :cond_11b

    .line 723
    iget v3, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    int-to-float v3, v3

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 724
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_126

    .line 726
    :cond_11b
    iget v3, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v3, v3

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 727
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 730
    :goto_126
    iget v3, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    move/from16 v16, v2

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    const/4 v5, 0x0

    invoke-virtual {v9, v3, v5, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 732
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v5, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 736
    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v16

    sub-float v5, v5, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v5, v5, v16

    add-float/2addr v3, v5

    iget v5, v6, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    .line 732
    invoke-virtual {v4, v14, v2, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 739
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v2, v2, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    move-object/from16 v18, v1

    move-object/from16 v19, v6

    goto :goto_1c3

    .line 740
    :cond_169
    move/from16 v16, v2

    iget-object v2, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1bf

    .line 741
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget-object v3, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 742
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    .line 743
    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v5, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    iget-object v5, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 744
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    iget v5, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    .line 745
    int-to-float v5, v2

    int-to-float v14, v3

    invoke-virtual {v4, v5, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 746
    iget-object v5, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v14, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 747
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    move-object/from16 v18, v1

    iget-object v1, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 746
    move-object/from16 v19, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v14, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 748
    iget-object v1, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 749
    neg-int v1, v2

    int-to-float v1, v1

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1c3

    .line 740
    :cond_1bf
    move-object/from16 v18, v1

    move-object/from16 v19, v6

    .line 751
    :goto_1c3
    iget v1, v15, Landroid/inputmethodservice/Keyboard$Key;->x:I

    neg-int v1, v1

    sub-int/2addr v1, v7

    int-to-float v1, v1

    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->y:I

    neg-int v2, v2

    sub-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 701
    :goto_1d0
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v17

    move-object/from16 v1, v18

    move-object/from16 v6, v19

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_b1

    .line 753
    :cond_1dc
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 755
    iget-boolean v1, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v1, :cond_1fd

    .line 756
    iget v1, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 757
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v1

    int-to-float v8, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 770
    :cond_1fd
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 771
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 772
    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 773
    return-void
.end method

.method private greylist-max-o onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .registers 19

    .line 1231
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget v3, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    .line 1232
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    sub-int/2addr v3, v4

    .line 1233
    iget v4, v0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    neg-int v4, v4

    if-lt v3, v4, :cond_1c

    .line 1234
    iget v4, v0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    add-int/2addr v3, v4

    .line 1235
    :cond_1c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1236
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 1237
    const/4 v7, 0x0

    invoke-direct {v0, v2, v3, v7}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    move-result v7

    .line 1238
    move/from16 v8, p2

    iput-boolean v8, v0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    .line 1241
    if-nez v4, :cond_34

    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->clear()V

    .line 1242
    :cond_34
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v8, v1}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1245
    iget-boolean v8, v0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v8, :cond_44

    if-eqz v4, :cond_44

    if-eq v4, v9, :cond_44

    .line 1247
    return v10

    .line 1250
    :cond_44
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    const/4 v11, 0x4

    const/4 v12, -0x1

    if-eqz v8, :cond_5c

    .line 1251
    invoke-direct {v0, v12}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1252
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1253
    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1254
    return v10

    .line 1259
    :cond_5c
    iget-boolean v8, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v8, :cond_63

    if-eq v4, v9, :cond_63

    .line 1260
    return v10

    .line 1263
    :cond_63
    const-wide/16 v13, 0x0

    packed-switch v4, :pswitch_data_1c6

    move v15, v10

    goto/16 :goto_1c0

    .line 1360
    :pswitch_6b
    invoke-direct {v0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1361
    invoke-direct {v0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1362
    iput-boolean v10, v0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1363
    invoke-direct {v0, v12}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1364
    iget v1, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    move v15, v10

    goto/16 :goto_1c0

    .line 1299
    :pswitch_7e
    nop

    .line 1300
    if-eq v7, v12, :cond_c2

    .line 1301
    iget v4, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v4, v12, :cond_8f

    .line 1302
    iput v7, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1303
    iget-wide v13, v0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    sub-long v13, v5, v13

    iput-wide v13, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    move v15, v10

    goto :goto_c3

    .line 1305
    :cond_8f
    iget v4, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v7, v4, :cond_9f

    .line 1306
    iget-wide v8, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v13, v0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v13, v5, v13

    add-long/2addr v8, v13

    iput-wide v8, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1307
    move v8, v10

    move v15, v8

    goto :goto_c4

    .line 1308
    :cond_9f
    iget v4, v0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    if-ne v4, v12, :cond_c0

    .line 1309
    invoke-direct {v0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1310
    iget v4, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v4, v0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1311
    iget v4, v0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    iput v4, v0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1312
    iget v4, v0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    iput v4, v0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1313
    iget-wide v8, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v8, v5

    move v15, v10

    iget-wide v10, v0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1315
    iput v7, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1316
    iput-wide v13, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_c3

    .line 1308
    :cond_c0
    move v15, v10

    goto :goto_c3

    .line 1300
    :cond_c2
    move v15, v10

    .line 1320
    :goto_c3
    const/4 v8, 0x0

    :goto_c4
    if-nez v8, :cond_de

    .line 1322
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1324
    if-eq v7, v12, :cond_de

    .line 1325
    iget-object v7, v0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1326
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getLongPressTimeoutMillis()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1329
    :cond_de
    iget v1, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-direct {v0, v1}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1330
    iput-wide v5, v0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 1331
    goto/16 :goto_1c0

    .line 1334
    :pswitch_e7
    move v15, v10

    invoke-direct {v0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1335
    iget v1, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v7, v1, :cond_f9

    .line 1336
    iget-wide v8, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, v0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v10, v5, v10

    add-long/2addr v8, v10

    iput-wide v8, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_10c

    .line 1338
    :cond_f9
    invoke-direct {v0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1339
    iget v1, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v1, v0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1340
    iget-wide v8, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v8, v5

    iget-wide v10, v0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1341
    iput v7, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1342
    iput-wide v13, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1344
    :goto_10c
    iget-wide v8, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, v0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    cmp-long v1, v8, v10

    if-gez v1, :cond_128

    iget-wide v8, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    const-wide/16 v10, 0x46

    cmp-long v1, v8, v10

    if-gez v1, :cond_128

    iget v1, v0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    if-eq v1, v12, :cond_128

    .line 1346
    iget v1, v0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iput v1, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1347
    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1348
    iget v3, v0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1350
    :cond_128
    invoke-direct {v0, v12}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1351
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    invoke-static {v1, v12}, Ljava/util/Arrays;->fill([II)V

    .line 1353
    iget v1, v0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    if-ne v1, v12, :cond_142

    iget-boolean v1, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v1, :cond_142

    iget-boolean v1, v0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-nez v1, :cond_142

    .line 1354
    iget v1, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    move-wide v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1356
    :cond_142
    invoke-virtual {v0, v7}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 1357
    iput v12, v0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 1358
    goto/16 :goto_1c0

    .line 1265
    :pswitch_149
    move v15, v10

    const/4 v8, 0x0

    iput-boolean v8, v0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1266
    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    .line 1267
    iput v3, v0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    .line 1268
    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1269
    iput v3, v0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1270
    iput-wide v13, v0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1271
    iput-wide v13, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1272
    iput v12, v0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1273
    iput v7, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1274
    iput v7, v0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    .line 1275
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    .line 1276
    iget-wide v10, v0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    iput-wide v10, v0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 1277
    invoke-direct {v0, v5, v6, v7}, Landroid/inputmethodservice/KeyboardView;->checkMultiTap(JI)V

    .line 1278
    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    if-eq v7, v12, :cond_17a

    .line 1279
    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v8, v6, v8

    goto :goto_17b

    :cond_17a
    const/4 v8, 0x0

    .line 1278
    :goto_17b
    invoke-interface {v5, v8}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 1280
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v5, :cond_1a7

    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v6, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    aget-object v5, v5, v6

    iget-boolean v5, v5, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v5, :cond_1a7

    .line 1281
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 1282
    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1283
    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1284
    invoke-direct {v0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    .line 1286
    iget-boolean v5, v0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-eqz v5, :cond_1a7

    .line 1287
    iput v12, v0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 1288
    goto :goto_1c0

    .line 1291
    :cond_1a7
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-eq v5, v12, :cond_1bc

    .line 1292
    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v5, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1293
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getLongPressTimeoutMillis()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1295
    :cond_1bc
    invoke-direct {v0, v7}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1296
    nop

    .line 1367
    :goto_1c0
    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    .line 1368
    iput v3, v0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    .line 1369
    return v15

    nop

    :pswitch_data_1c6
    .packed-switch 0x0
        :pswitch_149
        :pswitch_e7
        :pswitch_7e
        :pswitch_6b
    .end packed-switch
.end method

.method private greylist openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1069
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 1070
    return v0

    .line 1072
    :cond_6
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz p1, :cond_26

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_12

    goto :goto_26

    .line 1076
    :cond_12
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    aget-object p1, p1, v0

    .line 1077
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result p1

    .line 1078
    if-eqz p1, :cond_25

    .line 1079
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1080
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1082
    :cond_25
    return p1

    .line 1073
    :cond_26
    :goto_26
    return v0
.end method

.method private greylist-max-o removeMessages()V
    .registers 3

    .line 1408
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    .line 1409
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1410
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1411
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1413
    :cond_16
    return-void
.end method

.method private greylist repeatKey()Z
    .registers 8

    .line 1374
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    aget-object v0, v0, v1

    .line 1375
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-wide v5, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1376
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o resetMultiTap()V
    .registers 4

    .line 1438
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 1439
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1440
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 1441
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 1442
    return-void
.end method

.method private greylist-max-o sendAccessibilityEventForUnicodeCharacter(II)V
    .registers 4

    .line 999
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1000
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 1001
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1003
    sparse-switch p2, :sswitch_data_6c

    .line 1026
    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    goto :goto_5e

    .line 1023
    :sswitch_18
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v0, 0x104056a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1024
    goto :goto_5e

    .line 1020
    :sswitch_22
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v0, 0x104056c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1021
    goto :goto_5e

    .line 1017
    :sswitch_2c
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v0, 0x104056b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1018
    goto :goto_5e

    .line 1008
    :sswitch_36
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v0, 0x1040567

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1009
    goto :goto_5e

    .line 1014
    :sswitch_40
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v0, 0x1040569

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1015
    goto :goto_5e

    .line 1011
    :sswitch_4a
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v0, 0x1040568

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1012
    goto :goto_5e

    .line 1005
    :sswitch_54
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v0, 0x1040566

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1006
    nop

    .line 1028
    :goto_5e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1031
    :cond_6a
    return-void

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x6 -> :sswitch_54
        -0x5 -> :sswitch_4a
        -0x4 -> :sswitch_40
        -0x3 -> :sswitch_36
        -0x2 -> :sswitch_2c
        -0x1 -> :sswitch_22
        0xa -> :sswitch_18
    .end sparse-switch
.end method

.method private greylist showKey(I)V
    .registers 13

    .line 925
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 926
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 927
    if-ltz p1, :cond_162

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v2

    if-lt p1, v2, :cond_d

    goto/16 :goto_162

    .line 928
    :cond_d
    aget-object p1, v1, p1

    .line 929
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_2b

    .line 930
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 931
    iget-object v6, p1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_20

    iget-object v6, p1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_22

    :cond_20
    iget-object v6, p1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 930
    :goto_22
    invoke-virtual {v1, v4, v4, v4, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 932
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_65

    .line 934
    :cond_2b
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 935
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v3, :cond_56

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-ge v1, v2, :cond_56

    .line 937
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 938
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_65

    .line 940
    :cond_56
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 941
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 944
    :goto_65
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 945
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 944
    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->measure(II)V

    .line 946
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 947
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    .line 946
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 948
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    .line 949
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 950
    if-eqz v6, :cond_9a

    .line 951
    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 952
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 954
    :cond_9a
    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    if-nez v6, :cond_b5

    .line 955
    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 956
    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v6, v4

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    goto :goto_c9

    .line 959
    :cond_b5
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v2

    rsub-int v6, v6, 0xa0

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 960
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 962
    :goto_c9
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 963
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    .line 964
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v6, v5

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v7, v8

    aput v7, v6, v5

    .line 965
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v6, v3

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v7, v8

    aput v7, v6, v3

    .line 968
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 969
    iget v7, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-eqz v7, :cond_f2

    sget-object v7, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    goto :goto_f4

    :cond_f2
    sget-object v7, Landroid/inputmethodservice/KeyboardView;->EMPTY_STATE_SET:[I

    .line 968
    :goto_f4
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 970
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v7, v5

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 971
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v7, v3

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 974
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->getLocationOnScreen([I)V

    .line 975
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v3, v7, v3

    add-int/2addr v6, v3

    if-gez v6, :cond_13f

    .line 978
    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v6

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    const-wide/high16 v7, 0x4004000000000000L    # 2.5

    if-gt v3, v6, :cond_130

    .line 979
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v9, p1

    mul-double/2addr v9, v7

    double-to-int p1, v9

    add-int/2addr v2, p1

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    goto :goto_13a

    .line 981
    :cond_130
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v9, p1

    mul-double/2addr v9, v7

    double-to-int p1, v9

    sub-int/2addr v2, p1

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 983
    :goto_13a
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    add-int/2addr p1, v4

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 986
    :cond_13f
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_14d

    .line 987
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, p1, v2, v1, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_15c

    .line 990
    :cond_14d
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 991
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 992
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, p1, v5, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 995
    :goto_15c
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 996
    return-void

    .line 927
    :cond_162
    :goto_162
    return-void
.end method

.method private greylist-max-o showPreview(I)V
    .registers 11

    .line 870
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 871
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 873
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 875
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 876
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v0, v3, :cond_55

    .line 877
    if-eq v0, v6, :cond_31

    array-length v3, v2

    if-le v3, v0, :cond_31

    .line 878
    aget-object v3, v2, v0

    .line 879
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-ne v7, v6, :cond_1c

    move v7, v4

    goto :goto_1d

    :cond_1c
    move v7, v5

    :goto_1d
    invoke-virtual {v3, v7}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 880
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 881
    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    .line 882
    const/16 v7, 0x100

    invoke-direct {p0, v7, v3}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 885
    const/high16 v7, 0x10000

    invoke-direct {p0, v7, v3}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 888
    :cond_31
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v3, v6, :cond_55

    array-length v3, v2

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-le v3, v7, :cond_55

    .line 889
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    aget-object v2, v2, v3

    .line 890
    invoke-virtual {v2}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 891
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 892
    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v5

    .line 893
    const/16 v3, 0x80

    invoke-direct {p0, v3, v2}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 896
    const v3, 0x8000

    invoke-direct {p0, v3, v2}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 901
    :cond_55
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v2, :cond_99

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    if-eqz v0, :cond_99

    .line 902
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 903
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 904
    if-ne p1, v6, :cond_78

    .line 905
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 906
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 905
    const-wide/16 v7, 0x46

    invoke-virtual {v0, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 910
    :cond_78
    if-eq p1, v6, :cond_99

    .line 911
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8c

    .line 913
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    goto :goto_99

    .line 915
    :cond_8c
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 916
    invoke-virtual {v1, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 915
    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 921
    :cond_99
    :goto_99
    return-void
.end method


# virtual methods
.method public whitelist closing()V
    .registers 2

    .line 1396
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1397
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1399
    :cond_d
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1401
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1402
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1403
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1404
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1405
    return-void
.end method

.method public whitelist getKeyboard()Landroid/inputmethodservice/Keyboard;
    .registers 2

    .line 505
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method protected whitelist getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .registers 2

    .line 469
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public whitelist handleBack()Z
    .registers 2

    .line 1430
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1431
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1432
    const/4 v0, 0x1

    return v0

    .line 1434
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist invalidateAllKeys()V
    .registers 5

    .line 1040
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 1042
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidate()V

    .line 1043
    return-void
.end method

.method public whitelist invalidateKey(I)V
    .registers 8

    .line 1053
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v0, :cond_5

    return-void

    .line 1054
    :cond_5
    if-ltz p1, :cond_53

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v0, v0

    if-lt p1, v0, :cond_d

    goto :goto_53

    .line 1057
    :cond_d
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object p1, v0, p1

    .line 1058
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 1059
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1061
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 1062
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v3, p1

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/inputmethodservice/KeyboardView;->invalidate(IIII)V

    .line 1064
    return-void

    .line 1055
    :cond_53
    :goto_53
    return-void
.end method

.method public whitelist isPreviewEnabled()Z
    .registers 2

    .line 554
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return v0
.end method

.method public whitelist isProximityCorrectionEnabled()Z
    .registers 2

    .line 586
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return v0
.end method

.method public whitelist isShifted()Z
    .registers 2

    .line 532
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_b

    .line 533
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    return v0

    .line 535
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 2

    .line 374
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 375
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V

    .line 376
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_11

    .line 377
    new-instance v0, Landroid/inputmethodservice/KeyboardView$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/KeyboardView$1;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 400
    :cond_11
    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .registers 2

    .line 594
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 595
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 1

    .line 1417
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1418
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->closing()V

    .line 1419
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 652
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 653
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_12

    .line 654
    :cond_f
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 656
    :cond_12
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 657
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1170
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_2a

    .line 1171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1172
    packed-switch v0, :pswitch_data_2c

    :pswitch_16
    goto :goto_25

    .line 1180
    :pswitch_17
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_25

    .line 1174
    :pswitch_1b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1175
    goto :goto_25

    .line 1177
    :pswitch_20
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1178
    nop

    .line 1183
    :goto_25
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1185
    :cond_2a
    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x7
        :pswitch_20
        :pswitch_16
        :pswitch_1b
        :pswitch_17
    .end packed-switch
.end method

.method protected whitelist onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .registers 9

    .line 1093
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 1095
    const/4 v6, 0x0

    if-eqz v2, :cond_127

    .line 1096
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1097
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020026

    if-nez v0, :cond_99

    .line 1098
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1100
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1101
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 1103
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1105
    if-eqz v0, :cond_43

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    :cond_43
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    new-instance v1, Landroid/inputmethodservice/KeyboardView$3;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/KeyboardView$3;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 1130
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_67

    .line 1131
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 1132
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    const/4 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto :goto_70

    .line 1134
    :cond_67
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 1136
    :goto_70
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 1137
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 1138
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1139
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1140
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1138
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1142
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    goto :goto_a3

    .line 1144
    :cond_99
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 1147
    :goto_a3
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    .line 1148
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 1149
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 1150
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, p1

    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 1151
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 1152
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v0, v0, v6

    add-int/2addr p1, v0

    .line 1153
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 1154
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-gez p1, :cond_f2

    move v3, v6

    goto :goto_f3

    :cond_f2
    move v3, p1

    :goto_f3
    invoke-virtual {v1, v3, v0}, Landroid/inputmethodservice/KeyboardView;->setPopupOffset(II)V

    .line 1155
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    .line 1156
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1157
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1158
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1159
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v6, p1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1160
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1162
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 1163
    return v2

    .line 1165
    :cond_127
    return v6
.end method

.method public whitelist onMeasure(II)V
    .registers 5

    .line 608
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez p2, :cond_12

    .line 609
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    iget p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_39

    .line 611
    :cond_12
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p2}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result p2

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr p2, v0

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int/2addr p2, v0

    .line 612
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    add-int/lit8 v1, p2, 0xa

    if-ge v0, v1, :cond_2a

    .line 613
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 615
    :cond_2a
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result p1

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr p1, v0

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    .line 617
    :goto_39
    return-void
.end method

.method public whitelist onSizeChanged(IIII)V
    .registers 5

    .line 642
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 643
    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz p3, :cond_c

    .line 644
    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p3, p1, p2}, Landroid/inputmethodservice/Keyboard;->resize(II)V

    .line 647
    :cond_c
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 648
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    .line 1192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1194
    nop

    .line 1195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 1197
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v0, v4, :cond_4f

    .line 1198
    if-ne v0, v11, :cond_39

    .line 1200
    nop

    .line 1201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 1200
    const/4 v6, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1202
    invoke-direct {p0, v2, v10}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v3

    .line 1203
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1205
    if-ne v1, v11, :cond_37

    .line 1206
    invoke-direct {p0, p1, v11}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    move v11, p1

    goto :goto_38

    .line 1205
    :cond_37
    move v11, v3

    .line 1208
    :goto_38
    goto :goto_63

    .line 1210
    :cond_39
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    .line 1211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 1210
    const/4 v6, 0x1

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1212
    invoke-direct {p0, p1, v11}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1214
    goto :goto_63

    .line 1216
    :cond_4f
    if-ne v0, v11, :cond_62

    .line 1217
    invoke-direct {p0, p1, v10}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    .line 1219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    goto :goto_63

    .line 1222
    :cond_62
    nop

    .line 1225
    :goto_63
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 1227
    return v11
.end method

.method public whitelist setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .registers 4

    .line 480
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_8

    .line 481
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 484
    :cond_8
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 485
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 486
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 487
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 488
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->requestLayout()V

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 491
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 492
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    .line 493
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 496
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 497
    return-void
.end method

.method public whitelist setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
    .registers 2

    .line 461
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 462
    return-void
.end method

.method public whitelist setPopupOffset(II)V
    .registers 3

    .line 565
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    .line 566
    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    .line 567
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 568
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 570
    :cond_11
    return-void
.end method

.method public whitelist setPopupParent(Landroid/view/View;)V
    .registers 2

    .line 561
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 562
    return-void
.end method

.method public whitelist setPreviewEnabled(Z)V
    .registers 2

    .line 545
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 546
    return-void
.end method

.method public whitelist setProximityCorrectionEnabled(Z)V
    .registers 2

    .line 579
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    .line 580
    return-void
.end method

.method public whitelist setShifted(Z)Z
    .registers 3

    .line 515
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_11

    .line 516
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 518
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 519
    const/4 p1, 0x1

    return p1

    .line 522
    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setVerticalCorrection(I)V
    .registers 2

    .line 559
    return-void
.end method

.method protected whitelist swipeDown()V
    .registers 2

    .line 1392
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    .line 1393
    return-void
.end method

.method protected whitelist swipeLeft()V
    .registers 2

    .line 1384
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    .line 1385
    return-void
.end method

.method protected whitelist swipeRight()V
    .registers 2

    .line 1380
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    .line 1381
    return-void
.end method

.method protected whitelist swipeUp()V
    .registers 2

    .line 1388
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    .line 1389
    return-void
.end method
