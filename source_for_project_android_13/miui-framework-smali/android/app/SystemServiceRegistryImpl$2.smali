.class Landroid/app/SystemServiceRegistryImpl$2;
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
        "Lmiui/security/SecurityManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SystemServiceRegistryImpl;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistryImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/SystemServiceRegistryImpl;

    .line 47
    iput-object p1, p0, Landroid/app/SystemServiceRegistryImpl$2;->this$0:Landroid/app/SystemServiceRegistryImpl;

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

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistryImpl$2;->createService(Landroid/app/ContextImpl;)Lmiui/security/SecurityManager;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createService(Landroid/app/ContextImpl;)Lmiui/security/SecurityManager;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 50
    const-string v0, "security"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 51
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_a

    .line 52
    const/4 v1, 0x0

    return-object v1

    .line 54
    :cond_a
    invoke-static {v0}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v1

    .line 55
    .local v1, "service":Lmiui/security/ISecurityManager;
    new-instance v2, Lmiui/security/SecurityManager;

    invoke-direct {v2, v1}, Lmiui/security/SecurityManager;-><init>(Lmiui/security/ISecurityManager;)V

    return-object v2
.end method
