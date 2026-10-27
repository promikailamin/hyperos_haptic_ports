.class public Lmiui/contentcatcher/sdk/utils/WebViewUtils;
.super Ljava/lang/Object;
.source "WebViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/utils/WebViewUtils$NativeWebViewUtils;,
        Lmiui/contentcatcher/sdk/utils/WebViewUtils$ThirdWebViewUtils;,
        Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;
    }
.end annotation


# static fields
.field private static final blacklist COMPARISON_CHAR_INDEX_FROM_TAIL:I = 0x5

.field private static final blacklist DBG:Z = false

.field private static final blacklist MATCHER_ARRAY_SIZE:I = 0x32

.field private static final blacklist TAG:Ljava/lang/String; = "WebViewUtils"

.field public static final whitelist WEBVIEW_NAME_ANDROID:Ljava/lang/String; = "android.webkit.WebView"

.field public static final whitelist WEBVIEW_NAME_BAIDU:Ljava/lang/String; = "com.baidu.webkit.sdk.WebView"

.field public static final whitelist WEBVIEW_NAME_BAIDU1:Ljava/lang/String; = "com.baidu.blink.WebView"

.field public static final whitelist WEBVIEW_NAME_MIUI:Ljava/lang/String; = "com.miui.webkit.WebView"

.field public static final whitelist WEBVIEW_NAME_SOGOU:Ljava/lang/String; = "sogou.webkit.WebView"

.field public static final whitelist WEBVIEW_NAME_TENCENT:Ljava/lang/String; = "com.tencent.smtt.webkit.WebView"

.field public static final whitelist WEBVIEW_NAME_TENCENT2:Ljava/lang/String; = "com.tencent.mm.ui.widget.MMWebView"

.field public static final whitelist WEBVIEW_NAME_UC:Ljava/lang/String; = "com.uc.webview.export.WebView"

