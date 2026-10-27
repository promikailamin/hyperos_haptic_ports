.class public abstract Lcom/miui/whetstone/WhetstoneCloudControlManager;
.super Ljava/lang/Object;
.source "WhetstoneCloudControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;
    }
.end annotation


# static fields
.field public static blacklist REGISTER_ALREADY:I = 0x0

.field public static blacklist REGISTER_FAIL:I = 0x0

.field public static blacklist REGISTER_SUCCESS:I = 0x0

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field public static blacklist UNREGISTER_FAIL:I

.field public static blacklist UNREGISTER_SUCCESS:I

.field private static blacklist ws:Lcom/miui/whetstone/IWhetstone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputws(Lcom/miui/whetstone/IWhetstone;)V
    .registers 1

    sput-object p0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 15
    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->getService()Lcom/miui/whetstone/IWhetstone;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 20
    const/4 v0, -0x1

    sput v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_FAIL:I

    .line 21
    const/4 v1, 0x0

    sput v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_ALREADY:I

    .line 22
    const/4 v1, 0x1

    sput v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_SUCCESS:I

    .line 23
    sput v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->UNREGISTER_FAIL:I

    .line 24
    sput v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->UNREGISTER_SUCCESS:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkService()V
    .registers 0

    .line 56
    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->getService()Lcom/miui/whetstone/IWhetstone;

    .line 57
    return-void
.end method

.method private static blacklist getService()Lcom/miui/whetstone/IWhetstone;
    .registers 3

    .line 41
    sget-object v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-nez v0, :cond_28

    .line 42
    const-string v0, "miui.whetstone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/whetstone/IWhetstone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 44
    if-eqz v0, :cond_28

    .line 45
    :try_start_12
    new-instance v1, Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;

    invoke-direct {v1, v0}, Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;-><init>(Lcom/miui/whetstone/IWhetstone;)V

    move-object v0, v1

    .line 46
    .local v0, "death":Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;
    sget-object v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_23

    goto :goto_28

    .line 48
    .end local v0    # "death":Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;
    :catch_23
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    nop

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_28
    :goto_28
    sget-object v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object v0
.end method

.method public static blacklist registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I
    .registers 4
    .param p0, "component"    # Landroid/content/ComponentName;
    .param p1, "info"    # Lcom/miui/whetstone/CloudControlInfo;

    .line 60
    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->checkService()V

    .line 61
    sget v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_FAIL:I

    .line 62
    .local v0, "ret":I
    sget-object v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_13

    .line 64
    :try_start_9
    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstone;->registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_f

    move v0, v1

    .line 67
    goto :goto_13

    .line 65
    :catch_f
    move-exception v1

    .line 66
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 69
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return v0
.end method

.method public static blacklist registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I
    .registers 4
    .param p0, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Lcom/miui/whetstone/CloudControlInfo;",
            ">;)I"
        }
    .end annotation

    .line 73
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/CloudControlInfo;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->checkService()V

    .line 74
    sget v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_FAIL:I

    .line 75
    .local v0, "ret":I
    sget-object v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_13

    .line 77
    :try_start_9
    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstone;->registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_f

    move v0, v1

    .line 80
    goto :goto_13

    .line 78
    :catch_f
    move-exception v1

    .line 79
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 82
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return v0
.end method

.method public static blacklist unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I
    .registers 3
    .param p0, "component"    # Landroid/content/ComponentName;

    .line 86
    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->checkService()V

    .line 87
    sget v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->UNREGISTER_FAIL:I

    .line 88
    .local v0, "ret":I
    sget-object v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_13

    .line 90
    :try_start_9
    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_f

    move v0, v1

    .line 93
    goto :goto_13

    .line 91
    :catch_f
    move-exception v1

    .line 92
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 95
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return v0
.end method
