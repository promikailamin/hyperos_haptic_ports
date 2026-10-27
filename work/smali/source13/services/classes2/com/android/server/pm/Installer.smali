.class public Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Installer$InstallerException;,
        Lcom/android/server/pm/Installer$Batch;
    }
.end annotation


# static fields
.field private static final CONNECT_RETRY_DELAY_MS:J = 0x3e8L

.field private static final CONNECT_WAIT_MS:J = 0x2710L

.field public static final DEXOPT_BOOTCOMPLETE:I = 0x8

.field public static final DEXOPT_DEBUGGABLE:I = 0x4

.field public static final DEXOPT_ENABLE_HIDDEN_API_CHECKS:I = 0x400

.field public static final DEXOPT_FORCE:I = 0x40

.field public static final DEXOPT_FOR_RESTORE:I = 0x2000

.field public static final DEXOPT_GENERATE_APP_IMAGE:I = 0x1000

.field public static final DEXOPT_GENERATE_COMPACT_DEX:I = 0x800

.field public static final DEXOPT_IDLE_BACKGROUND_JOB:I = 0x200

.field public static final DEXOPT_MULTI_ARCH:I = 0x40000000

.field public static final DEXOPT_PROFILE_GUIDED:I = 0x10

.field public static final DEXOPT_PUBLIC:I = 0x2

.field public static final DEXOPT_SECONDARY_DEX:I = 0x20

.field public static final DEXOPT_STORAGE_CE:I = 0x80

.field public static final DEXOPT_STORAGE_DE:I = 0x100

.field public static final FLAG_CLEAR_APP_DATA_KEEP_ART_PROFILES:I = 0x20000

.field public static final FLAG_CLEAR_CACHE_ONLY:I = 0x10

.field public static final FLAG_CLEAR_CODE_CACHE_ONLY:I = 0x20

.field public static final FLAG_FORCE:I = 0x2000

.field public static final FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES:I = 0x800

.field public static final FLAG_FREE_CACHE_NOOP:I = 0x400

.field public static final FLAG_FREE_CACHE_V2:I = 0x100

.field public static final FLAG_FREE_CACHE_V2_DEFY_QUOTA:I = 0x200

.field public static final FLAG_STORAGE_CE:I = 0x2

.field public static final FLAG_STORAGE_DE:I = 0x1

.field public static final FLAG_STORAGE_EXTERNAL:I = 0x4

.field public static final FLAG_STORAGE_SDK:I = 0x8

.field public static final FLAG_USE_QUOTA:I = 0x1000

.field public static final ODEX_IS_PRIVATE:I = 0x2

.field public static final ODEX_IS_PUBLIC:I = 0x1

.field public static final ODEX_NOT_FOUND:I = 0x0

.field public static final PROFILE_ANALYSIS_DONT_OPTIMIZE_EMPTY_PROFILES:I = 0x3

.field public static final PROFILE_ANALYSIS_DONT_OPTIMIZE_SMALL_DELTA:I = 0x2

.field public static final PROFILE_ANALYSIS_OPTIMIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field private volatile mDeferSetFirstBoot:Z

.field private volatile mInstalld:Landroid/os/IInstalld;

.field private volatile mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mIsolated:Z

