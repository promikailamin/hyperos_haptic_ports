.class Lcom/miui/mishare/app/view/ArrowPopupView$2;
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

    .line 131
    iput-object p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView$2;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 139
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$2;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fputmIsDismissing(Lcom/miui/mishare/app/view/ArrowPopupView;Z)V

    .line 140
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$2;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fputmAnimationSet(Lcom/miui/mishare/app/view/ArrowPopupView;Landroid/view/animation/AnimationSet;)V

    .line 141
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$2;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmArrowPopupWindow(Lcom/miui/mishare/app/view/ArrowPopupView;)Lcom/miui/mishare/app/view/ArrowPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->dismiss()V

    .line 142
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$2;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/ArrowPopupView;->setArrowMode(I)V

    .line 143
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 147
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 135
    return-void
.end method
