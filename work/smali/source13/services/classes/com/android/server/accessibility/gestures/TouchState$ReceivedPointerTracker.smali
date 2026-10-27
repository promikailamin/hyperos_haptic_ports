.class Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "TouchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/gestures/TouchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceivedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_RECEIVED_POINTER_TRACKER:Ljava/lang/String; = "ReceivedPointerTracker"


# instance fields
.field private mLastReceivedDownEdgeFlags:I

.field private mPrimaryPointerId:I

.field private final mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

.field private mReceivedPointersDown:I

.field final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchState;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/gestures/TouchState;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/accessibility/gestures/TouchState;

    .line 419
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 420
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->clear()V

    .line 421
    return-void
.end method

.method private findPrimaryPointerId()I
    .registers 9

    .line 547
    const/4 v0, -0x1

    .line 548
    .local v0, "primaryPointerId":I
    const-wide v1, 0x7fffffffffffffffL

    .line 551
    .local v1, "minDownTime":J
    iget v3, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 552
    .local v3, "pointerIdBits":I
    :goto_8
    if-lez v3, :cond_21

    .line 553
    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    .line 554
    .local v4, "pointerId":I
    const/4 v5, 0x1

    shl-int/2addr v5, v4

    not-int v5, v5

    and-int/2addr v3, v5

    .line 555
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->-$$Nest$fgetmTime(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)J

    move-result-wide v5

    .line 556
    .local v5, "downPointerTime":J
    cmp-long v7, v5, v1

    if-gez v7, :cond_20

    .line 557
    move-wide v1, v5

    .line 558
    move v0, v4

    .line 560
    .end local v4    # "pointerId":I
    .end local v5    # "downPointerTime":J
    :cond_20
    goto :goto_8

    .line 561
    :cond_21
    return v0
.end method

.method private handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .registers 10
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 518
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 519
    .local v0, "pointerId":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 520
    .local v1, "pointerFlag":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    .line 522
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 523
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v2, v2, v0

    .line 524
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 523
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->set(FFJ)V

    .line 526
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 527
    return-void
.end method

.method private handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .registers 7
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 536
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 537
    .local v0, "pointerId":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 538
    .local v1, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    not-int v3, v1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 539
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->clear()V

    .line 540
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    if-ne v2, v0, :cond_1a

    .line 541
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 543
    :cond_1a
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 425
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 426
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    const/16 v1, 0x20

    if-ge v0, v1, :cond_18

    .line 428
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    new-instance v2, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {v2, v3}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;-><init>(Lcom/android/server/accessibility/gestures/TouchState;)V

    aput-object v2, v1, v0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 430
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public getLastReceivedDownEdgeFlags()I
    .registers 2

    .line 508
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    return v0
.end method

.method public getPrimaryPointerId()I
    .registers 3

    .line 500
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 501
    invoke-direct {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->findPrimaryPointerId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 503
    :cond_b
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    return v0
.end method

.method public getReceivedPointerDownCount()I
    .registers 2

    .line 460
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getReceivedPointerDownTime(I)J
    .registers 4
    .param p1, "pointerId"    # I

    .line 495
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->-$$Nest$fgetmTime(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReceivedPointerDownX(I)F
    .registers 3
    .param p1, "pointerId"    # I

    .line 479
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->-$$Nest$fgetmX(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)F

    move-result v0

    return v0
.end method

.method public getReceivedPointerDownY(I)F
    .registers 3
    .param p1, "pointerId"    # I

    .line 487
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->-$$Nest$fgetmY(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)F

    move-result v0

    return v0
.end method

.method public isReceivedPointerDown(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .line 470
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 471
    .local v1, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 439
    .local v0, "action":I
    packed-switch v0, :pswitch_data_2a

    :pswitch_7
    goto :goto_28

    .line 450
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_28

    .line 444
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    .line 445
    goto :goto_28

    .line 447
    :pswitch_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    .line 448
    goto :goto_28

    .line 441
    :pswitch_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    .line 442
    nop

    .line 456
    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_18
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_10
        :pswitch_8
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string v1, "\nDown pointers #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    const/16 v2, 0x20

    if-ge v1, v2, :cond_31

    .line 572
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 577
    .end local v1    # "i":I
    :cond_31
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string v1, "\nPrimary pointer id [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 580
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const-string v1, "\n========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
