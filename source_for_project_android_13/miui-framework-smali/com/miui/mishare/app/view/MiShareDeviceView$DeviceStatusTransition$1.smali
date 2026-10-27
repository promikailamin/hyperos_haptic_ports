.class Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition$1;
.super Ljava/lang/Object;
.source "MiShareDeviceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;

.field final synthetic blacklist val$endDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic blacklist val$startDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic blacklist val$view:Landroid/widget/ImageView;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "this$0"    # Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;

    .line 572
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition$1;->this$0:Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;

    iput-object p2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition$1;->val$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition$1;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition$1;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 575
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 576
    .local v0, "value":F
    const/high16 v1, 0x3f000000    # 0.5f

    .line 578
    .local v1, "half":F
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_20

    .line 579
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition$1;->val$view:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition$1;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    sub-float v2, v1, v0

    div-float/2addr v2, v1

    .line 581
    .local v2, "ratio":F
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 582
    .end local v2    # "ratio":F
    goto :goto_2f

    .line 583
    :cond_20
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition$1;->val$view:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition$1;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 584
    sub-float v2, v0, v1

    div-float/2addr v2, v1

    .line 585
    .restart local v2    # "ratio":F
    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 588
    .end local v2    # "ratio":F
    :goto_2f
    return-void
.end method
