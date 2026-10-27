.class public Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "TouchState.java"


# instance fields
.field public mLastReceivedDownEdgeFlags:I

.field public mPrimaryPointerId:I

.field public final mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

.field public mReceivedPointersDown:I

.field public final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchState;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/gestures/TouchState;)V
    .registers 2

    .line 432
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x20

    .line 419
    new-array p1, p1, [Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 433
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    const/4 v0, 0x0

    .line 438
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 439
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    :goto_5
    const/16 v1, 0x20

    if-ge v0, v1, :cond_17

    .line 441
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    new-instance v2, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {v2, v3}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;-><init>(Lcom/android/server/accessibility/gestures/TouchState;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method public final findPrimaryPointerId()I
    .registers 9

    .line 565
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    :cond_8
    :goto_8
    if-lez v0, :cond_21

    .line 567
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    const/4 v5, 0x1

    shl-int/2addr v5, v4

    not-int v5, v5

    and-int/2addr v0, v5

    .line 569
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->-$$Nest$fgetmTime(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_8

    move v1, v4

    move-wide v2, v5

    goto :goto_8

    :cond_21
    return v1
.end method

.method public getLastReceivedDownEdgeFlags()I
    .registers 1

    .line 521
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    return p0
.end method

.method public getPrimaryPointerId()I
    .registers 3

    .line 513
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 514
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->findPrimaryPointerId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 516
    :cond_b
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    return p0
.end method

.method public getReceivedPointerDownCount()I
    .registers 1

    .line 473
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public getReceivedPointerDownTime(I)J
    .registers 2

    .line 508
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->-$$Nest$fgetmTime(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getReceivedPointerDownX(I)F
    .registers 2

    .line 492
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->-$$Nest$fgetmX(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)F

    move-result p0

    return p0
.end method

.method public getReceivedPointerDownY(I)F
    .registers 2

    .line 500
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->-$$Nest$fgetmY(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)F

    move-result p0

    return p0
.end method

.method public final handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .registers 8

    .line 531
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 533
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    .line 535
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 536
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v1, v1, v0

    .line 537
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 536
    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->set(FFJ)V

    .line 538
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_2c

    .line 539
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    :cond_2c
    return-void
.end method

.method public final handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .registers 4

    .line 550
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    const/4 p2, 0x1

    shl-int/2addr p2, p1

    .line 552
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    not-int p2, p2

    and-int/2addr p2, v0

    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 553
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->clear()V

    .line 554
    iget p2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    if-ne p2, p1, :cond_1a

    const/4 p1, -0x1

    .line 555
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    :cond_1a
    return-void
.end method

.method public isReceivedPointerDown(I)Z
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 484
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_28

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    const/4 v1, 0x6

    if-eq v0, v1, :cond_10

    goto :goto_2f

    .line 463
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_2f

    .line 457
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_2f

    .line 460
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_2f

    .line 454
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    .line 466
    :goto_2f
    sget-boolean p1, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz p1, :cond_4d

    .line 467
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received pointer:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReceivedPointerTracker"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string v1, "\nDown pointers #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1c
    const/16 v2, 0x20

    if-ge v1, v2, :cond_31

    .line 586
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 591
    :cond_31
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string v1, "\nPrimary pointer id [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    const-string p0, "\n========================="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
