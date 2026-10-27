.class Lcom/android/internal/widget/helper/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 300
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 305
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_81

    .line 306
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 307
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 308
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 309
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 310
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez p1, :cond_a8

    .line 311
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object p1

    .line 312
    if-eqz p1, :cond_80

    .line 313
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget v4, p1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 314
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget v4, p1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 315
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v3, p1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I

    .line 316
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v3, p1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 317
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, p1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 319
    :cond_6e
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v3, p1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 320
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {p1, p2, v2, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 322
    :cond_80
    goto :goto_a8

    .line 323
    :cond_81
    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eq p1, v2, :cond_9e

    if-ne p1, v0, :cond_88

    goto :goto_9e

    .line 326
    :cond_88
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-eq v2, v3, :cond_a8

    .line 329
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 333
    if-ltz v2, :cond_a8

    .line 334
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    goto :goto_a8

    .line 324
    :cond_9e
    :goto_9e
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v3, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 325
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 337
    :cond_a8
    :goto_a8
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_b5

    .line 338
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 340
    :cond_b5
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_bc

    goto :goto_bd

    :cond_bc
    move v0, v1

    :goto_bd
    return v0
.end method

.method public blacklist onRequestDisallowInterceptTouchEvent(Z)V
    .registers 4

    .line 403
    if-nez p1, :cond_3

    .line 404
    return-void

    .line 406
    :cond_3
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 407
    return-void
.end method

.method public blacklist onTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 7

    .line 345
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 350
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_14

    .line 351
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 353
    :cond_14
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1c

    .line 354
    return-void

    .line 356
    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 357
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 358
    if-ltz v1, :cond_2f

    .line 359
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    .line 361
    :cond_2f
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 362
    if-nez v2, :cond_36

    .line 363
    return-void

    .line 365
    :cond_36
    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_a2

    :pswitch_3a
    goto :goto_a1

    .line 387
    :pswitch_3b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 388
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 389
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v0, v1, :cond_a1

    .line 392
    if-nez p1, :cond_4c

    const/4 v3, 0x1

    .line 393
    :cond_4c
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 394
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 395
    goto :goto_a1

    .line 378
    :pswitch_5e
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_96

    .line 379
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_96

    .line 368
    :pswitch_6c
    if-ltz v1, :cond_a1

    .line 369
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 370
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->moveIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 371
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p2, p2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 372
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 373
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    goto :goto_a1

    .line 383
    :cond_96
    :goto_96
    :pswitch_96
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 384
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v0, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 385
    nop

    .line 399
    :cond_a1
    :goto_a1
    return-void

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_96
        :pswitch_6c
        :pswitch_5e
        :pswitch_3a
        :pswitch_3a
        :pswitch_3b
    .end packed-switch
.end method
