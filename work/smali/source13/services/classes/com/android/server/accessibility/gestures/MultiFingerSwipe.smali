.class Lcom/android/server/accessibility/gestures/MultiFingerSwipe;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "MultiFingerSwipe.java"


# static fields
.field public static final DOWN:I = 0x3

.field public static final LEFT:I = 0x0

.field private static final MIN_CM_BETWEEN_SAMPLES:F = 0.25f

.field public static final RIGHT:I = 0x1

.field public static final UP:I = 0x2


# instance fields
.field private mBase:[Landroid/graphics/PointF;

.field private mCurrentFingerCount:I

.field private mDirection:I

.field private final mMinPixelsBetweenSamplesX:F

.field private final mMinPixelsBetweenSamplesY:F

.field private mPointerIds:[I

.field private mPreviousGesturePoint:[Landroid/graphics/PointF;

.field private final mStrokeBuffers:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetFingerCount:I

.field private mTargetFingerCountReached:Z

.field private mTouchSlop:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fingerCount"    # I
    .param p3, "direction"    # I
    .param p4, "gesture"    # I
    .param p5, "listener"    # Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p4, v0, p5}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    .line 81
    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    .line 82
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    .line 83
    new-array v0, p2, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 84
    new-array v0, p2, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 85
    new-array v0, p2, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    .line 86
    iput p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 89
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    sget v2, Lcom/android/server/accessibility/gestures/GestureUtils;->CM_PER_INCH:F

    div-float/2addr v1, v2

    .line 90
    .local v1, "pixelsPerCmX":F
    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    sget v3, Lcom/android/server/accessibility/gestures/GestureUtils;->CM_PER_INCH:F

    div-float/2addr v2, v3

    .line 91
    .local v2, "pixelsPerCmY":F
    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v4, v1, v3

    iput v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    .line 92
    mul-float/2addr v3, v2

    iput v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    .line 93
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTouchSlop:I

    .line 94
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->clear()V

    .line 95
    return-void
.end method

.method public static directionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "direction"    # I

    .line 423
    packed-switch p0, :pswitch_data_16

    .line 433
    const-string v0, "Unknown Direction"

    return-object v0

    .line 431
    :pswitch_6
    const-string v0, "down"

    return-object v0

    .line 429
    :pswitch_9
    const-string/jumbo v0, "up"

    return-object v0

    .line 427
    :pswitch_d
    const-string/jumbo v0, "right"

    return-object v0

    .line 425
    :pswitch_11
    const-string/jumbo v0, "left"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private recognizeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ge v0, v1, :cond_2e

    .line 358
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1d

    .line 359
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Too few points."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 361
    return-void

    .line 363
    :cond_1d
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    .line 369
    .local v1, "path":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->recognizeGesturePath(Landroid/view/MotionEvent;Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 370
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 371
    return-void

    .line 354
    .end local v1    # "path":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    .end local v0    # "i":I
    :cond_2e
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 376
    return-void
.end method

.method private recognizeGesturePath(Landroid/view/MotionEvent;Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/view/MotionEvent;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .line 386
    .local p4, "path":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    .line 387
    .local v0, "displayId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_32

    .line 388
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 389
    .local v2, "start":Landroid/graphics/PointF;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 391
    .local v3, "end":Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    .line 392
    .local v4, "dX":F
    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    .line 393
    .local v5, "dY":F
    invoke-static {v4, v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    move-result v6

    .line 394
    .local v6, "direction":I
    iget v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    if-eq v6, v7, :cond_2f

    .line 403
    const/4 v7, 0x0

    return v7

    .line 387
    .end local v2    # "start":Landroid/graphics/PointF;
    .end local v3    # "end":Landroid/graphics/PointF;
    .end local v4    # "dX":F
    .end local v5    # "dY":F
    .end local v6    # "direction":I
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 409
    .end local v1    # "i":I
    :cond_32
    return v3
.end method

.method private static toDirection(FF)I
    .registers 4
    .param p0, "dX"    # F
    .param p1, "dY"    # F

    .line 413
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_15

    .line 415
    cmpg-float v0, p0, v1

    if-gez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    .line 418
    :cond_15
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1b

    const/4 v0, 0x2

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x3

    :goto_1c
    return v0
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    .line 100
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ge v0, v1, :cond_5c

    .line 102
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 103
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    if-nez v2, :cond_1c

    .line 104
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    aput-object v2, v1, v0

    .line 106
    :cond_1c
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 107
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 108
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v3, v1, v0

    if-nez v3, :cond_37

    .line 109
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v1, v0

    .line 111
    :cond_37
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 112
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 113
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v2, v1, v0

    if-nez v2, :cond_52

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v2, v1, v0

    .line 116
    :cond_52
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 118
    .end local v0    # "i":I
    :cond_5c
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 119
    return-void
.end method

.method protected getGestureName()Ljava/lang/String;
    .registers 4

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-finger "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string v1, "Swipe "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    invoke-static {v2}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->directionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 123
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    if-lez v0, :cond_8

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 125
    return-void

    .line 127
    :cond_8
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 128
    invoke-static {p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 129
    .local v1, "actionIndex":I
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 130
    .local v2, "pointerId":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    sub-int/2addr v3, v0

    .line 131
    .local v3, "pointerIndex":I
    if-gez v2, :cond_1e

    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 134
    return-void

    .line 136
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    aget v4, v0, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_29

    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 139
    return-void

    .line 141
    :cond_29
    aput v2, v0, v3

    .line 142
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 143
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 144
    .local v0, "x":F
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 145
    .local v4, "y":F
    const/4 v5, 0x0

    cmpg-float v6, v0, v5

    if-ltz v6, :cond_6f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_55

    goto :goto_6f

    .line 149
    :cond_55
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v0, v5, Landroid/graphics/PointF;->x:F

    .line 150
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 151
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v0, v5, Landroid/graphics/PointF;->x:F

    .line 152
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 153
    .end local v0    # "x":F
    .end local v4    # "y":F
    nop

    .line 158
    return-void

    .line 146
    .restart local v0    # "x":F
    .restart local v4    # "y":F
    :cond_6f
    :goto_6f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 147
    return-void

    .line 155
    .end local v0    # "x":F
    .end local v4    # "y":F
    :cond_73
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 156
    return-void
.end method

.method protected onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 240
    move-object v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .local v2, "pointerIndex":I
    :goto_4
    iget v3, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ge v2, v3, :cond_105

    .line 241
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    aget v3, v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    .line 247
    goto/16 :goto_fd

    .line 252
    :cond_11
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 253
    .local v3, "index":I
    if-gez v3, :cond_19

    .line 261
    goto/16 :goto_fd

    .line 263
    :cond_19
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 264
    .local v4, "x":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 265
    .local v5, "y":F
    const/4 v6, 0x0

    cmpg-float v7, v4, v6

    if-ltz v7, :cond_101

    cmpg-float v6, v5, v6

    if-gez v6, :cond_2c

    goto/16 :goto_101

    .line 269
    :cond_2c
    iget-object v6, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 270
    .local v6, "dX":F
    iget-object v7, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 271
    .local v7, "dY":F
    iget-object v8, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float v8, v4, v8

    .line 273
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    iget-object v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v10, v10, v2

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float v10, v5, v10

    .line 274
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    .line 272
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    .line 278
    .local v8, "moveDelta":D
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getState()I

    move-result v10

    if-nez v10, :cond_b4

    .line 279
    iget v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    iget v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTouchSlop:I

    mul-int/2addr v11, v10

    int-to-double v11, v11

    cmpg-double v11, v8, v11

    if-gez v11, :cond_74

    .line 281
    goto/16 :goto_fd

    .line 284
    :cond_74
    iget v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    if-eq v11, v10, :cond_7c

    .line 285
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 286
    return-void

    .line 289
    :cond_7c
    iget-object v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v10, v10, v2

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float v10, v4, v10

    iget-object v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v11, v11, v2

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float v11, v5, v11

    invoke-static {v10, v11}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    move-result v10

    .line 290
    .local v10, "direction":I
    iget v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    if-eq v10, v11, :cond_98

    .line 291
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 292
    return-void

    .line 295
    :cond_98
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->startGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 296
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_9c
    iget v12, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ge v11, v12, :cond_b3

    .line 297
    iget-object v12, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v12, v12, v11

    new-instance v13, Landroid/graphics/PointF;

    iget-object v14, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v14, v14, v11

    invoke-direct {v13, v14}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v11, v11, 0x1

    goto :goto_9c

    .end local v10    # "direction":I
    .end local v11    # "i":I
    :cond_b3
    goto :goto_fc

    .line 299
    :cond_b4
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_fc

    .line 302
    iget-object v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v10, v10, v2

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float v10, v4, v10

    iget-object v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v11, v11, v2

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float v11, v5, v11

    invoke-static {v10, v11}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    move-result v10

    .line 303
    .restart local v10    # "direction":I
    iget v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    if-eq v10, v11, :cond_d7

    .line 304
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 305
    return-void

    .line 307
    :cond_d7
    iget v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v11, v6, v11

    if-gez v11, :cond_e3

    iget v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v11, v7, v11

    if-ltz v11, :cond_fd

    .line 309
    :cond_e3
    iget-object v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v11, v11, v2

    iput v4, v11, Landroid/graphics/PointF;->x:F

    .line 310
    iget-object v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v11, v11, v2

    iput v5, v11, Landroid/graphics/PointF;->y:F

    .line 311
    iget-object v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v11, v11, v2

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fd

    .line 299
    .end local v10    # "direction":I
    :cond_fc
    :goto_fc
    nop

    .line 240
    .end local v3    # "index":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "dX":F
    .end local v7    # "dY":F
    .end local v8    # "moveDelta":D
    :cond_fd
    :goto_fd
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 266
    .restart local v3    # "index":I
    .restart local v4    # "x":F
    .restart local v5    # "y":F
    :cond_101
    :goto_101
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 267
    return-void

    .line 315
    .end local v2    # "pointerIndex":I
    .end local v3    # "index":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_105
    return-void
.end method

.method protected onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-le v0, v1, :cond_c

    .line 163
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 164
    return-void

    .line 166
    :cond_c
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 167
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-eq v0, v2, :cond_1c

    .line 168
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 169
    return-void

    .line 171
    :cond_1c
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    iget v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ne v0, v2, :cond_24

    .line 172
    iput-boolean v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    .line 174
    :cond_24
    invoke-static {p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 175
    .local v0, "actionIndex":I
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 176
    .local v2, "pointerId":I
    if-gez v2, :cond_32

    .line 178
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 179
    return-void

    .line 181
    :cond_32
    iget v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    sub-int/2addr v3, v1

    .line 182
    .local v3, "pointerIndex":I
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    aget v4, v1, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_40

    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 185
    return-void

    .line 187
    :cond_40
    aput v2, v1, v3

    .line 188
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 189
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 190
    .local v1, "x":F
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 191
    .local v4, "y":F
    const/4 v5, 0x0

    cmpg-float v6, v1, v5

    if-ltz v6, :cond_86

    cmpg-float v5, v4, v5

    if-gez v5, :cond_6c

    goto :goto_86

    .line 195
    :cond_6c
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v1, v5, Landroid/graphics/PointF;->x:F

    .line 196
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 197
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v1, v5, Landroid/graphics/PointF;->x:F

    .line 198
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 199
    .end local v1    # "x":F
    .end local v4    # "y":F
    nop

    .line 203
    return-void

    .line 192
    .restart local v1    # "x":F
    .restart local v4    # "y":F
    :cond_86
    :goto_86
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 193
    return-void

    .line 200
    .end local v1    # "x":F
    .end local v4    # "y":F
    :cond_8a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 201
    return-void
.end method

.method protected onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 207
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    if-nez v0, :cond_8

    .line 208
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 209
    return-void

    .line 211
    :cond_8
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 212
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 213
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 214
    .local v1, "pointerId":I
    if-gez v1, :cond_1c

    .line 216
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 217
    return-void

    .line 219
    :cond_1c
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    .line 220
    .local v2, "pointerIndex":I
    if-gez v2, :cond_28

    .line 221
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 222
    return-void

    .line 224
    :cond_28
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 225
    .local v3, "x":F
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 226
    .local v4, "y":F
    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    if-ltz v6, :cond_6b

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3a

    goto :goto_6b

    .line 230
    :cond_3a
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 231
    .local v5, "dX":F
    iget-object v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 232
    .local v6, "dY":F
    iget v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v7, v5, v7

    if-gez v7, :cond_5e

    iget v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_6a

    .line 233
    :cond_5e
    iget-object v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v7, v7, v2

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_6a
    return-void

    .line 227
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    :cond_6b
    :goto_6b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 228
    return-void
.end method

.method protected onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 319
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 320
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 321
    return-void

    .line 323
    :cond_b
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 324
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 325
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 326
    .local v1, "pointerId":I
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    .line 327
    .local v2, "pointerIndex":I
    if-gez v2, :cond_22

    .line 328
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 329
    return-void

    .line 331
    :cond_22
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 332
    .local v3, "x":F
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 333
    .local v4, "y":F
    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    if-ltz v6, :cond_68

    cmpg-float v5, v4, v5

    if-gez v5, :cond_34

    goto :goto_68

    .line 337
    :cond_34
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 338
    .local v5, "dX":F
    iget-object v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 339
    .local v6, "dY":F
    iget v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v7, v5, v7

    if-gez v7, :cond_58

    iget v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_64

    .line 340
    :cond_58
    iget-object v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v7, v7, v2

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->recognizeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 343
    return-void

    .line 334
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    :cond_68
    :goto_68
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 335
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_37

    .line 449
    const-string v1, ", mBase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 450
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 451
    const-string v2, ", mMinPixelsBetweenSamplesX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 453
    const-string v2, ", mMinPixelsBetweenSamplesY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    .line 454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 456
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
