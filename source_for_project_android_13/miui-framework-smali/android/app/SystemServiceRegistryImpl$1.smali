.class Landroid/app/SystemServiceRegistryImpl$1;
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
        "Lmiui/webview/MiuiWebViewManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SystemServiceRegistryImpl;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistryImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/SystemServiceRegistryImpl;

    .line 39
    iput-object p1, p0, Landroid/app/SystemServiceRegistryImpl$1;->this$0:Landroid/app/SystemServiceRegistryImpl;

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

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistryImpl$1;->createService(Landroid/app/ContextImpl;)Lmiui/webview/MiuiWebViewManager;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createService(Landroid/app/ContextImpl;)Lmiui/webview/MiuiWebViewManager;
    .registers 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 42
    invoke-static {}, Lmiui/webview/MiuiWebViewManager;->getInstance()Lmiui/webview/MiuiWebViewManager;

    move-result-object v0

    return-object v0
.end method
