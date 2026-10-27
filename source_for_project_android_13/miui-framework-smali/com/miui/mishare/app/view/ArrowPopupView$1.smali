.class Lcom/miui/mishare/app/view/ArrowPopupView$1;
.super Ljava/lang/Object;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/view/ArrowPopupView;
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

    .line 112
    iput-object p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView$1;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 120
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$1;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fputmAnimationSet(Lcom/miui/mishare/app/view/ArrowPopupView;Landroid/view/animation/AnimationSet;)V

    .line 121
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$1;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmShowingAnimation(Lcom/miui/mishare/app/view/ArrowPopupView;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 122
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$1;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$manimateShowing(Lcom/miui/mishare/app/view/ArrowPopupView;)V

    .line 124
    :cond_13
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 128
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 116
    return-void
.end method
