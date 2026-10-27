.class public final synthetic Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .line 0
    iget v0, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->lambda$createExecutorService$14(ILjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
