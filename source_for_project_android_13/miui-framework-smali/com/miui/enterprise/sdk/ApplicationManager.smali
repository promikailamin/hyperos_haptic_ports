.class public Lcom/miui/enterprise/sdk/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# static fields
.field public static final whitelist ENT_PERMISSION:Ljava/lang/String; = "com.miui.enterprise.permission.ACCESS_ENTERPRISE_API"

.field public static final whitelist FLAG_ALLOW_AUTOSTART:I = 0x8

.field public static final whitelist FLAG_DEFAULT:I = 0x0

.field public static final whitelist FLAG_GRANT_ALL_RUNTIME_PERMISSION:I = 0x10

.field public static final whitelist FLAG_KEEP_ALIVE:I = 0x1

.field public static final whitelist FLAG_PREVENT_UNINSTALLATION:I = 0x4

.field public static final whitelist FLOAT:Ljava/lang/String; = "float"

.field public static final whitelist KEYGUARD:Ljava/lang/String; = "_keyguard"

.field public static final whitelist LED:Ljava/lang/String; = "_led"

.field public static final whitelist MESSAGE:Ljava/lang/String; = "_message"

.field public static final whitelist RESTRICTION_MODE_BLACK_LIST:I = 0x2

.field public static final whitelist RESTRICTION_MODE_DEFAULT:I = 0x0

.field public static final whitelist RESTRICTION_MODE_WHITE_LIST:I = 0x1

.field public static final whitelist SOUND:Ljava/lang/String; = "_sound"

.field private static final blacklist TAG:Ljava/lang/String; = "ApplicationManager"

.field public static final whitelist VIBRATE:Ljava/lang/String; = "_vibrate"

.field private static volatile blacklist sInstance:Lcom/miui/enterprise/sdk/ApplicationManager;


# instance fields
.field private blacklist mService:Lcom/miui/enterprise/IApplicationManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "application_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IApplicationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IApplicationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    .line 25
    return-void
.end method

