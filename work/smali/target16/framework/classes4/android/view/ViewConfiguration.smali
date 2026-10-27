.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewConfiguration$ResourceCache;
    }
.end annotation


# static fields
.field private static final greylist-max-o A11Y_SHORTCUT_KEY_TIMEOUT:I = 0xbb8

.field private static final greylist-max-o A11Y_SHORTCUT_KEY_TIMEOUT_AFTER_CONFIRMATION:I = 0x3e8

.field private static final greylist-max-o ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final blacklist AMBIGUOUS_GESTURE_MULTIPLIER:F = 2.0f

.field private static final blacklist DEFAULT_KEY_REPEAT_DELAY_MS:I = 0x32

.field private static final blacklist DEFAULT_KEY_REPEAT_TIMEOUT_MS:I = 0x190

.field public static final greylist-max-o DEFAULT_LONG_PRESS_TIMEOUT:I = 0x190

.field private static final greylist-max-o DEFAULT_MULTI_PRESS_TIMEOUT:I = 0x12c

.field public static final blacklist DEFAULT_TEXT_CURSOR_BLINK_INTERVAL_MS:I = 0x1f4

.field private static final greylist-max-o DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final greylist-max-o DOUBLE_TAP_SLOP:I = 0x64

.field private static final greylist-max-o DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final greylist-max-o DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final greylist-max-o EDGE_SLOP:I = 0xc

.field private static final greylist-max-o FADING_EDGE_LENGTH:I = 0xc

.field private static final greylist-max-o GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final blacklist HANDWRITING_GESTURE_LINE_MARGIN:I = 0x10

.field private static final blacklist HANDWRITING_SLOP:I = 0x2

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final greylist-max-o HORIZONTAL_SCROLL_FACTOR:F = 64.0f

.field private static final greylist-max-o HOVER_TAP_SLOP:I = 0x14

.field private static final greylist-max-o HOVER_TOOLTIP_HIDE_SHORT_TIMEOUT:I = 0xbb8

.field private static final greylist-max-o HOVER_TOOLTIP_HIDE_TIMEOUT:I = 0x3a98

.field private static final greylist-max-o HOVER_TOOLTIP_SHOW_TIMEOUT:I = 0x1f4

.field private static final greylist-max-o JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final greylist-max-o LONG_PRESS_TOOLTIP_HIDE_TIMEOUT:I = 0x5dc

.field private static final greylist-max-o MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final greylist-max-o MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final greylist-max-o MIN_SCROLLBAR_TOUCH_TARGET:I = 0x30

.field public static final blacklist MIN_TEXT_CURSOR_BLINK_INTERVAL_MS:I = 0x14d

.field public static final blacklist NO_BLINK_TEXT_CURSOR_BLINK_INTERVAL_MS:I = 0x0

.field private static final blacklist NO_FLING_MAX_VELOCITY:I = -0x80000000

.field private static final blacklist NO_FLING_MIN_VELOCITY:I = 0x7fffffff

.field public static final blacklist NO_HAPTIC_SCROLL_TICK_INTERVAL:I = 0x7fffffff

.field private static final greylist-max-o OVERFLING_DISTANCE:I = 0x6

.field private static final greylist-max-o OVERSCROLL_DISTANCE:I = 0x0

.field private static final greylist-max-o PAGING_TOUCH_SLOP:I = 0x10

.field private static final greylist-max-o PRESSED_STATE_DURATION:I = 0x40

.field private static final blacklist SCREENSHOT_CHORD_KEY_TIMEOUT:I = 0x0

.field private static final greylist-max-o SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final greylist-max-o SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final greylist-max-o SCROLL_BAR_SIZE:I = 0x4

.field private static final greylist SCROLL_FRICTION:F = 0.015f

.field private static final greylist-max-o SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final blacklist SMART_SELECTION_INITIALIZED_TIMEOUT_IN_MILLISECOND:I = 0xc8

.field private static final blacklist SMART_SELECTION_INITIALIZING_TIMEOUT_IN_MILLISECOND:I = 0x1f4

.field private static final greylist-max-o TAP_TIMEOUT:I = 0x64

.field private static final greylist-max-o TOUCH_SLOP:I = 0x8

.field private static final greylist-max-o VERTICAL_SCROLL_FACTOR:F = 64.0f

