.class Lcom/android/internal/widget/MiuiDecorCaptionView$15;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->startAlphaAnimating(IJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/MiuiDecorCaptionView;

    .line 1143
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$15;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1155
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1150
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$15;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fputmResizeBorderReminderShowing(Lcom/android/internal/widget/MiuiDecorCaptionView;Z)V

    .line 1151
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1159
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1146
    return-void
.end method
