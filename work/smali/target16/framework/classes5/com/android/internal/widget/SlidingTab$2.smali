.class Lcom/android/internal/widget/SlidingTab$2;
.super Ljava/lang/Object;
.source "SlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SlidingTab;->startAnimating(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/SlidingTab;

.field final synthetic blacklist val$dx:I

.field final synthetic blacklist val$dy:I

.field final synthetic blacklist val$holdAfter:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/SlidingTab;ZII)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 681
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    iput-boolean p2, p0, Lcom/android/internal/widget/SlidingTab$2;->val$holdAfter:Z

    iput p3, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dx:I

    iput p4, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    .line 684
    iget-boolean p1, p0, Lcom/android/internal/widget/SlidingTab$2;->val$holdAfter:Z

    if-eqz p1, :cond_21

    .line 685
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    iget v0, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dx:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dy:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dy:I

    int-to-float v3, v3

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 686
    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 687
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/SlidingTab;->-$$Nest$fputmAnimating(Lcom/android/internal/widget/SlidingTab;Z)V

    goto :goto_34

    .line 689
    :cond_21
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 690
    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 691
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingTab;->-$$Nest$mresetView(Lcom/android/internal/widget/SlidingTab;)V

    .line 693
    :goto_34
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingTab;->-$$Nest$fgetmAnimationDoneListener(Lcom/android/internal/widget/SlidingTab;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 696
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingTab;->-$$Nest$fgetmLeftSlider(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 697
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingTab;->-$$Nest$fgetmRightSlider(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 698
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .line 702
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .line 706
    return-void
.end method
