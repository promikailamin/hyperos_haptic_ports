.class public final Lcom/android/server/SystemServiceManager;
.super Ljava/lang/Object;
.source "SystemServiceManager.java"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_MAX_USER_POOL_THREADS:I = 0x3

.field private static final SERVICE_CALL_WARN_TIME_MS:I = 0x32

.field private static final TAG:Ljava/lang/String;

.field private static final USER_COMPLETED_EVENT:Ljava/lang/String; = "CompletedEvent"

.field private static final USER_POOL_SHUTDOWN_TIMEOUT_SECONDS:J = 0x1eL

.field private static final USER_STARTING:Ljava/lang/String; = "Start"

.field private static final USER_STOPPED:Ljava/lang/String; = "Cleanup"

.field private static final USER_STOPPING:Ljava/lang/String; = "Stop"

.field private static final USER_SWITCHING:Ljava/lang/String; = "Switch"

.field private static final USER_UNLOCKED:Ljava/lang/String; = "Unlocked"

.field private static final USER_UNLOCKING:Ljava/lang/String; = "Unlocking"

.field private static volatile sOtherServicesStartIndex:I

.field private static sSystemDir:Ljava/io/File;

.field private static sUseLifecycleThreadPool:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPhase:I

.field private mCurrentUser:Lcom/android/server/SystemService$TargetUser;

.field private final mNumUserPoolThreads:I

.field private mRuntimeRestarted:Z

.field private mRuntimeStartElapsedTime:J

.field private mRuntimeStartUptime:J

.field private mSafeMode:Z

.field private mServiceClassnames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/SystemService;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/SystemService$TargetUser;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    .line 86
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/SystemServiceManager;->sUseLifecycleThreadPool:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 128
    iput-object p1, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 130
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    .line 132
    sget-boolean v0, Lcom/android/server/SystemServiceManager;->sUseLifecycleThreadPool:Z

    if-eqz v0, :cond_29

    .line 133
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    sput-boolean v0, Lcom/android/server/SystemServiceManager;->sUseLifecycleThreadPool:Z

    .line 134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServiceManager;->mNumUserPoolThreads:I

    .line 136
    return-void
.end method

.method public static ensureSystemDir()Ljava/io/File;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 715
    sget-object v0, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    if-nez v0, :cond_15

    .line 716
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 717
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    .line 718
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 720
    .end local v0    # "dataDir":Ljava/io/File;
    :cond_15
    sget-object v0, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    return-object v0
.end method

.method private getOnUserCompletedEventRunnable(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)Ljava/lang/Runnable;
    .registers 14
    .param p1, "oldTrace"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "service"    # Lcom/android/server/SystemService;
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "curUser"    # Lcom/android/server/SystemService$TargetUser;
    .param p5, "eventType"    # Lcom/android/server/SystemService$UserCompletedEventType;

    .line 632
    new-instance v7, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/SystemServiceManager;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;Ljava/lang/String;Lcom/android/server/SystemService;)V

    return-object v7
.end method

.method private getOnUserStartingRunnable(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Lcom/android/server/SystemService$TargetUser;)Ljava/lang/Runnable;
    .registers 5
    .param p1, "oldTrace"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "service"    # Lcom/android/server/SystemService;
    .param p3, "curUser"    # Lcom/android/server/SystemService$TargetUser;

    .line 609
    new-instance v0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/SystemServiceManager;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Lcom/android/server/SystemService$TargetUser;)V

    return-object v0
.end method

.method private getTargetUser(I)Lcom/android/server/SystemService$TargetUser;
    .registers 6
    .param p1, "userId"    # I

    .line 352
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 353
    :try_start_3
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SystemService$TargetUser;

    .line 354
    .local v1, "targetUser":Lcom/android/server/SystemService$TargetUser;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_28

    .line 355
    if-eqz v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No TargetUser for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 356
    return-object v1

    .line 354
    .end local v1    # "targetUser":Lcom/android/server/SystemService$TargetUser;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private static isJarInTestApex(Ljava/lang/String;)Z
    .registers 9
    .param p0, "pathStr"    # Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 176
    .local v1, "path":Ljava/nio/file/Path;
    invoke-interface {v1}, Ljava/nio/file/Path;->getNameCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3f

    invoke-interface {v1, v0}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 177
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "apexModuleName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v4

    .line 179
    .local v4, "apexManager":Lcom/android/server/pm/ApexManager;
    invoke-virtual {v4, v3}, Lcom/android/server/pm/ApexManager;->getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v5, v2}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 182
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_3f

    .line 183
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_3e

    move v0, v2

    :cond_3e
    return v0

    .line 186
    .end local v3    # "apexModuleName":Ljava/lang/String;
    .end local v4    # "apexManager":Lcom/android/server/pm/ApexManager;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3f
    return v0
.end method

.method private static loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/android/server/SystemService;",
            ">;"
        }
    .end annotation

    .line 196
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 197
    :catch_6
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from class loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": service class not found, usually indicates that the caller should have called PackageManager.hasSystemFeature() to check whether the feature is available on this device before trying to start the services that implement it. Also ensure that the correct path for the classloader is supplied, if applicable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 8
    .param p1, "onWhat"    # Ljava/lang/String;
    .param p2, "curUser"    # Lcom/android/server/SystemService$TargetUser;
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "ex"    # Ljava/lang/Exception;

    .line 653
    sget-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemService failure: Failure reporting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    return-void
.end method

