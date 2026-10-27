.class public final synthetic Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/appwidget/AppWidgetManager;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/widget/RemoteViews;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;->f$0:Landroid/appwidget/AppWidgetManager;

    iput p2, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;->f$2:Landroid/widget/RemoteViews;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;->f$0:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;->f$2:Landroid/widget/RemoteViews;

    invoke-static {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->$r8$lambda$5idQmZj0fPc4LpEWinoqSHpsASo(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V

    return-void
.end method
