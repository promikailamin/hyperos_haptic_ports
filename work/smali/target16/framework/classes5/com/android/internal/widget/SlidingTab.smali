.class public Lcom/android/internal/widget/SlidingTab;
.super Landroid/view/ViewGroup;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SlidingTab$OnTriggerListener;,
        Lcom/android/internal/widget/SlidingTab$Slider;
    }
.end annotation


# static fields
.field private static final blacklist ANIM_DURATION:I = 0xfa

.field private static final blacklist ANIM_TARGET_TIME:I = 0x1f4

.field private static final blacklist DBG:Z = false

.field private static final blacklist HORIZONTAL:I = 0x0

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SlidingTab"

.field private static final blacklist THRESHOLD:F = 0.6666667f

.field private static final blacklist TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final blacklist TRACKING_MARGIN:I = 0x32

.field private static final blacklist VERTICAL:I = 0x1

.field private static final blacklist VIBRATE_LONG:J = 0x28L

.field private static final blacklist VIBRATE_SHORT:J = 0x1eL


# instance fields
.field private blacklist mAnimating:Z

.field private final greylist mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private blacklist mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private final blacklist mDensity:F

.field private blacklist mGrabbedState:I

.field private blacklist mHoldLeftOnTransition:Z

.field private blacklist mHoldRightOnTransition:Z

.field private final greylist mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private blacklist mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

.field private final blacklist mOrientation:I

.field private blacklist mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private final greylist mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private blacklist mThreshold:F

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private blacklist mTracking:Z

.field private blacklist mTriggered:Z

