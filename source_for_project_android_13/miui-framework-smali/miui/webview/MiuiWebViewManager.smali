.class public Lmiui/webview/MiuiWebViewManager;
.super Ljava/lang/Object;
.source "MiuiWebViewManager.java"


# static fields
.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "miuiwebview"

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiWebViewManager"

.field private static final blacklist mLocalLock:Ljava/lang/Object;

.field private static blacklist sInstance:Lmiui/webview/MiuiWebViewManager;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Lmiui/webview/IMiuiWebViewManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/webview/MiuiWebViewManager;->mLocalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Lmiui/webview/IMiuiWebViewManager;)V
    .registers 2
    .param p1, "service"    # Lmiui/webview/IMiuiWebViewManager;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lmiui/webview/MiuiWebViewManager;->mService:Lmiui/webview/IMiuiWebViewManager;

    .line 32
    return-void
.end method

.method public static blacklist getInstance()Lmiui/webview/MiuiWebViewManager;
    .registers 4

    .line 40
    sget-object v0, Lmiui/webview/MiuiWebViewManager;->mLocalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_3
    sget-object v1, Lmiui/webview/MiuiWebViewManager;->sInstance:Lmiui/webview/MiuiWebViewManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v1, :cond_20

    .line 43
    :try_start_7
    const-string v1, "miuiwebview"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 44
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Lmiui/webview/IMiuiWebViewManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/webview/IMiuiWebViewManager;

    move-result-object v2

    .line 45
    .local v2, "stub":Lmiui/webview/IMiuiWebViewManager;
    new-instance v3, Lmiui/webview/MiuiWebViewManager;

    invoke-direct {v3, v2}, Lmiui/webview/MiuiWebViewManager;-><init>(Lmiui/webview/IMiuiWebViewManager;)V

    sput-object v3, Lmiui/webview/MiuiWebViewManager;->sInstance:Lmiui/webview/MiuiWebViewManager;
    :try_end_18
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_7 .. :try_end_18} :catch_19
    .catchall {:try_start_7 .. :try_end_18} :catchall_24

    .line 48
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "stub":Lmiui/webview/IMiuiWebViewManager;
    goto :goto_20

    .line 46
    :catch_19
    move-exception v1

    .line 47
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_1a
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 50
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_20
    :goto_20
    sget-object v1, Lmiui/webview/MiuiWebViewManager;->sInstance:Lmiui/webview/MiuiWebViewManager;

    monitor-exit v0

    return-object v1

    .line 51
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw v1
.end method


# virtual methods
.method public blacklist restartWebViewProcesses()V
    .registers 3

    .line 59
    :try_start_0
    iget-object v0, p0, Lmiui/webview/MiuiWebViewManager;->mService:Lmiui/webview/IMiuiWebViewManager;

    invoke-interface {v0}, Lmiui/webview/IMiuiWebViewManager;->restartWebViewProcesses()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 62
    nop

    .line 63
    return-void

    .line 60
    :catch_7
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
