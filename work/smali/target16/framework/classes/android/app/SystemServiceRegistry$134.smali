.class Landroid/app/SystemServiceRegistry$134;
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
        "Landroid/apphibernation/AppHibernationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1703
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/apphibernation/AppHibernationManager;
    .registers 3

    .line 1706
    const-string v0, "app_hibernation"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1707
    if-nez v0, :cond_a

    const/4 p1, 0x0

    goto :goto_10

    :cond_a
    new-instance v0, Landroid/apphibernation/AppHibernationManager;

    invoke-direct {v0, p1}, Landroid/apphibernation/AppHibernationManager;-><init>(Landroid/content/Context;)V

    move-object p1, v0

    :goto_10
    return-object p1
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

    .line 1703
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$134;->createService(Landroid/app/ContextImpl;)Landroid/apphibernation/AppHibernationManager;

    move-result-object p1

    return-object p1
.end method
