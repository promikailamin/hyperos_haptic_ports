.class Landroid/app/SystemServiceRegistry$137;
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
        "Landroid/media/metrics/MediaMetricsManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1724
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/media/metrics/MediaMetricsManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1728
    nop

    .line 1729
    const-string/jumbo v0, "media_metrics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1730
    nop

    .line 1731
    invoke-static {v0}, Landroid/media/metrics/IMediaMetricsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/metrics/IMediaMetricsManager;

    move-result-object v0

    .line 1732
    new-instance v1, Landroid/media/metrics/MediaMetricsManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getUserId()I

    move-result p1

    invoke-direct {v1, v0, p1}, Landroid/media/metrics/MediaMetricsManager;-><init>(Landroid/media/metrics/IMediaMetricsManager;I)V

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

    .line 1724
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$137;->createService(Landroid/app/ContextImpl;)Landroid/media/metrics/MediaMetricsManager;

    move-result-object p1

    return-object p1
.end method
