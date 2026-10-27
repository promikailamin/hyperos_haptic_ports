.class public Landroid/widget/Editor$InsertionPointCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private greylist-max-o mHandle:Landroid/widget/Editor$InsertionHandleView;

.field private blacklist mIsDraggingCursor:Z

.field private blacklist mIsTouchSnappedToHandleDuringDrag:Z

.field private blacklist mPrevLineDuringDrag:I

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreloadHandleDrawable(Landroid/widget/Editor$InsertionPointCursorController;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$InsertionPointCursorController;->reloadHandleDrawable()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/Editor;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/Editor;

    .line 6418
    iput-object p1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist endCursorDrag(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6549
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    .line 6550
    iput-boolean v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsTouchSnappedToHandleDuringDrag:Z

    .line 6551
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mPrevLineDuringDrag:I

    .line 6553
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionHandleView;->dismissMagnifier()V

    .line 6554
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/Editor$InsertionHandleView;->-$$Nest$mhideAfterDelay(Landroid/widget/Editor$InsertionHandleView;)V

    .line 6556
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6557
    return-void
.end method

.method private blacklist getLineDuringDrag(Landroid/view/MotionEvent;)I
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6488
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6489
    .local v0, "layout":Landroid/text/Layout;
    iget v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mPrevLineDuringDrag:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 6490
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v1

    return v1

    .line 6495
    :cond_1a
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditorTouchState;->isOnHandle()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3a

    .line 6496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLocationOnScreen()[I

    move-result-object v3

    aget v3, v3, v2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    goto :goto_3e

    .line 6497
    :cond_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    :goto_3e
    nop

    .line 6498
    .local v1, "fingerY":F
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionHandleView;->getIdealFingerToCursorOffset()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 6499
    .local v3, "cursorY":F
    iget-object v4, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget v5, p0, Landroid/widget/Editor$InsertionPointCursorController;->mPrevLineDuringDrag:I

    invoke-virtual {v4, v0, v5, v3}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v4

    .line 6500
    .local v4, "line":I
    iget-boolean v5, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsTouchSnappedToHandleDuringDrag:Z

    if-eqz v5, :cond_57

    .line 6502
    return v4

    .line 6504
    :cond_57
    iget v5, p0, Landroid/widget/Editor$InsertionPointCursorController;->mPrevLineDuringDrag:I

    if-ge v4, v5, :cond_66

    .line 6508
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    .line 6509
    invoke-virtual {v2, v0, v5, v1}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v2

    .line 6508
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 6512
    :cond_66
    iput-boolean v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsTouchSnappedToHandleDuringDrag:Z

    .line 6518
    return v4
.end method

.method private blacklist isFromStylus(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 6459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 6460
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method private blacklist performCursorDrag(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6541
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->positionCursorDuringDrag(Landroid/view/MotionEvent;)V

    .line 6542
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$InsertionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 6543
    return-void
.end method

.method private blacklist positionCursorDuringDrag(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6464
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->getLineDuringDrag(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mPrevLineDuringDrag:I

    .line 6465
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mPrevLineDuringDrag:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v0

    .line 6466
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6467
    .local v1, "oldSelectionStart":I
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 6468
    .local v2, "oldSelectionEnd":I
    if-ne v0, v1, :cond_2f

    if-ne v0, v2, :cond_2f

    .line 6469
    return-void

    .line 6471
    :cond_2f
    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6472
    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->updateCursorPosition()V

    .line 6473
    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmHapticTextHandleEnabled(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 6474
    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 6476
    :cond_56
    return-void
.end method

.method private blacklist reloadHandleDrawable()V
    .registers 4

    .line 6625
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-nez v0, :cond_5

    .line 6628
    return-void

    .line 6630
    :cond_5
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$InsertionHandleView;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6631
    return-void
.end method

.method private blacklist startCursorDrag(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6525
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    .line 6526
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsTouchSnappedToHandleDuringDrag:Z

    .line 6527
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mPrevLineDuringDrag:I

    .line 6529
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6530
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 6532
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->positionCursorDuringDrag(Landroid/view/MotionEvent;)V

    .line 6534
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 6535
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$InsertionHandleView;->-$$Nest$mremoveHiderCallback(Landroid/widget/Editor$InsertionHandleView;)V

    .line 6536
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$InsertionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 6538
    return-void
.end method


# virtual methods
.method public greylist-max-o getHandle()Landroid/widget/Editor$InsertionHandleView;
    .registers 4

    .line 6617
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-nez v0, :cond_15

    .line 6618
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor;->loadHandleDrawables(Z)V

    .line 6619
    new-instance v0, Landroid/widget/Editor$InsertionHandleView;

    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, v1, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$InsertionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    .line 6621
    :cond_15
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    return-object v0
.end method

.method public greylist-max-o hide()V
    .registers 2

    .line 6605
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-eqz v0, :cond_7

    .line 6606
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->hide()V

    .line 6608
    :cond_7
    return-void
.end method

.method public greylist-max-o invalidateHandle()V
    .registers 2

    .line 6652
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-eqz v0, :cond_7

    .line 6653
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->invalidate()V

    .line 6655
    :cond_7
    return-void
.end method

.method public greylist-max-o isActive()Z
    .registers 2

    .line 6648
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist-max-o isCursorBeingModified()Z
    .registers 2

    .line 6643
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public greylist-max-o onDetached()V
    .registers 3

    .line 6635
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 6636
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 6638
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionHandleView;->onDetached()V

    .line 6639
    :cond_14
    return-void
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6429
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->isCursorBeingModified()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6430
    return-void

    .line 6432
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_9a

    goto/16 :goto_98

    .line 6434
    :pswitch_1e
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 6435
    invoke-virtual {v0}, Landroid/widget/TextView;->isAutoHandwritingEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->isFromStylus(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 6436
    goto :goto_98

    .line 6438
    :cond_39
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    if-eqz v0, :cond_41

    .line 6439
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->performCursorDrag(Landroid/view/MotionEvent;)V

    goto :goto_98

    .line 6440
    :cond_41
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagCursorDragFromAnywhereEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 6441
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 6442
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v0

    .line 6443
    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->isMovedEnoughForDrag()Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v0

    .line 6444
    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->getInitialDragDirectionXYRatio()F

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmCursorDragDirectionMinXYRatio(Landroid/widget/Editor;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_8d

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v0

    .line 6445
    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->isOnHandle()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 6446
    :cond_8d
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->startCursorDrag(Landroid/view/MotionEvent;)V

    goto :goto_98

    .line 6451
    :pswitch_91
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    if-eqz v0, :cond_98

    .line 6452
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->endCursorDrag(Landroid/view/MotionEvent;)V

    .line 6456
    :cond_98
    :goto_98
    return-void

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_91
        :pswitch_1e
        :pswitch_91
    .end packed-switch
.end method

.method public whitelist onTouchModeChanged(Z)V
    .registers 2
    .param p1, "isInTouchMode"    # Z

    .line 6611
    if-nez p1, :cond_5

    .line 6612
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 6614
    :cond_5
    return-void
.end method

.method public greylist-max-o show()V
    .registers 7

    .line 6560
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->show()V

    .line 6563
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    sub-long/2addr v0, v2

    .line 6565
    .local v0, "durationSinceCutOrCopy":J
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 6566
    iget-boolean v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    if-nez v2, :cond_2e

    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v2

    .line 6567
    invoke-virtual {v2}, Landroid/widget/EditorTouchState;->isMultiTap()Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    .line 6568
    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$misCursorInsideEasyCorrectionSpan(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 6570
    :cond_2e
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6576
    :cond_3d
    iget-boolean v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    if-nez v2, :cond_8b

    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v2

    .line 6577
    invoke-virtual {v2}, Landroid/widget/EditorTouchState;->isMultiTap()Z

    move-result v2

    if-nez v2, :cond_8b

    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    .line 6578
    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$misCursorInsideEasyCorrectionSpan(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_8b

    const-wide/16 v2, 0x3a98

    cmp-long v2, v0, v2

    if-gez v2, :cond_8b

    .line 6580
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_8b

    .line 6581
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v2

    if-nez v2, :cond_75

    .line 6582
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    new-instance v3, Landroid/widget/Editor$InsertionPointCursorController$1;

    invoke-direct {v3, p0}, Landroid/widget/Editor$InsertionPointCursorController$1;-><init>(Landroid/widget/Editor$InsertionPointCursorController;)V

    invoke-static {v2, v3}, Landroid/widget/Editor;->-$$Nest$fputmInsertionActionModeRunnable(Landroid/widget/Editor;Ljava/lang/Runnable;)V

    .line 6589
    :cond_75
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v3

    .line 6591
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    .line 6589
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6595
    :cond_8b
    iget-boolean v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    if-nez v2, :cond_96

    .line 6596
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/Editor$InsertionHandleView;->-$$Nest$mhideAfterDelay(Landroid/widget/Editor$InsertionHandleView;)V

    .line 6599
    :cond_96
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v2, :cond_a3

    .line 6600
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 6602
    :cond_a3
    return-void
.end method
