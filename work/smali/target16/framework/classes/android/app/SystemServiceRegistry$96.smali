.class Landroid/app/SystemServiceRegistry$96;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SystemServiceRegistry;->registerServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/net/NetworkWatchlistManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1296
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/net/NetworkWatchlistManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1300
    nop

    .line 1301
    const-string/jumbo v0, "network_watchlist"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1302
    new-instance v1, Landroid/net/NetworkWatchlistManager;

    .line 1303
    invoke-static {v0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetworkWatchlistManager;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/net/NetworkWatchlistManager;-><init>(Landroid/content/Context;Lcom/android/internal/net/INetworkWatchlistManager;)V

    .line 1302
    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1296
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$96;->createService(Landroid/app/ContextImpl;)Landroid/net/NetworkWatchlistManager;

    move-result-object p1

    return-object p1
.end method
