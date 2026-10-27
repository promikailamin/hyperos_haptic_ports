.class public Lcom/xiaomi/joyose/JoyoseManager;
.super Ljava/lang/Object;
.source "JoyoseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_NAME:Ljava/lang/String; = "xiaomi.joyose"

.field private static blacklist js:Lcom/xiaomi/joyose/IJoyoseInterface;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputjs(Lcom/xiaomi/joyose/IJoyoseInterface;)V
    .registers 1

    sput-object p0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkService()V
    .registers 0

    .line 47
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->getService()Lcom/xiaomi/joyose/IJoyoseInterface;

    .line 48
    return-void
.end method

.method public static whitelist getGameMotorAppList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 136
    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_10

    .line 138
    :try_start_7
    invoke-interface {v0}, Lcom/xiaomi/joyose/IJoyoseInterface;->getGameMotorAppList()Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    .line 139
    :catch_c
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getService()Lcom/xiaomi/joyose/IJoyoseInterface;
    .registers 3

    .line 31
    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-nez v0, :cond_2b

    .line 32
    const-string v0, "xiaomi.joyose"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IJoyoseInterface;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    .line 34
    if-eqz v0, :cond_2b

    .line 35
    :try_start_12
    new-instance v1, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;

    invoke-direct {v1, v0}, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;-><init>(Lcom/xiaomi/joyose/IJoyoseInterface;)V

    move-object v0, v1

    .line 36
    .local v0, "death":Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v1}, Lcom/xiaomi/joyose/IJoyoseInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_23

    goto :goto_2b

    .line 38
    .end local v0    # "death":Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;
    :catch_23
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    const/4 v1, 0x0

    sput-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    nop

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    :goto_2b
    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object v0
.end method

.method public static whitelist handleGameBoosterForOneway(ILjava/lang/String;)V
    .registers 3
    .param p0, "cmd"    # I
    .param p1, "data"    # Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 88
    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    .line 90
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->handleGameBoosterForOneway(ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 93
    goto :goto_f

    .line 91
    :catch_b
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 95
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static whitelist handleGameBoosterForSync(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "cmd"    # I
    .param p1, "data"    # Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "ret":Ljava/lang/String;
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_12

    .line 102
    :try_start_8
    invoke-interface {v1, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->handleGameBoosterForSync(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_e

    move-object v0, v1

    .line 105
    goto :goto_12

    .line 103
    :catch_e
    move-exception v1

    .line 104
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 107
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-object v0
.end method

.method public static whitelist predictAppBucketLevel(Ljava/lang/String;)V
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 113
    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    .line 115
    :try_start_7
    invoke-interface {v0, p0}, Lcom/xiaomi/joyose/IJoyoseInterface;->predictAppBucketLevel(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 118
    goto :goto_f

    .line 116
    :catch_b
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static whitelist predictAppsBucketLevel(Ljava/util/List;I)V
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 123
    .local p0, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 124
    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    .line 126
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->predictAppsBucketLevel(Ljava/util/List;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 129
    goto :goto_f

    .line 127
    :catch_b
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static whitelist registerGameEngineListener(ILcom/xiaomi/joyose/IGameEngineCallback;)V
    .registers 3
    .param p0, "mask"    # I
    .param p1, "callback"    # Lcom/xiaomi/joyose/IGameEngineCallback;

    .line 62
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 63
    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    .line 65
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->registerGameEngineListener(ILcom/xiaomi/joyose/IGameEngineCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 68
    goto :goto_f

    .line 66
    :catch_b
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static whitelist sendGyroData(Ljava/lang/String;)V
    .registers 2
    .param p0, "data"    # Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 148
    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    .line 150
    :try_start_7
    invoke-interface {v0, p0}, Lcom/xiaomi/joyose/IJoyoseInterface;->sendGyroData(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 153
    goto :goto_f

    .line 151
    :catch_b
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static whitelist unRegisterGameEngineListener(Lcom/xiaomi/joyose/IGameEngineCallback;)V
    .registers 2
    .param p0, "callback"    # Lcom/xiaomi/joyose/IGameEngineCallback;

    .line 76
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 77
    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    .line 79
    :try_start_7
    invoke-interface {v0, p0}, Lcom/xiaomi/joyose/IJoyoseInterface;->unRegisterGameEngineListener(Lcom/xiaomi/joyose/IGameEngineCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 82
    goto :goto_f

    .line 80
    :catch_b
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 84
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method
