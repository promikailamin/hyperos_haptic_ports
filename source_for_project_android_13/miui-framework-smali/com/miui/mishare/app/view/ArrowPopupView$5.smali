.class Lcom/miui/mishare/app/view/ArrowPopupView$5;
.super Ljava/lang/Object;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/ArrowPopupView;->animateToShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/view/ArrowPopupView;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/view/ArrowPopupView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/mishare/app/view/ArrowPopupView;

    .line 506
    iput-object p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .registers 13

    .line 509
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 511
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmAnimator(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 512
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmAnimator(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 515
    :cond_1a
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmAnimationSet(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 516
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmAnimationSet(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 519
    :cond_2b
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fputmAnimationSet(Lcom/miui/mishare/app/view/ArrowPopupView;Landroid/view/animation/AnimationSet;)V

    .line 521
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 522
    .local v0, "pivot":[F
    iget-object v1, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v1, v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$mgetAnimationPivot(Lcom/miui/mishare/app/view/ArrowPopupView;[F)V

    .line 524
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v3, 0x0

    aget v9, v0, v3

    const/4 v10, 0x0

    aget v11, v0, v2

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 529
    .local v1, "scale":Landroid/view/animation/ScaleAnimation;
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 531
    .local v3, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-static {}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$sfgetFEATURE_WHOLE_ANIM()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 532
    const-wide/16 v4, 0x118

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 533
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_75

    .line 535
    :cond_6a
    iget-object v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v4}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmAnimationSet(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 538
    :goto_75
    iget-object v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v4}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmAnimationSet(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 539
    iget-object v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v4}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmAnimationSet(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 540
    iget-object v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v4}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmAnimationSet(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v5}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmShowAnimationListener(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 541
    iget-object v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v4}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmAnimationSet(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 542
    iget-object v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView$5;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v4}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmAnimationSet(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/mishare/app/view/ArrowPopupView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 544
    return v2
.end method
