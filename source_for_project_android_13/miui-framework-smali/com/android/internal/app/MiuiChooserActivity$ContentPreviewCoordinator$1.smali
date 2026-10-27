.class Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$1;
.super Landroid/os/Handler;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    .line 376
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 379
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_70

    goto :goto_6e

    .line 386
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    iget-object v0, v0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_6e

    .line 388
    :cond_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$LoadUriTask;

    .line 389
    .local v0, "task":Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    invoke-static {v1}, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->-$$Nest$fgetmParentView(Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;)Landroid/view/View;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mImageResourceId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;

    .line 391
    .local v1, "imageView":Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;
    iget-object v2, v0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2d

    .line 392
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->setVisibility(I)V

    .line 395
    return-void

    .line 398
    :cond_2d
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->-$$Nest$fputmAtLeastOneLoaded(Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;Z)V

    .line 399
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->setVisibility(I)V

    .line 400
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->setAlpha(F)V

    .line 401
    iget-object v2, v0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 403
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_78

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 405
    .local v2, "fadeAnim":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 406
    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 407
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 409
    iget v3, v0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    if-lez v3, :cond_67

    .line 410
    iget v3, v0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    invoke-virtual {v1, v3}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->setExtraImageCount(I)V

    .line 413
    :cond_67
    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    invoke-static {v3, v1}, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->-$$Nest$msetupPreDrawForSharedElementTransition(Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;Landroid/view/View;)V

    goto :goto_6e

    .line 383
    .end local v0    # "task":Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    .end local v1    # "imageView":Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;
    .end local v2    # "fadeAnim":Landroid/animation/ValueAnimator;
    :pswitch_6d
    nop

    .line 415
    :goto_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_6
    .end packed-switch

    :array_78
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
