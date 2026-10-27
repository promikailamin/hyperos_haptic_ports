.class Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyButtonRipple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/KeyButtonRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 484
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 487
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-static {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fgetmRunningAnimations(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 488
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-static {p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fgetmRunningAnimations(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-static {p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fgetmPressed(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 489
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fputmVisible(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;Z)V

    .line 490
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-static {p1, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fputmDrawingHardwareGlow(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;Z)V

    .line 491
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    .line 493
    :cond_2d
    return-void
.end method
