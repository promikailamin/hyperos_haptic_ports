.class Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;
.super Landroid/view/InsetsController$InternalAnimationControlListener;
.source "InsetsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsetsPolicyAnimationControlListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;
    }
.end annotation


# instance fields
.field mControlCallbacks:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;

.field mFinishCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InsetsPolicy;ZLjava/lang/Runnable;I)V
    .registers 12
    .param p2, "show"    # Z
    .param p3, "finishCallback"    # Ljava/lang/Runnable;
    .param p4, "types"    # I

    .line 816
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 817
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsController$InternalAnimationControlListener;-><init>(ZZIIZI)V

    .line 819
    iput-object p3, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->mFinishCallback:Ljava/lang/Runnable;

    .line 820
    new-instance p1, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;

    invoke-direct {p1, p0, p0}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;-><init>(Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->mControlCallbacks:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;

    .line 821
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    .line 811
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->getInsetsInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onAnimationFinish()V
    .registers 3

    .line 825
    invoke-super {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->onAnimationFinish()V

    .line 826
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->mFinishCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 827
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 829
    :cond_10
    return-void
.end method