.method private newTargetUser(I)Lcom/android/server/SystemService$TargetUser;
    .registers 6
    .param p1, "userId"    # I

    .line 360
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 361
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No UserInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 362
    new-instance v1, Lcom/android/server/SystemService$TargetUser;

    invoke-direct {v1, v0}, Lcom/android/server/SystemService$TargetUser;-><init>(Landroid/content/pm/UserInfo;)V

    return-object v1
.end method

.method private onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 11
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "onWhat"    # Ljava/lang/String;
    .param p3, "prevUser"    # Lcom/android/server/SystemService$TargetUser;
    .param p4, "curUser"    # Lcom/android/server/SystemService$TargetUser;

    .line 470
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V

    .line 471
    return-void
.end method

.method private onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V
    .registers 30
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "onWhat"    # Ljava/lang/String;
    .param p3, "prevUser"    # Lcom/android/server/SystemService$TargetUser;
    .param p4, "curUser"    # Lcom/android/server/SystemService$TargetUser;
    .param p5, "completedEventType"    # Lcom/android/server/SystemService$UserCompletedEventType;

    .line 476
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v12

    .line 478
    .local v12, "curUserId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ssm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "User-"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 479
    sget-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 480
    if-eqz v10, :cond_66

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_68

    :cond_66
    const-string v2, ""

    :goto_68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {v7, v12, v9}, Lcom/android/server/SystemServiceManager;->useThreadPool(ILjava/lang/String;)Z

    move-result v14

    .line 484
    .local v14, "useThreadPool":Z
    if-eqz v14, :cond_80

    iget v0, v7, Lcom/android/server/SystemServiceManager;->mNumUserPoolThreads:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_81

    :cond_80
    const/4 v0, 0x0

    :goto_81
    move-object v15, v0

    .line 486
    .local v15, "threadPool":Ljava/util/concurrent/ExecutorService;
    iget-object v0, v7, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 487
    .local v6, "serviceLen":I
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_8a
    const-string v1, "CompletedEvent"

    if-ge v5, v6, :cond_25c

    .line 488
    iget-object v0, v7, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/SystemService;

    .line 489
    .local v4, "service":Lcom/android/server/SystemService;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "serviceName":Ljava/lang/String;
    invoke-virtual {v4, v11}, Lcom/android/server/SystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    move-result v0

    .line 494
    .local v0, "supported":Z
    if-nez v0, :cond_ae

    if-eqz v10, :cond_ae

    .line 495
    invoke-virtual {v4, v10}, Lcom/android/server/SystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    move-result v0

    move/from16 v16, v0

    goto :goto_b0

    .line 498
    :cond_ae
    move/from16 v16, v0

    .end local v0    # "supported":Z
    .local v16, "supported":Z
    :goto_b0
    if-nez v16, :cond_e4

    .line 504
    sget-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    goto/16 :goto_254

    .line 509
    :cond_e4
    if-eqz v14, :cond_ef

    invoke-direct {v7, v9, v5}, Lcom/android/server/SystemServiceManager;->useThreadPoolForService(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_ef

    const/16 v17, 0x1

    goto :goto_f1

    :cond_ef
    const/16 v17, 0x0

    .line 510
    .local v17, "submitToThreadPool":Z
    :goto_f1
    if-nez v17, :cond_11c

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ssm.on"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 513
    :cond_11c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 515
    .local v19, "time":J
    const/4 v0, -0x1

    :try_start_121
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_125} :catch_21b

    sparse-switch v2, :sswitch_data_2b0

    :cond_128
    goto :goto_179

    :sswitch_129
    :try_start_129
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    const/4 v2, 0x6

    goto :goto_17a

    :sswitch_131
    const-string v1, "Start"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    const/4 v2, 0x1

    goto :goto_17a

    :sswitch_13b
    const-string v1, "Stop"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    const/4 v2, 0x4

    goto :goto_17a

    :sswitch_145
    const-string v1, "Unlocked"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    const/4 v2, 0x3

    goto :goto_17a

    :sswitch_14f
    const-string v1, "Unlocking"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    const/4 v2, 0x2

    goto :goto_17a

    :sswitch_159
    const-string v1, "Cleanup"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    const/4 v2, 0x5

    goto :goto_17a

    :sswitch_163
    const-string v1, "Switch"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_169} :catch_16d

    if-eqz v1, :cond_128

    const/4 v2, 0x0

    goto :goto_17a

    .line 545
    :catch_16d
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    goto/16 :goto_225

    .line 515
    :goto_179
    move v2, v0

    :goto_17a
    packed-switch v2, :pswitch_data_2ce

    .line 543
    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    .end local v3    # "serviceName":Ljava/lang/String;
    .end local v4    # "service":Lcom/android/server/SystemService;
    .end local v5    # "i":I
    .end local v6    # "serviceLen":I
    .local v14, "service":Lcom/android/server/SystemService;
    .local v18, "serviceName":Ljava/lang/String;
    .local v21, "useThreadPool":Z
    .local v22, "i":I
    .local v23, "serviceLen":I
    :try_start_186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_204

    .line 539
    .end local v18    # "serviceName":Ljava/lang/String;
    .end local v21    # "useThreadPool":Z
    .end local v22    # "i":I
    .end local v23    # "serviceLen":I
    .restart local v3    # "serviceName":Ljava/lang/String;
    .restart local v4    # "service":Lcom/android/server/SystemService;
    .restart local v5    # "i":I
    .restart local v6    # "serviceLen":I
    .local v14, "useThreadPool":Z
    :pswitch_18a
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v18, v3

    .end local v3    # "serviceName":Ljava/lang/String;
    .restart local v18    # "serviceName":Ljava/lang/String;
    move-object v3, v4

    move/from16 v21, v14

    move-object v14, v4

    .end local v4    # "service":Lcom/android/server/SystemService;
    .local v14, "service":Lcom/android/server/SystemService;
    .restart local v21    # "useThreadPool":Z
    move-object/from16 v4, v18

    move/from16 v22, v5

    .end local v5    # "i":I
    .restart local v22    # "i":I
    move-object/from16 v5, p4

    move/from16 v23, v6

    .end local v6    # "serviceLen":I
    .restart local v23    # "serviceLen":I
    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/SystemServiceManager;->getOnUserCompletedEventRunnable(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 541
    goto/16 :goto_1ff

    .line 536
    .end local v18    # "serviceName":Ljava/lang/String;
    .end local v21    # "useThreadPool":Z
    .end local v22    # "i":I
    .end local v23    # "serviceLen":I
    .restart local v3    # "serviceName":Ljava/lang/String;
    .restart local v4    # "service":Lcom/android/server/SystemService;
    .restart local v5    # "i":I
    .restart local v6    # "serviceLen":I
    .local v14, "useThreadPool":Z
    :pswitch_1a7
    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    .end local v3    # "serviceName":Ljava/lang/String;
    .end local v4    # "service":Lcom/android/server/SystemService;
    .end local v5    # "i":I
    .end local v6    # "serviceLen":I
    .local v14, "service":Lcom/android/server/SystemService;
    .restart local v18    # "serviceName":Ljava/lang/String;
    .restart local v21    # "useThreadPool":Z
    .restart local v22    # "i":I
    .restart local v23    # "serviceLen":I
    invoke-virtual {v14, v11}, Lcom/android/server/SystemService;->onUserStopped(Lcom/android/server/SystemService$TargetUser;)V

    .line 537
    goto :goto_1ff

    .line 533
    .end local v18    # "serviceName":Ljava/lang/String;
    .end local v21    # "useThreadPool":Z
    .end local v22    # "i":I
    .end local v23    # "serviceLen":I
    .restart local v3    # "serviceName":Ljava/lang/String;
    .restart local v4    # "service":Lcom/android/server/SystemService;
    .restart local v5    # "i":I
    .restart local v6    # "serviceLen":I
    .local v14, "useThreadPool":Z
    :pswitch_1b4
    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    .end local v3    # "serviceName":Ljava/lang/String;
    .end local v4    # "service":Lcom/android/server/SystemService;
    .end local v5    # "i":I
    .end local v6    # "serviceLen":I
    .local v14, "service":Lcom/android/server/SystemService;
    .restart local v18    # "serviceName":Ljava/lang/String;
    .restart local v21    # "useThreadPool":Z
    .restart local v22    # "i":I
    .restart local v23    # "serviceLen":I
    invoke-virtual {v14, v11}, Lcom/android/server/SystemService;->onUserStopping(Lcom/android/server/SystemService$TargetUser;)V

    .line 534
    goto :goto_1ff

    .line 530
    .end local v18    # "serviceName":Ljava/lang/String;
    .end local v21    # "useThreadPool":Z
    .end local v22    # "i":I
    .end local v23    # "serviceLen":I
    .restart local v3    # "serviceName":Ljava/lang/String;
    .restart local v4    # "service":Lcom/android/server/SystemService;
    .restart local v5    # "i":I
    .restart local v6    # "serviceLen":I
    .local v14, "useThreadPool":Z
    :pswitch_1c1
    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    .end local v3    # "serviceName":Ljava/lang/String;
    .end local v4    # "service":Lcom/android/server/SystemService;
    .end local v5    # "i":I
    .end local v6    # "serviceLen":I
    .local v14, "service":Lcom/android/server/SystemService;
    .restart local v18    # "serviceName":Ljava/lang/String;
    .restart local v21    # "useThreadPool":Z
    .restart local v22    # "i":I
    .restart local v23    # "serviceLen":I
    invoke-virtual {v14, v11}, Lcom/android/server/SystemService;->onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V

    .line 531
    goto :goto_1ff

    .line 527
    .end local v18    # "serviceName":Ljava/lang/String;
    .end local v21    # "useThreadPool":Z
    .end local v22    # "i":I
    .end local v23    # "serviceLen":I
    .restart local v3    # "serviceName":Ljava/lang/String;
    .restart local v4    # "service":Lcom/android/server/SystemService;
    .restart local v5    # "i":I
    .restart local v6    # "serviceLen":I
    .local v14, "useThreadPool":Z
    :pswitch_1ce
    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    .end local v3    # "serviceName":Ljava/lang/String;
    .end local v4    # "service":Lcom/android/server/SystemService;
    .end local v5    # "i":I
    .end local v6    # "serviceLen":I
    .local v14, "service":Lcom/android/server/SystemService;
    .restart local v18    # "serviceName":Ljava/lang/String;
    .restart local v21    # "useThreadPool":Z
    .restart local v22    # "i":I
    .restart local v23    # "serviceLen":I
    invoke-virtual {v14, v11}, Lcom/android/server/SystemService;->onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V

    .line 528
    goto :goto_1ff

    .line 520
    .end local v18    # "serviceName":Ljava/lang/String;
    .end local v21    # "useThreadPool":Z
    .end local v22    # "i":I
    .end local v23    # "serviceLen":I
    .restart local v3    # "serviceName":Ljava/lang/String;
    .restart local v4    # "service":Lcom/android/server/SystemService;
    .restart local v5    # "i":I
    .restart local v6    # "serviceLen":I
    .local v14, "useThreadPool":Z
    :pswitch_1db
    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    .end local v3    # "serviceName":Ljava/lang/String;
    .end local v4    # "service":Lcom/android/server/SystemService;
    .end local v5    # "i":I
    .end local v6    # "serviceLen":I
    .local v14, "service":Lcom/android/server/SystemService;
    .restart local v18    # "serviceName":Ljava/lang/String;
    .restart local v21    # "useThreadPool":Z
    .restart local v22    # "i":I
    .restart local v23    # "serviceLen":I
    if-eqz v17, :cond_1ee

    .line 521
    invoke-direct {v7, v8, v14, v11}, Lcom/android/server/SystemServiceManager;->getOnUserStartingRunnable(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Lcom/android/server/SystemService$TargetUser;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1ff

    .line 523
    :cond_1ee
    invoke-virtual {v14, v11}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 525
    goto :goto_1ff

    .line 517
    .end local v18    # "serviceName":Ljava/lang/String;
    .end local v21    # "useThreadPool":Z
    .end local v22    # "i":I
    .end local v23    # "serviceLen":I
    .restart local v3    # "serviceName":Ljava/lang/String;
    .restart local v4    # "service":Lcom/android/server/SystemService;
    .restart local v5    # "i":I
    .restart local v6    # "serviceLen":I
    .local v14, "useThreadPool":Z
    :pswitch_1f2
    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    .end local v3    # "serviceName":Ljava/lang/String;
    .end local v4    # "service":Lcom/android/server/SystemService;
    .end local v5    # "i":I
    .end local v6    # "serviceLen":I
    .local v14, "service":Lcom/android/server/SystemService;
    .restart local v18    # "serviceName":Ljava/lang/String;
    .restart local v21    # "useThreadPool":Z
    .restart local v22    # "i":I
    .restart local v23    # "serviceLen":I
    invoke-virtual {v14, v10, v11}, Lcom/android/server/SystemService;->onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    .line 518
    nop

    .line 547
    :goto_1ff
    move-object/from16 v1, v18

    goto :goto_22a

    .line 545
    :catch_202
    move-exception v0

    goto :goto_225

    .line 543
    :goto_204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " what?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v12    # "curUserId":I
    .end local v14    # "service":Lcom/android/server/SystemService;
    .end local v15    # "threadPool":Ljava/util/concurrent/ExecutorService;
    .end local v16    # "supported":Z
    .end local v17    # "submitToThreadPool":Z
    .end local v18    # "serviceName":Ljava/lang/String;
    .end local v19    # "time":J
    .end local v21    # "useThreadPool":Z
    .end local v22    # "i":I
    .end local v23    # "serviceLen":I
    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p2    # "onWhat":Ljava/lang/String;
    .end local p3    # "prevUser":Lcom/android/server/SystemService$TargetUser;
    .end local p4    # "curUser":Lcom/android/server/SystemService$TargetUser;
    .end local p5    # "completedEventType":Lcom/android/server/SystemService$UserCompletedEventType;
    throw v0
    :try_end_21b
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_21b} :catch_202

    .line 545
    .restart local v3    # "serviceName":Ljava/lang/String;
    .restart local v4    # "service":Lcom/android/server/SystemService;
    .restart local v5    # "i":I
    .restart local v6    # "serviceLen":I
    .restart local v12    # "curUserId":I
    .local v14, "useThreadPool":Z
    .restart local v15    # "threadPool":Ljava/util/concurrent/ExecutorService;
    .restart local v16    # "supported":Z
    .restart local v17    # "submitToThreadPool":Z
    .restart local v19    # "time":J
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p2    # "onWhat":Ljava/lang/String;
    .restart local p3    # "prevUser":Lcom/android/server/SystemService$TargetUser;
    .restart local p4    # "curUser":Lcom/android/server/SystemService$TargetUser;
    .restart local p5    # "completedEventType":Lcom/android/server/SystemService$UserCompletedEventType;
    :catch_21b
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    .line 546
    .end local v3    # "serviceName":Ljava/lang/String;
    .end local v4    # "service":Lcom/android/server/SystemService;
    .end local v5    # "i":I
    .end local v6    # "serviceLen":I
    .local v0, "ex":Ljava/lang/Exception;
    .local v14, "service":Lcom/android/server/SystemService;
    .restart local v18    # "serviceName":Ljava/lang/String;
    .restart local v21    # "useThreadPool":Z
    .restart local v22    # "i":I
    .restart local v23    # "serviceLen":I
    :goto_225
    move-object/from16 v1, v18

    .end local v18    # "serviceName":Ljava/lang/String;
    .local v1, "serviceName":Ljava/lang/String;
    invoke-direct {v7, v9, v11, v1, v0}, Lcom/android/server/SystemServiceManager;->logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 548
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_22a
    if-nez v17, :cond_254

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v2, v19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "on"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v2, v3, v14, v0}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 487
    .end local v1    # "serviceName":Ljava/lang/String;
    .end local v14    # "service":Lcom/android/server/SystemService;
    .end local v16    # "supported":Z
    .end local v17    # "submitToThreadPool":Z
    .end local v19    # "time":J
    :cond_254
    :goto_254
    add-int/lit8 v5, v22, 0x1

    move/from16 v14, v21

    move/from16 v6, v23

    .end local v22    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_8a

    .end local v21    # "useThreadPool":Z
    .end local v23    # "serviceLen":I
    .restart local v6    # "serviceLen":I
    .local v14, "useThreadPool":Z
    :cond_25c
    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    .line 554
    .end local v5    # "i":I
    .end local v6    # "serviceLen":I
    .end local v14    # "useThreadPool":Z
    .restart local v21    # "useThreadPool":Z
    .restart local v23    # "serviceLen":I
    if-eqz v21, :cond_2ac

    .line 555
    const/4 v2, 0x0

    .line 556
    .local v2, "terminated":Z
    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 558
    const-wide/16 v3, 0x1e

    :try_start_26a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v15, v3, v4, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_270
    .catch Ljava/lang/InterruptedException; {:try_start_26a .. :try_end_270} :catch_272

    move v2, v0

    .line 568
    goto :goto_2a3

    .line 560
    :catch_272
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User lifecycle thread pool was interrupted while awaiting completion of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a3

    .line 564
    const-string v1, "Couldn\'t terminate, disabling thread pool. Please capture a bug report."

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/SystemServiceManager;->sUseLifecycleThreadPool:Z

    .line 569
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2a3
    :goto_2a3
    if-nez v2, :cond_2ac

    .line 570
    sget-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "User lifecycle thread pool was not terminated."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .end local v2    # "terminated":Z
    :cond_2ac
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 574
    return-void

    :sswitch_data_2b0
    .sparse-switch
        -0x6b9f5cac -> :sswitch_163
        -0x69b6117c -> :sswitch_159
        -0xe559e02 -> :sswitch_14f
        -0x8b870fd -> :sswitch_145
        0x277c22 -> :sswitch_13b
        0x4c7d442 -> :sswitch_131
        0x200e8f2f -> :sswitch_129
    .end sparse-switch

    :pswitch_data_2ce
    .packed-switch 0x0
        :pswitch_1f2
        :pswitch_1db
        :pswitch_1ce
        :pswitch_1c1
        :pswitch_1b4
        :pswitch_1a7
        :pswitch_18a
    .end packed-switch
