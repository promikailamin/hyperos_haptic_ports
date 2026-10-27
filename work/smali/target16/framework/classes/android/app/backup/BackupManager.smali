.class public Landroid/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;,
        Landroid/app/backup/BackupManager$BackupObserverWrapper;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_AGENT_FAILURE:I = -0x3eb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_BACKUP_CANCELLED:I = -0x7d3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_BACKUP_NOT_ALLOWED:I = -0x7d1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_PACKAGE_NOT_FOUND:I = -0x7d2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_ABORTED:I = -0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_INVALID:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_PACKAGE_REJECTED:I = -0x3ea
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_QUOTA_EXCEEDED:I = -0x3ed
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_UNAVAILABLE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_BACKUP_SERVICES_AVAILABLE:Ljava/lang/String; = "backup_services_available"

.field public static final whitelist FLAG_NON_INCREMENTAL_BACKUP:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist IS_BACKUP_SERVICE_ACTIVE_ENFORCE_PERMISSION_IN_SERVICE:J = 0x9723ef2L

.field public static final whitelist PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BackupManager"

.field public static greylist sService:Landroid/app/backup/IBackupManager;


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 232
    return-void
.end method

.method private static greylist checkServiceBinder()V
    .registers 1

    .line 216
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_11

    .line 217
    nop

    .line 218
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    sput-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    .line 220
    :cond_11
    return-void
.end method

.method public static whitelist dataChanged(Ljava/lang/String;)V
    .registers 2

    .line 268
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 269
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_15

    .line 271
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 274
    goto :goto_15

    .line 272
    :catch_d
    move-exception p0

    .line 273
    const-string p0, "BackupManager"

    const-string v0, "dataChanged(pkg) couldn\'t connect"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_15
    :goto_15
    return-void
.end method

.method public static blacklist dataChangedForUser(ILjava/lang/String;)V
    .registers 3

    .line 294
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 295
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_15

    .line 297
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p0, p1}, Landroid/app/backup/IBackupManager;->dataChangedForUser(ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 300
    goto :goto_15

    .line 298
    :catch_d
    move-exception p0

    .line 299
    const-string p0, "BackupManager"

    const-string p1, "dataChanged(userId,pkg) couldn\'t connect"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_15
    :goto_15
    return-void
.end method


# virtual methods
.method public whitelist backupNow()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 750
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 751
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_15

    .line 753
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 756
    goto :goto_15

    .line 754
    :catch_d
    move-exception v0

    .line 755
    const-string v0, "BackupManager"

    const-string v1, "backupNow() couldn\'t connect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_15
    :goto_15
    return-void
.end method

.method public whitelist beginRestoreSession()Landroid/app/backup/RestoreSession;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 379
    nop

    .line 380
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 381
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 384
    :try_start_9
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 385
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v2, v1, v1}, Landroid/app/backup/IBackupManager;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_1f

    .line 387
    new-instance v2, Landroid/app/backup/RestoreSession;

    iget-object v3, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_20

    move-object v1, v2

    .line 391
    :cond_1f
    goto :goto_28

    .line 389
    :catch_20
    move-exception v0

    .line 390
    const-string v0, "BackupManager"

    const-string v2, "beginRestoreSession() couldn\'t connect"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_28
    :goto_28
    return-object v1
.end method

.method public whitelist cancelBackups()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 877
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 878
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_15

    .line 880
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->cancelBackups()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 883
    goto :goto_15

    .line 881
    :catch_d
    move-exception v0

    .line 882
    const-string v0, "BackupManager"

    const-string v1, "cancelBackups() couldn\'t connect."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_15
    :goto_15
    return-void
.end method

.method public whitelist dataChanged()V
    .registers 3

    .line 244
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 245
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1b

    .line 247
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    .line 250
    goto :goto_1b

    .line 248
    :catch_13
    move-exception v0

    .line 249
    const-string v0, "BackupManager"

    const-string v1, "dataChanged() couldn\'t connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1048
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1049
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_15

    .line 1051
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 1054
    goto :goto_15

    .line 1052
    :catch_d
    move-exception p1

    .line 1053
    const-string p1, "BackupManager"

    const-string p2, "excludeKeysFromRestore() couldn\'t connect"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_15
    :goto_15
    return-void
.end method

