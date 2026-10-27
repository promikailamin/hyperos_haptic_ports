.class Landroid/app/SystemServiceRegistry$147;
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
        "Landroid/app/supervision/SupervisionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1858
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/app/supervision/SupervisionManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1862
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->supervisionApi()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1866
    const-string/jumbo v0, "supervision"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1868
    invoke-static {v0}, Landroid/app/supervision/ISupervisionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/supervision/ISupervisionManager;

    move-result-object v0

    .line 1869
    new-instance v1, Landroid/app/supervision/SupervisionManager;

    invoke-direct {v1, p1, v0}, Landroid/app/supervision/SupervisionManager;-><init>(Landroid/content/Context;Landroid/app/supervision/ISupervisionManager;)V

    return-object v1

    .line 1863
    :cond_17
    new-instance p1, Landroid/os/ServiceManager$ServiceNotFoundException;

    const-string v0, "SupervisionManager is not supported"

    invoke-direct {p1, v0}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 1858
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$147;->createService(Landroid/app/ContextImpl;)Landroid/app/supervision/SupervisionManager;

    move-result-object p1

    return-object p1
.end method
