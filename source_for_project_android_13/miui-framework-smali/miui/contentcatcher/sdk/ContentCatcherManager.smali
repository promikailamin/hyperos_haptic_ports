.class public Lmiui/contentcatcher/sdk/ContentCatcherManager;
.super Ljava/lang/Object;
.source "ContentCatcherManager.java"


# static fields
.field private static final blacklist CONTENTCAP_SERVICE_NAME:Ljava/lang/String; = "miui.contentcatcher.ContentCatcherService"

.field private static blacklist DEBUG:Z = false

.field public static final whitelist MI_LIFE_VERSION:I = 0x2

.field public static final whitelist MI_MARKET_VERSION:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;


# instance fields
.field blacklist mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private volatile blacklist mService:Lmiui/contentcatcher/IContentCatcherService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Lmiui/contentcatcher/sdk/ContentCatcherManager;)Lmiui/contentcatcher/IContentCatcherService;
    .registers 1

    iget-object p0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Lmiui/contentcatcher/sdk/ContentCatcherManager;Lmiui/contentcatcher/IContentCatcherService;)V
    .registers 2

    iput-object p1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lmiui/contentcatcher/sdk/ContentCatcherManager$1;

    invoke-direct {v0, p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager$1;-><init>(Lmiui/contentcatcher/sdk/ContentCatcherManager;)V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 39
    return-void
.end method

.method public static whitelist getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;
    .registers 2

    .line 28
    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    if-nez v0, :cond_17

    .line 29
    const-class v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;

    monitor-enter v0

    .line 30
    :try_start_7
    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    if-nez v1, :cond_12

    .line 31
    new-instance v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;

    invoke-direct {v1}, Lmiui/contentcatcher/sdk/ContentCatcherManager;-><init>()V

    sput-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    .line 33
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 35
    :cond_17
    :goto_17
    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    return-object v0
.end method


# virtual methods
.method public whitelist decorateContent(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/DecorateContentParam;)V
    .registers 8
    .param p1, "listenerToken"    # Lmiui/contentcatcher/sdk/ClientToken;
    .param p2, "targetInjectorToken"    # Lmiui/contentcatcher/sdk/Token;
    .param p3, "params"    # Lmiui/contentcatcher/sdk/DecorateContentParam;

    .line 115
    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decorateContent listenerToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", targetInjectorToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    .line 118
    .local v0, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v0, :cond_2f

    .line 119
    invoke-interface {v0, p1, p2, p3}, Lmiui/contentcatcher/IContentCatcherService;->decorateContent(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/DecorateContentParam;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2f} :catch_30

    .line 123
    .end local v0    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_2f
    goto :goto_4d

    .line 121
    :catch_30
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decorateContent error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4d
    return-void
.end method

.method protected whitelist getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;
    .registers 4

    .line 166
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    if-nez v0, :cond_37

    .line 167
    monitor-enter p0

    .line 168
    :try_start_5
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    if-nez v0, :cond_32

    .line 169
    const-string v0, "miui.contentcatcher.ContentCatcherService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/contentcatcher/IContentCatcherService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    .line 170
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_34

    if-eqz v0, :cond_2b

    .line 172
    :try_start_19
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    invoke-interface {v0}, Lmiui/contentcatcher/IContentCatcherService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_26
    .catchall {:try_start_19 .. :try_end_25} :catchall_34

    goto :goto_2a

    .line 173
    :catch_26
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2a
    goto :goto_32

    .line 177
    :cond_2b
    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string v1, "failed to get ContentCatcherService."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_32
    :goto_32
    monitor-exit p0

    goto :goto_37

    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_34

    throw v0

    .line 182
    :cond_37
    :goto_37
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    return-object v0
.end method

.method public whitelist getPageConfig(Lmiui/contentcatcher/sdk/Token;)Lmiui/contentcatcher/sdk/data/PageConfig;
    .registers 6
    .param p1, "token"    # Lmiui/contentcatcher/sdk/Token;

    .line 42
    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPageInjectorInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    .line 45
    .local v0, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v0, :cond_27

    .line 46
    invoke-interface {v0, p1}, Lmiui/contentcatcher/IContentCatcherService;->getPageConfig(Lmiui/contentcatcher/sdk/Token;)Lmiui/contentcatcher/sdk/data/PageConfig;

    move-result-object v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_26} :catch_28

    return-object v1

    .line 50
    .end local v0    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_27
    goto :goto_45

    .line 48
    :catch_28
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPageInterested error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_45
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onContentCatched(Lmiui/contentcatcher/sdk/Content;)V
    .registers 6
    .param p1, "content"    # Lmiui/contentcatcher/sdk/Content;

    .line 79
    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContentCatched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    .line 82
    .local v0, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v0, :cond_25

    .line 83
    invoke-interface {v0, p1}, Lmiui/contentcatcher/IContentCatcherService;->onContentCatched(Lmiui/contentcatcher/sdk/Content;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_26

    .line 87
    .end local v0    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_25
    goto :goto_43

    .line 85
    :catch_26
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContentCatched error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_43
    return-void
.end method

.method public whitelist registerContentInjector(Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;)V
    .registers 7
    .param p1, "token"    # Lmiui/contentcatcher/sdk/Token;
    .param p2, "callback"    # Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;

    .line 55
    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerContentInjector "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    .line 58
    .local v0, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v0, :cond_25

    .line 59
    invoke-interface {v0, p1, p2}, Lmiui/contentcatcher/IContentCatcherService;->registerContentInjector(Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_26

    .line 63
    .end local v0    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_25
    goto :goto_43

    .line 61
    :catch_26
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerContentInjector error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_43
    return-void
.end method

.method public whitelist registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V
    .registers 7
    .param p1, "token"    # Lmiui/contentcatcher/sdk/ClientToken;
    .param p2, "callback"    # Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    .line 91
    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string v1, "registerContentListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    .line 94
    .local v0, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v0, :cond_14

    .line 95
    invoke-interface {v0, p1, p2}, Lmiui/contentcatcher/IContentCatcherService;->registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    .line 99
    .end local v0    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_14
    goto :goto_32

    .line 97
    :catch_15
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerContentListener error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method public whitelist unregisterContentInjector(Lmiui/contentcatcher/sdk/Token;)V
    .registers 6
    .param p1, "token"    # Lmiui/contentcatcher/sdk/Token;

    .line 67
    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string v1, "unregisterContentInjector"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    .line 70
    .local v0, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v0, :cond_14

    .line 71
    invoke-interface {v0, p1}, Lmiui/contentcatcher/IContentCatcherService;->unregisterContentInjector(Lmiui/contentcatcher/sdk/Token;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    .line 75
    .end local v0    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_14
    goto :goto_32

    .line 73
    :catch_15
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterContentInjector error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method public whitelist unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V
    .registers 6
    .param p1, "token"    # Lmiui/contentcatcher/sdk/ClientToken;

    .line 103
    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string v1, "unregisterContentListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    .line 106
    .local v0, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v0, :cond_14

    .line 107
    invoke-interface {v0, p1}, Lmiui/contentcatcher/IContentCatcherService;->unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    .line 111
    .end local v0    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_14
    goto :goto_32

    .line 109
    :catch_15
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterContentListener error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method public whitelist updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "jobTag"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 141
    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_30

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateClientConfig target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " jobTag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_30
    :try_start_30
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    .line 144
    .local v0, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v0, :cond_39

    .line 145
    invoke-interface {v0, p1, p2, p3}, Lmiui/contentcatcher/IContentCatcherService;->updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_39} :catch_3a

    .line 149
    .end local v0    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_39
    goto :goto_57

    .line 147
    :catch_3a
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateClientConfig error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_57
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist updateConfig([Ljava/lang/String;)Z
    .registers 6
    .param p1, "configs"    # [Ljava/lang/String;

    .line 128
    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string v1, "updateConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    .line 131
    .local v0, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v0, :cond_14

    .line 132
    invoke-interface {v0, p1}, Lmiui/contentcatcher/IContentCatcherService;->updateConfig([Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    .line 136
    .end local v0    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_14
    goto :goto_32

    .line 134
    :catch_15
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConfig error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "jobTag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 154
    sget-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v0, :cond_30

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateJobValidity jobTag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_30
    :try_start_30
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    .line 157
    .local v0, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v0, :cond_39

    .line 158
    invoke-interface {v0, p1, p2, p3}, Lmiui/contentcatcher/IContentCatcherService;->updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_39} :catch_3a

    .line 162
    .end local v0    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_39
    goto :goto_57

    .line 160
    :catch_3a
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateJobValidity error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_57
    return-void
.end method
