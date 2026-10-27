.class public Lmiui/os/MiuiInit;
.super Ljava/lang/Object;
.source "MiuiInit.java"


# static fields
.field public static final whitelist ACTION_MIUI_INIT_COMPLETED:Ljava/lang/String; = "miui.intent.action.MIUI_INIT_COMPLETED"

.field public static final whitelist REGION:Ljava/lang/String; = "region"

.field public static final whitelist SERVICE_NAME:Ljava/lang/String; = "MiuiInit"

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiInit"

.field private static blacklist sNeedAspectSettings:Z

.field private static blacklist sNeedAspectSettingsInited:Z

.field private static blacklist sService:Lmiui/os/IMiuiInit;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist copyPreinstallPAITrackingFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 170
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lmiui/os/IMiuiInit;->copyPreinstallPAITrackingFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 174
    goto :goto_10

    .line 171
    :catch_8
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when copy package tracking file to pai dir"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public static blacklist deleteAllSpecifiedPackageEventRecords(I)Z
    .registers 4
    .param p0, "packageEventType"    # I

    .line 357
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/os/IMiuiInit;->deleteAllSpecifiedPackageEventRecords(I)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 358
    :catch_9
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiInit"

    const-string v2, "Occur Exception when deleteAllSpecifiedPackageEventRecords"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist deleteSpecifiedPackageEventRecords(ILjava/util/List;)V
    .registers 5
    .param p0, "packageEventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 345
    .local p1, "packageEventIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/os/IMiuiInit;->deleteSpecifiedPackageEventRecords(ILjava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 349
    goto :goto_10

    .line 346
    :catch_8
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiInit"

    const-string v2, "Occur Exception when deleteSpecifiedPackageEventRecords"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return-void
.end method

