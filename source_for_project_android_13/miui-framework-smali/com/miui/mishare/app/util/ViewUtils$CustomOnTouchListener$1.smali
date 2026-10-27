.class Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;->animateUp(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;

.field final synthetic blacklist val$v:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;

    .line 55
    iput-object p1, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener$1;->this$0:Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;

    iput-object p2, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 59
    .local v0, "value":F
    iget-object v1, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 60
    iget-object v1, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 61
    iget-object v1, p0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 62
    return-void
.end method
