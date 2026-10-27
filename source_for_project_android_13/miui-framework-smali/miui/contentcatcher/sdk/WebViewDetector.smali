.class public Lmiui/contentcatcher/sdk/WebViewDetector;
.super Ljava/lang/Object;
.source "WebViewDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/WebViewDetector$Callback;
    }
.end annotation


# static fields
.field public static final whitelist DETECTOR_NAME_IN_JS:Ljava/lang/String; = "MiWebViewDetector"

.field public static final whitelist TAG:Ljava/lang/String; = "WebViewDetector"

.field private static volatile blacklist sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;


# instance fields
.field private blacklist mCallback:Lmiui/contentcatcher/sdk/WebViewDetector$Callback;

.field private blacklist mCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/contentcatcher/sdk/WebViewDetector$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static whitelist getInstance()Lmiui/contentcatcher/sdk/WebViewDetector;
    .registers 2

    .line 15
    sget-object v0, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;

    if-nez v0, :cond_17

    .line 16
    const-class v0, Lmiui/contentcatcher/sdk/WebViewDetector;

    monitor-enter v0

    .line 17
    :try_start_7
    sget-object v1, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;

    if-nez v1, :cond_12

    .line 18
    new-instance v1, Lmiui/contentcatcher/sdk/WebViewDetector;

    invoke-direct {v1}, Lmiui/contentcatcher/sdk/WebViewDetector;-><init>()V

    sput-object v1, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;

    .line 20
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 22
    :cond_17
    :goto_17
    sget-object v0, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;

    return-object v0
.end method


# virtual methods
.method public whitelist onCatch(Ljava/lang/String;)V
    .registers 3
    .param p1, "content"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 41
    iget-object v0, p0, Lmiui/contentcatcher/sdk/WebViewDetector;->mCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    .line 42
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/contentcatcher/sdk/WebViewDetector$Callback;

    .line 43
    .local v0, "callback":Lmiui/contentcatcher/sdk/WebViewDetector$Callback;
    if-eqz v0, :cond_f

    .line 44
    invoke-interface {v0, p1}, Lmiui/contentcatcher/sdk/WebViewDetector$Callback;->onWebContentCatched(Ljava/lang/String;)V

    .line 47
    .end local v0    # "callback":Lmiui/contentcatcher/sdk/WebViewDetector$Callback;
    :cond_f
    return-void
.end method

.method public whitelist setActiveCallback(Lmiui/contentcatcher/sdk/WebViewDetector$Callback;)V
    .registers 3
    .param p1, "callback"    # Lmiui/contentcatcher/sdk/WebViewDetector$Callback;

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/WebViewDetector;->mCallbackRef:Ljava/lang/ref/WeakReference;

    .line 31
    return-void
.end method

.method public whitelist setCustomDetector(Lmiui/contentcatcher/sdk/WebViewDetector;)V
    .registers 4
    .param p1, "detector"    # Lmiui/contentcatcher/sdk/WebViewDetector;

    .line 34
    const-class v0, Lmiui/contentcatcher/sdk/WebViewDetector;

    monitor-enter v0

    .line 35
    :try_start_3
    sput-object p1, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;

    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 36
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
