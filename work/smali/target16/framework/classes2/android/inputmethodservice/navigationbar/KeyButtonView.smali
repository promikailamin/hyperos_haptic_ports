.class public Landroid/inputmethodservice/navigationbar/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"

# interfaces
.implements Landroid/inputmethodservice/navigationbar/ButtonInterface;


# static fields
.field public static final blacklist QUICKSTEP_TOUCH_SLOP_RATIO:F = 3.0f

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private final blacklist mCheckLongPress:Ljava/lang/Runnable;

.field private blacklist mCode:I

.field private blacklist mDarkIntensity:F

.field private blacklist mDownTime:J

.field private blacklist mGestureAborted:Z

.field private blacklist mHasOvalBg:Z

.field private blacklist mLongClicked:Z

.field private blacklist mOnClickListener:Landroid/view/View$OnClickListener;

.field private final blacklist mOvalBgPaint:Landroid/graphics/Paint;

.field private final blacklist mPlaySounds:Z

.field private final blacklist mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

.field private blacklist mTouchDownX:I

.field private blacklist mTouchDownY:I

.field private blacklist mTracking:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmLongClicked(Landroid/inputmethodservice/navigationbar/KeyButtonView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const-class v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    .line 75
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    .line 78
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonView;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 90
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 95
    iput p2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    goto :goto_23

    .line 92
    :pswitch_1f
    const/4 v0, 0x4

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    .line 93
    nop

    .line 99
    :goto_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mPlaySounds:Z

    .line 101
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setClickable(Z)V

    .line 102
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    .line 104
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    const v1, 0x105020a

    invoke-direct {v0, p1, p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    .line 106
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setWillNotDraw(Z)V

    .line 108
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->forceHasOverlappingRendering(Z)V

    .line 109
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x1020380
        :pswitch_1f
    .end packed-switch
.end method

.method private blacklist getAccessibilityLongClickActionLabel()Ljava/lang/CharSequence;
    .registers 3

    .line 144
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getId()I

    move-result v0

    const v1, 0x1020386

    if-ne v0, v1, :cond_15

    .line 145
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040541

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 148
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getQuickStepTouchSlopPx(Landroid/content/Context;)F
    .registers 2

    .line 381
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method private blacklist sendEvent(II)V
    .registers 5

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    .line 301
    return-void
.end method

.method private blacklist sendEvent(IIJ)V
    .registers 23

    .line 305
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/inputmethodservice/InputMethodService;

    if-eqz v2, :cond_7a

    .line 306
    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_12

    move v12, v3

    goto :goto_13

    :cond_12
    move v12, v4

    .line 307
    :goto_13
    new-instance v5, Landroid/view/KeyEvent;

    iget-wide v6, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    iget v11, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    or-int/lit8 v1, v1, 0x2

    or-int/lit8 v16, v1, 0x40

    const/16 v17, 0x101

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move/from16 v10, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v17}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 311
    nop

    .line 314
    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3a

    .line 315
    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_3b

    .line 314
    :cond_3a
    move v1, v2

    .line 317
    :goto_3b
    if-eq v1, v2, :cond_40

    .line 318
    invoke-virtual {v5, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 320
    :cond_40
    iget-object v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/inputmethodservice/InputMethodService;

    .line 322
    packed-switch p1, :pswitch_data_7c

    .line 332
    goto :goto_6f

    .line 329
    :pswitch_48
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v1, v0, v5}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    .line 330
    goto :goto_6f

    .line 324
    :pswitch_51
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 325
    if-eqz v2, :cond_6b

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_6b

    .line 326
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v6, v7

    if-eqz v6, :cond_6b

    goto :goto_6c

    :cond_6b
    move v3, v4

    :goto_6c
    iput-boolean v3, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 327
    move v4, v2

    .line 335
    :goto_6f
    if-nez v4, :cond_7a

    .line 336
    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_7a

    .line 338
    invoke-interface {v0, v5}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 342
    :cond_7a
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_51
        :pswitch_48
    .end packed-switch
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 365
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_1b

    .line 366
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 367
    int-to-float v4, v0

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    goto :goto_1c

    .line 365
    :cond_1b
    move-object v1, p1

    .line 369
    :goto_1c
    invoke-super {p0, v1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 370
    return-void
.end method

.method public whitelist isClickable()Z
    .registers 2

    .line 113
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 128
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 129
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 130
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 131
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 132
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 134
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getAccessibilityLongClickActionLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 137
    :cond_28
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 183
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 184
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mGestureAborted:Z

    .line 186
    :cond_9
    iget-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mGestureAborted:Z

    if-eqz v2, :cond_11

    .line 187
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 188
    return v1

    .line 191
    :cond_11
    const/16 v2, 0x20

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_10a

    goto/16 :goto_108

    .line 229
    :pswitch_19
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 230
    iget p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz p1, :cond_23

    .line 231
    invoke-direct {p0, v3, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 233
    :cond_23
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_108

    .line 234
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_108

    .line 215
    :pswitch_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 218
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getQuickStepTouchSlopPx(Landroid/content/Context;)F

    move-result v2

    .line 219
    iget v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownX:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_5a

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownY:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_108

    .line 222
    :cond_5a
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 223
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_108

    .line 224
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_108

    .line 238
    :pswitch_6a
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_76

    iget-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    if-nez p1, :cond_76

    move p1, v3

    goto :goto_77

    :cond_76
    move p1, v1

    .line 239
    :goto_77
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x96

    cmp-long v0, v4, v6

    if-lez v0, :cond_89

    move v0, v3

    goto :goto_8a

    :cond_89
    move v0, v1

    .line 247
    :goto_8a
    if-eqz v0, :cond_95

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    if-nez v0, :cond_95

    .line 250
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->performHapticFeedback(I)Z

    .line 252
    :cond_95
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_b0

    .line 253
    if-eqz p1, :cond_ac

    .line 254
    iget-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz p1, :cond_a2

    const/16 p1, 0x200

    goto :goto_a3

    :cond_a2
    move p1, v1

    :goto_a3
    invoke-direct {p0, v3, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 255
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 256
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_be

    .line 258
    :cond_ac
    invoke-direct {p0, v3, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    goto :goto_be

    .line 262
    :cond_b0
    if-eqz p1, :cond_be

    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_be

    .line 263
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 264
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 267
    :cond_be
    :goto_be
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_108

    .line 268
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_108

    .line 193
    :pswitch_ca
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    .line 194
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    .line 195
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownX:I

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownY:I

    .line 200
    iget p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz p1, :cond_ed

    .line 201
    iget-wide v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    invoke-direct {p0, v1, v1, v4, v5}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    goto :goto_f0

    .line 204
    :cond_ed
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->performHapticFeedback(I)Z

    .line 207
    :goto_f0
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->playSoundEffect(I)V

    .line 209
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_108

    .line 210
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 211
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getLongPressTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    :cond_108
    :goto_108
    return v3

    nop

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_ca
        :pswitch_6a
        :pswitch_30
        :pswitch_19
    .end packed-switch
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .registers 2

    .line 153
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 154
    if-eqz p1, :cond_8

    .line 155
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->jumpDrawablesToCurrentState()V

    .line 157
    :cond_8
    return-void
.end method

.method public blacklist performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 7

    .line 161
    const/16 v0, 0x10

    const/16 v1, 0x200

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_25

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_25

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-direct {p0, v3, v3, p1, p2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    .line 163
    iget-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    invoke-direct {p0, v2, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 164
    iput-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 165
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 166
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->playSoundEffect(I)V

    .line 167
    return v2

    .line 168
    :cond_25
    const/16 v0, 0x20

    if-ne p1, v0, :cond_42

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_42

    .line 169
    const/16 p1, 0x80

    invoke-direct {p0, v3, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 170
    iget-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    move v1, v3

    :goto_38
    invoke-direct {p0, v2, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 171
    iput-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 172
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 173
    return v2

    .line 175
    :cond_42
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public whitelist playSoundEffect(I)V
    .registers 3

    .line 295
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mPlaySounds:Z

    if-nez v0, :cond_5

    return-void

    .line 296
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 297
    return-void
.end method

.method public blacklist setCode(I)V
    .registers 2

    .line 117
    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    .line 118
    return-void
.end method

.method public blacklist setDarkIntensity(F)V
    .registers 3

    .line 346
    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDarkIntensity:F

    .line 348
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_10

    .line 350
    check-cast v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 353
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->invalidate()V

    .line 355
    :cond_10
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setDarkIntensity(F)V

    .line 356
    return-void
.end method

.method public blacklist setDelayTouchFeedback(Z)V
    .registers 3

    .line 360
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setDelayTouchFeedback(Z)V

    .line 361
    return-void
.end method

.method public whitelist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 278
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    if-nez p1, :cond_6

    .line 281
    return-void

    .line 283
    :cond_6
    check-cast p1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 284
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 285
    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result v0

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    .line 286
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_20

    .line 287
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getDrawableBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    :cond_20
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result p1

    if-eqz p1, :cond_2b

    sget-object p1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->OVAL:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    goto :goto_2d

    .line 290
    :cond_2b
    sget-object p1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    .line 289
    :goto_2d
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setType(Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;)V

    .line 291
    return-void
.end method

.method public whitelist setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 122
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 124
    return-void
.end method
