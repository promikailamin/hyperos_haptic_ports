.class public Landroid/inputmethodservice/InputMethodAnalyticsUtil;
.super Ljava/lang/Object;
.source "InputMethodAnalyticsUtil.java"


# static fields
.field private static final blacklist KEY_FUNCTION_CLICKED:Ljava/lang/String; = "click"

.field private static final blacklist KEY_INPUT_METHOD_ANALYTICS:Ljava/lang/String; = "input_method_analytics"

.field private static final blacklist KEY_INPUT_METHOD_PROVIDER_URI:Ljava/lang/String; = "content://com.miui.input.provider"

.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodAnalytics"

.field private static final blacklist TRACK_KEY_NOTIFICATION_PANEL_KEYBOARD_SWITCH:Ljava/lang/String; = "notification_panel_keyboard_switch"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selectValue"    # Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InputMethodAnalytics"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    .local v1, "subHandler":Landroid/os/Handler;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "clickKey"

    const-string v4, "click"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v3, "clickValue"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v3, "recordKey"

    const-string v4, "notification_panel_keyboard_switch"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v3, Landroid/inputmethodservice/InputMethodAnalyticsUtil$1;

    invoke-direct {v3, p0, v2, v0}, Landroid/inputmethodservice/InputMethodAnalyticsUtil$1;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void
.end method

.method public static blacklist addNotificationPanelRecord(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selectValue"    # Ljava/lang/String;

    .line 28
    invoke-static {p0, p1}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    return-void
.end method
