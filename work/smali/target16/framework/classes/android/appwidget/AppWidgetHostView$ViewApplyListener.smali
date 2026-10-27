.class Landroid/appwidget/AppWidgetHostView$ViewApplyListener;
.super Ljava/lang/Object;
.source "AppWidgetHostView.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewApplyListener"
.end annotation


# instance fields
.field private final greylist-max-o mIsReapply:Z

.field private final greylist-max-o mLayoutId:I

.field private final greylist-max-o mViews:Landroid/widget/RemoteViews;

.field final synthetic blacklist this$0:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method constructor blacklist <init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 707
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    .line 709
    iput p3, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    .line 710
    iput-boolean p4, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    .line 711
    return-void
.end method


# virtual methods
.method public greylist-max-o onError(Ljava/lang/Exception;)V
    .registers 11

    .line 726
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 728
    iget-object p1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    # getter for: Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/appwidget/AppWidgetHostView;->access$000(Landroid/appwidget/AppWidgetHostView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v0}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fgetmAsyncExecutor(Landroid/appwidget/AppWidgetHostView;)Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    iget v8, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    invoke-direct {v6, v0, v7, v8, v1}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v0}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fgetmInteractionLogger(Landroid/appwidget/AppWidgetHostView;)Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    move-result-object v7

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v0}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fgetmCurrentSize(Landroid/appwidget/AppWidgetHostView;)Landroid/util/SizeF;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/os/CancellationSignal;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fputmLastExecutionSignal(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)V

    goto :goto_41

    .line 735
    :cond_36
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$mapplyContent(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V

    .line 736
    iget-object p1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {p1, v2}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fputmLastExecutionSignal(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)V

    .line 738
    :goto_41
    return-void
.end method

.method public greylist-max-o onViewApplied(Landroid/view/View;)V
    .registers 5

    .line 715
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x1

    iput v1, v0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 717
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-boolean v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$mapplyContent(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V

    .line 719
    iget-object p1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v1}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fgetmLastInflatedRemoteViews(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->computeUniqueId(Landroid/widget/RemoteViews;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fputmLastInflatedRemoteViewsId(Landroid/appwidget/AppWidgetHostView;J)V

    .line 720
    iget-object p1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->restoreInstanceState()V

    .line 721
    iget-object p1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {p1, v2}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fputmLastExecutionSignal(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)V

    .line 722
    return-void
.end method
