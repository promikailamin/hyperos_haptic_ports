.class public final synthetic Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor blacklist <init>(ILjava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda12;->f$0:I

    iput-object p2, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget v0, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda12;->f$0:I

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/appwidget/AppWidgetManager;->lambda$createExecutorService$13(ILjava/lang/Runnable;)V

    return-void
.end method
