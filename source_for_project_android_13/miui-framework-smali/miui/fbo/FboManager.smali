.class public Lmiui/fbo/FboManager;
.super Ljava/lang/Object;
.source "FboManager.java"


# static fields
.field private static final blacklist FBO_SERVICE_NAME:Ljava/lang/String; = "miui.fbo.service"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sInstance:Lmiui/fbo/FboManager;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Lmiui/fbo/IFboManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lmiui/fbo/FboManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/fbo/FboManager;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lmiui/fbo/FboManager;->sInstance:Lmiui/fbo/FboManager;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lmiui/fbo/FboManager;->mContext:Landroid/content/Context;

    .line 39
    const-string v0, "miui.fbo.service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/fbo/IFboManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/fbo/IFboManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/fbo/FboManager;->mService:Lmiui/fbo/IFboManager;

    .line 40
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lmiui/fbo/FboManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    sget-object v0, Lmiui/fbo/FboManager;->sInstance:Lmiui/fbo/FboManager;

    if-nez v0, :cond_17

    .line 27
    const-class v0, Lmiui/fbo/FboManager;

    monitor-enter v0

    .line 28
    :try_start_7
    sget-object v1, Lmiui/fbo/FboManager;->sInstance:Lmiui/fbo/FboManager;

    if-nez v1, :cond_12

    .line 29
    new-instance v1, Lmiui/fbo/FboManager;

    invoke-direct {v1, p0}, Lmiui/fbo/FboManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmiui/fbo/FboManager;->sInstance:Lmiui/fbo/FboManager;

    .line 31
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 34
    :cond_17
    :goto_17
    sget-object v0, Lmiui/fbo/FboManager;->sInstance:Lmiui/fbo/FboManager;

    return-object v0
.end method


# virtual methods
.method public blacklist FBO_isSupport()Z
    .registers 4

    .line 44
    :try_start_0
    iget-object v0, p0, Lmiui/fbo/FboManager;->mService:Lmiui/fbo/IFboManager;

    invoke-interface {v0}, Lmiui/fbo/IFboManager;->FBO_isSupport()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 45
    :catch_7
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/fbo/FboManager;->TAG:Ljava/lang/String;

    const-string v2, "FBO_isSupport(): "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist FBO_new_isSupport(Ljava/lang/String;)Z
    .registers 5
    .param p1, "val"    # Ljava/lang/String;

    .line 53
    :try_start_0
    iget-object v0, p0, Lmiui/fbo/FboManager;->mService:Lmiui/fbo/IFboManager;

    invoke-interface {v0, p1}, Lmiui/fbo/IFboManager;->FBO_new_isSupport(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 54
    :catch_7
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/fbo/FboManager;->TAG:Ljava/lang/String;

    const-string v2, "FBO_isSupport(): "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist FBO_new_trigger(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .line 70
    :try_start_0
    iget-object v0, p0, Lmiui/fbo/FboManager;->mService:Lmiui/fbo/IFboManager;

    invoke-interface {v0, p1, p2}, Lmiui/fbo/IFboManager;->FBO_new_trigger(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 73
    goto :goto_e

    .line 71
    :catch_6
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/fbo/FboManager;->TAG:Ljava/lang/String;

    const-string v2, "FBO_trigger(String path): "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public blacklist FBO_notifyFragStatus()V
    .registers 4

    .line 78
    :try_start_0
    iget-object v0, p0, Lmiui/fbo/FboManager;->mService:Lmiui/fbo/IFboManager;

    invoke-interface {v0}, Lmiui/fbo/IFboManager;->FBO_notifyFragStatus()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 81
    goto :goto_e

    .line 79
    :catch_6
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/fbo/FboManager;->TAG:Ljava/lang/String;

    const-string v2, "FBO_notifyFragStatus(): "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public blacklist FBO_trigger(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 62
    :try_start_0
    iget-object v0, p0, Lmiui/fbo/FboManager;->mService:Lmiui/fbo/IFboManager;

    invoke-interface {v0, p1}, Lmiui/fbo/IFboManager;->FBO_trigger(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 65
    goto :goto_e

    .line 63
    :catch_6
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/fbo/FboManager;->TAG:Ljava/lang/String;

    const-string v2, "FBO_trigger(String path): "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method
