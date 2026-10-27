.class Lcom/android/internal/widget/ResolverDrawerLayout$1;
.super Ljava/lang/Object;
.source "ResolverDrawerLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ResolverDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ResolverDrawerLayout;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTouchModeChanged(Z)V
    .registers 4

    .line 140
    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->-$$Nest$misDescendantClipped(Lcom/android/internal/widget/ResolverDrawerLayout;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 141
    iget-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->-$$Nest$msmoothScrollTo(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V

    .line 143
    :cond_1f
    return-void
.end method
