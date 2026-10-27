.class Lmiui/view/ScreenView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/ScreenView;->startHideSlideBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/view/ScreenView;


# direct methods
.method constructor blacklist <init>(Lmiui/view/ScreenView;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/view/ScreenView;

    .line 623
    iput-object p1, p0, Lmiui/view/ScreenView$2;->this$0:Lmiui/view/ScreenView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 625
    iget-object v0, p0, Lmiui/view/ScreenView$2;->this$0:Lmiui/view/ScreenView;

    invoke-static {v0}, Lmiui/view/ScreenView;->-$$Nest$fgetmSlideBar(Lmiui/view/ScreenView;)Lmiui/view/ScreenView$SlideBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmiui/view/ScreenView$SlideBar;->setVisibility(I)V

    .line 626
    return-void
.end method
