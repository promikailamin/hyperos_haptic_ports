.class public Lcom/android/server/accessibility/gestures/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public mContext:Landroid/content/Context;

.field mDisplayId:I

.field public mLongPressingPointerDeltaX:I

.field public mLongPressingPointerDeltaY:I

.field public mLongPressingPointerId:I

.field public mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

.field public mState:Lcom/android/server/accessibility/gestures/TouchState;

.field public final mTempPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/gestures/TouchState;)V
    .registers 7

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 73
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 86
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mContext:Landroid/content/Context;

    .line 87
    iput p2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mDisplayId:I

    .line 88
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 89
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 90
    iput-object p5, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, -0x1

    .line 445
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    const/4 v0, 0x0

    .line 446
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    .line 447
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    return-void
.end method

.method public clickWithTouchEvents(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 451
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 452
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 453
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 454
    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v4

    if-nez v4, :cond_1b

    .line 456
    const-string v0, "EventDispatcher"

    const-string v1, "Unable to compute click location."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    const/4 v5, 0x1

    .line 462
    new-array v12, v5, [Landroid/view/MotionEvent$PointerProperties;

    .line 463
    new-instance v6, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/16 v23, 0x0

    aput-object v6, v12, v23

    .line 464
    invoke-virtual {v1, v2, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 465
    new-array v13, v5, [Landroid/view/MotionEvent$PointerCoords;

    .line 466
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v13, v23

    .line 467
    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iput v6, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 468
    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 471
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    .line 472
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    .line 481
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    .line 483
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    .line 484
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v21

    .line 485
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v22

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    .line 470
    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v1

    if-ne v4, v5, :cond_6a

    :goto_65
    move-object/from16 v2, p2

    move/from16 v3, p3

    goto :goto_6d

    :cond_6a
    move/from16 v5, v23

    goto :goto_65

    .line 487
    :goto_6d
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendActionDownAndUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;IZ)V

    .line 488
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final computeClickLocation(Landroid/graphics/Point;)I
    .registers 5

    .line 492
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4e

    .line 493
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 494
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 495
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 496
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 497
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 498
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 499
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 500
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastTouchedWindowId()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    if-ne v0, v2, :cond_4e

    .line 501
    :cond_43
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_4c

    return v1

    :cond_4c
    const/4 p0, 0x2

    return p0

    .line 508
    :cond_4e
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_57

    return v1

    :cond_57
    const/4 p0, 0x0

    return p0
.end method

.method public final computeInjectionAction(II)I
    .registers 4

    const/4 v0, 0x5

    if-eqz p1, :cond_17

    if-eq p1, v0, :cond_17

    const/4 v0, 0x6

    if-eq p1, v0, :cond_9

    return p1

    .line 291
    :cond_9
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointerDownCount()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_13

    return p1

    :cond_13
    shl-int/lit8 p0, p2, 0x8

    or-int/2addr p0, v0

    return p0

    .line 283
    :cond_17
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointerDownCount()I

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return p0
.end method

.method public final computeInjectionDownEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 19

    move-object/from16 v0, p0

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 362
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v1

    if-eq v6, v1, :cond_1e

    .line 363
    const-string v0, "EventDispatcher"

    const-string v1, "The pointer count doesn\'t match the received count."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0

    .line 366
    :cond_1e
    new-array v8, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 367
    new-array v7, v6, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v6, :cond_59

    move-object/from16 v2, p1

    .line 370
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 371
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchState;->getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v4

    .line 372
    iget-object v5, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v5}, Lcom/android/server/accessibility/gestures/TouchState;->getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v5

    .line 373
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v9, v8, v1

    .line 374
    iput v4, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 375
    iput v5, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 376
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v7, v1

    .line 377
    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v3, 0x1

    .line 378
    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_59
    move-object/from16 v2, p1

    .line 382
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    .line 386
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    .line 387
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 391
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 392
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    .line 393
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    .line 394
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    .line 395
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    .line 396
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    .line 397
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    .line 398
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    move-wide v1, v0

    .line 381
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public longPressWithTouchEvents(Landroid/view/MotionEvent;I)Z
    .registers 7

    .line 427
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 428
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    if-eqz p1, :cond_2f

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 434
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 435
    iput v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 436
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    .line 437
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    .line 438
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    const/4 p0, 0x1

    return p0

    :cond_2f
    return v2
.end method

.method public final offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .registers 26

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-nez v1, :cond_b

    if-nez v2, :cond_b

    return-object v0

    :cond_b
    move-object/from16 v3, p0

    .line 241
    iget v3, v3, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 242
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 243
    invoke-static {v4}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v11

    .line 244
    invoke-static {v4}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v12

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v4, :cond_3f

    .line 246
    aget-object v6, v11, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 247
    aget-object v6, v12, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    if-ne v5, v3, :cond_3c

    .line 249
    aget-object v6, v12, v5

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    int-to-float v8, v1

    add-float/2addr v7, v8

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 250
    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-float v8, v2

    add-float/2addr v7, v8

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 254
    :cond_3f
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    .line 255
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    .line 256
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 257
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 260
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    .line 261
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    .line 264
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    .line 265
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    .line 266
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    .line 267
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v20

    .line 268
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v21

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    .line 253
    invoke-static/range {v5 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public populateAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 3

    .line 203
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;-><init>(I)V

    .line 204
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 206
    iget p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mDisplayId:I

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setDisplayId(I)V

    return-object v0
.end method

.method public sendAccessibilityEvent(I)V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->populateAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 192
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending accessibility event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    const-string v1, "EventDispatcher"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_31
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->onInjectedAccessibilityEvent(I)V

    return-void
.end method

.method public final sendActionDownAndUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;IZ)V
    .registers 13

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v6, v1, v0

    .line 522
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    .line 523
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 524
    invoke-virtual {v3, p4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    const/4 v4, 0x1

    .line 525
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    return-void
.end method

.method public sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .registers 14

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_35

    .line 315
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 317
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v5, v4}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v5

    if-nez v5, :cond_2c

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int v9, v3, v4

    .line 319
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v7

    .line 320
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 323
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v8

    move-object v5, p0

    move-object v6, p1

    move v10, p2

    .line 320
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    move v3, v9

    goto :goto_2f

    :cond_2c
    move-object v5, p0

    move-object v6, p1

    move v10, p2

    :goto_2f
    add-int/lit8 v2, v2, 0x1

    move-object p0, v5

    move-object p1, v6

    move p2, v10

    goto :goto_7

    :cond_35
    return-void
.end method

.method public sendDownForAllNotInjectedPointersWithOriginalDown(Landroid/view/MotionEvent;I)V
    .registers 12

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionDownEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v7, 0x0

    move v1, v7

    move v8, v1

    :goto_b
    if-ge v8, v0, :cond_34

    .line 345
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 347
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v4

    if-nez v4, :cond_2f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int v5, v1, v3

    .line 349
    invoke-virtual {p0, v7, v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v3

    .line 350
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 353
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v4

    move-object v1, p0

    move v6, p2

    .line 350
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    move v1, v5

    goto :goto_30

    :cond_2f
    move v6, p2

    :goto_30
    add-int/lit8 v8, v8, 0x1

    move p2, v6

    goto :goto_b

    :cond_34
    return-void
.end method

.method public sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 112
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v3, -0x1

    .line 115
    const-string v4, "EventDispatcher"

    if-ne v2, v3, :cond_10

    move-object v2, v1

    goto :goto_14

    .line 119
    :cond_10
    :try_start_10
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_14} :catch_d3

    :goto_14
    if-nez p2, :cond_1c

    .line 127
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    :goto_1a
    move-wide v7, v5

    goto :goto_23

    .line 129
    :cond_1c
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedDownEventTime()J

    move-result-wide v5

    goto :goto_1a

    .line 133
    :goto_23
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    new-array v13, v3, [Landroid/view/MotionEvent$PointerProperties;

    .line 134
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    new-array v14, v3, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    .line 135
    :goto_30
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v3, v5, :cond_4d

    .line 136
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 137
    invoke-virtual {v2, v3, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 138
    aput-object v5, v14, v3

    .line 139
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 140
    invoke-virtual {v2, v3, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 141
    aput-object v5, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 144
    :cond_4d
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 145
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    .line 146
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v15

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    .line 147
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v17

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v18

    .line 148
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v21

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v22

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v23

    .line 149
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getClassification()I

    move-result v24

    const/16 v19, -0x1

    .line 144
    invoke-static/range {v7 .. v24}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 156
    iget v3, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    if-ltz v3, :cond_91

    .line 157
    iget v3, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    neg-int v3, v3

    iget v5, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    neg-int v5, v5

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object v2

    .line 160
    :cond_91
    sget-boolean v3, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v3, :cond_b5

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Injecting event: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", policyFlags=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b5
    const/high16 v3, 0x40000000    # 2.0f

    or-int v3, p5, v3

    .line 171
    iget-object v5, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v5, :cond_c3

    move-object/from16 v6, p3

    .line 172
    invoke-interface {v5, v2, v6, v3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_c8

    .line 174
    :cond_c3
    const-string v3, "Error sending event: no receiver specified."

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_c8
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/gestures/TouchState;->onInjectedMotionEvent(Landroid/view/MotionEvent;)V

    if-eq v2, v1, :cond_d2

    .line 179
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_d2
    return-void

    :catch_d3
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMotionEvent: Failed to split motion event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .registers 12

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    move v7, v0

    :goto_a
    if-ge v2, v1, :cond_38

    .line 414
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 416
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v3

    if-nez v3, :cond_1c

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    goto :goto_32

    :cond_1c
    const/4 v3, 0x6

    .line 419
    invoke-virtual {p0, v3, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v5

    .line 420
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    const/4 p0, 0x1

    shl-int/2addr p0, v0

    not-int p0, p0

    and-int/2addr p0, v7

    move v7, p0

    :goto_32
    add-int/lit8 v2, v2, 0x1

    move-object p0, v3

    move-object p1, v4

    move p2, v8

    goto :goto_a

    :cond_38
    return-void
.end method

.method public setReceiver(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, "\nDown pointers #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointersDown()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_22
    const/16 v2, 0x20

    if-ge v1, v2, :cond_39

    .line 219
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 224
    :cond_39
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string p0, "\n========================="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
