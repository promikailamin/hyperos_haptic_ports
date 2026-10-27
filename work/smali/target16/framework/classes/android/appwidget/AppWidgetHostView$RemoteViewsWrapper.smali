.class Landroid/appwidget/AppWidgetHostView$RemoteViewsWrapper;
.super Landroid/widget/RemoteViews;
.source "AppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsWrapper"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;I)V
    .registers 3

    .line 1231
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 1232
    return-void
.end method
