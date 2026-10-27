.class public Lcom/miui/autoui/WebViewClientDelegateImpl;
.super Lcom/miui/autoui/WebViewClientDelegate;
.source "WebViewClientDelegateImpl.java"


# static fields
.field public static final blacklist AUTOUI_JS_PATH_PROP:Ljava/lang/String; = "persist.sys.miui_autoui_js_rule"

.field private static final blacklist INJECT_DEV_JS_PATH:Ljava/lang/String; = "https://staging-cnbj2-fds.api.xiaomi.net/chameleon/chameleon-browser.iife.js"

.field private static final blacklist INJECT_PRODUCTION_JS_PATH:Ljava/lang/String; = "https://uiengine.sec.miui.com/chameleon-browser.iife.js"

.field private static final blacklist JS_ADDRESS_SELECTION:I

.field private static final blacklist TAG:Ljava/lang/String; = "WebViewClientDelegateImpl"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 33
    const-string v0, "persist.sys.miui_autoui_js_rule"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/miui/autoui/WebViewClientDelegateImpl;->JS_ADDRESS_SELECTION:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/miui/autoui/WebViewClientDelegate;-><init>()V

    return-void
.end method

.method private static blacklist getJsInjectPath(I)Ljava/lang/String;
    .registers 2
    .param p0, "selection"    # I

    .line 83
    packed-switch p0, :pswitch_data_c

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 87
    :pswitch_5
    const-string v0, "https://staging-cnbj2-fds.api.xiaomi.net/chameleon/chameleon-browser.iife.js"

    return-object v0

    .line 85
    :pswitch_8
    const-string v0, "https://uiengine.sec.miui.com/chameleon-browser.iife.js"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist injectAutoUIJS(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 8
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "url"    # Ljava/lang/String;

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    if-eqz p0, :cond_4e

    .line 66
    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_4e

    .line 67
    sget v0, Lcom/miui/autoui/WebViewClientDelegateImpl;->JS_ADDRESS_SELECTION:I

    invoke-static {v0}, Lcom/miui/autoui/WebViewClientDelegateImpl;->getJsInjectPath(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "jsChoosePath":Ljava/lang/String;
    if-nez v0, :cond_19

    .line 69
    return-void

    .line 71
    :cond_19
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 71
    const-string v3, "\'%s?t=%d\'"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "injectJs":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:(function() {var parent = document.getElementsByTagName(\'head\').item(0);var script = document.createElement(\'script\');script.src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";parent.appendChild(script)})()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 80
    .end local v0    # "jsChoosePath":Ljava/lang/String;
    .end local v1    # "injectJs":Ljava/lang/String;
    :cond_4e
    return-void
.end method


# virtual methods
.method public whitelist onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call onPageFinished, view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,mWebViewClient = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/autoui/WebViewClientDelegateImpl;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewClientDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/miui/autoui/WebViewClientDelegateImpl;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_3b

    .line 56
    invoke-static {p1, p2}, Lcom/miui/autoui/WebViewClientDelegateImpl;->injectAutoUIJS(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/miui/autoui/WebViewClientDelegateImpl;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_3e

    .line 59
    :cond_3b
    invoke-super {p0, p1, p2}, Lcom/miui/autoui/WebViewClientDelegate;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 61
    :goto_3e
    return-void
.end method
