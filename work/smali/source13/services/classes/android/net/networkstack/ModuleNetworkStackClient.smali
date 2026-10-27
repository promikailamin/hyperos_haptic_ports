.class public Landroid/net/networkstack/ModuleNetworkStackClient;
.super Landroid/net/networkstack/NetworkStackClientBase;
.source "ModuleNetworkStackClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Landroid/net/networkstack/ModuleNetworkStackClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroid/net/networkstack/NetworkStackClientBase;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/net/networkstack/ModuleNetworkStackClient;
    .registers 5
    .param p0, "packageContext"    # Landroid/content/Context;

    const-class v0, Landroid/net/networkstack/ModuleNetworkStackClient;

    monitor-enter v0

    .line 47
    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1b

    .line 53
    sget-object v1, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;

    if-nez v1, :cond_17

    .line 54
    new-instance v1, Landroid/net/networkstack/ModuleNetworkStackClient;

    invoke-direct {v1}, Landroid/net/networkstack/ModuleNetworkStackClient;-><init>()V

    sput-object v1, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;

    .line 55
    invoke-direct {v1}, Landroid/net/networkstack/ModuleNetworkStackClient;->startPolling()V

    .line 57
    :cond_17
    sget-object v1, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_36

    monitor-exit v0

    return-object v1

    .line 49
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ModuleNetworkStackClient is not supported on API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_36

    .line 46
    .end local p0    # "packageContext":Landroid/content/Context;
    :catchall_36
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method protected static declared-synchronized resetInstanceForTest()V
    .registers 2

    const-class v0, Landroid/net/networkstack/ModuleNetworkStackClient;

    monitor-enter v0

    .line 62
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 63
    monitor-exit v0

    return-void

    .line 61
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private startPolling()V
    .registers 5

    .line 68
    invoke-static {}, Landroid/net/NetworkStack;->getService()Landroid/os/IBinder;

    move-result-object v0

    .line 69
    .local v0, "nss":Landroid/os/IBinder;
    if-eqz v0, :cond_e

    .line 73
    invoke-static {v0}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/networkstack/ModuleNetworkStackClient;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 74
    return-void

    .line 76
    :cond_e
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;-><init>(Landroid/net/networkstack/ModuleNetworkStackClient;Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner-IA;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method
