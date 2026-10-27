.class Lcom/android/internal/widget/ToolbarWidgetWrapper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 607
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$3;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 610
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$3;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-static {p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->-$$Nest$fgetmToolbar(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 611
    return-void
.end method
