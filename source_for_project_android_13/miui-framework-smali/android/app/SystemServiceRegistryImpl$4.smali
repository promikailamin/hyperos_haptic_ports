.class Landroid/app/SystemServiceRegistryImpl$4;
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
        "Landroid/location/LocationPolicyManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SystemServiceRegistryImpl;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistryImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/SystemServiceRegistryImpl;

    .line 76
    iput-object p1, p0, Landroid/app/SystemServiceRegistryImpl$4;->this$0:Landroid/app/SystemServiceRegistryImpl;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/location/LocationPolicyManager;
    .registers 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 79
    new-instance v0, Landroid/location/LocationPolicyManager;

    .line 80
    const-string v1, "locationpolicy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/location/ILocationPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/LocationPolicyManager;-><init>(Landroid/location/ILocationPolicyManager;)V

    return-object v0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistryImpl$4;->createService(Landroid/app/ContextImpl;)Landroid/location/LocationPolicyManager;

    move-result-object p1

    return-object p1
.end method
