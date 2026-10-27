.class public Lcom/miui/whetstone/WhetstoneSysInfoManager;
.super Ljava/lang/Object;
.source "WhetstoneSysInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneSysInfoManager$Holder;
    }
.end annotation


# static fields
.field private static final blacklist FAIL:J = -0x1L

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

.field private blacklist mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmService(Lcom/miui/whetstone/WhetstoneSysInfoManager;Lcom/miui/whetstone/IWhetstoneSysInfoService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/miui/whetstone/WhetstoneSysInfoManager$1;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/WhetstoneSysInfoManager$1;-><init>(Lcom/miui/whetstone/WhetstoneSysInfoManager;)V

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/miui/whetstone/WhetstoneSysInfoManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/whetstone/WhetstoneSysInfoManager;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/miui/whetstone/WhetstoneSysInfoManager;
    .registers 1

    .line 85
    invoke-static {}, Lcom/miui/whetstone/WhetstoneSysInfoManager$Holder;->-$$Nest$sfgetINSTANCE()Lcom/miui/whetstone/WhetstoneSysInfoManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized blacklist bindWhetstoneSysInfoService(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-nez v0, :cond_37

    .line 19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.whetstone"

    const-string v3, "com.miui.whetstone.sysinfo.WhetstoneSysInfoService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 21
    iget-object v1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 23
    .local v1, "res":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindWhetstoneSysInfoService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "res":Z
    goto :goto_3e

    .line 25
    .end local p0    # "this":Lcom/miui/whetstone/WhetstoneSysInfoManager;
    :cond_37
    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "bindWhetstoneSysInfoService but mService is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    .line 27
    :goto_3e
    monitor-exit p0

    return-void

    .line 17
    .end local p1    # "context":Landroid/content/Context;
    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getSysInfo(Ljava/lang/String;)J
    .registers 6
    .param p1, "type"    # Ljava/lang/String;

    monitor-enter p0

    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-eqz v0, :cond_b

    .line 42
    invoke-interface {v0, p1}, Lcom/miui/whetstone/IWhetstoneSysInfoService;->getSysInfo(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_15
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    monitor-exit p0

    return-wide v0

    .line 44
    .end local p0    # "this":Lcom/miui/whetstone/WhetstoneSysInfoManager;
    :cond_b
    :try_start_b
    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "getSysInfo: Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_15
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    .line 48
    goto :goto_32

    .line 40
    .end local p1    # "type":Ljava/lang/String;
    :catchall_13
    move-exception p1

    goto :goto_36

    .line 46
    .restart local p1    # "type":Ljava/lang/String;
    :catch_15
    move-exception v0

    .line 47
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_16
    sget-object v1, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSysInfo long RemoteException e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_13

    .line 49
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 40
    .end local p1    # "type":Ljava/lang/String;
    :goto_36
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getSysInfos([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "types"    # [Ljava/lang/String;

    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-eqz v0, :cond_b

    .line 55
    invoke-interface {v0, p1}, Lcom/miui/whetstone/IWhetstoneSysInfoService;->getSysInfos([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_15
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    monitor-exit p0

    return-object v0

    .line 57
    .end local p0    # "this":Lcom/miui/whetstone/WhetstoneSysInfoManager;
    :cond_b
    :try_start_b
    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "getSysInfo: Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_15
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    .line 61
    goto :goto_32

    .line 53
    .end local p1    # "types":[Ljava/lang/String;
    :catchall_13
    move-exception p1

    goto :goto_35

    .line 59
    .restart local p1    # "types":[Ljava/lang/String;
    :catch_15
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_16
    sget-object v1, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSysInfo String[] RemoteException e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_13

    .line 62
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 53
    .end local p1    # "types":[Ljava/lang/String;
    :goto_35
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist unbindWhetstoneSysInfoService(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 30
    :try_start_1
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-eqz v0, :cond_15

    .line 31
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    .line 33
    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "unbindWhetstoneSysInfoService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 35
    .end local p0    # "this":Lcom/miui/whetstone/WhetstoneSysInfoManager;
    :cond_15
    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "unbindWhetstoneSysInfoService but service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 37
    :goto_1c
    monitor-exit p0

    return-void

    .line 29
    .end local p1    # "context":Landroid/content/Context;
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
