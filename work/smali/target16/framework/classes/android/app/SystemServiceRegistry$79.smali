.class Landroid/app/SystemServiceRegistry$79;
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
        "Landroid/security/authenticationpolicy/AuthenticationPolicyManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1125
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/security/authenticationpolicy/AuthenticationPolicyManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1129
    const-string v0, "authentication_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1131
    nop

    .line 1132
    invoke-static {v0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    move-result-object v0

    .line 1133
    new-instance v1, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;-><init>(Landroid/content/Context;Landroid/security/authenticationpolicy/IAuthenticationPolicyService;)V

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

    .line 1125
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$79;->createService(Landroid/app/ContextImpl;)Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    move-result-object p1

    return-object p1
.end method
