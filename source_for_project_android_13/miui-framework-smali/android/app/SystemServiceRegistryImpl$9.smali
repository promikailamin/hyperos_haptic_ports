.class Landroid/app/SystemServiceRegistryImpl$9;
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
        "Lmiui/hardware/shoulderkey/ShoulderKeyManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SystemServiceRegistryImpl;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistryImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/SystemServiceRegistryImpl;

    .line 136
    iput-object p1, p0, Landroid/app/SystemServiceRegistryImpl$9;->this$0:Landroid/app/SystemServiceRegistryImpl;

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

    .line 136
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistryImpl$9;->createService(Landroid/app/ContextImpl;)Lmiui/hardware/shoulderkey/ShoulderKeyManager;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createService(Landroid/app/ContextImpl;)Lmiui/hardware/shoulderkey/ShoulderKeyManager;
    .registers 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 139
    new-instance v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;

    invoke-direct {v0}, Lmiui/hardware/shoulderkey/ShoulderKeyManager;-><init>()V

    return-object v0
.end method
