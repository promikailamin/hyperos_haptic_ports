.class Lcom/android/internal/widget/MiuiDecorCaptionView$10;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 1060
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$10;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1063
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1064
    .local v0, "curValue":I
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$10;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fgetmResizeBorder(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1065
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$10;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fgetmScaledResizeReminder(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1066
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$10;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v1, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fputmResizeBorderReminderAlpha(Lcom/android/internal/widget/MiuiDecorCaptionView;I)V

    .line 1067
    return-void
.end method
