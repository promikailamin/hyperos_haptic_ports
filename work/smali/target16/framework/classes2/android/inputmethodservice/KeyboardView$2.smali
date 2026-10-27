.class Landroid/inputmethodservice/KeyboardView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/KeyboardView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 404
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 16

    .line 408
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmPossiblePoly(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 409
    :cond_a
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 410
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 411
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    .line 412
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr p2, v4

    .line 413
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v4}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 414
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 415
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v6}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmSwipeTracker(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v6

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(I)V

    .line 416
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v6}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmSwipeTracker(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->getXVelocity()F

    move-result v6

    .line 417
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v7}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmSwipeTracker(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v7

    invoke-virtual {v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->getYVelocity()F

    move-result v7

    .line 418
    nop

    .line 419
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v8}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmSwipeThreshold(Landroid/inputmethodservice/KeyboardView;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, p3, v8

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v10, 0x1

    if-lez v8, :cond_80

    cmpg-float v8, v2, v0

    if-gez v8, :cond_80

    int-to-float v8, v4

    cmpl-float v8, v3, v8

    if-lez v8, :cond_80

    .line 420
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {p2}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmDisambiguateSwipe(Landroid/inputmethodservice/KeyboardView;)Z

    move-result p2

    if-eqz p2, :cond_7a

    div-float/2addr p3, v9

    cmpg-float p2, v6, p3

    if-gez p2, :cond_7a

    .line 421
    goto/16 :goto_100

    .line 423
    :cond_7a
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p1}, Landroid/inputmethodservice/KeyboardView;->swipeRight()V

    .line 424
    return v10

    .line 426
    :cond_80
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v8}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmSwipeThreshold(Landroid/inputmethodservice/KeyboardView;)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, p3, v8

    if-gez v8, :cond_aa

    cmpg-float v8, v2, v0

    if-gez v8, :cond_aa

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_aa

    .line 427
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {p2}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmDisambiguateSwipe(Landroid/inputmethodservice/KeyboardView;)Z

    move-result p2

    if-eqz p2, :cond_a4

    div-float/2addr p3, v9

    cmpl-float p2, v6, p3

    if-lez p2, :cond_a4

    .line 428
    goto :goto_100

    .line 430
    :cond_a4
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p1}, Landroid/inputmethodservice/KeyboardView;->swipeLeft()V

    .line 431
    return v10

    .line 433
    :cond_aa
    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {p3}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmSwipeThreshold(Landroid/inputmethodservice/KeyboardView;)I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    cmpg-float p3, p4, p3

    if-gez p3, :cond_d4

    cmpg-float p3, v0, v2

    if-gez p3, :cond_d4

    neg-int p3, v5

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_d4

    .line 434
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {p2}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmDisambiguateSwipe(Landroid/inputmethodservice/KeyboardView;)Z

    move-result p2

    if-eqz p2, :cond_ce

    div-float/2addr p4, v9

    cmpl-float p2, v7, p4

    if-lez p2, :cond_ce

    .line 435
    goto :goto_100

    .line 437
    :cond_ce
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p1}, Landroid/inputmethodservice/KeyboardView;->swipeUp()V

    .line 438
    return v10

    .line 440
    :cond_d4
    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {p3}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmSwipeThreshold(Landroid/inputmethodservice/KeyboardView;)I

    move-result p3

    int-to-float p3, p3

    cmpl-float p3, p4, p3

    if-lez p3, :cond_ff

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr v2, p3

    cmpg-float p3, v0, v2

    if-gez p3, :cond_ff

    int-to-float p3, v5

    cmpl-float p2, p2, p3

    if-lez p2, :cond_ff

    .line 441
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {p2}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmDisambiguateSwipe(Landroid/inputmethodservice/KeyboardView;)Z

    move-result p2

    if-eqz p2, :cond_f9

    div-float/2addr p4, v9

    cmpg-float p2, v7, p4

    if-gez p2, :cond_f9

    .line 442
    goto :goto_100

    .line 444
    :cond_f9
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p1}, Landroid/inputmethodservice/KeyboardView;->swipeDown()V

    .line 445
    return v10

    .line 449
    :cond_ff
    move v10, v1

    :goto_100
    if-eqz v10, :cond_11d

    .line 450
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {p2}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmDownKey(Landroid/inputmethodservice/KeyboardView;)I

    move-result v3

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {p2}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmStartX(Landroid/inputmethodservice/KeyboardView;)I

    move-result v4

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {p2}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmStartY(Landroid/inputmethodservice/KeyboardView;)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$mdetectAndSendKey(Landroid/inputmethodservice/KeyboardView;IIIJ)V

    .line 452
    :cond_11d
    return v1
.end method
