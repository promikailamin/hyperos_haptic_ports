.class Lcom/android/internal/widget/ActionBarView$2;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ActionBarView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$2;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 4

    .line 151
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$2;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmMenuPrepared(Lcom/android/internal/widget/ActionBarView;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 153
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$2;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object p1, p1, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$2;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-$$Nest$fgetmLogoNavItem(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 155
    :cond_16
    return-void
.end method