.end method

.method private onUser(Ljava/lang/String;I)V
    .registers 6
    .param p1, "onWhat"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 464
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 465
    invoke-direct {p0, p2}, Lcom/android/server/SystemServiceManager;->getTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object v1

    .line 464
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    .line 466
    return-void
.end method

.method private useThreadPool(ILjava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "onWhat"    # Ljava/lang/String;

    .line 583
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_2c

    :cond_9
    goto :goto_1e

    :sswitch_a
    const-string v0, "CompletedEvent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_1f

    :sswitch_14
    const-string v0, "Start"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_1f

    :goto_1e
    const/4 v0, -0x1

    :goto_1f
    packed-switch v0, :pswitch_data_36

    .line 591
    return v1

    .line 589
    :pswitch_23
    return v2

    .line 587
    :pswitch_24
    sget-boolean v0, Lcom/android/server/SystemServiceManager;->sUseLifecycleThreadPool:Z

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2b

    move v1, v2

    :cond_2b
    return v1

    :sswitch_data_2c
    .sparse-switch
        0x4c7d442 -> :sswitch_14
        0x200e8f2f -> :sswitch_a
    .end sparse-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
    .end packed-switch
.end method

.method private useThreadPoolForService(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "onWhat"    # Ljava/lang/String;
    .param p2, "serviceIndex"    # I

    .line 596
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_2a

    :cond_9
    goto :goto_1e

    :sswitch_a
    const-string v0, "CompletedEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_1f

    :sswitch_14
    const-string v0, "Start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_1f

    :goto_1e
    const/4 v0, -0x1

    :goto_1f
    packed-switch v0, :pswitch_data_34

    .line 603
    return v1

    .line 601
    :pswitch_23
    return v2

    .line 599
    :pswitch_24
    sget v0, Lcom/android/server/SystemServiceManager;->sOtherServicesStartIndex:I

    if-lt p2, v0, :cond_29

    move v1, v2

    :cond_29
    return v1

    :sswitch_data_2a
    .sparse-switch
        0x4c7d442 -> :sswitch_14
        0x200e8f2f -> :sswitch_a
    .end sparse-switch

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
    .end packed-switch
.end method

.method private warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V
    .registers 8
    .param p1, "duration"    # J
    .param p3, "service"    # Lcom/android/server/SystemService;
    .param p4, "operation"    # Ljava/lang/String;

    .line 700
    const-wide/16 v0, 0x32

    cmp-long v0, p1, v0

    if-lez v0, :cond_3a

    .line 701
    sget-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_3a
    return-void
.end method


# virtual methods
.method public addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "jarPath"    # Ljava/lang/String;

    .line 164
    nop

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/SystemServiceManager;->isJarInTestApex(Ljava/lang/String;)Z

    move-result v1

    .line 165
    invoke-static {p1, v0, v1}, Lcom/android/internal/os/SystemServerClassLoaderFactory;->getOrCreateClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldalvik/system/PathClassLoader;

    move-result-object v0

    .line 167
    .local v0, "pathClassLoader":Ldalvik/system/PathClassLoader;
    invoke-virtual {v0, p2}, Ldalvik/system/PathClassLoader;->addDexPath(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 730
    const-string v0, "Current phase: %d\n"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 731
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 732
    :try_start_14
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    if-eqz v2, :cond_26

    .line 733
    const-string v2, "Current user: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 734
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    invoke-virtual {v2, p1}, Lcom/android/server/SystemService$TargetUser;->dump(Ljava/io/PrintWriter;)V

    .line 735
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_2b

    .line 737
    :cond_26
    const-string v2, "Current user not set!"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    :goto_2b
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 741
    .local v2, "targetUsersSize":I
    if-lez v2, :cond_5e

    .line 742
    const-string v3, "%d target users: "

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p1, v3, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 743
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_41
    if-ge v3, v2, :cond_5a

    .line 744
    iget-object v5, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemService$TargetUser;

    invoke-virtual {v5, p1}, Lcom/android/server/SystemService$TargetUser;->dump(Ljava/io/PrintWriter;)V

    .line 745
    add-int/lit8 v5, v2, -0x1

    if-eq v3, v5, :cond_57

    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 743
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 747
    .end local v3    # "i":I
    :cond_5a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_63

    .line 749
    :cond_5e
    const-string v3, "No target users"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    .end local v2    # "targetUsersSize":I
    :goto_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_14 .. :try_end_64} :catchall_9e

    .line 752
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 753
    .local v0, "startedLen":I
    const-string v2, "  "

    .line 754
    .local v2, "prefix":Ljava/lang/String;
    if-lez v0, :cond_98

    .line 755
    const-string v3, "%d started services:\n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p1, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 756
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7c
    if-ge v1, v0, :cond_97

    .line 757
    iget-object v3, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SystemService;

    .line 758
    .local v3, "service":Lcom/android/server/SystemService;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    .end local v3    # "service":Lcom/android/server/SystemService;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .end local v1    # "i":I
    :cond_97
    goto :goto_9d

    .line 761
    :cond_98
    const-string v1, "No started services"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    :goto_9d
    return-void

    .line 751
    .end local v0    # "startedLen":I
    .end local v2    # "prefix":Ljava/lang/String;
    :catchall_9e
    move-exception v1

    :try_start_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v1
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 2

    .line 725
    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimeStartElapsedTime()J
    .registers 3

    .line 682
    iget-wide v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    return-wide v0
.end method

.method public getRuntimeStartUptime()J
    .registers 3

    .line 689
    iget-wide v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    return-wide v0
.end method

.method public isBootCompleted()Z
    .registers 3

    .line 328
    iget v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isRuntimeRestarted()Z
    .registers 2

    .line 675
    iget-boolean v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    return v0
.end method

.method public isSafeMode()Z
    .registers 2

    .line 668
    iget-boolean v0, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    return v0
.end method

.method synthetic lambda$getOnUserCompletedEventRunnable$1$com-android-server-SystemServiceManager(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;Ljava/lang/String;Lcom/android/server/SystemService;)V
    .registers 14
    .param p1, "oldTrace"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "curUser"    # Lcom/android/server/SystemService$TargetUser;
    .param p3, "eventType"    # Lcom/android/server/SystemService$UserCompletedEventType;
    .param p4, "serviceName"    # Ljava/lang/String;
    .param p5, "service"    # Lcom/android/server/SystemService;

    .line 633
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 634
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    .line 635
    .local v1, "curUserId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ssm.onCompletedEventUser-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 638
    :try_start_32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 639
    .local v2, "time":J
    invoke-virtual {p5, p2, p3}, Lcom/android/server/SystemService;->onUserCompletedEvent(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCompletedEventUser-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, p5, v6}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_55} :catch_5c
    .catchall {:try_start_32 .. :try_end_55} :catchall_5a

    .line 646
    .end local v2    # "time":J
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 647
    nop

    .line 648
    return-void

    .line 646
    :catchall_5a
    move-exception v2

    goto :goto_64

    .line 642
    :catch_5c
    move-exception v2

    .line 643
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5d
    const-string v3, "CompletedEvent"

    invoke-direct {p0, v3, p2, p4, v2}, Lcom/android/server/SystemServiceManager;->logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 644
    nop

    .end local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v1    # "curUserId":I
    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "oldTrace":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p2    # "curUser":Lcom/android/server/SystemService$TargetUser;
    .end local p3    # "eventType":Lcom/android/server/SystemService$UserCompletedEventType;
    .end local p4    # "serviceName":Ljava/lang/String;
    .end local p5    # "service":Lcom/android/server/SystemService;
    throw v2
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_5a

    .line 646
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v1    # "curUserId":I
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "oldTrace":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p2    # "curUser":Lcom/android/server/SystemService$TargetUser;
    .restart local p3    # "eventType":Lcom/android/server/SystemService$UserCompletedEventType;
    .restart local p4    # "serviceName":Ljava/lang/String;
    .restart local p5    # "service":Lcom/android/server/SystemService;
    :goto_64
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 647
    throw v2
.end method

.method synthetic lambda$getOnUserStartingRunnable$0$com-android-server-SystemServiceManager(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Lcom/android/server/SystemService$TargetUser;)V
    .registers 13
    .param p1, "oldTrace"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "service"    # Lcom/android/server/SystemService;
    .param p3, "curUser"    # Lcom/android/server/SystemService$TargetUser;

    .line 610
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 611
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "serviceName":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    .line 613
    .local v2, "curUserId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ssm.onStartUser-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 615
    :try_start_32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 616
    .local v3, "time":J
    invoke-virtual {p2, p3}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 617
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStartUser-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, p2, v7}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_55} :catch_58
    .catchall {:try_start_32 .. :try_end_55} :catchall_56

    .end local v3    # "time":J
    goto :goto_68

    .line 624
    :catchall_56
    move-exception v3

    goto :goto_6d

    .line 619
    :catch_58
    move-exception v3

    .line 620
    .local v3, "e":Ljava/lang/Exception;
    :try_start_59
    const-string v4, "Start"

    invoke-direct {p0, v4, p3, v1, v3}, Lcom/android/server/SystemServiceManager;->logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 621
    sget-object v4, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "Disabling thread pool - please capture a bug report."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/SystemServiceManager;->sUseLifecycleThreadPool:Z
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_56

    .line 624
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_68
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 625
    nop

    .line 626
    return-void

    .line 624
    :goto_6d
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 625
    throw v3
