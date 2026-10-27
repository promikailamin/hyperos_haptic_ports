.class public interface abstract Lcom/android/server/appwidget/AppWidgetServiceImplStub;
.super Ljava/lang/Object;
.source "AppWidgetServiceImplStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/appwidget/AppWidgetServiceImplStub;
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/appwidget/AppWidgetServiceImplStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImplStub;

    return-object v0
.end method


# virtual methods
.method public abstract isForMiui(Landroid/content/pm/IPackageManager;Landroid/appwidget/AppWidgetProviderInfo;I)Z
.end method

.method public abstract isPACallingAndFocused(ILjava/lang/String;)Z
.end method

.method public abstract onWidgetProviderAddedOrChanged(Landroid/content/pm/IPackageManager;Landroid/appwidget/AppWidgetProviderInfo;I)V
.end method

.method public abstract updateWidgetPackagesLocked(Landroid/content/Context;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            ">;I)V"
        }
    .end annotation
.end method
