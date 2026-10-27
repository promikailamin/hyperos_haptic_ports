.class public Lcom/xiaomi/joyose/IJoyoseInterface$Default;
.super Ljava/lang/Object;
.source "IJoyoseInterface.java"

# interfaces
.implements Lcom/xiaomi/joyose/IJoyoseInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/joyose/IJoyoseInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist MiPlatformBoosterForOneway(ILjava/lang/String;)V
    .registers 3
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public whitelist MiPlatformBoosterForSync(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist checkIfGameIsSupported(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGameMotorAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist handleGameBoosterForOneway(ILjava/lang/String;)V
    .registers 3
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public whitelist handleGameBoosterForSync(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist invokeOneway(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public whitelist invokeSync(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isMiGLEnabled(I)I
    .registers 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist predictAppBucketLevel(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public whitelist predictAppsBucketLevel(Ljava/util/List;I)V
    .registers 3
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public whitelist queryConfigs(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist querySettingsByAppName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist registerCallbackInner(ILjava/lang/String;Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    .registers 4
    .param p1, "mask"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/xiaomi/joyose/IMiGameBoosterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public whitelist registerGameEngineListener(ILcom/xiaomi/joyose/IGameEngineCallback;)V
    .registers 3
    .param p1, "mask"    # I
    .param p2, "callback"    # Lcom/xiaomi/joyose/IGameEngineCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public whitelist registerMiPlatformBoosterListener(ILcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    .registers 3
    .param p1, "mask"    # I
    .param p2, "callback"    # Lcom/xiaomi/joyose/IMiGameBoosterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public whitelist sendGyroData(Ljava/lang/String;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public whitelist unRegisterCallbackInner(Ljava/lang/String;Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    .registers 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaomi/joyose/IMiGameBoosterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public whitelist unRegisterGameEngineListener(Lcom/xiaomi/joyose/IGameEngineCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/xiaomi/joyose/IGameEngineCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public whitelist unRegisterMiPlatformBoosterListener(Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/xiaomi/joyose/IMiGameBoosterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method
