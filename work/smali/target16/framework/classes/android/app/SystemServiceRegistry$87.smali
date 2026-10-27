.class Landroid/app/SystemServiceRegistry$87;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/service/oemlock/OemLockManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1214
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService()Landroid/service/oemlock/OemLockManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1217
    const-string/jumbo v0, "oem_lock"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1218
    invoke-static {v0}, Landroid/service/oemlock/IOemLockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/oemlock/IOemLockService;

    move-result-object v0

    .line 1219
    if-eqz v0, :cond_13

    .line 1220
    new-instance v1, Landroid/service/oemlock/OemLockManager;

    invoke-direct {v1, v0}, Landroid/service/oemlock/OemLockManager;-><init>(Landroid/service/oemlock/IOemLockService;)V

    return-object v1

    .line 1223
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist createService()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1214
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$87;->createService()Landroid/service/oemlock/OemLockManager;

    move-result-object v0

    return-object v0
.end method