.field private static final blacklist mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 28
    const/16 v0, 0x32

    new-array v0, v0, [Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    sput-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    .line 31
    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher-IA;)V

    const/16 v3, 0x14

    aput-object v1, v0, v3

    .line 32
    iget-object v1, v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v3, "sogou.webkit.WebView"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher-IA;)V

    const/16 v3, 0x16

    aput-object v1, v0, v3

    .line 34
    iget-object v1, v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v3, "android.webkit.WebView"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher-IA;)V

    const/16 v3, 0x17

    aput-object v1, v0, v3

    .line 36
    iget-object v1, v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v4, "com.miui.webkit.WebView"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    aget-object v1, v0, v3

    iget-object v1, v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v3, "com.baidu.blink.WebView"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher-IA;)V

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    .line 39
    iget-object v1, v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v3, "com.baidu.webkit.sdk.WebView"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher-IA;)V

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    .line 41
    iget-object v1, v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v3, "com.uc.webview.export.WebView"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher-IA;)V

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    .line 43
    iget-object v1, v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v3, "com.tencent.smtt.webkit.WebView"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher-IA;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 45
    iget-object v0, v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v1, "com.tencent.mm.ui.widget.MMWebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized whitelist addToWebViewClassMatcher(Ljava/lang/String;)V
    .registers 6
    .param p0, "className"    # Ljava/lang/String;

    const-class v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;

    monitor-enter v0

    .line 90
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2e

    if-nez v1, :cond_b

    .line 91
    monitor-exit v0

    return-void

    .line 93
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 94
    .local v1, "length":I
    const/16 v2, 0x32

    if-ge v1, v2, :cond_2c

    const/4 v2, 0x5

    if-gt v1, v2, :cond_17

    goto :goto_2c

    .line 98
    :cond_17
    sget-object v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v3, v2, v1

    if-nez v3, :cond_25

    .line 99
    new-instance v3, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher-IA;)V

    aput-object v3, v2, v1

    .line 101
    :cond_25
    aget-object v2, v2, v1

    invoke-static {v2, p0}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->-$$Nest$maddToMatchList(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2e

    .line 102
    monitor-exit v0

    return-void

    .line 95
    :cond_2c
    :goto_2c
    monitor-exit v0

    return-void

    .line 89
    .end local v1    # "length":I
    .end local p0    # "className":Ljava/lang/String;
    :catchall_2e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static whitelist checkViewMatchedByClassName(Landroid/view/View;Ljava/lang/String;)Z
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "className"    # Ljava/lang/String;

    .line 132
    const/4 v0, 0x1

    if-eqz p0, :cond_22

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_22

    .line 136
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_e
    if-eqz v1, :cond_20

    .line 137
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 139
    return v0

    .line 136
    .end local v2    # "name":Ljava/lang/String;
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_e

    .line 142
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_20
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_22
    :goto_22
    return v0
.end method

.method private static blacklist foundFromWebViewClassMatcher(Ljava/lang/String;[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)Z
    .registers 11
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "matcherArray"    # [Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 64
    .local v0, "length":I
    const/4 v1, 0x0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_a

    .line 65
    return v1

    .line 68
    :cond_a
    aget-object v2, p1, v0

    .line 69
    .local v2, "matcher":Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;
    if-nez v2, :cond_f

    .line 70
    return v1

    .line 72
    :cond_f
    const/4 v3, 0x0

    .line 73
    .local v3, "useEquals":Z
    add-int/lit8 v4, v0, -0x5

    .line 74
    .local v4, "comparisonIndex":I
    iget-object v5, v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 75
    .local v6, "matcherClassName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_41

    .line 76
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_41

    .line 77
    const/4 v3, 0x1

    .line 78
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 79
    const/4 v1, 0x1

    return v1

    .line 82
    .end local v6    # "matcherClassName":Ljava/lang/String;
    :cond_41
    goto :goto_18

    .line 83
    :cond_42
    nop

    .line 86
    return v1
.end method

.method public static whitelist initWebViewJsInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .line 155
    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_8

    .line 157
    invoke-static {p0, p1, p2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$NativeWebViewUtils;->addJavascriptInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    .line 160
    :cond_8
    invoke-static {p0, p1, p2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$ThirdWebViewUtils;->addJavascriptInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    :goto_b
    return-void
.end method

.method private static blacklist isSystemView(Ljava/lang/String;)Z
    .registers 2
    .param p0, "className"    # Ljava/lang/String;

    .line 146
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 147
    const-string v0, "android.view"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "android.widget"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 148
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 151
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized whitelist isWebView(Landroid/view/View;)Z
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    const-class v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;

    monitor-enter v0

    .line 119
    const/4 v1, 0x0

    if-nez p0, :cond_8

    .line 120
    monitor-exit v0

    return v1

    .line 122
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_c
    if-eqz v2, :cond_23

    .line 123
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "name":Ljava/lang/String;
    sget-object v4, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-static {v3, v4}, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->foundFromWebViewClassMatcher(Ljava/lang/String;[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)Z

    move-result v4
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_25

    if-eqz v4, :cond_1d

    .line 125
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 122
    .end local v3    # "name":Ljava/lang/String;
    :cond_1d
    :try_start_1d
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_25

    move-object v2, v3

    goto :goto_c

    .line 128
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_23
    monitor-exit v0

    return v1

    .line 118
    .end local p0    # "view":Landroid/view/View;
    :catchall_25
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized whitelist removeFromWebViewClassMatcher(Ljava/lang/String;)V
    .registers 4
    .param p0, "className"    # Ljava/lang/String;

    const-class v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;

    monitor-enter v0

    .line 105
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_24

    if-nez v1, :cond_b

    .line 106
    monitor-exit v0

    return-void

    .line 108
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 109
    .local v1, "length":I
    const/16 v2, 0x32

    if-ge v1, v2, :cond_22

    const/4 v2, 0x5

    if-gt v1, v2, :cond_17

    goto :goto_22

    .line 113
    :cond_17
    sget-object v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v2, v2, v1

    if-eqz v2, :cond_20

    .line 114
    invoke-static {v2, p0}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->-$$Nest$mremoveFromMatchList(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_24

    .line 116
    :cond_20
    monitor-exit v0

    return-void

    .line 110
    :cond_22
    :goto_22
    monitor-exit v0

    return-void

    .line 104
    .end local v1    # "length":I
    .end local p0    # "className":Ljava/lang/String;
    :catchall_24
    move-exception p0

    monitor-exit v0

    throw p0
.end method
