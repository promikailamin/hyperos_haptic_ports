.class Lcom/android/internal/widget/MiuiDecorCaptionView$9;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
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

    .line 1000
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$9;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 1003
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getFirstUseMiuiFreeForm()I

    move-result v0

    .line 1004
    .local v0, "firstUseFreeform":I
    if-nez v0, :cond_19

    .line 1005
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$9;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$mshowTipView(Lcom/android/internal/widget/MiuiDecorCaptionView;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 1006
    const-string v1, "MiuiDecorCaptionView"

    const-string v3, "show tipview because of gesture from minifreeform to freeform at the first time"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-static {v2}, Lmiui/app/MiuiFreeFormManager;->setFirstUseMiuiFreeForm(I)V

    .line 1010
    :cond_19
    return-void
.end method