.method public static declared-synchronized whitelist getInstance()Lcom/miui/enterprise/sdk/ApplicationManager;
    .registers 2

    const-class v0, Lcom/miui/enterprise/sdk/ApplicationManager;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Lcom/miui/enterprise/sdk/ApplicationManager;->sInstance:Lcom/miui/enterprise/sdk/ApplicationManager;

    if-nez v1, :cond_e

    .line 48
    new-instance v1, Lcom/miui/enterprise/sdk/ApplicationManager;

    invoke-direct {v1}, Lcom/miui/enterprise/sdk/ApplicationManager;-><init>()V

    sput-object v1, Lcom/miui/enterprise/sdk/ApplicationManager;->sInstance:Lcom/miui/enterprise/sdk/ApplicationManager;

    .line 50
    :cond_e
    sget-object v1, Lcom/miui/enterprise/sdk/ApplicationManager;->sInstance:Lcom/miui/enterprise/sdk/ApplicationManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 46
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public whitelist addTrustedAppStore(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->addTrustedAppStore(Ljava/util/List;I)V

    .line 288
    return-void
.end method

.method public whitelist addTrustedAppStore(Ljava/util/List;I)V
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

    .line 292
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->addTrustedAppStore(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 295
    goto :goto_e

    .line 293
    :catch_6
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist clearApplicationCache(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 104
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->clearApplicationCache(Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method public whitelist clearApplicationCache(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->clearApplicationCache(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 112
    goto :goto_e

    .line 110
    :catch_6
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist clearApplicationUserData(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 92
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->clearApplicationUserData(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public whitelist clearApplicationUserData(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->clearApplicationUserData(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 100
    goto :goto_e

    .line 98
    :catch_6
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist deletePackage(Ljava/lang/String;ILcom/miui/enterprise/sdk/IEpDeletePackageObserver;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "observer"    # Lcom/miui/enterprise/sdk/IEpDeletePackageObserver;

    .line 80
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->deletePackage(Ljava/lang/String;ILcom/miui/enterprise/sdk/IEpDeletePackageObserver;I)V

    .line 81
    return-void
.end method

.method public whitelist deletePackage(Ljava/lang/String;ILcom/miui/enterprise/sdk/IEpDeletePackageObserver;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "observer"    # Lcom/miui/enterprise/sdk/IEpDeletePackageObserver;
    .param p4, "userId"    # I

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/enterprise/IApplicationManager;->deletePackage(Ljava/lang/String;ILcom/miui/enterprise/sdk/IEpDeletePackageObserver;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 88
    goto :goto_e

    .line 86
    :catch_6
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist enableAccessibilityService(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "enable"    # Z

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->enableAccessibilityService(Landroid/content/ComponentName;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 258
    goto :goto_e

    .line 256
    :catch_6
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist enableNotifications(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->enableNotifications(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 353
    goto :goto_e

    .line 351
    :catch_6
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist enableTrustedAppStore(Z)V
    .registers 3
    .param p1, "enabld"    # Z

    .line 312
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->enableTrustedAppStore(ZI)V

    .line 313
    return-void
.end method

.method public whitelist enableTrustedAppStore(ZI)V
    .registers 6
    .param p1, "enabld"    # Z
    .param p2, "userId"    # I

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->enableTrustedAppStore(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 320
    goto :goto_e

    .line 318
    :catch_6
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist getApplicationBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getApplicationBlackList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationBlackList(I)Ljava/util/List;
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

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IApplicationManager;->getApplicationBlackList(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 159
    :catch_7
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getApplicationRestriction()I
    .registers 2

    .line 203
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getApplicationRestriction(I)I

    move-result v0

    return v0
.end method

.method public whitelist getApplicationRestriction(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IApplicationManager;->getApplicationRestriction(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 209
    :catch_7
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getApplicationSettings(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 128
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getApplicationSettings(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getApplicationSettings(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->getApplicationSettings(Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 134
    :catch_7
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getApplicationWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getApplicationWhiteList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationWhiteList(I)Ljava/util/List;
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

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IApplicationManager;->getApplicationWhiteList(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 184
    :catch_7
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getDisallowedRunningAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getDisallowedRunningAppList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisallowedRunningAppList(I)Ljava/util/List;
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

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IApplicationManager;->getDisallowedRunningAppList(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 280
    :catch_7
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getTrustedAppStore()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 299
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getTrustedAppStore(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTrustedAppStore(I)Ljava/util/List;
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

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IApplicationManager;->getTrustedAppStore(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 305
    :catch_7
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getXSpaceBlack()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IApplicationManager;->getXSpaceBlack()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 375
    :catch_7
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/enterprise/IApplicationManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 386
    goto :goto_e

    .line 384
    :catch_6
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist installPackage(Ljava/lang/String;ILcom/miui/enterprise/sdk/IEpInstallPackageObserver;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "observer"    # Lcom/miui/enterprise/sdk/IEpInstallPackageObserver;

    .line 55
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->installPackage(Ljava/lang/String;ILcom/miui/enterprise/sdk/IEpInstallPackageObserver;I)V

    .line 56
    return-void
.end method

.method public whitelist installPackage(Ljava/lang/String;ILcom/miui/enterprise/sdk/IEpInstallPackageObserver;I)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "observer"    # Lcom/miui/enterprise/sdk/IEpInstallPackageObserver;
    .param p4, "userId"    # I

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/enterprise/IApplicationManager;->installPackage(Ljava/lang/String;ILcom/miui/enterprise/sdk/IEpInstallPackageObserver;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 64
    goto :goto_e

    .line 62
    :catch_6
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 68
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 69
    return-void
.end method

.method public whitelist installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "userId"    # I

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/enterprise/IApplicationManager;->installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 76
    goto :goto_e

    .line 74
    :catch_6
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist isTrustedAppStoreEnabled()Z
    .registers 2

    .line 324
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->isTrustedAppStoreEnabled(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTrustedAppStoreEnabled(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IApplicationManager;->isTrustedAppStoreEnabled(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 330
    :catch_7
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist killProcess(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 242
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->killProcess(Ljava/lang/String;I)V

    .line 243
    return-void
.end method

.method public whitelist killProcess(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->killProcess(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 250
    goto :goto_e

    .line 248
    :catch_6
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist removeDeviceAdmin(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 229
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->removeDeviceAdmin(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public whitelist removeDeviceAdmin(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->removeDeviceAdmin(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 235
    :catch_7
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setApplicationBlackList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationBlackList(Ljava/util/List;I)V

    .line 142
    return-void
.end method

.method public whitelist setApplicationBlackList(Ljava/util/List;I)V
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

    .line 146
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setApplicationBlackList(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 149
    goto :goto_e

    .line 147
    :catch_6
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setApplicationEnabled(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 337
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationEnabled(Ljava/lang/String;ZI)V

    .line 338
    return-void
.end method

.method public whitelist setApplicationEnabled(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/enterprise/IApplicationManager;->setApplicationEnabled(Ljava/lang/String;ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 345
    goto :goto_e

    .line 343
    :catch_6
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setApplicationRestriction(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 191
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationRestriction(II)V

    .line 192
    return-void
.end method

.method public whitelist setApplicationRestriction(II)V
    .registers 6
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setApplicationRestriction(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 199
    goto :goto_e

    .line 197
    :catch_6
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setApplicationSettings(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 116
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationSettings(Ljava/lang/String;II)V

    .line 117
    return-void
.end method

.method public whitelist setApplicationSettings(Ljava/lang/String;II)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/enterprise/IApplicationManager;->setApplicationSettings(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 124
    goto :goto_e

    .line 122
    :catch_6
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setApplicationWhiteList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationWhiteList(Ljava/util/List;I)V

    .line 167
    return-void
.end method

.method public whitelist setApplicationWhiteList(Ljava/util/List;I)V
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

    .line 171
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setApplicationWhiteList(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 174
    goto :goto_e

    .line 172
    :catch_6
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setDeviceAdmin(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 216
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setDeviceAdmin(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public whitelist setDeviceAdmin(Landroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setDeviceAdmin(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 222
    :catch_7
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setDisallowedRunningAppList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 262
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setDisallowedRunningAppList(Ljava/util/List;I)V

    .line 263
    return-void
.end method

.method public whitelist setDisallowedRunningAppList(Ljava/util/List;I)V
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

    .line 267
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setDisallowedRunningAppList(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 270
    goto :goto_e

    .line 268
    :catch_6
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setNotificaitonFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "allow"    # Z

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/enterprise/IApplicationManager;->setNotificaitonFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 361
    goto :goto_e

    .line 359
    :catch_6
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setXSpaceBlack(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 366
    .local p1, "packageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IApplicationManager;->setXSpaceBlack(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 369
    goto :goto_e

    .line 367
    :catch_6
    move-exception v0

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