.end method

.method public onUserCompletedEvent(II)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "eventFlags"    # I

    .line 452
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x7588

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 453
    if-nez p2, :cond_19

    .line 454
    return-void

    .line 456
    :cond_19
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v3

    const/4 v5, 0x0

    .line 459
    invoke-direct {p0, p1}, Lcom/android/server/SystemServiceManager;->getTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object v6

    new-instance v7, Lcom/android/server/SystemService$UserCompletedEventType;

    invoke-direct {v7, p2}, Lcom/android/server/SystemService$UserCompletedEventType;-><init>(I)V

    .line 456
    const-string v4, "CompletedEvent"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V

    .line 461
    return-void
.end method

.method public onUserStarting(Lcom/android/server/utils/TimingsTraceAndSlog;I)V
    .registers 6
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "userId"    # I

    .line 369
    const/16 v0, 0x7582

    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 371
    invoke-direct {p0, p2}, Lcom/android/server/SystemServiceManager;->newTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object v0

    .line 372
    .local v0, "targetUser":Lcom/android/server/SystemService$TargetUser;
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 373
    :try_start_c
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_19

    .line 376
    const-string v1, "Start"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    .line 377
    return-void

    .line 374
    :catchall_19
    move-exception v2

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public onUserStopped(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 434
    const/16 v0, 0x7587

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 435
    const-string v0, "Cleanup"

    invoke-direct {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    .line 438
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 439
    :try_start_d
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 440
    monitor-exit v0

    .line 441
    return-void

    .line 440
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onUserStopping(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 426
    const/16 v0, 0x7586

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 427
    const-string v0, "Stop"

    invoke-direct {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    .line 428
    return-void
.end method

.method public onUserSwitching(II)V
    .registers 7
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 399
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x7583

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 401
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 402
    :try_start_19
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    if-nez v1, :cond_22

    .line 406
    invoke-direct {p0, p1}, Lcom/android/server/SystemServiceManager;->newTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object v1

    .local v1, "prevUser":Lcom/android/server/SystemService$TargetUser;
    goto :goto_63

    .line 408
    .end local v1    # "prevUser":Lcom/android/server/SystemService$TargetUser;
    :cond_22
    invoke-virtual {v1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    if-eq p1, v1, :cond_61

    .line 409
    sget-object v1, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchUser("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): mCurrentUser is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", it should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_61
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    .line 414
    .restart local v1    # "prevUser":Lcom/android/server/SystemService$TargetUser;
    :goto_63
    invoke-direct {p0, p2}, Lcom/android/server/SystemServiceManager;->getTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    .line 418
    .local v2, "curUser":Lcom/android/server/SystemService$TargetUser;
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_19 .. :try_end_6a} :catchall_74

    .line 419
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    const-string v3, "Switch"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    .line 420
    return-void

    .line 418
    .end local v1    # "prevUser":Lcom/android/server/SystemService$TargetUser;
    .end local v2    # "curUser":Lcom/android/server/SystemService$TargetUser;
    :catchall_74
    move-exception v1

    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v1
.end method

.method public onUserUnlocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 391
    const/16 v0, 0x7585

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 392
    const-string v0, "Unlocked"

    invoke-direct {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    .line 393
    return-void
.end method

.method public onUserUnlocking(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 383
    const/16 v0, 0x7584

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 384
    const-string v0, "Unlocking"

    invoke-direct {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    .line 385
    return-void
.end method

.method public preSystemReady()V
    .registers 2

    .line 347
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 348
    return-void
.end method

.method sealStartedServices()V
    .registers 2

    .line 277
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    .line 278
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 279
    return-void
.end method

.method setSafeMode(Z)V
    .registers 2
    .param p1, "safeMode"    # Z

    .line 659
    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    .line 660
    return-void
.end method

.method setStartInfo(ZJJ)V
    .registers 6
    .param p1, "runtimeRestarted"    # Z
    .param p2, "runtimeStartElapsedTime"    # J
    .param p4, "runtimeStartUptime"    # J

    .line 694
    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    .line 695
    iput-wide p2, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    .line 696
    iput-wide p4, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    .line 697
    return-void
.end method

.method public startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V
    .registers 12
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "phase"    # I

    .line 289
    const-string v0, "OnBootPhase_"

    iget v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    if-le p2, v1, :cond_d3

    .line 292
    iput p2, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 294
    sget-object v1, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting phase "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :try_start_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 298
    .local v1, "serviceLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d
    if-ge v2, v1, :cond_b6

    .line 299
    iget-object v3, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SystemService;

    .line 300
    .local v3, "service":Lcom/android/server/SystemService;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 301
    .local v4, "time":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_22 .. :try_end_71} :catchall_ce

    .line 303
    :try_start_71
    iget v6, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v3, v6}, Lcom/android/server/SystemService;->onBootPhase(I)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_76} :catch_88
    .catchall {:try_start_71 .. :try_end_76} :catchall_ce

    .line 309
    nop

    .line 310
    :try_start_77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-string/jumbo v8, "onBootPhase"

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 298
    .end local v3    # "service":Lcom/android/server/SystemService;
    .end local v4    # "time":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 304
    .restart local v3    # "service":Lcom/android/server/SystemService;
    .restart local v4    # "time":J
    :catch_88
    move-exception v0

    .line 305
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to boot service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 306
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": onBootPhase threw an exception during phase "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p2    # "phase":I
    throw v6
    :try_end_b6
    .catchall {:try_start_77 .. :try_end_b6} :catchall_ce

    .line 314
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "serviceLen":I
    .end local v2    # "i":I
    .end local v3    # "service":Lcom/android/server/SystemService;
    .end local v4    # "time":J
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p2    # "phase":I
    :cond_b6
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 315
    nop

    .line 317
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_cd

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    sub-long/2addr v0, v2

    .line 319
    .local v0, "totalBootTime":J
    const-string v2, "TotalBootTime"

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->logDuration(Ljava/lang/String;J)V

    .line 320
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V

    .line 322
    .end local v0    # "totalBootTime":J
    :cond_cd
    return-void

    .line 314
    :catchall_ce
    move-exception v0

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 315
    throw v0

    .line 290
    :cond_d3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Next phase must be larger than previous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/SystemService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 218
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, ": service must have a public constructor with a Context argument"

    const-string v1, "Failed to create service "

    const-wide/32 v2, 0x80000

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "name":Ljava/lang/String;
    sget-object v5, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 223
    const-class v5, Lcom/android/server/SystemService;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_100

    if-eqz v5, :cond_d7

    .line 229
    const/4 v5, 0x1

    :try_start_42
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 230
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    aput-object v7, v5, v8

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemService;
    :try_end_59
    .catch Ljava/lang/InstantiationException; {:try_start_42 .. :try_end_59} :catch_b9
    .catch Ljava/lang/IllegalAccessException; {:try_start_42 .. :try_end_59} :catch_9d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_42 .. :try_end_59} :catch_81
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_42 .. :try_end_59} :catch_63
    .catchall {:try_start_42 .. :try_end_59} :catchall_100

    move-object v0, v5

    .line 243
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local v0, "service":Lcom/android/server/SystemService;, "TT;"
    nop

    .line 245
    :try_start_5b
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_100

    .line 246
    nop

    .line 248
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 246
    return-object v0

    .line 240
    .end local v0    # "service":Lcom/android/server/SystemService;, "TT;"
    :catch_63
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_64
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ": service constructor threw an exception"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v5

    .line 237
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_81
    move-exception v5

    .line 238
    .local v5, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v6

    .line 234
    .end local v5    # "ex":Ljava/lang/NoSuchMethodException;
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_9d
    move-exception v5

    .line 235
    .local v5, "ex":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v6

    .line 231
    .end local v5    # "ex":Ljava/lang/IllegalAccessException;
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_b9
    move-exception v0

    .line 232
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ": service could not be instantiated"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v5

    .line 224
    .end local v0    # "ex":Ljava/lang/InstantiationException;
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_d7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": service must extend "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v5, Lcom/android/server/SystemService;

    .line 225
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v0
    :try_end_100
    .catchall {:try_start_64 .. :try_end_100} :catchall_100

    .line 248
    .end local v4    # "name":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_100
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 249
    throw v0
.end method

.method public startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    .registers 4
    .param p1, "className"    # Ljava/lang/String;

    .line 144
    nop

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 144
    invoke-static {p1, v0}, Lcom/android/server/SystemServiceManager;->loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 146
    .local v0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/SystemService;>;"
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    return-object v1
.end method

.method public startService(Lcom/android/server/SystemService;)V
    .registers 9
    .param p1, "service"    # Lcom/android/server/SystemService;

    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 256
    sget-object v1, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not starting an already started service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void

    .line 259
    :cond_29
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 267
    .local v1, "time":J
    :try_start_37
    invoke-virtual {p1}, Lcom/android/server/SystemService;->onStart()V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3a} :catch_47

    .line 271
    nop

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-string/jumbo v5, "onStart"

    invoke-direct {p0, v3, v4, p1, v5}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 273
    return-void

    .line 268
    :catch_47
    move-exception v3

    .line 269
    .local v3, "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": onStart threw an exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;
    .registers 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 155
    nop

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/SystemServiceManager;->isJarInTestApex(Ljava/lang/String;)Z

    move-result v1

    .line 156
    invoke-static {p2, v0, v1}, Lcom/android/internal/os/SystemServerClassLoaderFactory;->getOrCreateClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldalvik/system/PathClassLoader;

    move-result-object v0

    .line 158
    .local v0, "pathClassLoader":Ldalvik/system/PathClassLoader;
    invoke-static {p1, v0}, Lcom/android/server/SystemServiceManager;->loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 159
    .local v1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/SystemService;>;"
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    return-object v2
.end method

.method public updateOtherServicesStartIndex()V
    .registers 2

    .line 338
    invoke-virtual {p0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_e

    .line 339
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/android/server/SystemServiceManager;->sOtherServicesStartIndex:I

    .line 341
    :cond_e
    return-void
.end method
