.class public Lcom/miui/enterprise/sdk/APNManager;
.super Ljava/lang/Object;
.source "APNManager.java"


# static fields
.field public static final whitelist MODE_DEFAULT:I = 0x0

.field public static final whitelist MODE_RESTRICTED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "APNManager"

.field private static volatile blacklist sInstance:Lcom/miui/enterprise/sdk/APNManager;


# instance fields
.field private blacklist mService:Lcom/miui/enterprise/IAPNManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "apn_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IAPNManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IAPNManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    .line 19
    return-void
.end method

.method public static declared-synchronized whitelist getInstance()Lcom/miui/enterprise/sdk/APNManager;
    .registers 2

    const-class v0, Lcom/miui/enterprise/sdk/APNManager;

    monitor-enter v0

    .line 22
    :try_start_3
    sget-object v1, Lcom/miui/enterprise/sdk/APNManager;->sInstance:Lcom/miui/enterprise/sdk/APNManager;

    if-nez v1, :cond_e

    .line 23
    new-instance v1, Lcom/miui/enterprise/sdk/APNManager;

    invoke-direct {v1}, Lcom/miui/enterprise/sdk/APNManager;-><init>()V

    sput-object v1, Lcom/miui/enterprise/sdk/APNManager;->sInstance:Lcom/miui/enterprise/sdk/APNManager;

    .line 25
    :cond_e
    sget-object v1, Lcom/miui/enterprise/sdk/APNManager;->sInstance:Lcom/miui/enterprise/sdk/APNManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 21
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public whitelist activeAPN(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IAPNManager;->activeAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 136
    goto :goto_e

    .line 134
    :catch_6
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist activeAPN(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IAPNManager;->activeAPN(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 142
    :catch_7
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist addAPN(Lcom/miui/enterprise/sdk/APNConfig;)V
    .registers 5
    .param p1, "apnConfig"    # Lcom/miui/enterprise/sdk/APNConfig;

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IAPNManager;->addAPN(Lcom/miui/enterprise/sdk/APNConfig;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 94
    goto :goto_e

    .line 92
    :catch_6
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist addAPN(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    .registers 6
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "apnConfig"    # Lcom/miui/enterprise/sdk/APNConfig;

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IAPNManager;->addAPNForNumeric(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 86
    goto :goto_e

    .line 84
    :catch_6
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist deleteAPN(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IAPNManager;->deleteAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 102
    goto :goto_e

    .line 100
    :catch_6
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist deleteAPN(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IAPNManager;->deleteAPN(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 108
    :catch_7
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist editAPN(Ljava/lang/String;Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    .registers 7
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/miui/enterprise/sdk/APNConfig;

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/enterprise/IAPNManager;->editAPNForNumeric(Ljava/lang/String;Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 119
    goto :goto_e

    .line 117
    :catch_6
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist editAPN(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/miui/enterprise/sdk/APNConfig;

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IAPNManager;->editAPN(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 125
    :catch_7
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getAPN(Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IAPNManager;->getAPN(Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 66
    :catch_7
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getAPN(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;
    .registers 6
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IAPNManager;->getAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 75
    :catch_7
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getAPNActiveMode()I
    .registers 4

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IAPNManager;->getAPNActiveMode()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 168
    :catch_7
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getAPNList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/enterprise/sdk/APNConfig;",
            ">;"
        }
    .end annotation

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IAPNManager;->getAPNList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 57
    :catch_7
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getAPNList(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "numeric"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/enterprise/sdk/APNConfig;",
            ">;"
        }
    .end annotation

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IAPNManager;->getAPNListForNumeric(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 48
    :catch_7
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist resetAPN()Z
    .registers 4

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IAPNManager;->resetAPN()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 151
    :catch_7
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setAPNActiveMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IAPNManager;->setAPNActiveMode(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 162
    goto :goto_e

    .line 160
    :catch_6
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