.field private blacklist mVibrator:Landroid/os/Vibrator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimationDoneListener(Lcom/android/internal/widget/SlidingTab;)Landroid/view/animation/Animation$AnimationListener;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeftSlider(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRightSlider(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimating(Lcom/android/internal/widget/SlidingTab;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAnimationDone(Lcom/android/internal/widget/SlidingTab;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->onAnimationDone()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetView(Lcom/android/internal/widget/SlidingTab;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    nop

    .line 71
    const/16 v0, 0x12

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/SlidingTab;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 451
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 457
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    .line 75
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 98
    new-instance v1, Lcom/android/internal/widget/SlidingTab$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SlidingTab$1;-><init>(Lcom/android/internal/widget/SlidingTab;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 460
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    .line 462
    sget-object v1, Lcom/android/internal/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 463
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    .line 464
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 467
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/internal/widget/SlidingTab;->mDensity:F

    .line 470
    new-instance p1, Lcom/android/internal/widget/SlidingTab$Slider;

    const p2, 0x1080692

    const v0, 0x1080681

    const v1, 0x10806a0

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 474
    new-instance p1, Lcom/android/internal/widget/SlidingTab$Slider;

    const p2, 0x108069b

    const v0, 0x108068a

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 480
    return-void
.end method

.method private blacklist cancelGrab()V
    .registers 4

    .line 635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 636
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 637
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab$Slider;->show(Z)V

    .line 638
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 639
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    .line 640
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 641
    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 642
    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    .line 643
    return-void
.end method

.method private blacklist dispatchTriggerEvent(I)V
    .registers 4

    .line 857
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    .line 858
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    if-eqz v0, :cond_e

    .line 859
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 861
    :cond_e
    return-void
.end method

.method private blacklist isHorizontal()Z
    .registers 2

    .line 726
    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3

    .line 888
    const-string v0, "SlidingTab"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void
.end method

.method private blacklist moveHandle(FF)V
    .registers 6

    .line 746
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v0

    .line 747
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettext(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v1

    .line 748
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 749
    float-to-int p1, p1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 750
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 751
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 752
    goto :goto_39

    .line 753
    :cond_26
    float-to-int p1, p2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 754
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 755
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 757
    :goto_39
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->invalidate()V

    .line 758
    return-void
.end method

.method private greylist onAnimationDone()V
    .registers 2

    .line 716
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 718
    return-void
.end method

.method private greylist resetView()V
    .registers 3

    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 732
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 734
    return-void
.end method

.method private blacklist setGrabbedState(I)V
    .registers 3

    .line 879
    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    if-eq p1, v0, :cond_11

    .line 880
    iput p1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    .line 881
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    if-eqz p1, :cond_11

    .line 882
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    invoke-interface {p1, p0, v0}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 885
    :cond_11
    return-void
.end method

.method private declared-synchronized blacklist vibrate(J)V
    .registers 5

    monitor-enter p0

    .line 834
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_13

    .line 835
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 837
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 838
    const/4 v1, -0x1

    invoke-static {p1, p2, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    sget-object p2, Lcom/android/internal/widget/SlidingTab;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 837
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 840
    monitor-exit p0

    return-void

    .line 833
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method private blacklist withinView(FFLandroid/view/View;)Z
    .registers 6

    .line 721
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    const/high16 v1, -0x3db80000    # -50.0f

    if-eqz v0, :cond_17

    cmpl-float v0, p2, v1

    if-lez v0, :cond_17

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_2c

    .line 722
    :cond_17
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result p2

    if-nez p2, :cond_2e

    cmpl-float p2, p1, v1

    if-lez p2, :cond_2e

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/lit8 p2, p2, 0x32

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2e

    :cond_2c
    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    .line 721
    :goto_2f
    return p1
.end method


# virtual methods
.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 523
    iget-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    .line 524
    return v3

    .line 527
    :cond_12
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v2}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v2

    .line 528
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 529
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v1, v1

    float-to-int p1, p1

    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    .line 531
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v4

    .line 532
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 533
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    .line 535
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-nez v1, :cond_3f

    if-nez v2, :cond_3f

    if-nez p1, :cond_3f

    .line 536
    return v3

    .line 539
    :cond_3f
    const/4 p1, 0x1

    packed-switch v0, :pswitch_data_90

    goto :goto_8f

    .line 541
    :pswitch_44
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 542
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 543
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    .line 544
    const v0, 0x3eaaaaaa

    const v1, 0x3f2aaaab

    if-eqz v2, :cond_6a

    .line 545
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 546
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 547
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_64

    move v0, v1

    :cond_64
    iput v0, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    .line 548
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    goto :goto_80

    .line 550
    :cond_6a
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 551
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 552
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_79

    goto :goto_7a

    :cond_79
    move v0, v1

    :goto_7a
    iput v0, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    .line 553
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    .line 555
    :goto_80
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->showTarget()V

    .line 557
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->hide()V

    .line 562
    :goto_8f
    return p1

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_44
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 12

    .line 738
    if-nez p1, :cond_3

    return-void

    .line 741
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    const/4 p1, 0x3

    :goto_e
    move v5, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    .line 742
    move p1, v1

    move p2, v2

    move p3, v3

    move p4, v4

    iget-object p5, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x2

    :goto_25
    move-object p0, p5

    move p5, v0

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    .line 743
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 8

    .line 484
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 485
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 487
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 488
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 499
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->measure(II)V

    .line 500
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->measure(II)V

    .line 501
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {p1}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    move-result p1

    .line 502
    iget-object p2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {p2}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    move-result p2

    .line 503
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v2}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v2

    .line 504
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v3}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v3

    .line 507
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 508
    add-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 509
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_49

    .line 511
    :cond_40
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 512
    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 514
    :goto_49
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/SlidingTab;->setMeasuredDimension(II)V

    .line 515
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 590
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_98

    .line 591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 595
    packed-switch v0, :pswitch_data_a4

    goto/16 :goto_98

    .line 597
    :pswitch_17
    invoke-direct {p0, v3, v4, p0}, Lcom/android/internal/widget/SlidingTab;->withinView(FFLandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 598
    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/SlidingTab;->moveHandle(FF)V

    .line 599
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_28

    :cond_27
    move v3, v4

    .line 600
    :goto_28
    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    move-result v4

    goto :goto_39

    :cond_35
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    move-result v4

    :goto_39
    int-to-float v4, v4

    mul-float/2addr v0, v4

    .line 602
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 603
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v4, v5, :cond_4c

    .line 604
    cmpl-float v0, v3, v0

    if-lez v0, :cond_52

    goto :goto_50

    :cond_4c
    cmpg-float v0, v3, v0

    if-gez v0, :cond_52

    :goto_50
    move v0, v2

    goto :goto_66

    :cond_52
    move v0, v1

    goto :goto_66

    .line 606
    :cond_54
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v4, v5, :cond_5f

    .line 607
    cmpg-float v0, v3, v0

    if-gez v0, :cond_65

    goto :goto_63

    :cond_5f
    cmpl-float v0, v3, v0

    if-lez v0, :cond_65

    :goto_63
    move v0, v2

    goto :goto_66

    :cond_65
    move v0, v1

    .line 609
    :goto_66
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    if-nez v3, :cond_98

    if-eqz v0, :cond_98

    .line 610
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 611
    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 612
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 613
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v0, v4, :cond_7e

    move v0, v2

    goto :goto_7f

    :cond_7e
    move v0, v1

    .line 614
    :goto_7f
    if-eqz v0, :cond_83

    .line 615
    move v3, v2

    goto :goto_84

    :cond_83
    nop

    .line 614
    :goto_84
    invoke-direct {p0, v3}, Lcom/android/internal/widget/SlidingTab;->dispatchTriggerEvent(I)V

    .line 617
    if-eqz v0, :cond_8c

    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    goto :goto_8e

    :cond_8c
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    :goto_8e
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab;->startAnimating(Z)V

    .line 618
    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    .line 619
    goto :goto_98

    .line 626
    :cond_95
    :pswitch_95
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->cancelGrab()V

    .line 631
    :cond_98
    :goto_98
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-nez v0, :cond_a2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_a3

    :cond_a2
    move v1, v2

    :cond_a3
    return v1

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_95
        :pswitch_17
        :pswitch_95
    .end packed-switch
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 865
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 868
    if-ne p1, p0, :cond_e

    if-eqz p2, :cond_e

    iget p1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    if-eqz p1, :cond_e

    .line 870
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->cancelGrab()V

    .line 872
    :cond_e
    return-void
.end method

.method public blacklist reset(Z)V
    .registers 3

    .line 572
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 573
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 574
    if-nez p1, :cond_f

    .line 575
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 577
    :cond_f
    return-void
.end method

.method public greylist setHoldAfterTrigger(ZZ)V
    .registers 3

    .line 826
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    .line 827
    iput-boolean p2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    .line 828
    return-void
.end method

.method public greylist setLeftHintText(I)V
    .registers 3

    .line 787
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 788
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    .line 790
    :cond_b
    return-void
.end method

.method public greylist setLeftTabResources(IIII)V
    .registers 6

    .line 773
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    .line 774
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    .line 775
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 776
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {p1, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 777
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {p1}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    .line 778
    return-void
.end method

.method public greylist setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V
    .registers 2

    .line 849
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    .line 850
    return-void
.end method

.method public greylist setRightHintText(I)V
    .registers 3

    .line 819
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 820
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    .line 822
    :cond_b
    return-void
.end method

.method public greylist setRightTabResources(IIII)V
    .registers 6

    .line 805
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    .line 806
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    .line 807
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 808
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {p1, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 809
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {p1}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    .line 810
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 3

    .line 582
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_d

    const/4 v0, 0x4

    if-ne p1, v0, :cond_d

    .line 583
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 585
    :cond_d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 586
    return-void
.end method

.method blacklist startAnimating(Z)V
    .registers 14

    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 649
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 650
    nop

    .line 653
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3d

    .line 654
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    .line 655
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 656
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    .line 657
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    move-result v6

    .line 658
    if-eqz p1, :cond_2c

    move v4, v3

    .line 659
    :cond_2c
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v1, v7, :cond_34

    add-int/2addr v2, v6

    sub-int/2addr v2, v4

    neg-int v2, v2

    goto :goto_38

    .line 660
    :cond_34
    sub-int v2, v6, v5

    add-int/2addr v2, v6

    sub-int/2addr v2, v4

    .line 661
    :goto_38
    nop

    .line 662
    move v11, v3

    move v3, v2

    move v2, v11

    goto :goto_6a

    .line 663
    :cond_3d
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    .line 664
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    .line 665
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    .line 666
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    move-result v6

    .line 667
    if-eqz p1, :cond_5c

    move v5, v3

    .line 668
    :cond_5c
    nop

    .line 669
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v1, v7, :cond_64

    add-int/2addr v2, v6

    sub-int/2addr v2, v5

    goto :goto_69

    .line 670
    :cond_64
    sub-int v2, v6, v4

    add-int/2addr v2, v6

    sub-int/2addr v2, v5

    neg-int v2, v2

    :goto_69
    nop

    .line 672
    :goto_6a
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v3

    int-to-float v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 673
    const-wide/16 v8, 0xfa

    invoke-virtual {v4, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 674
    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 675
    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 676
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v10, v7, v5, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 677
    invoke-virtual {v10, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 678
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 679
    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 681
    new-instance v0, Lcom/android/internal/widget/SlidingTab$2;

    invoke-direct {v0, p0, p1, v3, v2}, Lcom/android/internal/widget/SlidingTab$2;-><init>(Lcom/android/internal/widget/SlidingTab;ZII)V

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 710
    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    .line 711
    invoke-virtual {v1, v4, v10}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 712
    return-void
.end method
