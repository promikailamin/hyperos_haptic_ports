.class public interface abstract Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppWidgetHostListener"
.end annotation


# virtual methods
.method public blacklist collectWidgetEvent()Landroid/appwidget/AppWidgetEvent;
    .registers 2

    .line 574
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist onUpdateProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)V
.end method

.method public abstract blacklist onViewDataChanged(I)V
.end method

.method public abstract blacklist updateAppWidget(Landroid/widget/RemoteViews;)V
.end method

.method public blacklist updateAppWidgetDeferred(Ljava/lang/String;I)V
    .registers 4

    .line 549
    nop

    .line 551
    :try_start_1
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_8

    .line 554
    goto :goto_12

    .line 552
    :catch_8
    move-exception p1

    .line 553
    const-string p2, "AppWidgetHost"

    const-string/jumbo v0, "updateAppWidgetDeferred: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 555
    :goto_12
    invoke-interface {p0, p1}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 556
    return-void
.end method
