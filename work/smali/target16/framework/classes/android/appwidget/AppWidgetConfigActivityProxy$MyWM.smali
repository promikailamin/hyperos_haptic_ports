.class Landroid/appwidget/AppWidgetConfigActivityProxy$MyWM;
.super Landroid/view/WindowManagerWrapper;
.source "AppWidgetConfigActivityProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetConfigActivityProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyWM"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowManager;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Landroid/view/WindowManagerWrapper;-><init>(Landroid/view/WindowManager;)V

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 76
    return-void
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .registers 2

    .line 82
    return-void
.end method

.method public whitelist removeViewImmediate(Landroid/view/View;)V
    .registers 2

    .line 85
    return-void
.end method

.method public whitelist updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 79
    return-void
.end method
