.class Landroid/app/SystemServiceRegistry$148;
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
        "Landroid/security/advancedprotection/AdvancedProtectionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1874
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/security/advancedprotection/AdvancedProtectionManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1878
    const-string p1, "advanced_protection"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 1880
    nop

    .line 1881
    invoke-static {p1}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/advancedprotection/IAdvancedProtectionService;

    move-result-object p1

    .line 1882
    if-nez p1, :cond_f

    .line 1883
    const/4 p1, 0x0

    return-object p1

    .line 1885
    :cond_f
    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionManager;

    invoke-direct {v0, p1}, Landroid/security/advancedprotection/AdvancedProtectionManager;-><init>(Landroid/security/advancedprotection/IAdvancedProtectionService;)V

    return-object v0
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

    .line 1874
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$148;->createService(Landroid/app/ContextImpl;)Landroid/security/advancedprotection/AdvancedProtectionManager;

    move-result-object p1

    return-object p1
.end method
