.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Widget"
.end annotation


# instance fields
.field appWidgetId:I

.field host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

.field maskedViews:Landroid/widget/RemoteViews;

.field options:Landroid/os/Bundle;

.field provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

.field restoredId:I

.field trackingUpdate:Z

.field updateSequenceNos:Landroid/util/SparseLongArray;

.field views:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic -$$Nest$mclearMaskedViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->clearMaskedViewsLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreplaceWithMaskedViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->replaceWithMaskedViewsLocked(Landroid/widget/RemoteViews;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .registers 3

    .line 4470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4479
    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    .line 4480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->trackingUpdate:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>()V

    return-void
.end method

.method private clearMaskedViewsLocked()Z
    .registers 2

    .line 4493
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_9

    .line 4494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    .line 4495
    const/4 v0, 0x1

    return v0

    .line 4497
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private replaceWithMaskedViewsLocked(Landroid/widget/RemoteViews;)Z
    .registers 3
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .line 4488
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    .line 4489
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getEffectiveViewsLocked()Landroid/widget/RemoteViews;
    .registers 2

    .line 4502
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    :goto_7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 4484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidgetId{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
