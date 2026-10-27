.class public Lcom/android/server/accessibility/MotionEventInjector;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MotionEventInjector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field public mDownTime:J

.field public final mHandler:Landroid/os/Handler;

.field public mIsDestroyed:Z

.field public mLastScheduledEventTime:J

.field public mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

.field public mNumLastTouchPoints:I

.field public mOpenTouchGestureInProgress:Z

.field public mSequencesInProgress:Landroid/util/IntArray;

.field public mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field public mStrokeIdToPointerId:Landroid/util/SparseIntArray;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .registers 6

    .line 85
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenTouchGestureInProgress:Z

    .line 74
    new-instance v1, Landroid/util/IntArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 75
    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 80
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-void
.end method

.method public static findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_d

    .line 517
    aget-object v1, p0, v0

    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    if-ne v1, p2, :cond_a

    return v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .registers 16

    .line 463
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v6

    const/4 v8, 0x0

    move v9, v8

    :goto_6
    if-ge v9, p3, :cond_3c

    .line 465
    aget-object v0, p2, v9

    iget-boolean v1, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-eqz v1, :cond_35

    .line 467
    iget v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v1, v6, v1

    invoke-virtual {v1, v0}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 468
    iget v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/4 v0, 0x1

    if-ne v7, v0, :cond_20

    move v0, v8

    goto :goto_21

    :cond_20
    const/4 v0, 0x5

    :goto_21
    if-nez v0, :cond_25

    .line 471
    iput-wide p4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    :cond_25
    shl-int/lit8 v1, v9, 0x8

    or-int v5, v0, v1

    .line 474
    iget-wide v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    move-object v0, p0

    move-wide v3, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_35
    move-object v0, p0

    move-wide v3, p4

    :goto_37
    add-int/lit8 v9, v9, 0x1

    move-object p0, v0

    move-wide p4, v3

    goto :goto_6

    :cond_3c
    return-void
.end method

