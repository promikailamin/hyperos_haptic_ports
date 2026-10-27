.class Lcom/android/internal/widget/MessagingGroup$1;
.super Ljava/lang/Object;
.source "MessagingGroup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MessagingGroup;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/MessagingGroup;

.field final synthetic blacklist val$firstLayout:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/MessagingGroup;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 612
    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup$1;->this$0:Lcom/android/internal/widget/MessagingGroup;

    iput-boolean p2, p0, Lcom/android/internal/widget/MessagingGroup$1;->val$firstLayout:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .registers 5

    .line 615
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup$1;->this$0:Lcom/android/internal/widget/MessagingGroup;

    invoke-static {v0}, Lcom/android/internal/widget/MessagingGroup;->-$$Nest$fgetmAddedMessages(Lcom/android/internal/widget/MessagingGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 616
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_21

    .line 617
    goto :goto_a

    .line 619
    :cond_21
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->fadeIn(Landroid/view/View;)V

    .line 620
    iget-boolean v2, p0, Lcom/android/internal/widget/MessagingGroup$1;->val$firstLayout:Z

    if-nez v2, :cond_3d

    .line 621
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v2

    .line 622
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v3, Lcom/android/internal/widget/MessagingLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 621
    invoke-static {v2, v1, v3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startLocalTranslationFrom(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    .line 625
    :cond_3d
    goto :goto_a

    .line 626
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup$1;->this$0:Lcom/android/internal/widget/MessagingGroup;

    invoke-static {v0}, Lcom/android/internal/widget/MessagingGroup;->-$$Nest$fgetmAddedMessages(Lcom/android/internal/widget/MessagingGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 627
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup$1;->this$0:Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 628
    const/4 v0, 0x1

    return v0
.end method
