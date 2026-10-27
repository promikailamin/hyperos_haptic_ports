.class Lcom/android/internal/widget/OpenCloseTipView$1;
.super Ljava/lang/Object;
.source "OpenCloseTipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/OpenCloseTipView;->inflateResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/OpenCloseTipView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/OpenCloseTipView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/OpenCloseTipView;

    .line 53
    iput-object p1, p0, Lcom/android/internal/widget/OpenCloseTipView$1;->this$0:Lcom/android/internal/widget/OpenCloseTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/android/internal/widget/OpenCloseTipView$1;->this$0:Lcom/android/internal/widget/OpenCloseTipView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OpenCloseTipView;->hideTipView()V

    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/OpenCloseTipView$1;->this$0:Lcom/android/internal/widget/OpenCloseTipView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OpenCloseTipView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/OpenCloseTipView$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/OpenCloseTipView$1$1;-><init>(Lcom/android/internal/widget/OpenCloseTipView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
.end method
