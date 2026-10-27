.class Lcom/android/internal/widget/MiuiDecorCaptionView$7;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->showTipView()Z
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

    .line 792
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$7;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 795
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$7;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$fgetmOpenCloseTipView(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lcom/android/internal/widget/OpenCloseTipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/OpenCloseTipView;->showTipView()V

    .line 796
    const-string v0, "MiuiDecorCaptionView"

    const-string v1, "showTipViewshow tipview if current mode of this stack is freeform"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return-void
.end method
