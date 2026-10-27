.class public Lcom/miui/enterprise/EnterpriseManager;
.super Ljava/lang/Object;
.source "EnterpriseManager.java"


# static fields
.field public static final whitelist APN_MANAGER:Ljava/lang/String; = "apn_manager"

.field public static final whitelist APPLICATION_MANAGER:Ljava/lang/String; = "application_manager"

.field public static final whitelist DEVICE_MANAGER:Ljava/lang/String; = "device_manager"

.field public static final whitelist PHONE_MANAGER:Ljava/lang/String; = "phone_manager"

.field public static final whitelist RESTRICTIONS_MANAGER:Ljava/lang/String; = "restrictions_manager"

.field public static final whitelist SERVICE_NAME:Ljava/lang/String; = "EnterpriseManager"

.field private static blacklist sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static whitelist getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 5
    .param p0, "serviceName"    # Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/miui/enterprise/EnterpriseManager;->sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;

    const-string v1, "EnterpriseManager"

    if-nez v0, :cond_10

    .line 31
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IEnterpriseManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IEnterpriseManager;

    move-result-object v0

    sput-object v0, Lcom/miui/enterprise/EnterpriseManager;->sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;

    .line 34
    :cond_10
    :try_start_10
    sget-object v0, Lcom/miui/enterprise/EnterpriseManager;->sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;

    invoke-interface {v0, p0}, Lcom/miui/enterprise/IEnterpriseManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    return-object v0

    .line 35
    :catch_17
    move-exception v0

    .line 36
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get enterprise service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    const/4 v1, 0x0

    return-object v1
.end method
