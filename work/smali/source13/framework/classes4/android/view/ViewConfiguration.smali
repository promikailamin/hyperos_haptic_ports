.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final greylist-max-o A11Y_SHORTCUT_KEY_TIMEOUT:I = 0xbb8

.field private static final greylist-max-o A11Y_SHORTCUT_KEY_TIMEOUT_AFTER_CONFIRMATION:I = 0x3e8

.field private static final greylist-max-o ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final blacklist AMBIGUOUS_GESTURE_MULTIPLIER:F = 2.0f

.field public static final greylist-max-o DEFAULT_LONG_PRESS_TIMEOUT:I = 0x190

.field private static final greylist-max-o DEFAULT_MULTI_PRESS_TIMEOUT:I = 0x12c

.field private static final greylist-max-o DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final greylist-max-o DOUBLE_TAP_SLOP:I = 0x64

.field private static final greylist-max-o DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final greylist-max-o DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final greylist-max-o EDGE_SLOP:I = 0xc

.field private static final greylist-max-o FADING_EDGE_LENGTH:I = 0xc

.field private static final greylist-max-o GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final greylist-max-o HORIZONTAL_SCROLL_FACTOR:F = 64.0f

.field private static final greylist-max-o HOVER_TAP_SLOP:I = 0x14

.field private static final greylist-max-o HOVER_TAP_TIMEOUT:I = 0x96

.field private static final greylist-max-o HOVER_TOOLTIP_HIDE_SHORT_TIMEOUT:I = 0xbb8

.field private static final greylist-max-o HOVER_TOOLTIP_HIDE_TIMEOUT:I = 0x3a98

.field private static final greylist-max-o HOVER_TOOLTIP_SHOW_TIMEOUT:I = 0x1f4

.field private static final greylist-max-o JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final greylist-max-o KEY_REPEAT_DELAY:I = 0x32

.field private static final greylist-max-o LONG_PRESS_TOOLTIP_HIDE_TIMEOUT:I = 0x5dc

.field private static final greylist-max-o MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final greylist-max-o MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final greylist-max-o MIN_SCROLLBAR_TOUCH_TARGET:I = 0x30

.field private static final greylist-max-o OVERFLING_DISTANCE:I = 0x6

.field private static final greylist-max-o OVERSCROLL_DISTANCE:I = 0x0

.field private static final greylist-max-o PAGING_TOUCH_SLOP:I = 0x10

.field private static final greylist-max-o PRESSED_STATE_DURATION:I = 0x40

.field private static final blacklist PRESSED_STATE_DURATION_LISTVIEW:I = 0x8

.field private static final blacklist SCREENSHOT_CHORD_KEY_TIMEOUT:I = 0x0

.field private static final greylist-max-o SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final greylist-max-o SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final greylist-max-o SCROLL_BAR_SIZE:I = 0x4

.field private static final greylist SCROLL_FRICTION:F = 0.015f

.field private static final greylist-max-o SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final blacklist SMART_SELECTION_INITIALIZED_TIMEOUT_IN_MILLISECOND:I = 0xc8

.field private static final blacklist SMART_SELECTION_INITIALIZING_TIMEOUT_IN_MILLISECOND:I = 0x1f4

.field private static final blacklist TAG:Ljava/lang/String; = "ViewConfiguration"

.field private static final greylist-max-o TAP_TIMEOUT:I = 0x64

.field private static final greylist-max-o TOUCH_SLOP:I = 0x8

.field private static final greylist-max-o VERTICAL_SCROLL_FACTOR:F = 64.0f

.field private static final greylist-max-o WINDOW_TOUCH_SLOP:I = 0x10

.field private static final greylist-max-o ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final greylist sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAmbiguousGestureMultiplier:F

.field private final blacklist mConstructedWithContext:Z

.field private final greylist-max-o mDoubleTapSlop:I

.field private final greylist-max-o mDoubleTapTouchSlop:I

.field private final greylist-max-o mEdgeSlop:I

.field private final greylist-max-o mFadingEdgeLength:I

.field private final greylist mFadingMarqueeEnabled:Z

.field private final greylist-max-o mGlobalActionsKeyTimeout:J

.field private final greylist-max-o mHorizontalScrollFactor:F

.field private final greylist-max-o mHoverSlop:I

.field private final greylist-max-o mMaximumDrawingCacheSize:I

.field private final greylist-max-o mMaximumFlingVelocity:I

.field private final blacklist mMinScalingSpan:I

