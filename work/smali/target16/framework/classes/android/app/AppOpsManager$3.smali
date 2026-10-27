.class Landroid/app/AppOpsManager$3;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Landroid/app/AppOpsManager$CheckPackageQuery;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 8329
    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/app/AppOpsManager$CheckPackageQuery;)Ljava/lang/Integer;
    .registers 4

    .line 8332
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$smgetService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    .line 8334
    :try_start_4
    invoke-static {p1}, Landroid/app/AppOpsManager$CheckPackageQuery;->-$$Nest$fgetuid(Landroid/app/AppOpsManager$CheckPackageQuery;)I

    move-result v1

    invoke-static {p1}, Landroid/app/AppOpsManager$CheckPackageQuery;->-$$Nest$fgetpackageName(Landroid/app/AppOpsManager$CheckPackageQuery;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    return-object p1

    .line 8335
    :catch_15
    move-exception p1

    .line 8336
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 8329
    check-cast p1, Landroid/app/AppOpsManager$CheckPackageQuery;

    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$3;->apply(Landroid/app/AppOpsManager$CheckPackageQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist shouldBypassCache(Landroid/app/AppOpsManager$CheckPackageQuery;)Z
    .registers 2

    .line 8343
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->checkPackageCachingEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic blacklist shouldBypassCache(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 8329
    check-cast p1, Landroid/app/AppOpsManager$CheckPackageQuery;

    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$3;->shouldBypassCache(Landroid/app/AppOpsManager$CheckPackageQuery;)Z

    move-result p1

    return p1
.end method
