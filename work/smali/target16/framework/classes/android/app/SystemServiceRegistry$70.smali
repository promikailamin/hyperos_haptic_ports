.class Landroid/app/SystemServiceRegistry$70;
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
        "Landroid/app/appfunctions/AppFunctionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1008
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/app/appfunctions/AppFunctionManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1012
    invoke-static {p1}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1013
    const/4 p1, 0x0

    return-object p1

    .line 1016
    :cond_8
    nop

    .line 1017
    const-string v0, "app_function"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1016
    invoke-static {v0}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appfunctions/IAppFunctionManager;

    move-result-object v0

    .line 1018
    new-instance v1, Landroid/app/appfunctions/AppFunctionManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/app/appfunctions/AppFunctionManager;-><init>(Landroid/app/appfunctions/IAppFunctionManager;Landroid/content/Context;)V

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

    .line 1008
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$70;->createService(Landroid/app/ContextImpl;)Landroid/app/appfunctions/AppFunctionManager;

    move-result-object p1

    return-object p1
.end method