.method public static blacklist doFactoryReset(Z)V
    .registers 4
    .param p0, "keepUserApps"    # Z

    .line 79
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/os/IMiuiInit;->doFactoryReset(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 82
    goto :goto_10

    .line 80
    :catch_8
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when removing preinstall app history file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public static blacklist getAspectRatio(Ljava/lang/String;)F
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;

    .line 242
    const/high16 v0, 0x40400000    # 3.0f

    if-eqz p0, :cond_2e

    invoke-static {}, Lmiui/os/MiuiInit;->needAspectSettings()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2e

    .line 246
    :cond_b
    :try_start_b
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getAspectRatio(Ljava/lang/String;)F

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    return v0

    .line 247
    :catch_14
    move-exception v1

    .line 248
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Occur RemoteException when getAspectRatio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiInit"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0

    .line 243
    :cond_2e
    :goto_2e
    return v0
.end method

.method public static blacklist getCustVariants()[Ljava/lang/String;
    .registers 3

    .line 68
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0}, Lmiui/os/IMiuiInit;->getCustVariants()[Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 69
    :catch_9
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when fetch cust variants"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getCutoutMode(Ljava/lang/String;)I
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;

    .line 315
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v0, :cond_c

    goto :goto_2f

    .line 319
    :cond_c
    :try_start_c
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/os/IMiuiInit;->getCutoutMode(Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    return v0

    .line 320
    :catch_15
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Occur Exception when getCutoutMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiInit"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    return v1

    .line 316
    :cond_2f
    :goto_2f
    return v1
.end method

.method public static blacklist getDefaultAspectType(Ljava/lang/String;)I
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    invoke-static {}, Lmiui/os/MiuiInit;->needAspectSettings()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2d

    .line 261
    :cond_a
    :try_start_a
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_13

    return v0

    .line 262
    :catch_13
    move-exception v1

    .line 263
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Occur RemoteException when getDefaultAspectType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiInit"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0

    .line 258
    :cond_2d
    :goto_2d
    return v0
.end method

.method public static whitelist getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;

    .line 125
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/os/IMiuiInit;->getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 126
    :catch_9
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when checking preinstalled channel"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "e":Landroid/os/RemoteException;
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;

    .line 182
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/os/IMiuiInit;->getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 183
    :catch_9
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when checking preinstalled app path"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist getNotchConfig(Ljava/lang/String;)I
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v1, :cond_8

    goto :goto_2b

    .line 276
    :cond_8
    :try_start_8
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getNotchConfig(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_11

    return v0

    .line 277
    :catch_11
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Occur RemoteException when getNotchConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiInit"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    return v0

    .line 273
    :cond_2b
    :goto_2b
    return v0
.end method

.method public static blacklist getPackageEventRecords(I)Landroid/os/Bundle;
    .registers 4
    .param p0, "packageEventType"    # I

    .line 332
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/os/IMiuiInit;->getPackageEventRecords(I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 333
    :catch_9
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiInit"

    const-string v2, "Occur Exception when getPackageEventRecords"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getPreinstalledAppVersion(Ljava/lang/String;)I
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;

    .line 113
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    .line 114
    .local v0, "service":Lmiui/os/IMiuiInit;
    if-eqz v0, :cond_b

    .line 115
    invoke-interface {v0, p0}, Lmiui/os/IMiuiInit;->getPreinstalledAppVersion(Ljava/lang/String;)I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 119
    .end local v0    # "service":Lmiui/os/IMiuiInit;
    :cond_b
    goto :goto_14

    .line 117
    :catch_c
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when get preinstalled package version"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, -0x1

    return v0
.end method

.method private static declared-synchronized blacklist getService()Lmiui/os/IMiuiInit;
    .registers 3

    const-class v0, Lmiui/os/MiuiInit;

    monitor-enter v0

    .line 30
    :try_start_3
    sget-object v1, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;

    if-nez v1, :cond_13

    .line 31
    const-string v1, "MiuiInit"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 32
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Lmiui/os/IMiuiInit$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/os/IMiuiInit;

    move-result-object v2

    sput-object v2, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;

    .line 34
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_13
    sget-object v1, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object v1

    .line 29
    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static blacklist initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z
    .registers 6
    .param p0, "custVariant"    # Ljava/lang/String;
    .param p1, "obs"    # Lmiui/os/IMiuiInitObserver;

    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "ret":Z
    :try_start_1
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lmiui/os/IMiuiInit;->initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move v0, v1

    .line 48
    goto :goto_2b

    .line 44
    :catch_b
    move-exception v1

    .line 45
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Occur RemoteException when init cust environment for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiInit"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    .line 49
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2b
    return v0
.end method

.method public static blacklist installPreinstallApp()Z
    .registers 3

    .line 56
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0}, Lmiui/os/IMiuiInit;->installPreinstallApp()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 57
    const/4 v0, 0x1

    return v0

    .line 58
    :catch_9
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when install preinstall app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isPreinstalledPAIPackage(Ljava/lang/String;)Z
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;

    .line 99
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    .line 100
    .local v0, "service":Lmiui/os/IMiuiInit;
    if-eqz v0, :cond_b

    .line 101
    invoke-interface {v0, p0}, Lmiui/os/IMiuiInit;->isPreinstalledPAIPackage(Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 105
    .end local v0    # "service":Lmiui/os/IMiuiInit;
    :cond_b
    goto :goto_14

    .line 103
    :catch_c
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when checking preinstalled PAI package"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isPreinstalledPackage(Ljava/lang/String;)Z
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;

    .line 87
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    .line 88
    .local v0, "service":Lmiui/os/IMiuiInit;
    if-eqz v0, :cond_b

    .line 89
    invoke-interface {v0, p0}, Lmiui/os/IMiuiInit;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 93
    .end local v0    # "service":Lmiui/os/IMiuiInit;
    :cond_b
    goto :goto_14

    .line 91
    :catch_c
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when checking preinstalled package"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isRestrictAspect(Ljava/lang/String;)Z
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;

    .line 227
    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    invoke-static {}, Lmiui/os/MiuiInit;->needAspectSettings()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2d

    .line 231
    :cond_a
    :try_start_a
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_13

    return v0

    .line 232
    :catch_13
    move-exception v1

    .line 233
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Occur RemoteException when isRestrictAspect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiInit"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0

    .line 228
    :cond_2d
    :goto_2d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_34

    const/4 v0, 0x1

    :cond_34
    return v0
.end method

.method private static blacklist needAspectSettings()Z
    .registers 5

    .line 193
    sget-boolean v0, Lmiui/os/MiuiInit;->sNeedAspectSettingsInited:Z

    if-nez v0, :cond_3c

    .line 196
    const-string v0, "qemu.hw.mainkeys"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "navBarOverride":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    .line 198
    sput-boolean v2, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    goto :goto_2f

    .line 199
    :cond_17
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 200
    sput-boolean v3, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    goto :goto_2f

    .line 202
    :cond_22
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x11101ab

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    .line 204
    :goto_2f
    sget-boolean v1, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    if-eqz v1, :cond_38

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_38

    move v2, v3

    :cond_38
    sput-boolean v2, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    .line 205
    sput-boolean v3, Lmiui/os/MiuiInit;->sNeedAspectSettingsInited:Z

    .line 207
    .end local v0    # "navBarOverride":Ljava/lang/String;
    :cond_3c
    sget-boolean v0, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    return v0
.end method

.method public static blacklist removeFromPreinstallList(Ljava/lang/String;)V
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;

    .line 137
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/os/IMiuiInit;->removeFromPreinstallList(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 141
    goto :goto_10

    .line 138
    :catch_8
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when removing from preinstall list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public static blacklist removeFromPreinstallPAIList(Ljava/lang/String;)V
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;

    .line 148
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/os/IMiuiInit;->removeFromPreinstallPAIList(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 152
    goto :goto_10

    .line 149
    :catch_8
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when removing from preinstall PAI list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public static blacklist setCutoutMode(Ljava/lang/String;I)V
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .line 301
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v0, :cond_b

    goto :goto_37

    .line 305
    :cond_b
    :try_start_b
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/os/IMiuiInit;->setCutoutMode(Ljava/lang/String;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_13

    .line 309
    goto :goto_36

    .line 306
    :catch_13
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Occur Exception when setCutoutMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiInit"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_36
    return-void

    .line 302
    :cond_37
    :goto_37
    return-void
.end method

.method public static blacklist setNotchSpecialMode(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "special"    # Z

    .line 287
    if-eqz p0, :cond_33

    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v0, :cond_7

    goto :goto_33

    .line 291
    :cond_7
    :try_start_7
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/os/IMiuiInit;->setNotchSpecialMode(Ljava/lang/String;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    .line 295
    goto :goto_32

    .line 292
    :catch_f
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Occur RemoteException when setNotchSpecailMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiInit"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void

    .line 288
    :cond_33
    :goto_33
    return-void
.end method

.method public static blacklist setRestrictAspect(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "restrict"    # Z

    .line 213
    if-eqz p0, :cond_35

    invoke-static {}, Lmiui/os/MiuiInit;->needAspectSettings()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_35

    .line 217
    :cond_9
    :try_start_9
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/os/IMiuiInit;->setRestrictAspect(Ljava/lang/String;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    .line 221
    goto :goto_34

    .line 218
    :catch_11
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Occur RemoteException when setRestrictAspect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiInit"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_34
    return-void

    .line 214
    :cond_35
    :goto_35
    return-void
.end method

.method public static blacklist writePreinstallPAIPackage(Ljava/lang/String;)V
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;

    .line 159
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/os/IMiuiInit;->writePreinstallPAIPackage(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 163
    goto :goto_10

    .line 160
    :catch_8
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiInit"

    const-string v2, "Occur RemoteException when write package name to preinstall PAI list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method
