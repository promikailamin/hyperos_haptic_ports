.class Landroid/app/SystemServiceRegistry$13;
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
        "Landroid/view/selectiontoolbar/SelectionToolbarManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 455
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/view/selectiontoolbar/SelectionToolbarManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 459
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 460
    nop

    .line 461
    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 462
    const-string v0, "android.software.leanback"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 470
    :goto_18
    const-string/jumbo v0, "selection_toolbar"

    if-eqz p1, :cond_22

    .line 471
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    goto :goto_26

    .line 473
    :cond_22
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 474
    :goto_26
    if-nez p1, :cond_2a

    .line 475
    const/4 p1, 0x0

    return-object p1

    .line 477
    :cond_2a
    new-instance v0, Landroid/view/selectiontoolbar/SelectionToolbarManager;

    .line 478
    invoke-static {p1}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/selectiontoolbar/SelectionToolbarManager;-><init>(Landroid/view/selectiontoolbar/ISelectionToolbarManager;)V

    .line 477
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

    .line 455
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$13;->createService(Landroid/app/ContextImpl;)Landroid/view/selectiontoolbar/SelectionToolbarManager;

    move-result-object p1

    return-object p1
.end method
