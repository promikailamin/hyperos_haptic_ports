.class public final synthetic Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;

.field public final synthetic blacklist f$1:Landroid/widget/RemoteViews;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda14;->f$0:Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;

    iput-object p2, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda14;->f$1:Landroid/widget/RemoteViews;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda14;->f$0:Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda14;->f$1:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Landroid/appwidget/AppWidgetManager;->lambda$tryAdapterConversion$4(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;)V

    return-void
.end method
