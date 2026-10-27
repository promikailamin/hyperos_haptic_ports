.class Lcom/android/internal/widget/MiuiDecorCaptionView$6;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->updateLayerDrawables()V
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

    .line 655
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$6;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 658
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$6;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fgetmOwner(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 659
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$6;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fgetmOwner(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->checkAllChildPaddingForFreeForm()V

    .line 660
    :cond_17
    return-void
.end method