.method public whitelist getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 774
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 775
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1c

    .line 777
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getAvailableRestoreTokenForUser(ILjava/lang/String;)J

    move-result-wide v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return-wide v0

    .line 778
    :catch_14
    move-exception p1

    .line 779
    const-string p1, "BackupManager"

    const-string v0, "getAvailableRestoreToken() couldn\'t connect"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_1c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getBackupRestoreEventLogger(Landroid/app/backup/BackupAgent;)Landroid/app/backup/BackupRestoreEventLogger;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1073
    invoke-virtual {p1}, Landroid/app/backup/BackupAgent;->getBackupRestoreEventLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    .line 1074
    if-eqz v0, :cond_b

    .line 1078
    invoke-virtual {p1}, Landroid/app/backup/BackupAgent;->getBackupRestoreEventLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p1

    return-object p1

    .line 1075
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to get logger on an uninitialised BackupAgent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 940
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 941
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1c

    .line 943
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return-object p1

    .line 944
    :catch_14
    move-exception p1

    .line 945
    const-string p1, "BackupManager"

    const-string v0, "getConfigurationIntent() couldn\'t connect"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getCurrentTransport()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 535
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 536
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_16

    .line 538
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 539
    :catch_e
    move-exception v0

    .line 540
    const-string v0, "BackupManager"

    const-string v1, "getCurrentTransport() couldn\'t connect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentTransportComponent()Landroid/content/ComponentName;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 556
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 557
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1c

    .line 559
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return-object v0

    .line 560
    :catch_14
    move-exception v0

    .line 561
    const-string v0, "BackupManager"

    const-string v1, "getCurrentTransportComponent() couldn\'t connect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 982
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 983
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1c

    .line 985
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return-object p1

    .line 986
    :catch_14
    move-exception p1

    .line 987
    const-string p1, "BackupManager"

    const-string v0, "getDataManagementIntent() couldn\'t connect"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getDataManagementIntentLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1024
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1025
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1c

    .line 1027
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return-object p1

    .line 1028
    :catch_14
    move-exception p1

    .line 1029
    const-string p1, "BackupManager"

    const-string v0, "getDataManagementIntentLabel() couldn\'t connect"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1008
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupManager;->getDataManagementIntentLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1009
    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getDelayedRestoreLogger()Landroid/app/backup/BackupRestoreEventLogger;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1092
    new-instance v0, Landroid/app/backup/BackupRestoreEventLogger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/app/backup/BackupRestoreEventLogger;-><init>(I)V

    return-object v0
.end method

