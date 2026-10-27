.class public Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "Installer.java"


# instance fields
.field public volatile mDeferSetFirstBoot:Z

.field public volatile mInstalld:Landroid/os/IInstalld;

.field public volatile mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

.field public volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$0tq57UxfzsROQRoEFibdwJAIjkY(Lcom/android/server/pm/Installer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->lambda$connect$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ziOso-zBD6EBOzh2GxLZccmaXlE(Lcom/android/server/pm/Installer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 87
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static buildCreateAppDataArgs(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZ)Landroid/os/CreateAppDataArgs;
    .registers 9

    .line 172
    new-instance v0, Landroid/os/CreateAppDataArgs;

    invoke-direct {v0}, Landroid/os/CreateAppDataArgs;-><init>()V

    .line 173
    iput-object p0, v0, Landroid/os/CreateAppDataArgs;->uuid:Ljava/lang/String;

    .line 174
    iput-object p1, v0, Landroid/os/CreateAppDataArgs;->packageName:Ljava/lang/String;

    .line 175
    iput p2, v0, Landroid/os/CreateAppDataArgs;->userId:I

    .line 176
    iput p3, v0, Landroid/os/CreateAppDataArgs;->flags:I

    if-eqz p7, :cond_13

    or-int/lit8 p0, p3, 0x8

    .line 178
    iput p0, v0, Landroid/os/CreateAppDataArgs;->flags:I

    .line 180
    :cond_13
    iput p4, v0, Landroid/os/CreateAppDataArgs;->appId:I

    .line 181
    iput-object p5, v0, Landroid/os/CreateAppDataArgs;->seInfo:Ljava/lang/String;

    .line 182
    iput p6, v0, Landroid/os/CreateAppDataArgs;->targetSdkVersion:I

    return-object v0
.end method

.method public static buildPlaceholderCreateAppDataResult()Landroid/os/CreateAppDataResult;
    .registers 3

    .line 187
    new-instance v0, Landroid/os/CreateAppDataResult;

    invoke-direct {v0}, Landroid/os/CreateAppDataResult;-><init>()V

    const-wide/16 v1, -0x1

    .line 188
    iput-wide v1, v0, Landroid/os/CreateAppDataResult;->ceDataInode:J

    .line 189
    iput-wide v1, v0, Landroid/os/CreateAppDataResult;->deDataInode:J

    const/4 v1, 0x0

    .line 190
    iput v1, v0, Landroid/os/CreateAppDataResult;->exceptionCode:I

    const/4 v1, 0x0

    .line 191
    iput-object v1, v0, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static buildReconcileSdkDataArgs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILjava/lang/String;I)Landroid/os/ReconcileSdkDataArgs;
    .registers 8

    .line 198
    new-instance v0, Landroid/os/ReconcileSdkDataArgs;

    invoke-direct {v0}, Landroid/os/ReconcileSdkDataArgs;-><init>()V

    .line 199
    iput-object p0, v0, Landroid/os/ReconcileSdkDataArgs;->uuid:Ljava/lang/String;

    .line 200
    iput-object p1, v0, Landroid/os/ReconcileSdkDataArgs;->packageName:Ljava/lang/String;

    .line 201
    iput-object p2, v0, Landroid/os/ReconcileSdkDataArgs;->subDirNames:Ljava/util/List;

    .line 202
    iput p3, v0, Landroid/os/ReconcileSdkDataArgs;->userId:I

    .line 203
    iput p4, v0, Landroid/os/ReconcileSdkDataArgs;->appId:I

    const/4 p0, 0x0

    .line 204
    iput p0, v0, Landroid/os/ReconcileSdkDataArgs;->previousAppId:I

    .line 205
    iput-object p5, v0, Landroid/os/ReconcileSdkDataArgs;->seInfo:Ljava/lang/String;

    .line 206
    iput p6, v0, Landroid/os/ReconcileSdkDataArgs;->flags:I

    return-object v0
.end method


# virtual methods
.method public final checkBeforeRemote()Z
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is holding 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    .line 153
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 152
    const-string v2, "Installer"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    :cond_41
    :try_start_41
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_4e

    goto :goto_57

    .line 158
    :cond_4e
    new-instance p0, Lcom/android/server/pm/Installer$InstallerException;

    const-string/jumbo v0, "time out waiting for the installer to be ready"

    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_57} :catch_57

    :catch_57
    :goto_57
    const/4 p0, 0x1

    return p0
.end method