.method public final appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .registers 14

    .line 415
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_7
    if-ge v1, p3, :cond_34

    .line 417
    iget v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v4, p2, v1

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-static {v6, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v3

    if-ltz v3, :cond_31

    .line 420
    aget-object v3, v6, v3

    iget v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    aget-object v5, p2, v1

    iget v7, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_2c

    iget v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iget v7, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_2a

    goto :goto_2c

    :cond_2a
    move v4, v0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v4, 0x1

    :goto_2d
    or-int/2addr v2, v4

    .line 422
    invoke-virtual {v3, v5}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_34
    if-eqz v2, :cond_44

    .line 427
    iget-wide v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    const/4 v5, 0x2

    iget v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move-object v0, p0

    move-wide v3, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    return-void
.end method

.method public final appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .registers 16

    .line 435
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v6

    const/4 v0, 0x0

    move v8, v0

    :goto_6
    if-ge v8, p3, :cond_53

    .line 437
    aget-object v0, p2, v8

    iget-boolean v1, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-eqz v1, :cond_18

    .line 438
    iget v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    iget v0, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-static {v6, v1, v0}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v9

    if-gez v9, :cond_1b

    :cond_18
    move-object v0, p0

    move-wide v3, p4

    goto :goto_4e

    .line 443
    :cond_1b
    iget v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/4 v0, 0x1

    if-ne v7, v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x6

    :goto_22
    shl-int/lit8 v1, v9, 0x8

    or-int v5, v0, v1

    .line 446
    iget-wide v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    move-object v0, p0

    move-wide v3, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :goto_31
    iget p0, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    add-int/lit8 p4, p0, -0x1

    if-ge v9, p4, :cond_43

    .line 450
    aget-object p0, v6, v9

    iget-object p4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    add-int/lit8 v9, v9, 0x1

    aget-object p4, p4, v9

    invoke-virtual {p0, p4}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    goto :goto_31

    :cond_43
    add-int/lit8 p0, p0, -0x1

    .line 452
    iput p0, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-nez p0, :cond_4e

    .line 454
    iget-object p0, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    :cond_4e
    :goto_4e
    add-int/lit8 v8, v8, 0x1

    move-object p0, v0

    move-wide p4, v3

    goto :goto_6

    :cond_53
    return-void
.end method

.method public final cancelAnyPendingInjectedEvents()V
    .registers 5

    .line 350
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    .line 351
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelInjectedGestureInProgress()V

    .line 353
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_19
    if-ltz v0, :cond_35

    .line 354
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 355
    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 354
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 356
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 358
    :cond_2e
    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-eqz v0, :cond_35

    .line 360
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelInjectedGestureInProgress()V

    .line 362
    :cond_35
    iput v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 363
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final cancelInjectedGestureInProgress()V
    .registers 10

    .line 334
    invoke-virtual {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenTouchGestureInProgress:Z

    if-eqz v0, :cond_22

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 337
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v6, 0x3

    move-wide v4, v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object p0

    const/high16 v0, 0x400a0000    # 2.15625f

    .line 344
    invoke-virtual {v1, p0, p0, v0}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    const/4 p0, 0x0

    .line 345
    iput-boolean p0, v1, Lcom/android/server/accessibility/MotionEventInjector;->mOpenTouchGestureInProgress:Z

    :cond_22
    return-void
.end method

.method public clearEvents(I)V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x1002

    if-ne p1, v0, :cond_10

    const/4 p1, 0x0

    .line 151
    iput-boolean p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenTouchGestureInProgress:Z

    :cond_10
    return-void
.end method

.method public final getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .registers 5

    .line 401
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-nez v0, :cond_1b

    .line 402
    invoke-static {}, Landroid/accessibilityservice/GestureDescription;->getMaxStrokeCount()I

    move-result v0

    .line 403
    new-array v1, v0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1b

    .line 405
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 408
    :cond_1b
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    return-object p0
.end method

.method public final getMotionEventsFromGestureSteps(Ljava/util/List;J)Ljava/util/List;
    .registers 14

    .line 377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    .line 381
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_3f

    .line 382
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 383
    iget v3, v9, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 384
    array-length v0, v6

    if-le v3, v0, :cond_23

    .line 385
    iput v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 386
    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v1

    .line 390
    :cond_23
    iget-object v2, v9, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v4, v9, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long/2addr v4, p2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MotionEventInjector;->appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    .line 392
    iget-object v2, v9, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v4, v9, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long/2addr v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MotionEventInjector;->appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    .line 394
    iget-object v2, v9, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v4, v9, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long/2addr v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MotionEventInjector;->appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_3f
    return-object v1
.end method

.method public final getUnusedPointerId()I
    .registers 3

    const/4 v0, 0x0

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_10

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    return v1

    :cond_10
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 12

    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_29

    .line 164
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 165
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v7, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v8, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-ne v0, v3, :cond_20

    move v9, v3

    :goto_1e
    move-object v4, p0

    goto :goto_22

    :cond_20
    move v9, v2

    goto :goto_1e

    :goto_22
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/MotionEventInjector;->injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;IIZ)V

    .line 171
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return v3

    :cond_29
    move-object v4, p0

    if-eq v0, v3, :cond_45

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MotionEventInjector"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 178
    :cond_45
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/view/MotionEvent;

    .line 181
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v3, :cond_50

    const/high16 v0, 0x400a0000    # 2.15625f

    goto :goto_52

    :cond_50
    const/high16 v0, 0x40020000    # 2.03125f

    .line 185
    :goto_52
    invoke-virtual {v4, p0, p0, v0}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 186
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_69

    .line 188
    iget-object p0, v4, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object p1, v4, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result p1

    invoke-virtual {v4, p0, p1, v3}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 189
    iget-object p0, v4, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {p0, v2}, Landroid/util/IntArray;->remove(I)V

    :cond_69
    return v3
.end method

.method public injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;IIZ)V
    .registers 7

    .line 110
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 111
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 112
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 113
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 114
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 115
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 116
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;IIZ)V
    .registers 15

    .line 197
    iget-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 199
    :try_start_5
    invoke-interface {p2, p3, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error sending status with mIsDestroyed to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionEventInjector"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 207
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 208
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    return-void

    .line 212
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MotionEventInjector;->newGestureTriesToContinueOldOne(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 215
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-ne p2, v2, :cond_3b

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MotionEventInjector;->prepareToContinueOldGesture(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 217
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 218
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    return-void

    :cond_42
    if-nez v0, :cond_47

    .line 223
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 225
    :cond_47
    iput-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 229
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_57

    move-wide v4, v2

    goto :goto_59

    :cond_57
    iget-wide v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    .line 228
    :goto_59
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/accessibility/MotionEventInjector;->getMotionEventsFromGestureSteps(Ljava/util/List;J)Ljava/util/List;

    move-result-object p1

    .line 230
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 231
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    return-void

    .line 234
    :cond_67
    iget-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {p2, p3}, Landroid/util/IntArray;->add(I)V

    move p2, v1

    .line 236
    :goto_6d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_a6

    .line 237
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/MotionEvent;

    .line 238
    invoke-virtual {p3, p4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 239
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    if-ne p2, v0, :cond_86

    move v0, v4

    goto :goto_87

    :cond_86
    move v0, v1

    .line 240
    :goto_87
    iget-object v5, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, v0, p5, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 243
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    .line 244
    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_6d

    :cond_a6
    return-void
.end method

.method public final newGestureTriesToContinueOldOne(Ljava/util/List;)Z
    .registers 4

    .line 249
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 252
    :cond_8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accessibilityservice/GestureDescription$GestureStep;

    move p1, v0

    .line 253
    :goto_f
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge p1, v1, :cond_20

    .line 254
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v1, v1, p1

    iget-boolean v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-nez v1, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_20
    return v0
.end method

.method public final notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V
    .registers 4

    .line 368
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 370
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error sending motion event injection status to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MotionEventInjector"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;
    .registers 25

    move-object/from16 v0, p0

    move/from16 v6, p7

    .line 482
    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    array-length v1, v1

    if-ge v1, v6, :cond_1f

    .line 483
    :cond_c
    new-array v1, v6, [Landroid/view/MotionEvent$PointerCoords;

    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move v1, v2

    :goto_11
    if-ge v1, v6, :cond_1f

    .line 485
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 488
    :cond_1f
    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v1, :cond_26

    array-length v1, v1

    if-ge v1, v6, :cond_39

    .line 489
    :cond_26
    new-array v1, v6, [Landroid/view/MotionEvent$PointerProperties;

    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    move v1, v2

    :goto_2b
    if-ge v1, v6, :cond_39

    .line 491
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_39
    move v1, v2

    :goto_3a
    if-ge v1, v6, :cond_7c

    .line 495
    iget-object v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    aget-object v4, p6, v1

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v5, :cond_56

    .line 497
    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->getUnusedPointerId()I

    move-result v3

    .line 498
    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    aget-object v5, p6, v1

    iget v5, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 500
    :cond_56
    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v1

    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 501
    iput v2, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 502
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 503
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 504
    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 505
    aget-object v4, p6, v1

    iget v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 506
    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 508
    :cond_7c
    sget-object v7, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v8, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/16 v15, 0x1002

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .line 157
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 9

    .line 123
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 125
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";rawEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MotionEventInjector.onMotionEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_32
    const/16 v0, 0x2002

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_46

    iget-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenTouchGestureInProgress:Z

    if-eqz v0, :cond_46

    return-void

    .line 141
    :cond_46
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final prepareToContinueOldGesture(Ljava/util/List;)Z
    .registers 11

    .line 270
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d8

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-eqz v0, :cond_d8

    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-nez v0, :cond_11

    goto/16 :goto_d8

    .line 273
    :cond_11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accessibilityservice/GestureDescription$GestureStep;

    move v0, v1

    move v2, v0

    .line 276
    :goto_19
    iget v3, p1, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v0, v3, :cond_c2

    .line 277
    iget-object v3, p1, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v3, v3, v0

    .line 278
    iget-boolean v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-nez v4, :cond_bc

    .line 279
    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    iget v5, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    const/4 v6, -0x1

    .line 280
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 281
    const-string v5, "MotionEventInjector"

    if-ne v4, v6, :cond_47

    .line 282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t continue gesture due to unknown continued stroke id in "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 286
    :cond_47
    iget-object v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    iget v7, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 287
    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    iget v7, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-static {v4, v6, v7}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v4

    if-gez v4, :cond_7d

    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t continue gesture due continued gesture id of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not matching any previous strokes in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 292
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 290
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 295
    :cond_7d
    iget-object v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v6, v6, v4

    iget-boolean v7, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-nez v7, :cond_9b

    iget v7, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iget v8, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_9b

    iget v7, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iget v8, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_96

    goto :goto_9b

    .line 304
    :cond_96
    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    iput v3, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    goto :goto_bc

    .line 298
    :cond_9b
    :goto_9b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t continue gesture due to points mismatch between "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object p0, p0, v4

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_bc
    :goto_bc
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_19

    :cond_c2
    move p1, v1

    .line 309
    :goto_c3
    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-ge p1, v0, :cond_d4

    .line 310
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-nez v0, :cond_d1

    add-int/lit8 v2, v2, -0x1

    :cond_d1
    add-int/lit8 p1, p1, 0x1

    goto :goto_c3

    :cond_d4
    if-nez v2, :cond_d8

    const/4 p0, 0x1

    return p0

    :cond_d8
    :goto_d8
    return v1
.end method

.method public final sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    .line 319
    invoke-virtual {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 320
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p2

    const/16 p3, 0x1002

    if-ne p2, p3, :cond_2a

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_1a

    .line 323
    iput-boolean p3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenTouchGestureInProgress:Z

    .line 325
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-eq p2, p3, :cond_27

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2a

    :cond_27
    const/4 p1, 0x0

    .line 327
    iput-boolean p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenTouchGestureInProgress:Z

    :cond_2a
    return-void
.end method
