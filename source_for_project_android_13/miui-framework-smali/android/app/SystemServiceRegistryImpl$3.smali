.class Landroid/app/SystemServiceRegistryImpl$3;
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
        "Landroid/content/pm/HyperPackageManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SystemServiceRegistryImpl;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistryImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/SystemServiceRegistryImpl;

    .line 62
    iput-object p1, p0, Landroid/app/SystemServiceRegistryImpl$3;->this$0:Landroid/app/SystemServiceRegistryImpl;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/content/pm/HyperPackageManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 65
    const-string v0, "HyperPackageManager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_a

    .line 67
    const/4 v1, 0x0

    return-object v1

    .line 69
    :cond_a
    invoke-static {v0}, Landroid/content/pm/IHyperPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IHyperPackageManager;

    move-result-object v1

    .line 70
    .local v1, "service":Landroid/content/pm/IHyperPackageManager;
    new-instance v2, Landroid/content/pm/HyperPackageManager;

    invoke-direct {v2, v1}, Landroid/content/pm/HyperPackageManager;-><init>(Landroid/content/pm/IHyperPackageManager;)V

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistryImpl$3;->createService(Landroid/app/ContextImpl;)Landroid/content/pm/HyperPackageManager;

    move-result-object p1

    return-object p1
.end method
