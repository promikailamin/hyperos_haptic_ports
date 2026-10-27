.class Landroid/app/AppOpsManager$2;
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
        "Landroid/app/AppOpsManager$AppOpModeQuery;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 8309
    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/app/AppOpsManager$AppOpModeQuery;)Ljava/lang/Integer;
    .registers 8

    .line 8312
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$smgetService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    .line 8314
    :try_start_4
    iget v1, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    iget v2, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    iget-object v3, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    iget v5, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->checkOperationRawForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_17

    return-object p1

    .line 8316
    :catch_17
    move-exception v0

    move-object p1, v0

    .line 8317
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

    .line 8309
    check-cast p1, Landroid/app/AppOpsManager$AppOpModeQuery;

    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$2;->apply(Landroid/app/AppOpsManager$AppOpModeQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist shouldBypassCache(Landroid/app/AppOpsManager$AppOpModeQuery;)Z
    .registers 2

    .line 8324
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appopModeCachingEnabled()Z

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

    .line 8309
    check-cast p1, Landroid/app/AppOpsManager$AppOpModeQuery;

    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$2;->shouldBypassCache(Landroid/app/AppOpsManager$AppOpModeQuery;)Z

    move-result p1

    return p1
.end method
