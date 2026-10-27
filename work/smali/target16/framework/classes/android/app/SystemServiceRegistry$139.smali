.class Landroid/app/SystemServiceRegistry$139;
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
        "Landroid/content/pm/verify/domain/DomainVerificationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1762
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/content/pm/verify/domain/DomainVerificationManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1766
    const-string v0, "domain_verification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1768
    nop

    .line 1769
    invoke-static {v0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/verify/domain/IDomainVerificationManager;

    move-result-object v0

    .line 1770
    new-instance v1, Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-direct {v1, p1, v0}, Landroid/content/pm/verify/domain/DomainVerificationManager;-><init>(Landroid/content/Context;Landroid/content/pm/verify/domain/IDomainVerificationManager;)V

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

    .line 1762
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$139;->createService(Landroid/app/ContextImpl;)Landroid/content/pm/verify/domain/DomainVerificationManager;

    move-result-object p1

    return-object p1
.end method
