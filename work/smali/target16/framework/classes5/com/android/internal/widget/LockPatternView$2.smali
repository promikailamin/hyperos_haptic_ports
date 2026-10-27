.class Lcom/android/internal/widget/LockPatternView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$finishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 698
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$2;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 701
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView$2;->val$finishRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_9

    .line 702
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView$2;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 704
    :cond_9
    return-void
.end method
