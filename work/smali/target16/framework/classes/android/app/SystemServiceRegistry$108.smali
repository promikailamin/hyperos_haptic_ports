.class Landroid/app/SystemServiceRegistry$108;
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
        "Landroid/app/smartspace/SmartspaceManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1442
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/app/smartspace/SmartspaceManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1446
    const-string/jumbo v0, "smartspace"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1447
    if-nez v0, :cond_b

    const/4 p1, 0x0

    goto :goto_11

    :cond_b
    new-instance v0, Landroid/app/smartspace/SmartspaceManager;

    invoke-direct {v0, p1}, Landroid/app/smartspace/SmartspaceManager;-><init>(Landroid/content/Context;)V

    move-object p1, v0

    :goto_11
    return-object p1
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

    .line 1442
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$108;->createService(Landroid/app/ContextImpl;)Landroid/app/smartspace/SmartspaceManager;

    move-result-object p1

    return-object p1
.end method