.field private volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$iI13HogVwRqVFLxWvEbCJ942ZI8(Lcom/android/server/pm/Installer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isolated"    # Z

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 133
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    .line 147
    iput-boolean p2, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    .line 148
    return-void
.end method

.method private static assertValidInstructionSet(Ljava/lang/String;)V
    .registers 6
    .param p0, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1151
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 1152
    .local v3, "abi":Ljava/lang/String;
    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1153
    return-void

    .line 1151
    .end local v3    # "abi":Ljava/lang/String;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1156
    :cond_16
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid instruction set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static buildCreateAppDataArgs(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZ)Landroid/os/CreateAppDataArgs;
    .registers 10
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "appId"    # I
    .param p5, "seInfo"    # Ljava/lang/String;
    .param p6, "targetSdkVersion"    # I
    .param p7, "usesSdk"    # Z

    .line 237
    new-instance v0, Landroid/os/CreateAppDataArgs;

    invoke-direct {v0}, Landroid/os/CreateAppDataArgs;-><init>()V

    .line 238
    .local v0, "args":Landroid/os/CreateAppDataArgs;
    iput-object p0, v0, Landroid/os/CreateAppDataArgs;->uuid:Ljava/lang/String;

    .line 239
    iput-object p1, v0, Landroid/os/CreateAppDataArgs;->packageName:Ljava/lang/String;

    .line 240
    iput p2, v0, Landroid/os/CreateAppDataArgs;->userId:I

    .line 241
    iput p3, v0, Landroid/os/CreateAppDataArgs;->flags:I

    .line 242
    if-eqz p7, :cond_15

    .line 243
    iget v1, v0, Landroid/os/CreateAppDataArgs;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/os/CreateAppDataArgs;->flags:I

    .line 245
    :cond_15
    iput p4, v0, Landroid/os/CreateAppDataArgs;->appId:I

    .line 246
    iput-object p5, v0, Landroid/os/CreateAppDataArgs;->seInfo:Ljava/lang/String;

    .line 247
    iput p6, v0, Landroid/os/CreateAppDataArgs;->targetSdkVersion:I

    .line 248
    return-object v0
.end method

.method private static buildPlaceholderCreateAppDataResult()Landroid/os/CreateAppDataResult;
    .registers 3

    .line 252
    new-instance v0, Landroid/os/CreateAppDataResult;

    invoke-direct {v0}, Landroid/os/CreateAppDataResult;-><init>()V

    .line 253
    .local v0, "result":Landroid/os/CreateAppDataResult;
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/os/CreateAppDataResult;->ceDataInode:J

    .line 254
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/CreateAppDataResult;->exceptionCode:I

    .line 255
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    .line 256
    return-object v0
.end method

.method static buildReconcileSdkDataArgs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILjava/lang/String;I)Landroid/os/ReconcileSdkDataArgs;
    .registers 9
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "appId"    # I
    .param p5, "seInfo"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            "I)",
            "Landroid/os/ReconcileSdkDataArgs;"
        }
    .end annotation

    .line 262
    .local p2, "subDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/ReconcileSdkDataArgs;

    invoke-direct {v0}, Landroid/os/ReconcileSdkDataArgs;-><init>()V

    .line 263
    .local v0, "args":Landroid/os/ReconcileSdkDataArgs;
    iput-object p0, v0, Landroid/os/ReconcileSdkDataArgs;->uuid:Ljava/lang/String;

    .line 264
    iput-object p1, v0, Landroid/os/ReconcileSdkDataArgs;->packageName:Ljava/lang/String;

    .line 265
    iput-object p2, v0, Landroid/os/ReconcileSdkDataArgs;->subDirNames:Ljava/util/List;

    .line 266
    iput p3, v0, Landroid/os/ReconcileSdkDataArgs;->userId:I

    .line 267
    iput p4, v0, Landroid/os/ReconcileSdkDataArgs;->appId:I

    .line 268
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/ReconcileSdkDataArgs;->previousAppId:I

    .line 269
    iput-object p5, v0, Landroid/os/ReconcileSdkDataArgs;->seInfo:Ljava/lang/String;

    .line 270
    iput p6, v0, Landroid/os/ReconcileSdkDataArgs;->flags:I

    .line 271
    return-object v0
.end method

.method private checkBeforeRemote()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    const-string v1, "Installer"

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is holding 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    .line 214
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 213
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    :cond_45
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_50

    .line 217
    const-string v0, "Ignoring request because this installer is isolated"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x0

    return v0

    .line 222
    :cond_50
    :try_start_50
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 227
    goto :goto_67

    .line 223
    :cond_5d
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    const-string/jumbo v1, "time out waiting for the installer to be ready"

    invoke-direct {v0, v1}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/Installer;
    throw v0
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_66} :catch_66

    .line 225
    .restart local p0    # "this":Lcom/android/server/pm/Installer;
    :catch_66
    move-exception v0

    .line 229
    :goto_67
    const/4 v0, 0x1

    return v0
.end method

