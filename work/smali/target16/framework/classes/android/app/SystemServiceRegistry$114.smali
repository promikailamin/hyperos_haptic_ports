.class Landroid/app/SystemServiceRegistry$114;
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
        "Landroid/companion/datatransfer/continuity/TaskContinuityManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1509
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/companion/datatransfer/continuity/TaskContinuityManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1513
    const-string/jumbo v0, "task_continuity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1515
    nop

    .line 1516
    invoke-static {v0}, Landroid/companion/datatransfer/continuity/ITaskContinuityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/datatransfer/continuity/ITaskContinuityManager;

    move-result-object v0

    .line 1517
    new-instance v1, Landroid/companion/datatransfer/continuity/TaskContinuityManager;

    invoke-direct {v1, p1, v0}, Landroid/companion/datatransfer/continuity/TaskContinuityManager;-><init>(Landroid/content/Context;Landroid/companion/datatransfer/continuity/ITaskContinuityManager;)V

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

    .line 1509
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$114;->createService(Landroid/app/ContextImpl;)Landroid/companion/datatransfer/continuity/TaskContinuityManager;

    move-result-object p1

    return-object p1
.end method
