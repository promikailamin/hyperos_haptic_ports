.class Landroid/app/SystemServiceRegistry$55;
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
        "Landroid/hardware/serial/SerialManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 849
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/hardware/serial/SerialManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 853
    const-string/jumbo v0, "serial"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 854
    new-instance v1, Landroid/hardware/serial/SerialManager;

    .line 855
    invoke-static {v0}, Landroid/hardware/serial/ISerialManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/serial/ISerialManager;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/hardware/serial/SerialManager;-><init>(Landroid/content/Context;Landroid/hardware/serial/ISerialManager;)V

    .line 854
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

    .line 849
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$55;->createService(Landroid/app/ContextImpl;)Landroid/hardware/serial/SerialManager;

    move-result-object p1

    return-object p1
.end method