.method public whitelist getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 961
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 962
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1c

    .line 964
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return-object p1

    .line 965
    :catch_14
    move-exception p1

    .line 966
    const-string p1, "BackupManager"

    const-string v0, "getDestinationString() couldn\'t connect"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;
    .registers 4

    .line 899
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 900
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_16

    .line 902
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object p1

    .line 903
    :catch_e
    move-exception p1

    .line 904
    const-string p1, "BackupManager"

    const-string p2, "getUserForAncestralSerialNumber() couldn\'t connect"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist isAppEligibleForBackup(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 796
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 797
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1c

    .line 799
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->isAppEligibleForBackupForUser(ILjava/lang/String;)Z

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return p1

    .line 800
    :catch_14
    move-exception p1

    .line 801
    const-string p1, "BackupManager"

    const-string v0, "isAppEligibleForBackup(pkg) couldn\'t connect"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist isBackupEnabled()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 456
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 457
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_16

    .line 459
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 460
    :catch_e
    move-exception v0

    .line 461
    const-string v0, "BackupManager"

    const-string v1, "isBackupEnabled() couldn\'t connect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBackupServiceActive(Landroid/os/UserHandle;)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 488
    const-wide/32 v0, 0x9723ef2

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_12

    .line 490
    iget-object v0, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupServiceActive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_12
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 494
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_2c

    .line 496
    :try_start_19
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result p1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_23} :catch_24

    return p1

    .line 497
    :catch_24
    move-exception p1

    .line 498
    const-string p1, "BackupManager"

    const-string v0, "isBackupEnabled() couldn\'t connect"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist listAllTransports()[Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 575
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 576
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_17

    .line 578
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 579
    :catch_e
    move-exception v0

    .line 580
    const-string v0, "BackupManager"

    const-string/jumbo v1, "listAllTransports() couldn\'t connect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist reportDelayedRestoreResult(Landroid/app/backup/BackupRestoreEventLogger;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1105
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1106
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_20

    .line 1108
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1109
    invoke-virtual {p1}, Landroid/app/backup/BackupRestoreEventLogger;->getLoggingResults()Ljava/util/List;

    move-result-object p1

    .line 1108
    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->reportDelayedRestoreResult(Ljava/lang/String;Ljava/util/List;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    .line 1112
    goto :goto_20

    .line 1110
    :catch_17
    move-exception p1

    .line 1111
    const-string p1, "BackupManager"

    const-string/jumbo v0, "reportDelayedRestoreResult() couldn\'t connect"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_20
    :goto_20
    return-void
.end method

.method public whitelist requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 826
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/backup/BackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;Landroid/app/backup/BackupManagerMonitor;I)I

    move-result p1

    return p1
.end method

.method public whitelist requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;Landroid/app/backup/BackupManagerMonitor;I)I
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 851
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 852
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_2b

    .line 854
    const/4 v0, 0x0

    if-nez p2, :cond_c

    .line 855
    move-object v1, v0

    goto :goto_13

    .line 856
    :cond_c
    :try_start_c
    new-instance v1, Landroid/app/backup/BackupManager$BackupObserverWrapper;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p2}, Landroid/app/backup/BackupManager$BackupObserverWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/BackupObserver;)V

    .line 857
    :goto_13
    if-nez p3, :cond_16

    .line 858
    goto :goto_1b

    .line 859
    :cond_16
    new-instance v0, Landroid/app/backup/BackupManagerMonitorWrapper;

    invoke-direct {v0, p3}, Landroid/app/backup/BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/BackupManagerMonitor;)V

    .line 860
    :goto_1b
    sget-object p2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {p2, p1, v1, v0, p4}, Landroid/app/backup/IBackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_21} :catch_22

    return p1

    .line 861
    :catch_22
    move-exception p1

    .line 862
    const-string p1, "BackupManager"

    const-string/jumbo p2, "requestBackup() couldn\'t connect"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_2b
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist requestRestore(Landroid/app/backup/RestoreObserver;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupManager;->requestRestore(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result p1

    return p1
.end method

.method public whitelist requestRestore(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    const-string p1, "BackupManager"

    const-string/jumbo p2, "requestRestore(): Since Android P app can no longer request restoring of its backup."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 699
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_17

    .line 701
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object p1

    .line 702
    :catch_e
    move-exception p1

    .line 703
    const-string p1, "BackupManager"

    const-string/jumbo v0, "selectBackupTransport() couldn\'t connect"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist selectBackupTransport(Landroid/content/ComponentName;Landroid/app/backup/SelectBackupTransportCallback;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 724
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 725
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_28

    .line 727
    if-nez p2, :cond_b

    .line 728
    const/4 p2, 0x0

    goto :goto_13

    :cond_b
    :try_start_b
    new-instance v0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/SelectBackupTransportCallback;)V

    move-object p2, v0

    .line 729
    :goto_13
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 730
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 729
    invoke-interface {v0, v1, p1, p2}, Landroid/app/backup/IBackupManager;->selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1e} :catch_1f

    .line 733
    goto :goto_28

    .line 731
    :catch_1f
    move-exception p1

    .line 732
    const-string p1, "BackupManager"

    const-string/jumbo p2, "selectBackupTransportAsync() couldn\'t connect"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_28
    :goto_28
    return-void
.end method

.method public whitelist setAncestralSerialNumber(J)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 920
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 921
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_16

    .line 923
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->setAncestralSerialNumber(J)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 926
    goto :goto_16

    .line 924
    :catch_d
    move-exception p1

    .line 925
    const-string p1, "BackupManager"

    const-string/jumbo p2, "setAncestralSerialNumber() couldn\'t connect"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setAutoRestore(Z)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 515
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 516
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_16

    .line 518
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 521
    goto :goto_16

    .line 519
    :catch_d
    move-exception p1

    .line 520
    const-string p1, "BackupManager"

    const-string/jumbo v0, "setAutoRestore() couldn\'t connect"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setBackupEnabled(Z)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 408
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 409
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_16

    .line 411
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 414
    goto :goto_16

    .line 412
    :catch_d
    move-exception p1

    .line 413
    const-string p1, "BackupManager"

    const-string/jumbo v0, "setBackupEnabled() couldn\'t connect"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setFrameworkSchedulingEnabled(Z)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 435
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 436
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    const-string/jumbo v1, "setFrameworkSchedulingEnabled() couldn\'t connect"

    const-string v2, "BackupManager"

    if-nez v0, :cond_10

    .line 437
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void

    .line 442
    :cond_10
    :try_start_10
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v3, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v3, p1}, Landroid/app/backup/IBackupManager;->setFrameworkSchedulingEnabledForUser(IZ)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_1c

    .line 445
    goto :goto_20

    .line 443
    :catch_1c
    move-exception p1

    .line 444
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_20
    return-void
.end method

.method public whitelist updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 665
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 666
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_21

    .line 668
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v0, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 669
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 668
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/app/backup/IBackupManager;->updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_19

    .line 678
    goto :goto_21

    .line 676
    :catch_19
    move-exception v0

    .line 677
    const-string p1, "BackupManager"

    const-string p2, "describeTransport() couldn\'t connect"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_21
    :goto_21
    return-void
.end method

.method public whitelist updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 623
    invoke-virtual/range {p0 .. p6}, Landroid/app/backup/BackupManager;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 630
    return-void
.end method
