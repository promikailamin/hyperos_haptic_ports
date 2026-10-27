.class public Lcom/android/server/appwidget/AppWidgetServiceImpl$2;
.super Landroid/database/ContentObserver;
.source "AppWidgetServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field public final synthetic val$fontScaleUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Handler;Landroid/net/Uri;)V
    .registers 4

    .line 623
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iput-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->val$fontScaleUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLjava/util/Collection;ILandroid/os/UserHandle;)V
    .registers 5

    .line 627
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 628
    iget-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->val$fontScaleUri:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 629
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$monFontScaleChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    goto :goto_4

    :cond_22
    return-void
.end method
