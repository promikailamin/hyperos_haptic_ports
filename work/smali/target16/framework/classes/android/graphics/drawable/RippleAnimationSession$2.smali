.class Landroid/graphics/drawable/RippleAnimationSession$2;
.super Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;
.source "RippleAnimationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/drawable/RippleAnimationSession;->exitHardware(Landroid/graphics/RecordingCanvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/drawable/RippleAnimationSession;

.field final synthetic blacklist val$exit:Landroid/graphics/animation/RenderNodeAnimator;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/graphics/drawable/RippleAnimationSession;Landroid/graphics/animation/RenderNodeAnimator;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 156
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$2;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    iput-object p3, p0, Landroid/graphics/drawable/RippleAnimationSession$2;->val$exit:Landroid/graphics/animation/RenderNodeAnimator;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;-><init>(Landroid/graphics/drawable/RippleAnimationSession;)V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 159
    invoke-super {p0, p1}, Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 160
    iget-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$2;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    invoke-static {p1}, Landroid/graphics/drawable/RippleAnimationSession;->-$$Nest$fgetmLoopAnimation(Landroid/graphics/drawable/RippleAnimationSession;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$2;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    invoke-static {p1}, Landroid/graphics/drawable/RippleAnimationSession;->-$$Nest$fgetmLoopAnimation(Landroid/graphics/drawable/RippleAnimationSession;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 161
    :cond_14
    iget-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$2;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    invoke-static {p1}, Landroid/graphics/drawable/RippleAnimationSession;->-$$Nest$fgetmOnSessionEnd(Landroid/graphics/drawable/RippleAnimationSession;)Ljava/util/function/Consumer;

    move-result-object p1

    .line 162
    if-eqz p1, :cond_21

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$2;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 163
    :cond_21
    iget-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$2;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    invoke-static {p1}, Landroid/graphics/drawable/RippleAnimationSession;->-$$Nest$fgetmCurrentAnimation(Landroid/graphics/drawable/RippleAnimationSession;)Landroid/animation/Animator;

    move-result-object p1

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$2;->val$exit:Landroid/graphics/animation/RenderNodeAnimator;

    if-ne p1, v0, :cond_31

    iget-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$2;->this$0:Landroid/graphics/drawable/RippleAnimationSession;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/drawable/RippleAnimationSession;->-$$Nest$fputmCurrentAnimation(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/Animator;)V

    .line 164
    :cond_31
    return-void
.end method
