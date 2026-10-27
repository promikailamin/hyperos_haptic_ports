.class Landroid/app/SystemServiceRegistryImpl$7;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SystemServiceRegistryImpl;->registerMiuiServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Lmiui/car/MiuiCarManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SystemServiceRegistryImpl;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistryImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/SystemServiceRegistryImpl;

    .line 115
    iput-object p1, p0, Landroid/app/SystemServiceRegistryImpl$7;->this$0:Landroid/app/SystemServiceRegistryImpl;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistryImpl$7;->createService(Landroid/app/ContextImpl;)Lmiui/car/MiuiCarManager;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createService(Landroid/app/ContextImpl;)Lmiui/car/MiuiCarManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 118
    const-string v0, "MiuiCarService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 119
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lmiui/car/MiuiCarManager;

    invoke-static {v0}, Lmiui/car/IMiuiCarManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/car/IMiuiCarManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lmiui/car/MiuiCarManager;-><init>(Landroid/content/Context;Lmiui/car/IMiuiCarManager;)V

    return-object v1
.end method