.field private final greylist-max-o mMinScrollbarTouchTarget:I

.field private final greylist-max-o mMinimumFlingVelocity:I

.field private final greylist-max-o mOverflingDistance:I

.field private final greylist-max-o mOverscrollDistance:I

.field private final greylist-max-o mPagingTouchSlop:I

.field private final blacklist mPreferKeepClearForFocusEnabled:Z

.field private final blacklist mScreenshotChordKeyTimeout:J

.field private final greylist-max-o mScrollbarSize:I

.field private final greylist-max-o mShowMenuShortcutsWhenKeyboardPresent:Z

.field private final blacklist mSmartSelectionInitializedTimeout:I

.field private final blacklist mSmartSelectionInitializingTimeout:I

.field private final greylist-max-o mTouchSlop:I

.field private final greylist-max-o mVerticalScrollFactor:F

.field private final greylist-max-o mWindowTouchSlop:I

.field private greylist-max-p sHasPermanentMenuKey:Z

.field private greylist sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 365
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    .line 374
    const/16 v1, 0xc

    iput v1, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 375
    iput v1, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 376
    const/16 v1, 0x32

    iput v1, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 377
    const/16 v1, 0x1f40

    iput v1, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 378
    const/4 v1, 0x4

    iput v1, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 379
    const/16 v2, 0x8

    iput v2, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 380
    iput v1, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    .line 381
    const/16 v1, 0x30

    iput v1, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    .line 382
    iput v2, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 383
    const/16 v1, 0x10

    iput v1, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 384
    const/16 v2, 0x64

    iput v2, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 385
    iput v1, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 386
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    .line 388
    const v1, 0x177000

    iput v1, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 389
    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 390
    const/4 v1, 0x6

    iput v1, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 391
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 392
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 393
    const/high16 v1, 0x42800000    # 64.0f

    iput v1, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    .line 394
    iput v1, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    .line 395
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    .line 396
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    .line 400
    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    .line 401
    const/16 v1, 0xc8

    iput v1, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    .line 402
    const/16 v1, 0x1f4

    iput v1, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    .line 403
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    .line 404
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    .line 420
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 421
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 422
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 423
    .local v3, "config":Landroid/content/res/Configuration;
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    .line 425
    .local v4, "density":F
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 426
    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v4

    .local v6, "sizeAndDensity":F
    goto :goto_20

    .line 428
    .end local v6    # "sizeAndDensity":F
    :cond_1f
    move v6, v4

    .line 431
    .restart local v6    # "sizeAndDensity":F
    :goto_20
    const/high16 v7, 0x41400000    # 12.0f

    mul-float v8, v6, v7

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 432
    mul-float/2addr v7, v6

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 433
    const v7, 0x10500e0

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 435
    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v6

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 436
    const/high16 v7, 0x41800000    # 16.0f

    mul-float/2addr v7, v6

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 438
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 439
    .local v7, "multiplierValue":Landroid/util/TypedValue;
    const v8, 0x10500ae

    invoke-virtual {v1, v8, v7, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 443
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7}, Landroid/util/TypedValue;->getFloat()F

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    .line 446
    iget-object v8, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 447
    .local v8, "maxBounds":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    mul-int/2addr v10, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v10, v5

    iput v10, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 449
    const/4 v5, 0x0

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 450
    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 452
    iget-boolean v5, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    if-nez v5, :cond_af

    .line 453
    const v5, 0x10e00c7

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 456
    .local v5, "configVal":I
    const/4 v9, 0x0

    packed-switch v5, :pswitch_data_142

    .line 459
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v10

    .local v10, "wm":Landroid/view/IWindowManager;
    goto :goto_9a

    .line 475
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :pswitch_90
    iput-boolean v9, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 476
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_af

    .line 470
    :pswitch_95
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 471
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    .line 472
    goto :goto_af

    .line 461
    .restart local v10    # "wm":Landroid/view/IWindowManager;
    :goto_9a
    :try_start_9a
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v11

    invoke-interface {v10, v11}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v11

    if-nez v11, :cond_a6

    move v11, v0

    goto :goto_a7

    :cond_a6
    move v11, v9

    :goto_a7
    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 462
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_ab} :catch_ac

    .line 465
    goto :goto_af

    .line 463
    :catch_ac
    move-exception v0

    .line 464
    .local v0, "ex":Landroid/os/RemoteException;
    iput-boolean v9, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 481
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "configVal":I
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :cond_af
    :goto_af
    const v0, 0x11101df

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 483
    const v0, 0x10500e5

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 485
    const v5, 0x10500e4

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    .line 487
    const v5, 0x10500cb

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    .line 489
    mul-int/lit8 v5, v0, 0x2

    iput v5, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 491
    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 493
    const v0, 0x10500e7

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 495
    const v0, 0x10500e6

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 497
    const v0, 0x10e007c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v9, v0

    iput-wide v9, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 500
    const v0, 0x10500c0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    .line 502
    const v0, 0x10500e3

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    .line 505
    const v0, 0x11101aa

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    .line 508
    const v0, 0x10500c9

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    .line 511
    const v0, 0x10e00e6

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v9, v0

    iput-wide v9, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    .line 514
    const v0, 0x10e00eb

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    .line 516
    const v0, 0x10e00ec

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    .line 518
    const v0, 0x1110191

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    .line 520
    return-void

    nop

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_95
        :pswitch_90
    .end packed-switch
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 533
    const-string v0, "ViewConfiguration"

    invoke-static {p0, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 536
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 538
    .local v1, "density":I
    sget-object v2, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewConfiguration;

    .line 539
    .local v3, "configuration":Landroid/view/ViewConfiguration;
    if-nez v3, :cond_26

    .line 540
    new-instance v4, Landroid/view/ViewConfiguration;

    invoke-direct {v4, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    move-object v3, v4

    .line 541
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 544
    :cond_26
    return-object v3
.end method

.method public static whitelist getAmbiguousGestureMultiplier()F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1032
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public static whitelist getDefaultActionModeHideDuration()J
    .registers 2

    .line 1016
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public static greylist getDoubleTapMinTime()I
    .registers 1

    .line 694
    const/16 v0, 0x28

    return v0
.end method

.method public static greylist getDoubleTapSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 790
    const/16 v0, 0x64

    return v0
.end method

.method public static whitelist getDoubleTapTimeout()I
    .registers 1

    .line 682
    const/16 v0, 0x12c

    return v0
.end method

.method public static whitelist getEdgeSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 726
    const/16 v0, 0xc

    return v0
.end method

.method public static whitelist getFadingEdgeLength()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 595
    const/16 v0, 0xc

    return v0
.end method

.method public static whitelist getGlobalActionKeyTimeout()J
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 953
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static greylist-max-r getHoverTapSlop()I
    .registers 1

    .line 715
    const/16 v0, 0x14

    return v0
.end method

.method public static greylist-max-o getHoverTapTimeout()I
    .registers 1

    .line 704
    const/16 v0, 0x96

    return v0
.end method

.method public static blacklist getHoverTooltipHideShortTimeout()I
    .registers 1

    .line 1166
    const/16 v0, 0xbb8

    return v0
.end method

.method public static blacklist getHoverTooltipHideTimeout()I
    .registers 1

    .line 1156
    const/16 v0, 0x3a98

    return v0
.end method

.method public static blacklist getHoverTooltipShowTimeout()I
    .registers 1

    .line 1146
    const/16 v0, 0x1f4

    return v0
.end method

.method public static whitelist getJumpTapTimeout()I
    .registers 1

    .line 673
    const/16 v0, 0x1f4

    return v0
.end method

.method public static whitelist getKeyRepeatDelay()I
    .registers 1

    .line 655
    const/16 v0, 0x32

    return v0
.end method

.method public static whitelist getKeyRepeatTimeout()I
    .registers 1

    .line 648
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static whitelist getLongPressTimeout()I
    .registers 2

    .line 631
    const-string v0, "long_press_timeout"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getLongPressTooltipHideTimeout()I
    .registers 1

    .line 1137
    const/16 v0, 0x5dc

    return v0
.end method

.method public static whitelist getMaximumDrawingCacheSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 904
    const v0, 0x177000

    return v0
.end method

.method public static whitelist getMaximumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 858
    const/16 v0, 0x1f40

    return v0
.end method

.method public static whitelist getMinimumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 841
    const/16 v0, 0x32

    return v0
.end method

.method public static whitelist getMultiPressTimeout()I
    .registers 2

    .line 640
    const-string/jumbo v0, "multi_press_timeout"

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getPressedStateDuration()I
    .registers 1

    .line 610
    const/16 v0, 0x40

    return v0
.end method

.method public static blacklist getPressedStateDurationForListview()I
    .registers 1

    .line 620
    const/16 v0, 0x8

    return v0
.end method

.method public static whitelist getScrollBarFadeDuration()I
    .registers 1

    .line 578
    const/16 v0, 0xfa

    return v0
.end method

.method public static whitelist getScrollBarSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 555
    const/4 v0, 0x4

    return v0
.end method

.method public static whitelist getScrollDefaultDelay()I
    .registers 1

    .line 585
    const/16 v0, 0x12c

    return v0
.end method

.method public static whitelist getScrollFriction()F
    .registers 1

    .line 1009
    const v0, 0x3c75c28f    # 0.015f

    return v0
.end method

.method public static greylist-max-o getSendRecurringAccessibilityEventsInterval()J
    .registers 2

    .line 811
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static whitelist getTapTimeout()I
    .registers 1

    .line 664
    const/16 v0, 0x64

    return v0
.end method

.method public static whitelist getTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 744
    const/16 v0, 0x8

    return v0
.end method

.method public static whitelist getWindowTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 823
    const/16 v0, 0x10

    return v0
.end method

.method public static whitelist getZoomControlsTimeout()J
    .registers 2

    .line 940
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public greylist-max-o getAccessibilityShortcutKeyTimeout()J
    .registers 3

    .line 990
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public greylist-max-o getAccessibilityShortcutKeyTimeoutAfterConfirmation()J
    .registers 3

    .line 999
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public blacklist getDeviceGlobalActionKeyTimeout()J
    .registers 3

    .line 966
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public whitelist getScaledAmbiguousGestureMultiplier()F
    .registers 2

    .line 1045
    iget v0, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    return v0
.end method

.method public whitelist getScaledDoubleTapSlop()I
    .registers 2

    .line 798
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public greylist getScaledDoubleTapTouchSlop()I
    .registers 2

    .line 769
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public whitelist getScaledEdgeSlop()I
    .registers 2

    .line 734
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public whitelist getScaledFadingEdgeLength()I
    .registers 2

    .line 602
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public whitelist getScaledHorizontalScrollFactor()F
    .registers 2

    .line 883
    iget v0, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    return v0
.end method

.method public whitelist getScaledHoverSlop()I
    .registers 2

    .line 759
    iget v0, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    return v0
.end method

.method public whitelist getScaledMaximumDrawingCacheSize()I
    .registers 2

    .line 913
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public whitelist getScaledMaximumFlingVelocity()I
    .registers 2

    .line 865
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public greylist-max-o getScaledMinScrollbarTouchTarget()I
    .registers 2

    .line 571
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    return v0
.end method

.method public whitelist getScaledMinimumFlingVelocity()I
    .registers 2

    .line 848
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public whitelist getScaledMinimumScalingSpan()I
    .registers 3

    .line 1085
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    if-eqz v0, :cond_7

    .line 1090
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    return v0

    .line 1086
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Min scaling span cannot be determined when this method is called on a ViewConfiguration that was instantiated using a constructor with no Context parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getScaledOverflingDistance()I
    .registers 2

    .line 929
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public whitelist getScaledOverscrollDistance()I
    .registers 2

    .line 921
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public whitelist getScaledPagingTouchSlop()I
    .registers 2

    .line 777
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public whitelist getScaledScrollBarSize()I
    .registers 2

    .line 563
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public greylist getScaledScrollFactor()I
    .registers 2

    .line 875
    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getScaledTouchSlop()I
    .registers 2

    .line 751
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public whitelist getScaledVerticalScrollFactor()F
    .registers 2

    .line 891
    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return v0
.end method

.method public whitelist getScaledWindowTouchSlop()I
    .registers 2

    .line 831
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public blacklist getScreenshotChordKeyTimeout()J
    .registers 3

    .line 978
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    return-wide v0
.end method

.method public blacklist getSmartSelectionInitializedTimeout()I
    .registers 2

    .line 1108
    iget v0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    return v0
.end method

.method public blacklist getSmartSelectionInitializingTimeout()I
    .registers 2

    .line 1117
    iget v0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    return v0
.end method

.method public whitelist hasPermanentMenuKey()Z
    .registers 2

    .line 1061
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return v0
.end method

.method public greylist isFadingMarqueeEnabled()Z
    .registers 2

    .line 1099
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method

.method public blacklist isPreferKeepClearForFocusEnabled()Z
    .registers 2

    .line 1127
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    return v0
.end method

.method public whitelist shouldShowMenuShortcutsWhenKeyboardPresent()Z
    .registers 2

    .line 1070
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    return v0
.end method
