.class Landroid/app/SystemServiceRegistryImpl$6;
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
        "Landroid/net/wifi/MiuiWifiManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SystemServiceRegistryImpl;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistryImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/SystemServiceRegistryImpl;

    .line 104
    iput-object p1, p0, Landroid/app/SystemServiceRegistryImpl$6;->this$0:Landroid/app/SystemServiceRegistryImpl;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/net/wifi/MiuiWifiManager;
    .registers 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 107
    new-instance v0, Landroid/net/wifi/MiuiWifiManager;

    .line 108
    const-string v1, "MiuiWifiService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 107
    invoke-static {v1}, Landroid/net/wifi/IMiuiWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IMiuiWifiManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/MiuiWifiManager;-><init>(Landroid/net/wifi/IMiuiWifiManager;)V

    return-object v0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistryImpl$6;->createService(Landroid/app/ContextImpl;)Landroid/net/wifi/MiuiWifiManager;

    move-result-object p1

    return-object p1
.end method
