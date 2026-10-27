.class Landroid/app/SystemServiceRegistryImpl$5;
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
        "Landroid/hardware/face/BaseMiuiFaceManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SystemServiceRegistryImpl;

.field final synthetic blacklist val$isSupportTee:Z


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistryImpl;Z)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/SystemServiceRegistryImpl;

    .line 87
    iput-object p1, p0, Landroid/app/SystemServiceRegistryImpl$5;->this$0:Landroid/app/SystemServiceRegistryImpl;

    iput-boolean p2, p0, Landroid/app/SystemServiceRegistryImpl$5;->val$isSupportTee:Z

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/hardware/face/BaseMiuiFaceManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "faceService() miuiface, isSupportTee: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/SystemServiceRegistryImpl$5;->val$isSupportTee:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemServiceRegistry"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v0, p0, Landroid/app/SystemServiceRegistryImpl$5;->val$isSupportTee:Z

    if-nez v0, :cond_29

    .line 95
    new-instance v0, Landroid/hardware/face/MiuiFaceManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/face/MiuiFaceManager;-><init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V

    return-object v0

    .line 97
    :cond_29
    const-string v0, "face"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 98
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v1, Landroid/hardware/face/MiuiFaceManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Landroid/hardware/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/face/MiuiFaceManager;-><init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V

    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistryImpl$5;->createService(Landroid/app/ContextImpl;)Landroid/hardware/face/BaseMiuiFaceManager;

    move-result-object p1

    return-object p1
.end method
