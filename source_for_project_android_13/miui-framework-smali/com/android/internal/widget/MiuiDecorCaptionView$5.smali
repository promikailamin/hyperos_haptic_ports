.class Lcom/android/internal/widget/MiuiDecorCaptionView$5;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->notifyDownLocked(Landroid/view/MotionEvent;)Z
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

    .line 397
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$mshowTipView(Lcom/android/internal/widget/MiuiDecorCaptionView;)Z

    .line 401
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$mshowGuideTipView(Lcom/android/internal/widget/MiuiDecorCaptionView;)Z

    .line 402
    const-string v0, "MiuiDecorCaptionView"

    const-string v1, "show tipview because of clicking bottom caption for 3 times"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method
