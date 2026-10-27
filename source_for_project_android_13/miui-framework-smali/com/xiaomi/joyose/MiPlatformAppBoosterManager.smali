.class public Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;
.super Ljava/lang/Object;
.source "MiPlatformAppBoosterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/joyose/MiPlatformAppBoosterManager$JoyoseManagerDeath;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_NAME:Ljava/lang/String; = "xiaomi.joyose"

.field private static blacklist js:Lcom/xiaomi/joyose/IJoyoseInterface;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputjs(Lcom/xiaomi/joyose/IJoyoseInterface;)V
    .registers 1

    sput-object p0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist MiPlatformBoosterForOneway(ILjava/lang/String;)V
    .registers 4
    .param p0, "cmd"    # I
    .param p1, "data"    # Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zhangxiaoliang MiPlatformBoosterForOneway cmd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zhang"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    .line 65
    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_31

    .line 67
    :try_start_29
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->MiPlatformBoosterForOneway(ILjava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 70
    goto :goto_31

    .line 68
    :catch_2d
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    return-void
.end method

.method public static whitelist MiPlatformBoosterForSync(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "cmd"    # I
    .param p1, "data"    # Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "ret":Ljava/lang/String;
    sget-object v1, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_12

    .line 86
    :try_start_8
    invoke-interface {v1, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->MiPlatformBoosterForSync(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_e

    move-object v0, v1

    .line 89
    goto :goto_12

    .line 87
    :catch_e
    move-exception v1

    .line 88
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 91
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-object v0
.end method

.method private static blacklist checkService()V
    .registers 0

    .line 53
    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->getService()Lcom/xiaomi/joyose/IJoyoseInterface;

    .line 54
    return-void
.end method

.method private static blacklist getService()Lcom/xiaomi/joyose/IJoyoseInterface;
    .registers 3

    .line 37
    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-nez v0, :cond_2b

    .line 38
    const-string v0, "xiaomi.joyose"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IJoyoseInterface;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    .line 40
    if-eqz v0, :cond_2b

    .line 41
    :try_start_12
    new-instance v1, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager$JoyoseManagerDeath;

    invoke-direct {v1, v0}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager$JoyoseManagerDeath;-><init>(Lcom/xiaomi/joyose/IJoyoseInterface;)V

    move-object v0, v1

    .line 42
    .local v0, "death":Lcom/xiaomi/joyose/MiPlatformAppBoosterManager$JoyoseManagerDeath;
    sget-object v1, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v1}, Lcom/xiaomi/joyose/IJoyoseInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_23

    goto :goto_2b

    .line 44
    .end local v0    # "death":Lcom/xiaomi/joyose/MiPlatformAppBoosterManager$JoyoseManagerDeath;
    :catch_23
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    const/4 v1, 0x0

    sput-object v1, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    nop

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    :goto_2b
    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object v0
.end method

.method public static whitelist invokeOneway(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "func"    # Ljava/lang/String;
    .param p1, "args"    # Landroid/os/Bundle;

    .line 152
    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    .line 153
    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    .line 155
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->invokeOneway(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 158
    goto :goto_f

    .line 156
    :catch_b
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static whitelist invokeSync(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p0, "func"    # Ljava/lang/String;
    .param p1, "args"    # Landroid/os/Bundle;

    .line 163
    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "ret":Landroid/os/Bundle;
    sget-object v1, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_12

    .line 167
    :try_start_8
    invoke-interface {v1, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->invokeSync(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_e

    move-object v0, v1

    .line 170
    goto :goto_12

    .line 168
    :catch_e
    move-exception v1

    .line 169
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 172
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-object v0
.end method

.method public static whitelist registerCallbackInner(ILjava/lang/String;Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    .registers 4
    .param p0, "mask"    # I
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaomi/joyose/IMiGameBoosterCallback;

    .line 129
    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    .line 130
    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    .line 132
    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/joyose/IJoyoseInterface;->registerCallbackInner(ILjava/lang/String;Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 135
    goto :goto_f

    .line 133
    :catch_b
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static whitelist registerMiPlatformBoosterListener(ILcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    .registers 3
    .param p0, "mask"    # I
    .param p1, "callback"    # Lcom/xiaomi/joyose/IMiGameBoosterCallback;

    .line 104
    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    .line 105
    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    .line 107
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->registerMiPlatformBoosterListener(ILcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 110
    goto :goto_f

    .line 108
    :catch_b
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 112
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static whitelist unRegisterCallbackInner(Ljava/lang/String;Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    .registers 3
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/xiaomi/joyose/IMiGameBoosterCallback;

    .line 141
    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    .line 142
    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    .line 144
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->unRegisterCallbackInner(Ljava/lang/String;Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 147
    goto :goto_f

    .line 145
    :catch_b
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method public static whitelist unRegisterMiPlatformBoosterListener(Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    .registers 2
    .param p0, "callback"    # Lcom/xiaomi/joyose/IMiGameBoosterCallback;

    .line 118
    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    .line 119
    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    .line 121
    :try_start_7
    invoke-interface {v0, p0}, Lcom/xiaomi/joyose/IJoyoseInterface;->unRegisterMiPlatformBoosterListener(Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 124
    goto :goto_f

    .line 122
    :catch_b
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method
