.class Landroid/app/SystemServiceRegistry$152;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/service/chooser/ChooserManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1937
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService()Landroid/service/chooser/ChooserManager;
    .registers 2

    .line 1945
    new-instance v0, Landroid/service/chooser/ChooserManager;

    invoke-direct {v0}, Landroid/service/chooser/ChooserManager;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist createService()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1937
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$152;->createService()Landroid/service/chooser/ChooserManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isServiceEnabled(Landroid/app/ContextImpl;)Z
    .registers 2

    .line 1940
    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->-$$Nest$smisChooserManagerSupported(Landroid/app/ContextImpl;)Z

    move-result p1

    return p1
.end method