.field private static final greylist-max-o WINDOW_TOUCH_SLOP:I = 0x10

.field private static final greylist-max-o ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final blacklist sConfigurations:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;


# instance fields
.field private final blacklist mAmbiguousGestureMultiplier:F

.field private final blacklist mConstructedWithContext:Z

.field private blacklist mDeviceId:I

.field private final blacklist mDoubleTapMinTimeMillis:I

.field private final greylist-max-o mDoubleTapSlop:I

.field private final blacklist mDoubleTapTimeoutMillis:I

.field private final greylist-max-o mDoubleTapTouchSlop:I

.field private final greylist-max-o mEdgeSlop:I

.field private final greylist-max-o mFadingEdgeLength:I

.field private final blacklist mFadingMarqueeEnabled:Z

.field private final greylist-max-o mGlobalActionsKeyTimeout:J

.field private final blacklist mHandwritingGestureLineMargin:I

.field private final blacklist mHandwritingSlop:I

.field private final greylist-max-o mHorizontalScrollFactor:F

.field private final greylist-max-o mHoverSlop:I

.field private final greylist-max-o mMaximumDrawingCacheSize:I

.field private final greylist-max-o mMaximumFlingVelocity:I

.field private final blacklist mMaximumRotaryEncoderFlingVelocity:I

.field private final blacklist mMinScalingSpan:I

.field private final greylist-max-o mMinScrollbarTouchTarget:I

.field private final greylist-max-o mMinimumFlingVelocity:I

.field private final blacklist mMinimumRotaryEncoderFlingVelocity:I

.field private final greylist-max-o mOverflingDistance:I

.field private final greylist-max-o mOverscrollDistance:I

.field private final greylist-max-o mPagingTouchSlop:I

.field private final blacklist mPreferKeepClearForFocusEnabled:Z

.field private final blacklist mRotaryEncoderHapticScrollFeedbackEnabled:Z

.field private final blacklist mRotaryEncoderHapticScrollFeedbackTickIntervalPixels:I

.field private final blacklist mScreenshotChordKeyTimeout:J

.field private final blacklist mScrollFriction:F

.field private final greylist-max-o mScrollbarSize:I

.field private final greylist-max-o mShowMenuShortcutsWhenKeyboardPresent:Z

.field private final blacklist mSmartSelectionInitializedTimeout:I

.field private final blacklist mSmartSelectionInitializingTimeout:I

.field private final blacklist mTapTimeoutMillis:I

.field private final greylist-max-o mTouchSlop:I

.field private final greylist-max-o mVerticalScrollFactor:F

.field private final blacklist mViewBasedRotaryEncoderScrollHapticsEnabledConfig:Z

.field private final blacklist mViewTouchScreenHapticScrollFeedbackEnabled:Z

.field private final greylist-max-o mWindowTouchSlop:I

.field private greylist-max-p sHasPermanentMenuKey:Z

