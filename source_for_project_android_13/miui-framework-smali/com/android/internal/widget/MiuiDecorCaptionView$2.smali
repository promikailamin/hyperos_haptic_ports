.class Lcom/android/internal/widget/MiuiDecorCaptionView$2;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
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

    .line 294
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$2;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$2;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-$$Nest$mupdateLayerDrawables(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    .line 298
    return-void
.end method
