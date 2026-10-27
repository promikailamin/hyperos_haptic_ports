.class Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$2;
.super Ljava/lang/Object;
.source "MiuiChooserActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->setupPreDrawForSharedElementTransition(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

.field final synthetic blacklist val$v:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;Landroid/view/View;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    .line 419
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$2;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    iput-object p2, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .registers 3

    .line 422
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$2;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 424
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$2;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    iget-object v0, v0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmRemoveSharedElements(Lcom/android/internal/app/MiuiChooserActivity;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$2;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    iget-object v0, v0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->isActivityTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 427
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$2;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    iget-object v0, v0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 429
    :cond_29
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator$2;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;

    iget-object v0, v0, Lcom/android/internal/app/MiuiChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->startPostponedEnterTransition()V

    .line 430
    const/4 v0, 0x1

    return v0
.end method