.method private connect()V
    .registers 6

    .line 169
    const-string v0, "installd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 170
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_14

    .line 172
    :try_start_8
    new-instance v1, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Installer;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 179
    goto :goto_14

    .line 177
    :catch_12
    move-exception v1

    .line 178
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 182
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    if-eqz v0, :cond_2a

    .line 183
    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v1

    .line 184
    .local v1, "installd":Landroid/os/IInstalld;
    iput-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 185
    iget-object v2, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 187
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->invalidateMounts()V

    .line 188
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->executeDeferredActions()V
    :try_end_27
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_21 .. :try_end_27} :catch_28

    .line 190
    goto :goto_29

    .line 189
    :catch_28
    move-exception v2

    .line 191
    .end local v1    # "installd":Landroid/os/IInstalld;
    :goto_29
    goto :goto_3f

    .line 192
    :cond_2a
    const-string v1, "Installer"

    const-string v2, "installd not found; trying again"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/Installer;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    :goto_3f
    return-void
.end method

.method private executeDeferredActions()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 201
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mDeferSetFirstBoot:Z

    if-eqz v0, :cond_7

    .line 202
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->setFirstBoot()V

    .line 204
    :cond_7
    return-void
.end method


# virtual methods
.method public backupAppData(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "paths"    # [Ljava/lang/String;
    .param p3, "domains"    # [Ljava/lang/String;
    .param p4, "parentPaths"    # [Ljava/lang/String;
    .param p5, "excludePaths"    # [Ljava/lang/String;
    .param p6, "outFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1206
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->backupAppData(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1207
    :catch_d
    move-exception v0

    .line 1208
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public changeSpeedInstallFileOwner(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .line 1258
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->changeSpeedInstallFileOwner(Ljava/lang/String;II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1259
    :catch_7
    move-exception v0

    .line 1260
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public checkCloudProfile(Ljava/lang/String;)Z
    .registers 5
    .param p1, "dexMetadataPath"    # Ljava/lang/String;

    .line 998
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1000
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->checkCloudProfile(Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 1001
    :catch_e
    move-exception v0

    .line 1002
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Installer"

    const-string v2, "checkCloudProfile failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v1, 0x0

    return v1
.end method

.method public checkIfKilledAndRemoveDexoptPid(I)Z
    .registers 5
    .param p1, "pid"    # I

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->checkIfKilledAndRemoveDexoptPid(I)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 663
    :catch_7
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Installer"

    const-string v2, "checkIfKilledAndRemoveDexoptPid failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    .registers 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 466
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 468
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 471
    nop

    .line 472
    return-void

    .line 469
    :catch_e
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "ceDataInode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 433
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 435
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_13

    .line 438
    nop

    .line 439
    return-void

    .line 436
    :catch_13
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 766
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 768
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 771
    nop

    .line 772
    return-void

    .line 769
    :catch_e
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "outDexFile"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 1161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1162
    :catch_7
    move-exception v0

    .line 1163
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public controlDexOptBlocking(Z)V
    .registers 5
    .param p1, "block"    # Z

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->controlDexOptBlocking(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 683
    goto :goto_e

    .line 681
    :catch_6
    move-exception v0

    .line 682
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Installer"

    const-string v2, "blockDexOpt failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "systemProfile"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 723
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 725
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 726
    :catch_f
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;
    .registers 4
    .param p1, "args"    # Landroid/os/CreateAppDataArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 276
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_b

    .line 277
    invoke-static {}, Lcom/android/server/pm/Installer;->buildPlaceholderCreateAppDataResult()Landroid/os/CreateAppDataResult;

    move-result-object v0

    return-object v0

    .line 280
    :cond_b
    const/4 v0, 0x0

    iput v0, p1, Landroid/os/CreateAppDataArgs;->previousAppId:I

    .line 282
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_15

    return-object v0

    .line 283
    :catch_15
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;
    .registers 6
    .param p1, "args"    # [Landroid/os/CreateAppDataArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_11

    .line 291
    array-length v0, p1

    new-array v0, v0, [Landroid/os/CreateAppDataResult;

    .line 292
    .local v0, "results":[Landroid/os/CreateAppDataResult;
    invoke-static {}, Lcom/android/server/pm/Installer;->buildPlaceholderCreateAppDataResult()Landroid/os/CreateAppDataResult;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    return-object v0

    .line 296
    .end local v0    # "results":[Landroid/os/CreateAppDataResult;
    :cond_11
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_1d

    aget-object v3, p1, v2

    .line 297
    .local v3, "arg":Landroid/os/CreateAppDataArgs;
    iput v1, v3, Landroid/os/CreateAppDataArgs;->previousAppId:I

    .line 296
    .end local v3    # "arg":Landroid/os/CreateAppDataArgs;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 300
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_24

    return-object v0

    .line 301
    :catch_24
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "oatDir"    # Ljava/lang/String;
    .param p3, "dexInstructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 851
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 853
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 856
    nop

    .line 857
    return-void

    .line 854
    :catch_e
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "appId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "classpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 933
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 935
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 936
    :catch_f
    move-exception v0

    .line 937
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public createUserData(Ljava/lang/String;III)V
    .registers 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "userSerial"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 799
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 801
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 804
    nop

    .line 805
    return-void

    .line 802
    :catch_e
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "instructionSet"    # Ljava/lang/String;
    .param p4, "outputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 895
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    .line 896
    :cond_9
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 897
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 899
    :try_start_17
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_1e

    return-wide v0

    .line 900
    :catch_1e
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 789
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 791
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 794
    nop

    .line 795
    return-void

    .line 792
    :catch_e
    move-exception v0

    .line 793
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "ceDataInode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 443
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 445
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_13

    .line 448
    nop

    .line 449
    return-void

    .line 446
    :catch_13
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyAppDataSnapshot(Ljava/lang/String;III)Z
    .registers 14
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "snapshotId"    # I
    .param p4, "storageFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1097
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 1100
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v3, p1

    move v4, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v1 .. v8}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_16

    .line 1101
    const/4 v0, 0x1

    return v0

    .line 1102
    :catch_16
    move-exception v0

    .line 1103
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyAppProfiles(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 775
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 777
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->destroyAppProfiles(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 780
    nop

    .line 781
    return-void

    .line 778
    :catch_e
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyCeSnapshotsNotSpecified(I[I)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "retainSnapshotIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1121
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 1124
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/os/IInstalld;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_10

    .line 1125
    const/4 v0, 0x1

    return v0

    .line 1126
    :catch_10
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 943
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 945
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 948
    nop

    .line 949
    return-void

    .line 946
    :catch_e
    move-exception v0

    .line 947
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public destroyUserData(Ljava/lang/String;II)V
    .registers 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 808
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 810
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 813
    nop

    .line 814
    return-void

    .line 811
    :catch_e
    move-exception v0

    .line 812
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 37
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I
    .param p6, "outputPath"    # Ljava/lang/String;
    .param p7, "dexFlags"    # I
    .param p8, "compilerFilter"    # Ljava/lang/String;
    .param p9, "volumeUuid"    # Ljava/lang/String;
    .param p10, "classLoaderContext"    # Ljava/lang/String;
    .param p11, "seInfo"    # Ljava/lang/String;
    .param p12, "downgrade"    # Z
    .param p13, "targetSdkVersion"    # I
    .param p14, "profileName"    # Ljava/lang/String;
    .param p15, "dexMetadataPath"    # Ljava/lang/String;
    .param p16, "compilationReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 639
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 640
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v15, p1

    invoke-interface {v0, v15}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 641
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v14, p6

    invoke-interface {v0, v14}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 642
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v13, p15

    invoke-interface {v0, v13}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 643
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    return v0

    .line 645
    :cond_26
    const-string v0, "first-use"

    move-object/from16 v1, p16

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 646
    .local v18, "isFirstUse":Z
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->isCameraForeground()Z

    move-result v0

    if-eqz v0, :cond_3f

    if-nez v18, :cond_3f

    .line 647
    const-string v0, "camera-foreground"

    move-object/from16 v19, v0

    .end local p16    # "compilationReason":Ljava/lang/String;
    .local v0, "compilationReason":Ljava/lang/String;
    goto :goto_41

    .line 651
    .end local v0    # "compilationReason":Ljava/lang/String;
    .restart local p16    # "compilationReason":Ljava/lang/String;
    :cond_3f
    move-object/from16 v19, v1

    .end local p16    # "compilationReason":Ljava/lang/String;
    .local v19, "compilationReason":Ljava/lang/String;
    :goto_41
    move-object/from16 v12, p0

    :try_start_43
    iget-object v1, v12, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, v19

    invoke-interface/range {v1 .. v17}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_69} :catch_6a

    return v0

    .line 654
    :catch_6a
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "codePath"    # Ljava/lang/String;
    .param p5, "dumpClassesAndMethods"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 711
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 712
    :cond_8
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 714
    :try_start_f
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/IInstalld;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    return v0

    .line 716
    :catch_1b
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public fixupAppData(Ljava/lang/String;I)V
    .registers 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 452
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 454
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 457
    nop

    .line 458
    return-void

    .line 455
    :catch_e
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public forceStopFirstUseDexopt()V
    .registers 4

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0}, Landroid/os/IInstalld;->forceStopFirstUseDexopt()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 748
    goto :goto_e

    .line 746
    :catch_6
    move-exception v0

    .line 747
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Installer"

    const-string v2, "forceStopFirstUseDexopt failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public freeCache(Ljava/lang/String;JI)V
    .registers 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "targetFreeBytes"    # J
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 822
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 824
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JI)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 827
    nop

    .line 828
    return-void

    .line 825
    :catch_e
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .registers 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 546
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 548
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 549
    :catch_f
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    .registers 21
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "appId"    # I
    .param p6, "ceDataInodes"    # [J
    .param p7, "codePaths"    # [Ljava/lang/String;
    .param p8, "stats"    # Landroid/content/pm/PackageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 489
    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 490
    :cond_b
    const/4 v0, 0x0

    if-eqz v9, :cond_1e

    .line 491
    array-length v1, v9

    move v2, v0

    :goto_10
    if-ge v2, v1, :cond_1e

    aget-object v3, v9, v2

    .line 492
    .local v3, "codePath":Ljava/lang/String;
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 491
    .end local v3    # "codePath":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 496
    :cond_1e
    move-object v11, p0

    :try_start_1f
    iget-object v1, v11, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v1

    .line 498
    .local v1, "res":[J
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->codeSize:J

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    iput-wide v2, v10, Landroid/content/pm/PackageStats;->codeSize:J

    .line 499
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 v0, 0x1

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    iput-wide v2, v10, Landroid/content/pm/PackageStats;->dataSize:J

    .line 500
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 v0, 0x2

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    iput-wide v2, v10, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 501
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 v0, 0x3

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    iput-wide v2, v10, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 502
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 v0, 0x4

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    iput-wide v2, v10, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 503
    iget-wide v2, v10, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 v0, 0x5

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    iput-wide v2, v10, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_5f} :catch_61

    .line 506
    .end local v1    # "res":[J
    nop

    .line 507
    return-void

    .line 504
    :catch_61
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public getDataFD(Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;)I
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fds"    # [Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1227
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->getDataFD(Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1228
    :catch_7
    move-exception v0

    .line 1229
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public getExternalSize(Ljava/lang/String;II[I)[J
    .registers 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "appIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 527
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x6

    new-array v0, v0, [J

    return-object v0

    .line 529
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    .line 530
    :catch_11
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "instructionSet"    # Ljava/lang/String;
    .param p4, "outputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1184
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    .line 1185
    :cond_8
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1186
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1188
    :try_start_16
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_1d

    return v0

    .line 1189
    :catch_1d
    move-exception v0

    .line 1190
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .registers 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 564
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 566
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 567
    :catch_f
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V
    .registers 11
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "appIds"    # [I
    .param p5, "stats"    # Landroid/content/pm/PackageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 511
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 513
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    .line 514
    .local v0, "res":[J
    iget-wide v1, p5, Landroid/content/pm/PackageStats;->codeSize:J

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, p5, Landroid/content/pm/PackageStats;->codeSize:J

    .line 515
    iget-wide v1, p5, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, p5, Landroid/content/pm/PackageStats;->dataSize:J

    .line 516
    iget-wide v1, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 517
    iget-wide v1, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 518
    iget-wide v1, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 v3, 0x4

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 519
    iget-wide v1, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 v3, 0x5

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_3f

    .line 522
    .end local v0    # "res":[J
    nop

    .line 523
    return-void

    .line 520
    :catch_3f
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B
    .registers 13
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "volumeUuid"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 922
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 923
    :cond_a
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 925
    :try_start_11
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_1d

    return-object v0

    .line 926
    :catch_1d
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public invalidateMounts()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 952
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 954
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0}, Landroid/os/IInstalld;->invalidateMounts()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 957
    nop

    .line 958
    return-void

    .line 955
    :catch_e
    move-exception v0

    .line 956
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public isQuotaSupported(Ljava/lang/String;)Z
    .registers 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 961
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 963
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 964
    :catch_f
    move-exception v0

    .line 965
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method synthetic lambda$connect$0$com-android-server-pm-Installer()V
    .registers 3

    .line 173
    const-string v0, "Installer"

    const-string v1, "installd died; reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    .line 175
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()V

    .line 176
    return-void
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "relativePath"    # Ljava/lang/String;
    .param p3, "fromBase"    # Ljava/lang/String;
    .param p4, "toBase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 864
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 865
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 866
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 868
    :try_start_15
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    .line 871
    nop

    .line 872
    return-void

    .line 869
    :catch_1c
    move-exception v0

    .line 870
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "nativeLibPath32"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 837
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 838
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 840
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_15

    .line 843
    nop

    .line 844
    return-void

    .line 841
    :catch_15
    move-exception v0

    .line 842
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public listDataDir(Ljava/lang/String;JJLjava/util/List;[J)I
    .registers 16
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "maxCount"    # J
    .param p7, "offset"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[J)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1235
    .local p6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->listDataDir(Ljava/lang/String;JJLjava/util/List;[J)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    .line 1236
    :catch_c
    move-exception v0

    .line 1237
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 697
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x2

    return v0

    .line 699
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 700
    :catch_f
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 423
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 425
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 428
    nop

    .line 429
    return-void

    .line 426
    :catch_e
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public migrateLegacyObbData()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1139
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 1142
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0}, Landroid/os/IInstalld;->migrateLegacyObbData()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    .line 1143
    const/4 v0, 0x1

    return v0

    .line 1144
    :catch_f
    move-exception v0

    .line 1145
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "instructionSet"    # Ljava/lang/String;
    .param p4, "outputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 879
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 880
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 881
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 883
    :try_start_15
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    .line 886
    nop

    .line 887
    return-void

    .line 884
    :catch_1c
    move-exception v0

    .line 885
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 18
    .param p1, "fromUuid"    # Ljava/lang/String;
    .param p2, "toUuid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appId"    # I
    .param p5, "seInfo"    # Ljava/lang/String;
    .param p6, "targetSdkVersion"    # I
    .param p7, "fromCodePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 477
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 479
    :cond_7
    move-object v1, p0

    :try_start_8
    iget-object v2, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_18

    .line 483
    nop

    .line 484
    return-void

    .line 481
    :catch_18
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v2

    throw v2
.end method

.method public moveData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Z
    .registers 14
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .param p5, "seInfo"    # Ljava/lang/String;
    .param p6, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1197
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->moveData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1198
    :catch_d
    move-exception v0

    .line 1199
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public onPrivateVolumeRemoved(Ljava/lang/String;)V
    .registers 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 985
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 987
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 990
    nop

    .line 991
    return-void

    .line 988
    :catch_e
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public onStart()V
    .registers 2

    .line 160
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_d

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 162
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_10

    .line 164
    :cond_d
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()V

    .line 166
    :goto_10
    return-void
.end method

.method public prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "profileName"    # Ljava/lang/String;
    .param p5, "codePath"    # Ljava/lang/String;
    .param p6, "dexMetadataPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1019
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 1020
    :cond_8
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p5}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1021
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p6}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1023
    :try_start_16
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_23

    return v0

    .line 1025
    :catch_23
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    .registers 4
    .param p1, "args"    # Landroid/os/ReconcileSdkDataArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    .line 309
    return-void

    .line 312
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 315
    nop

    .line 316
    return-void

    .line 313
    :catch_e
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 15
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "isas"    # [Ljava/lang/String;
    .param p5, "volumeUuid"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 907
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p4

    if-ge v0, v1, :cond_c

    .line 908
    aget-object v1, p4, v0

    invoke-static {v1}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 907
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 910
    .end local v0    # "i":I
    :cond_c
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return v0

    .line 911
    :cond_14
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 913
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_27} :catch_28

    return v0

    .line 915
    :catch_28
    move-exception v0

    .line 916
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public recoverOldFile(Ljava/lang/String;)Z
    .registers 5
    .param p1, "oatPath"    # Ljava/lang/String;

    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->recoverOldFile(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 593
    :catch_7
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Installer"

    const-string/jumbo v2, "recoverOldFile failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public restoreAppDataSnapshot(Ljava/lang/String;ILjava/lang/String;III)Z
    .registers 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "seInfo"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "snapshotId"    # I
    .param p6, "storageFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1071
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 1074
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_16

    .line 1076
    const/4 v0, 0x1

    return v0

    .line 1077
    :catch_16
    move-exception v0

    .line 1078
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 15
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "appId"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 413
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 415
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_14

    .line 418
    nop

    .line 419
    return-void

    .line 416
    :catch_14
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public rmBackupOat(Ljava/lang/String;)V
    .registers 5
    .param p1, "oatPath"    # Ljava/lang/String;

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->rmBackupOat(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 588
    goto :goto_f

    .line 586
    :catch_6
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Installer"

    const-string/jumbo v2, "rmBackupOat failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    return-void
.end method

.method public rmDmFile(Ljava/lang/String;)V
    .registers 4
    .param p1, "dmFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1288
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1289
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1291
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->rmDmFile(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_15

    .line 1294
    nop

    .line 1295
    return-void

    .line 1292
    :catch_15
    move-exception v0

    .line 1293
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 756
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 757
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 759
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_15

    .line 762
    nop

    .line 763
    return-void

    .line 760
    :catch_15
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 732
    invoke-static {p2}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 733
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 734
    :cond_a
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 736
    :try_start_11
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->rmdex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    .line 739
    nop

    .line 740
    return-void

    .line 737
    :catch_18
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public setAppQuota(Ljava/lang/String;IIJ)V
    .registers 13
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "cacheQuota"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 574
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 576
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12

    .line 579
    nop

    .line 580
    return-void

    .line 577
    :catch_12
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public setFirstBoot()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    .line 323
    return-void

    .line 327
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    if-eqz v0, :cond_11

    .line 328
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0}, Landroid/os/IInstalld;->setFirstBoot()V

    goto :goto_14

    .line 332
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/Installer;->mDeferSetFirstBoot:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_16

    .line 336
    :goto_14
    nop

    .line 337
    return-void

    .line 334
    :catch_16
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .registers 2
    .param p1, "warnIfHeld"    # Ljava/lang/Object;

    .line 155
    iput-object p1, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public snapshotAppData(Ljava/lang/String;III)Z
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "snapshotId"    # I
    .param p4, "storageFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1045
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 1048
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_14

    .line 1049
    const/4 v0, 0x1

    return v0

    .line 1050
    :catch_14
    move-exception v0

    .line 1051
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method

.method public speedInstallRedirectDir(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;

    .line 1269
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->speedInstallRedirectDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1270
    :catch_7
    move-exception v0

    .line 1271
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public speedInstallUnRedirectAndDeleteDir(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;

    .line 1280
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->speedInstallUnRedirectAndDeleteDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1281
    :catch_7
    move-exception v0

    .line 1282
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public transferData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILjava/lang/String;Z)I
    .registers 22
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "targetBase"    # Ljava/lang/String;
    .param p3, "targetRelative"    # Ljava/lang/String;
    .param p4, "copy"    # Z
    .param p5, "targetUid"    # I
    .param p6, "targetGid"    # I
    .param p7, "targetMode"    # I
    .param p8, "targetSeInfo"    # Ljava/lang/String;
    .param p9, "ignoreSetPermissionError"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1218
    move-object v1, p0

    :try_start_1
    iget-object v2, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Landroid/os/IInstalld;->transferData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILjava/lang/String;Z)I

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    return v0

    .line 1220
    :catch_17
    move-exception v0

    .line 1221
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v2

    throw v2
.end method

.method public tryMountDataMirror(Ljava/lang/String;)V
    .registers 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 973
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 975
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->tryMountDataMirror(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 978
    nop

    .line 979
    return-void

    .line 976
    :catch_e
    move-exception v0

    .line 977
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v1

    throw v1
.end method
