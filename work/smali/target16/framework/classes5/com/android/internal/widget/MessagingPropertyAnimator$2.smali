.class Lcom/android/internal/widget/MessagingPropertyAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MessagingPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public blacklist mCancelled:Z

.field final synthetic blacklist val$v:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 166
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$2;->mCancelled:Z

    .line 167
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 160
    iget-object p1, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$2;->val$v:Landroid/view/View;

    const v0, 0x1020575

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 161
    iget-object p1, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$2;->val$v:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 162
    return-void
.end method
