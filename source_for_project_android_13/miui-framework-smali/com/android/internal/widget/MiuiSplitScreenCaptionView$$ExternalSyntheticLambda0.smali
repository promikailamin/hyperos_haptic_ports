.class public final synthetic Lcom/android/internal/widget/MiuiSplitScreenCaptionView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/MiuiSplitScreenCaptionView;

.field public final synthetic blacklist f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/MiuiSplitScreenCaptionView;Landroid/view/MotionEvent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/MiuiSplitScreenCaptionView;

    iput-object p2, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView$$ExternalSyntheticLambda0;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/MiuiSplitScreenCaptionView;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiSplitScreenCaptionView$$ExternalSyntheticLambda0;->f$1:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MiuiSplitScreenCaptionView;->lambda$onTouchEvent$0$com-android-internal-widget-MiuiSplitScreenCaptionView(Landroid/view/MotionEvent;)V

    return-void
.end method
