.class public Lcom/miui/enterprise/sdk/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field public static final whitelist RESTRICTION_MODE_BLACK_LIST:I = 0x2

.field public static final whitelist RESTRICTION_MODE_DEFAULT:I = 0x0

.field public static final whitelist RESTRICTION_MODE_WHITE_LIST:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "DeviceManager"

.field private static final blacklist VERSION:Ljava/lang/String; = "MIUI-ENT-4.0"

.field private static volatile blacklist sInstance:Lcom/miui/enterprise/sdk/DeviceManager;


# instance fields
.field private blacklist mService:Lcom/miui/enterprise/IDeviceManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "device_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    .line 27
    return-void
.end method

.method public static declared-synchronized whitelist getInstance()Lcom/miui/enterprise/sdk/DeviceManager;
    .registers 2

    const-class v0, Lcom/miui/enterprise/sdk/DeviceManager;

    monitor-enter v0

    .line 30
    :try_start_3
    sget-object v1, Lcom/miui/enterprise/sdk/DeviceManager;->sInstance:Lcom/miui/enterprise/sdk/DeviceManager;

    if-nez v1, :cond_e

    .line 31
    new-instance v1, Lcom/miui/enterprise/sdk/DeviceManager;

    invoke-direct {v1}, Lcom/miui/enterprise/sdk/DeviceManager;-><init>()V

    sput-object v1, Lcom/miui/enterprise/sdk/DeviceManager;->sInstance:Lcom/miui/enterprise/sdk/DeviceManager;

    .line 33
    :cond_e
    sget-object v1, Lcom/miui/enterprise/sdk/DeviceManager;->sInstance:Lcom/miui/enterprise/sdk/DeviceManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 29
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public whitelist captureScreen()Landroid/graphics/Bitmap;
    .registers 4

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IDeviceManager;->captureScreen()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 141
    :catch_7
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist deviceReboot()V
    .registers 4

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IDeviceManager;->deviceReboot()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 65
    goto :goto_e

    .line 63
    :catch_6
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist deviceShutDown()V
    .registers 4

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IDeviceManager;->deviceShutDown()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 57
    goto :goto_e

    .line 55
    :catch_6
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist formatSdCard()V
    .registers 4

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IDeviceManager;->formatSdCard()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 73
    goto :goto_e

    .line 71
    :catch_6
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist getAPIVersion()Ljava/lang/String;
    .registers 2

    .line 37
    const-string v0, "MIUI-ENT-4.0"

    return-object v0
.end method

.method public whitelist getDefaultHome()Ljava/lang/String;
    .registers 4

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IDeviceManager;->getDefaultHome()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 175
    :catch_7
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getUrlBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->getUrlBlackList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUrlBlackList(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IDeviceManager;->getUrlBlackList(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 120
    :catch_7
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getUrlWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->getUrlWhiteList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUrlWhiteList(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IDeviceManager;->getUrlWhiteList(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 107
    :catch_7
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist isDeviceRoot()Z
    .registers 4

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IDeviceManager;->isDeviceRoot()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 43
    :catch_7
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist recoveryFactory(Z)V
    .registers 5
    .param p1, "formatSdcard"    # Z

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IDeviceManager;->recoveryFactory(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 152
    goto :goto_e

    .line 150
    :catch_6
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setBootAnimation(Ljava/lang/String;)Z
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IDeviceManager;->setBootAnimation(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 158
    :catch_7
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setBrowserRestriction(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 127
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->setBrowserRestriction(II)V

    .line 128
    return-void
.end method

.method public whitelist setBrowserRestriction(II)V
    .registers 6
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IDeviceManager;->setBrowserRestriction(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 135
    goto :goto_e

    .line 133
    :catch_6
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setDefaultHome(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IDeviceManager;->setDefaultHome(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 169
    goto :goto_e

    .line 167
    :catch_6
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setLockWallPaper(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IDeviceManager;->setLockWallPaper(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 194
    goto :goto_e

    .line 192
    :catch_6
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setUrlBlackList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->setUrlBlackList(Ljava/util/List;I)V

    .line 90
    return-void
.end method

.method public whitelist setUrlBlackList(Ljava/util/List;I)V
    .registers 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 94
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IDeviceManager;->setUrlBlackList(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 97
    goto :goto_e

    .line 95
    :catch_6
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setUrlWhiteList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->setUrlWhiteList(Ljava/util/List;I)V

    .line 78
    return-void
.end method

.method public whitelist setUrlWhiteList(Ljava/util/List;I)V
    .registers 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 82
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IDeviceManager;->setUrlWhiteList(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 85
    goto :goto_e

    .line 83
    :catch_6
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setWallPaper(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IDeviceManager;->setWallPaper(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 186
    goto :goto_e

    .line 184
    :catch_6
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