.field private greylist sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 376
    new-instance v0, Landroid/view/ViewConfiguration$ResourceCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/ViewConfiguration$ResourceCache;-><init>(Landroid/view/ViewConfiguration-IA;)V

    sput-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    .line 425
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/LongSparseArray;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewConfiguration;->mDeviceId:I

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    .line 433
    const/16 v1, 0xc

    iput v1, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 434
    iput v1, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 435
    const/16 v1, 0x32

    iput v1, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 436
    const/16 v2, 0x1f40

    iput v2, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 437
    iput v1, p0, Landroid/view/ViewConfiguration;->mMinimumRotaryEncoderFlingVelocity:I

    .line 438
    iput v2, p0, Landroid/view/ViewConfiguration;->mMaximumRotaryEncoderFlingVelocity:I

    .line 439
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackEnabled:Z

    .line 440
    const v1, 0x7fffffff

    iput v1, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackTickIntervalPixels:I

    .line 441
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mViewBasedRotaryEncoderScrollHapticsEnabledConfig:Z

    .line 442
    const/4 v1, 0x4

    iput v1, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 443
    const/16 v2, 0x8

    iput v2, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 444
    const/4 v3, 0x2

    iput v3, p0, Landroid/view/ViewConfiguration;->mHandwritingSlop:I

    .line 445
    iput v1, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    .line 446
    const/16 v1, 0x30

    iput v1, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    .line 447
    iput v2, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 448
    const/16 v1, 0x10

    iput v1, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 449
    const/16 v2, 0x64

    iput v2, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 450
    iput v1, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 451
    iput v1, p0, Landroid/view/ViewConfiguration;->mHandwritingGestureLineMargin:I

    .line 452
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    .line 454
    const v1, 0x177000

    iput v1, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 455
    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 456
    const/4 v1, 0x6

    iput v1, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 457
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 458
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 459
    const/high16 v1, 0x42800000    # 64.0f

    iput v1, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    .line 460
    iput v1, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    .line 461
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    .line 462
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    .line 466
    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    .line 467
    const/16 v1, 0xc8

    iput v1, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    .line 468
    const/16 v1, 0x1f4

    iput v1, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    .line 469
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    .line 470
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mViewTouchScreenHapticScrollFeedbackEnabled:Z

    .line 472
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mTapTimeoutMillis:I

    .line 473
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getDoubleTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTimeoutMillis:I

    .line 474
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getDoubleTapMinTime()I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapMinTimeMillis:I

    .line 475
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollFriction:F

    .line 476
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 10

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewConfiguration;->mDeviceId:I

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    .line 492
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 493
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 494
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 495
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 497
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 498
    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v5

    goto :goto_23

    .line 500
    :cond_22
    nop

    .line 503
    :goto_23
    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v5, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 504
    iput v5, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 505
    const v5, 0x1050127

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 506
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 507
    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 509
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 510
    const v7, 0x10500eb

    invoke-virtual {v1, v7, v5, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 513
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    .line 516
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 517
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/2addr v5, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v5, v3

    iput v5, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 519
    const/4 v3, 0x0

    mul-float/2addr v3, v2

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 520
    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 522
    iget-boolean v2, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    const/4 v3, 0x0

    if-nez v2, :cond_af

    .line 523
    const v2, 0x10e011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 525
    packed-switch v2, :pswitch_data_1d8

    .line 528
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    goto :goto_99

    .line 544
    :pswitch_8f
    iput-boolean v3, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 545
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_af

    .line 539
    :pswitch_94
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 540
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    .line 541
    goto :goto_af

    .line 530
    :goto_99
    :try_start_99
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v2

    if-nez v2, :cond_a5

    move v2, v0

    goto :goto_a6

    :cond_a5
    move v2, v3

    :goto_a6
    iput-boolean v2, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 531
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_aa} :catch_ab

    .line 534
    goto :goto_ae

    .line 532
    :catch_ab
    move-exception v0

    .line 533
    iput-boolean v3, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 536
    :goto_ae
    nop

    .line 550
    :cond_af
    :goto_af
    const v0, 0x11102a8

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 551
    const v0, 0x105012d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 552
    const v0, 0x105012b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mHandwritingSlop:I

    .line 554
    const v0, 0x105012c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    .line 555
    const v0, 0x1050112

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    .line 557
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 559
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 561
    const v0, 0x105000a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mHandwritingGestureLineMargin:I

    .line 564
    const v0, 0x1050130

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 565
    const v0, 0x105012e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 567
    const v0, 0x1050131

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 569
    const v2, 0x105012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 571
    const v4, 0x7fffffff

    if-ltz v0, :cond_11c

    if-gez v2, :cond_117

    goto :goto_11c

    .line 575
    :cond_117
    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumRotaryEncoderFlingVelocity:I

    .line 576
    iput v2, p0, Landroid/view/ViewConfiguration;->mMaximumRotaryEncoderFlingVelocity:I

    goto :goto_122

    .line 572
    :cond_11c
    :goto_11c
    iput v4, p0, Landroid/view/ViewConfiguration;->mMinimumRotaryEncoderFlingVelocity:I

    .line 573
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumRotaryEncoderFlingVelocity:I

    .line 579
    :goto_122
    nop

    .line 580
    const v0, 0x105011d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 582
    nop

    .line 583
    if-lez v0, :cond_12f

    .line 584
    move v4, v0

    goto :goto_130

    .line 585
    :cond_12f
    nop

    :goto_130
    iput v4, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackTickIntervalPixels:I

    .line 587
    nop

    .line 588
    const v0, 0x11102c6

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackEnabled:Z

    .line 591
    const v0, 0x10e00bc

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 593
    const v0, 0x10500ff

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    .line 594
    const v0, 0x105012a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    .line 596
    const v0, 0x1110261

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    .line 599
    const v0, 0x1050110

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    .line 601
    const v0, 0x10e0155

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    .line 603
    const v0, 0x10e0164

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    .line 605
    const v0, 0x10e0165

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    .line 607
    const v0, 0x1110235

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    .line 608
    nop

    .line 609
    const v0, 0x11102c5

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mViewBasedRotaryEncoderScrollHapticsEnabledConfig:Z

    .line 610
    nop

    .line 611
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->enableScrollFeedbackForTouch()Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 612
    const v0, 0x11102c7

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    goto :goto_1ab

    .line 613
    :cond_1aa
    nop

    :goto_1ab
    iput-boolean v3, p0, Landroid/view/ViewConfiguration;->mViewTouchScreenHapticScrollFeedbackEnabled:Z

    .line 615
    const v0, 0x10e016b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mTapTimeoutMillis:I

    .line 616
    const v0, 0x10e00a3

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTimeoutMillis:I

    .line 617
    const v0, 0x10e009f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapMinTimeMillis:I

    .line 618
    const v0, 0x1050126

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollFriction:F

    .line 620
    invoke-virtual {p1}, Landroid/content/Context;->getDeviceId()I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mDeviceId:I

    .line 621
    return-void

    :pswitch_data_1d8
    .packed-switch 0x1
        :pswitch_94
        :pswitch_8f
    .end packed-switch