.method public cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    .registers 5

    .line 413
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 415
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 417
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    .line 360
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5f

    .line 362
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface/range {p0 .. p6}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 364
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 369
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    .line 370
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 372
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p3, p2, p4}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x9858

    .line 371
    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 p1, 0x2

    .line 375
    :goto_33
    array-length p2, p0

    if-ge p1, p2, :cond_5f

    .line 376
    aget-object p2, p0, p1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p2

    .line 377
    aget-object p3, p0, p1

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p3

    .line 378
    aget-object p4, p0, p1

    invoke-virtual {p4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p4

    .line 379
    aget-object p5, p0, p1

    invoke-virtual {p5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p5

    .line 381
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p3, p2, p4, p5}, [Ljava/lang/Object;

    move-result-object p2

    const p3, 0x9859

    .line 380
    invoke-static {p3, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5c} :catch_60

    add-int/lit8 p1, p1, 0x1

    goto :goto_33

    :cond_5f
    :goto_5f
    return-void

    :catch_60
    move-exception v0

    move-object p0, v0

    .line 384
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public final connect()V
    .registers 5

    .line 108
    const-string v0, "installd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 111
    :try_start_8
    new-instance v1, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Installer;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    const/4 v0, 0x0

    :cond_13
    :goto_13
    if-eqz v0, :cond_27

    .line 122
    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v0

    .line 123
    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 124
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 126
    :try_start_20
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->invalidateMounts()V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->executeDeferredActions()V
    :try_end_26
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_20 .. :try_end_26} :catch_3c

    goto :goto_3c

    .line 131
    :cond_27
    const-string v0, "Installer"

    const-string v1, "installd not found; trying again"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/Installer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :catch_3c
    :goto_3c
    return-void
.end method

.method public createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;
    .registers 3

    .line 212
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_b

    .line 213
    invoke-static {}, Lcom/android/server/pm/Installer;->buildPlaceholderCreateAppDataResult()Landroid/os/CreateAppDataResult;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x0

    .line 216
    iput v0, p1, Landroid/os/CreateAppDataArgs;->previousAppId:I

    .line 218
    :try_start_e
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 220
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;
    .registers 6

    .line 226
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_11

    .line 227
    array-length p0, p1

    new-array p0, p0, [Landroid/os/CreateAppDataResult;

    .line 228
    invoke-static {}, Lcom/android/server/pm/Installer;->buildPlaceholderCreateAppDataResult()Landroid/os/CreateAppDataResult;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 232
    :cond_11
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_1d

    aget-object v3, p1, v2

    .line 233
    iput v1, v3, Landroid/os/CreateAppDataArgs;->previousAppId:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 236
    :cond_1d
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p0

    .line 238
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;
    .registers 4

    .line 816
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 820
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 822
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public createOatDirs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    .line 598
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 600
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->createOatDirs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 602
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public createUserData(Ljava/lang/String;III)V
    .registers 6

    .line 544
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 546
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 548
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    .line 390
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 392
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface/range {p0 .. p6}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    move-object p0, v0

    .line 394
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public destroyAppDataSnapshot(Ljava/lang/String;III)Z
    .registers 13

    .line 741
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 744
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_16

    const/4 p0, 0x1

    return p0

    :catch_16
    move-exception v0

    move-object p0, v0

    .line 747
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public destroyCeSnapshotsNotSpecified(I[I)Z
    .registers 4

    .line 765
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 768
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/os/IInstalld;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_10

    const/4 p0, 0x1

    return p0

    :catch_10
    move-exception p0

    .line 771
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public destroyUserData(Ljava/lang/String;II)V
    .registers 5

    .line 553
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 555
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 557
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 839
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 842
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 844
    :try_start_d
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    .line 846
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0

    .line 840
    :cond_1a
    new-instance p0, Lcom/android/server/pm/Installer$InstallerException;

    const-string p1, "fs-verity wasn\'t enabled with an isolated installer"

    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final executeDeferredActions()V
    .registers 2

    .line 140
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mDeferSetFirstBoot:Z

    if-eqz v0, :cond_7

    .line 141
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->setFirstBoot()V

    :cond_7
    return-void
.end method

.method public fixupAppData(Ljava/lang/String;I)V
    .registers 4

    .line 399
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 401
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 403
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public freeCache(Ljava/lang/String;JI)V
    .registers 6

    .line 567
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 569
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JI)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 571
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .registers 5

    .line 493
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 495
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 497
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    .registers 14

    .line 436
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    if-eqz p7, :cond_1a

    .line 438
    array-length v1, p7

    move v2, v0

    :goto_c
    if-ge v2, v1, :cond_1a

    aget-object v3, p7, v2

    .line 439
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 443
    :cond_1a
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface/range {p0 .. p7}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object p0

    .line 445
    iget-wide p1, p8, Landroid/content/pm/PackageStats;->codeSize:J

    aget-wide p3, p0, v0

    add-long/2addr p1, p3

    iput-wide p1, p8, Landroid/content/pm/PackageStats;->codeSize:J

    .line 446
    iget-wide p1, p8, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 p3, 0x1

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p8, Landroid/content/pm/PackageStats;->dataSize:J

    .line 447
    iget-wide p1, p8, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 p3, 0x2

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p8, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 448
    iget-wide p1, p8, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 p3, 0x3

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p8, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 449
    iget-wide p1, p8, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 p3, 0x4

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p8, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 450
    iget-wide p1, p8, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 p3, 0x5

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p8, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4f} :catch_50

    return-void

    :catch_50
    move-exception v0

    move-object p0, v0

    .line 452
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getExternalSize(Ljava/lang/String;II[I)[J
    .registers 6

    .line 474
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x6

    new-array p0, p0, [J

    return-object p0

    .line 476
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 478
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .registers 4

    .line 511
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 513
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 515
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V
    .registers 7

    .line 458
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 460
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object p0

    .line 461
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->codeSize:J

    const/4 p3, 0x0

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->codeSize:J

    .line 462
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 p3, 0x1

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->dataSize:J

    .line 463
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 p3, 0x2

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 464
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 p3, 0x3

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 465
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 p3, 0x4

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 466
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 p3, 0x5

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p0

    .line 468
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B
    .registers 7

    .line 623
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 624
    :cond_a
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 626
    :try_start_11
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface/range {p0 .. p5}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception v0

    move-object p0, v0

    .line 628
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public invalidateMounts()V
    .registers 2

    .line 633
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 635
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0}, Landroid/os/IInstalld;->invalidateMounts()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 637
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public isQuotaSupported(Ljava/lang/String;)Z
    .registers 3

    .line 642
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 644
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 646
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public final synthetic lambda$connect$0()V
    .registers 3

    .line 112
    const-string v0, "Installer"

    const-string v1, "installd died; reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    .line 114
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 611
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 612
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 613
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 615
    :try_start_15
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    .line 617
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 582
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 583
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 585
    :try_start_e
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 587
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    .line 350
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 352
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 354
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public migrateLegacyObbData()Z
    .registers 2

    .line 783
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 786
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0}, Landroid/os/IInstalld;->migrateLegacyObbData()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    const/4 p0, 0x1

    return p0

    :catch_f
    move-exception p0

    .line 789
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 9

    .line 424
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 426
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface/range {p0 .. p7}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    move-object p0, v0

    .line 429
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public onPrivateVolumeRemoved(Ljava/lang/String;)V
    .registers 3

    .line 666
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 668
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 670
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public onStart()V
    .registers 1

    .line 104
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method

.method public reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    .registers 3

    .line 244
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 248
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 250
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public restoreAppDataSnapshot(Ljava/lang/String;ILjava/lang/String;III)Z
    .registers 15

    .line 715
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 718
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_16

    const/4 p0, 0x1

    return p0

    :catch_16
    move-exception v0

    move-object p0, v0

    .line 722
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 533
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 534
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 536
    :try_start_e
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 538
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public setAppQuota(Ljava/lang/String;IIJ)V
    .registers 7

    .line 521
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 523
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface/range {p0 .. p5}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    move-object p0, v0

    .line 525
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public setFirstBoot()V
    .registers 2

    .line 258
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 263
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    if-eqz v0, :cond_11

    .line 264
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0}, Landroid/os/IInstalld;->setFirstBoot()V

    return-void

    :cond_11
    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/android/server/pm/Installer;->mDeferSetFirstBoot:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 271
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    return-void
.end method

.method public snapshotAppData(Ljava/lang/String;III)Z
    .registers 11

    .line 689
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 692
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_14

    const/4 p0, 0x1

    return p0

    :catch_14
    move-exception v0

    move-object p0, v0

    .line 695
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public tryMountDataMirror(Ljava/lang/String;)V
    .registers 3

    .line 654
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 656
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->tryMountDataMirror(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 658
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method
