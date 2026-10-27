.class public Landroid/appwidget/AppWidgetConfigActivityProxy;
.super Landroid/app/Activity;
.source "AppWidgetConfigActivityProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetConfigActivityProxy$MyWM;
    }
.end annotation


# static fields
.field private static final blacklist CONFIG_ACTIVITY_REQUEST_CODE:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getWindowManager()Landroid/view/WindowManager;
    .registers 3

    .line 65
    new-instance v0, Landroid/appwidget/AppWidgetConfigActivityProxy$MyWM;

    invoke-super {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetConfigActivityProxy$MyWM;-><init>(Landroid/view/WindowManager;)V

    return-object v0
.end method

.method protected whitelist onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 55
    invoke-virtual {p0, p2, p3}, Landroid/appwidget/AppWidgetConfigActivityProxy;->setResult(ILandroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetConfigActivityProxy;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "appWidgetId"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 58
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/appwidget/AppWidgetManager;->setConfigActivityComplete(I)V

    .line 60
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetConfigActivityProxy;->finish()V

    .line 61
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetConfigActivityProxy;->setResult(I)V

    .line 43
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetConfigActivityProxy;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 44
    const-string v0, "android.intent.extra.INTENT"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 45
    if-nez p1, :cond_1b

    .line 46
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetConfigActivityProxy;->finish()V

    .line 47
    return-void

    .line 50
    :cond_1b
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetConfigActivityProxy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51
    return-void
.end method
