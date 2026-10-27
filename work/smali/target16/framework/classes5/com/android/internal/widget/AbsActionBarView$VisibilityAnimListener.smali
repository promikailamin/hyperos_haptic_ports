.class public Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private blacklist mCanceled:Z

.field blacklist mFinalVisibility:I

.field final synthetic blacklist this$0:Lcom/android/internal/widget/AbsActionBarView;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/widget/AbsActionBarView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 334
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 363
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 364
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 352
    iget-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz p1, :cond_5

    return-void

    .line 354
    :cond_5
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 355
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 356
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    iget-object p1, p1, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    iget-object p1, p1, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz p1, :cond_26

    .line 357
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    iget-object p1, p1, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->setVisibility(I)V

    .line 359
    :cond_26
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 368
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 345
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    iput-object p1, v0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 347
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 348
    return-void
.end method

.method public blacklist withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
    .registers 2

    .line 339
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 340
    return-object p0
.end method