.end method

.method private static blacklist createKey(Landroid/content/Context;)J
    .registers 7

    .line 1593
    invoke-static {p0}, Landroid/view/ViewConfiguration;->getDisplayDensity(Landroid/content/Context;)I

    move-result v0

    .line 1594
    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result p0

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .registers 4

    .line 634
    const-string v0, "ViewConfiguration"

    invoke-static {p0, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 636
    invoke-static {p0}, Landroid/view/ViewConfiguration;->createKey(Landroid/content/Context;)J

    move-result-wide v0

    .line 637
    sget-object v2, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewConfiguration;

    .line 638
    if-nez v2, :cond_1d

    .line 639
    new-instance v2, Landroid/view/ViewConfiguration;

    invoke-direct {v2, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 640
    sget-object p0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 643
    :cond_1d
    return-object v2
.end method

.method public static whitelist getAmbiguousGestureMultiplier()F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1242
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public static whitelist getDefaultActionModeHideDuration()J
    .registers 2

    .line 1226
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getDefaultActionModeHideDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist getDisplayDensity(Landroid/content/Context;)I
    .registers 2

    .line 1585
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 1586
    const/high16 v0, 0x42c80000    # 100.0f

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static greylist getDoubleTapMinTime()I
    .registers 1

    .line 876
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getDoubleTapMinTime()I

    move-result v0

    return v0
.end method

.method public static greylist getDoubleTapSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 981
    const/16 v0, 0x64

    return v0
.end method

.method public static whitelist getDoubleTapTimeout()I
    .registers 1

    .line 854
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method public static whitelist getEdgeSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 909
    const/16 v0, 0xc

    return v0
.end method

.method public static whitelist getFadingEdgeLength()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 717
    const/16 v0, 0xc

    return v0
.end method

.method public static whitelist getGlobalActionKeyTimeout()J
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1152
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static greylist-max-r getHoverTapSlop()I
    .registers 1

    .line 898
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method public static blacklist getHoverTooltipHideShortTimeout()I
    .registers 1

    .line 1574
    const/16 v0, 0xbb8

    return v0
.end method

.method public static blacklist getHoverTooltipHideTimeout()I
    .registers 1

    .line 1564
    const/16 v0, 0x3a98

    return v0
.end method

.method public static blacklist getHoverTooltipShowTimeout()I
    .registers 1

    .line 1554
    const/16 v0, 0x1f4

    return v0
.end method

.method public static whitelist getJumpTapTimeout()I
    .registers 1

    .line 845
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getJumpTapTimeout()I

    move-result v0

    return v0
.end method

.method public static whitelist getKeyRepeatDelay()I
    .registers 2

    .line 785
    const-string v0, "key_repeat_delay"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getKeyRepeatTimeout()I
    .registers 2

    .line 777
    const-string v0, "key_repeat_timeout"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getLongPressTimeout()I
    .registers 2

    .line 742
    const-string v0, "long_press_timeout"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getLongPressTooltipHideTimeout()I
    .registers 1

    .line 1545
    const/16 v0, 0x5dc

    return v0
.end method

.method public static whitelist getMaximumDrawingCacheSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1103
    const v0, 0x177000

    return v0
.end method

.method public static whitelist getMaximumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1057
    const/16 v0, 0x1f40

    return v0
.end method

.method public static whitelist getMinimumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1040
    const/16 v0, 0x32

    return v0
.end method

.method public static whitelist getMultiPressTimeout()I
    .registers 2

    .line 760
    const-string v0, "multi_press_timeout"

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getPressedStateDuration()I
    .registers 1

    .line 732
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getPressedStateDuration()I

    move-result v0

    return v0
.end method

.method public static whitelist getScrollBarFadeDuration()I
    .registers 1

    .line 700
    const/16 v0, 0xfa

    return v0
.end method

.method public static whitelist getScrollBarSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    const/4 v0, 0x4

    return v0
.end method

.method public static whitelist getScrollDefaultDelay()I
    .registers 1

    .line 707
    const/16 v0, 0x12c

    return v0
.end method

.method public static whitelist getScrollFriction()F
    .registers 1

    .line 1208
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getScrollFriction()F

    move-result v0

    return v0
.end method

.method public static greylist-max-o getSendRecurringAccessibilityEventsInterval()J
    .registers 2

    .line 1010
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method private blacklist getSettingValue(Ljava/lang/String;I)I
    .registers 5

    .line 1578
    iget v0, p0, Landroid/view/ViewConfiguration;->mDeviceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 1579
    iget v0, p0, Landroid/view/ViewConfiguration;->mDeviceId:I

    invoke-static {p1, p2, v0}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;II)I

    move-result p1

    return p1

    .line 1581
    :cond_c
    invoke-static {p1, p2}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public static whitelist getTapTimeout()I
    .registers 1

    .line 826
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getTapTimeout()I

    move-result v0

    return v0
.end method

.method public static whitelist getTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 927
    const/16 v0, 0x8

    return v0
.end method

.method public static whitelist getWindowTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1022
    const/16 v0, 0x10

    return v0
.end method

.method public static whitelist getZoomControlsTimeout()J
    .registers 2

    .line 1139
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getZoomControlsTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist isInputDeviceInfoValid(III)Z
    .registers 4

    .line 1468
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    .line 1469
    if-eqz p0, :cond_12

    invoke-virtual {p0, p1, p2}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static blacklist resetCacheForTesting()V
    .registers 2

    .line 655
    sget-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 656
    new-instance v0, Landroid/view/ViewConfiguration$ResourceCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/ViewConfiguration$ResourceCache;-><init>(Landroid/view/ViewConfiguration-IA;)V

    sput-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    .line 657
    return-void
.end method

.method public static blacklist setInstanceForTesting(Landroid/content/Context;Landroid/view/ViewConfiguration;)V
    .registers 5

    .line 666
    sget-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/LongSparseArray;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->createKey(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 667
    return-void
.end method


# virtual methods
.method public greylist-max-o getAccessibilityShortcutKeyTimeout()J
    .registers 3

    .line 1189
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public greylist-max-o getAccessibilityShortcutKeyTimeoutAfterConfirmation()J
    .registers 3

    .line 1198
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public blacklist getDeviceGlobalActionKeyTimeout()J
    .registers 3

    .line 1165
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public blacklist getDoubleTapMinTimeMillis()I
    .registers 2

    .line 887
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapMinTimeMillis:I

    return v0
.end method

.method public whitelist getDoubleTapTimeoutMillis()I
    .registers 2

    .line 864
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTimeoutMillis:I

    return v0
.end method

.method public blacklist getHapticScrollFeedbackTickInterval(III)I
    .registers 6

    .line 1441
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackEnabled:Z

    const v1, 0x7fffffff

    if-nez v0, :cond_8

    .line 1442
    return v1

    .line 1445
    :cond_8
    invoke-static {p1, p2, p3}, Landroid/view/ViewConfiguration;->isInputDeviceInfoValid(III)Z

    move-result p1

    if-nez p1, :cond_f

    .line 1446
    return v1

    .line 1449
    :cond_f
    const/high16 p1, 0x400000

    if-ne p3, p1, :cond_1a

    const/16 p1, 0x1a

    if-ne p2, p1, :cond_1a

    .line 1450
    iget p1, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackTickIntervalPixels:I

    return p1

    .line 1453
    :cond_1a
    return v1
.end method

.method public whitelist getLongPressTimeoutMillis()I
    .registers 3

    .line 752
    const-string v0, "long_press_timeout"

    const/16 v1, 0x190

    invoke-direct {p0, v0, v1}, Landroid/view/ViewConfiguration;->getSettingValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMultiPressTimeoutMillis()I
    .registers 3

    .line 770
    const-string v0, "multi_press_timeout"

    const/16 v1, 0x12c

    invoke-direct {p0, v0, v1}, Landroid/view/ViewConfiguration;->getSettingValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledAmbiguousGestureMultiplier()F
    .registers 2

    .line 1255
    iget v0, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    return v0
.end method

.method public whitelist getScaledDoubleTapSlop()I
    .registers 2

    .line 989
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public greylist getScaledDoubleTapTouchSlop()I
    .registers 2

    .line 960
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public whitelist getScaledEdgeSlop()I
    .registers 2

    .line 917
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public whitelist getScaledFadingEdgeLength()I
    .registers 2

    .line 724
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public whitelist getScaledHandwritingGestureLineMargin()I
    .registers 2

    .line 997
    iget v0, p0, Landroid/view/ViewConfiguration;->mHandwritingGestureLineMargin:I

    return v0
.end method

.method public whitelist getScaledHandwritingSlop()I
    .registers 2

    .line 942
    iget v0, p0, Landroid/view/ViewConfiguration;->mHandwritingSlop:I

    return v0
.end method

.method public whitelist getScaledHorizontalScrollFactor()F
    .registers 2

    .line 1082
    iget v0, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    return v0
.end method

.method public whitelist getScaledHoverSlop()I
    .registers 2

    .line 950
    iget v0, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    return v0
.end method

.method public whitelist getScaledMaximumDrawingCacheSize()I
    .registers 2

    .line 1112
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public whitelist getScaledMaximumFlingVelocity()I
    .registers 2

    .line 1064
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public whitelist getScaledMaximumFlingVelocity(III)I
    .registers 4

    .line 1354
    invoke-static {p1, p2, p3}, Landroid/view/ViewConfiguration;->isInputDeviceInfoValid(III)Z

    move-result p1

    if-nez p1, :cond_9

    const/high16 p1, -0x80000000

    return p1

    .line 1356
    :cond_9
    const/high16 p1, 0x400000

    if-ne p3, p1, :cond_10

    iget p1, p0, Landroid/view/ViewConfiguration;->mMaximumRotaryEncoderFlingVelocity:I

    return p1

    .line 1358
    :cond_10
    iget p1, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return p1
.end method

.method public greylist-max-o getScaledMinScrollbarTouchTarget()I
    .registers 2

    .line 693
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    return v0
.end method

.method public whitelist getScaledMinimumFlingVelocity()I
    .registers 2

    .line 1047
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public whitelist getScaledMinimumFlingVelocity(III)I
    .registers 4

    .line 1336
    invoke-static {p1, p2, p3}, Landroid/view/ViewConfiguration;->isInputDeviceInfoValid(III)Z

    move-result p1

    if-nez p1, :cond_a

    const p1, 0x7fffffff

    return p1

    .line 1338
    :cond_a
    const/high16 p1, 0x400000

    if-ne p3, p1, :cond_11

    iget p1, p0, Landroid/view/ViewConfiguration;->mMinimumRotaryEncoderFlingVelocity:I

    return p1

    .line 1340
    :cond_11
    iget p1, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return p1
.end method

.method public whitelist getScaledMinimumScalingSpan()I
    .registers 3

    .line 1493
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    if-eqz v0, :cond_7

    .line 1498
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    return v0

    .line 1494
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Min scaling span cannot be determined when this method is called on a ViewConfiguration that was instantiated using a constructor with no Context parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getScaledOverflingDistance()I
    .registers 2

    .line 1128
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public whitelist getScaledOverscrollDistance()I
    .registers 2

    .line 1120
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public whitelist getScaledPagingTouchSlop()I
    .registers 2

    .line 968
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public whitelist getScaledScrollBarSize()I
    .registers 2

    .line 685
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public greylist getScaledScrollFactor()I
    .registers 2

    .line 1074
    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getScaledTouchSlop()I
    .registers 2

    .line 934
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public whitelist getScaledVerticalScrollFactor()F
    .registers 2

    .line 1090
    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return v0
.end method

.method public whitelist getScaledWindowTouchSlop()I
    .registers 2

    .line 1030
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public blacklist getScreenshotChordKeyTimeout()J
    .registers 3

    .line 1177
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    return-wide v0
.end method

.method public whitelist getScrollFrictionAmount()F
    .registers 2

    .line 1219
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollFriction:F

    return v0
.end method

.method public blacklist getSmartSelectionInitializedTimeout()I
    .registers 2

    .line 1516
    iget v0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    return v0
.end method

.method public blacklist getSmartSelectionInitializingTimeout()I
    .registers 2

    .line 1525
    iget v0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    return v0
.end method

.method public whitelist getTapTimeoutMillis()I
    .registers 2

    .line 836
    iget v0, p0, Landroid/view/ViewConfiguration;->mTapTimeoutMillis:I

    return v0
.end method

.method public whitelist getTextCursorBlinkIntervalMillis()I
    .registers 4

    .line 804
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    .line 805
    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getDefaultTextCursorBlinkInterval()I

    move-result v0

    .line 804
    const-string v1, "accessibility_text_cursor_blink_interval_ms"

    invoke-direct {p0, v1, v0}, Landroid/view/ViewConfiguration;->getSettingValue(Ljava/lang/String;I)I

    move-result v0

    .line 806
    sget-object v1, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration$ResourceCache;->getNoBlinkTextCursorBlinkInterval()I

    move-result v1

    .line 807
    sget-object v2, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration$ResourceCache;->getMinTextCursorBlinkInterval()I

    move-result v2

    .line 809
    if-gt v0, v1, :cond_1b

    .line 811
    return v1

    .line 812
    :cond_1b
    if-gt v0, v2, :cond_1e

    .line 814
    return v2

    .line 817
    :cond_1e
    return v0
.end method

.method public whitelist hasPermanentMenuKey()Z
    .registers 2

    .line 1271
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return v0
.end method

.method public greylist isFadingMarqueeEnabled()Z
    .registers 2

    .line 1507
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method

.method public blacklist isHapticScrollFeedbackEnabled(III)Z
    .registers 5

    .line 1393
    invoke-static {p1, p2, p3}, Landroid/view/ViewConfiguration;->isInputDeviceInfoValid(III)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 1395
    :cond_8
    const/high16 p1, 0x400000

    if-ne p3, p1, :cond_13

    const/16 p1, 0x1a

    if-ne p2, p1, :cond_13

    .line 1396
    iget-boolean p1, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackEnabled:Z

    return p1

    .line 1399
    :cond_13
    and-int/lit16 p1, p3, 0x1002

    if-eqz p1, :cond_1a

    .line 1400
    iget-boolean p1, p0, Landroid/view/ViewConfiguration;->mViewTouchScreenHapticScrollFeedbackEnabled:Z

    return p1

    .line 1403
    :cond_1a
    return v0
.end method

.method public blacklist isPreferKeepClearForFocusEnabled()Z
    .registers 2

    .line 1535
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    return v0
.end method

.method public blacklist isViewBasedRotaryEncoderHapticScrollFeedbackEnabled()Z
    .registers 2

    .line 1463
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mViewBasedRotaryEncoderScrollHapticsEnabledConfig:Z

    if-eqz v0, :cond_c

    .line 1464
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->useViewBasedRotaryEncoderScrollHaptics()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1463
    :goto_d
    return v0
.end method

.method public whitelist shouldShowMenuShortcutsWhenKeyboardPresent()Z
    .registers 2

    .line 1478
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    return v0
.end method
