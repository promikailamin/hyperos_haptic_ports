.class Lcom/miui/mishare/app/view/ArrowPopupView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ArrowPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/ArrowPopupView;->animateShowing()V
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

    .line 597
    iput-object p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView$6;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 600
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView$6;->this$0:Lcom/miui/mishare/app/view/ArrowPopupView;

    invoke-static {v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->-$$Nest$fgetmArrowPopupWindow(Lcom/miui/mishare/app/view/ArrowPopupView;)Lcom/miui/mishare/app/view/ArrowPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->dismiss()V

    .line 601
    return-void
.end method
