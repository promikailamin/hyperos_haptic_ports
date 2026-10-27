.class public final synthetic Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

.field public final synthetic blacklist f$1:Landroid/content/Intent;

.field public final synthetic blacklist f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent;Ljava/util/function/Consumer;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda0;->f$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    iput-object p2, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda0;->f$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->$r8$lambda$vO091O5HPTCJtLLeDDIsj4Qq3kQ(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent;Ljava/util/function/Consumer;)V

    return-void
.end method
