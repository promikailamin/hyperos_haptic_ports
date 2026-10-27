.class public Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;
.super Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
.source "ShortcutRequestPinProcessor.java"


# instance fields
.field public final mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field public final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)V
    .registers 7

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILcom/android/server/pm/ShortcutRequestPinProcessor-IA;)V

    .line 158
    iput-object p4, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 159
    iput-object p5, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Lcom/android/server/pm/ShortcutRequestPinProcessor-IA;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public tryAccept(Landroid/os/Bundle;)Z
    .registers 6

    if-eqz p1, :cond_25

    .line 175
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 179
    :try_start_d
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    invoke-static {v3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->-$$Nest$fgetmService(Lcom/android/server/pm/ShortcutRequestPinProcessor;)Lcom/android/server/pm/ShortcutService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 180
    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetManager;->setConfigActivityComplete(I)V
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_20

    .line 182
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_25

    :catchall_20
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    throw p0

    .line 186
    :cond_25
    :goto_25
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->tryAccept(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
