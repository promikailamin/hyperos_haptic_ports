.class Landroid/app/SystemServiceRegistry$141;
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
        "Landroid/app/ambientcontext/AmbientContextManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1783
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/app/ambientcontext/AmbientContextManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1787
    const-string v0, "ambient_context"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1789
    nop

    .line 1790
    invoke-static {v0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ambientcontext/IAmbientContextManager;

    move-result-object v0

    .line 1791
    new-instance v1, Landroid/app/ambientcontext/AmbientContextManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/app/ambientcontext/AmbientContextManager;-><init>(Landroid/content/Context;Landroid/app/ambientcontext/IAmbientContextManager;)V

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

    .line 1783
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$141;->createService(Landroid/app/ContextImpl;)Landroid/app/ambientcontext/AmbientContextManager;

    move-result-object p1

    return-object p1
.end method
