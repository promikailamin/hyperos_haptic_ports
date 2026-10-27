.class public abstract Lcom/miui/whetstone/WhetstoneManager;
.super Ljava/lang/Object;
.source "WhetstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneManager$PermissionFile;,
        Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    }
.end annotation


# static fields
.field public static final blacklist ANALYTIC_PROPERTY:Ljava/lang/String; = "persist.sys.whetstone.analytic"

.field public static final blacklist DEBUG:Z

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field private static blacklist ws:Lcom/miui/whetstone/IWhetstone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputws(Lcom/miui/whetstone/IWhetstone;)V
    .registers 1

    sput-object p0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 38
    const-string v0, "persist.sys.whetstone.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/WhetstoneManager;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkIfSupportWhestone()Z
    .registers 1

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist checkService()V
    .registers 0

    .line 71
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->getService()Lcom/miui/whetstone/IWhetstone;

    .line 72
    return-void
.end method

.method public static blacklist deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I
    .registers 2
    .param p0, "config"    # Lcom/miui/whetstone/WhetstoneConfig;

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist getService()Lcom/miui/whetstone/IWhetstone;
    .registers 3

    .line 55
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-nez v0, :cond_2b

    .line 56
    const-string v0, "miui.whetstone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/whetstone/IWhetstone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 58
    if-eqz v0, :cond_2b

    .line 59
    :try_start_12
    new-instance v1, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;

    invoke-direct {v1, v0}, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/IWhetstone;)V

    move-object v0, v1

    .line 60
    .local v0, "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_23

    goto :goto_2b

    .line 62
    .end local v0    # "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    :catch_23
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v1, 0x0

    sput-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    nop

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    :goto_2b
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object v0
.end method

.method public static blacklist log(I[B)V
    .registers 2
    .param p0, "tag"    # I
    .param p1, "data"    # [B

    .line 106
    return-void
.end method

.method public static blacklist recordRTCWakeupInfo(ILandroid/app/PendingIntent;Z)V
    .registers 4
    .param p0, "uid"    # I
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "status"    # Z

    .line 93
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 94
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_f

    .line 96
    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->recordRTCWakeupInfo(ILandroid/app/PendingIntent;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 99
    goto :goto_f

    .line 97
    :catch_b
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method
