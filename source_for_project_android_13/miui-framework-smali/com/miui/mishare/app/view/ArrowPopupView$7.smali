.class Lcom/miui/mishare/app/view/ArrowPopupView$7;
.super Ljava/lang/Object;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/ArrowPopupView;->animateShowing()V
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

    .line 629
    iput-object p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView$7;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 632
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$7;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fputmTranslationValue(Lcom/miui/mishare/app/view/ArrowPopupView;I)V

    .line 633
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$7;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmTranslationValue(Lcom/miui/mishare/app/view/ArrowPopupView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 634
    .local v0, "absTranslationValue":I
    iget-object v1, p0, Lcom/miui/mishare/app/view/ArrowPopupView$7;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v1}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmContentFrameWrapper(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/miui/mishare/app/view/ArrowPopupView$7;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v3}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmContentFrameWrapper(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView$7;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v4}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmContentFrameWrapper(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 635
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getRight()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/miui/mishare/app/view/ArrowPopupView$7;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v5}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmContentFrameWrapper(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    .line 634
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/miui/mishare/app/view/ArrowPopupView;->invalidate(IIII)V

    .line 636
    return-void
.end method
