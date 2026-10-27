.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final HEAP_DUMP_PATH:Ljava/io/File;

.field public static sPendingWtfs:Ljava/util/LinkedList;


# instance fields
.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

.field public mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field public final mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

.field public mEntropyMixer:Lcom/android/server/EntropyMixer;

.field public final mFactoryTestMode:I

.field public mFirstBoot:Z

.field public mIncrementalServiceHandle:J

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field public mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field public final mRuntimeRestart:Z

.field public final mRuntimeStartElapsedTime:J

.field public final mRuntimeStartUptime:J

.field public final mStartCount:I

.field public mSystemContext:Landroid/content/Context;

.field public mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field public mUserManagerService:Lcom/android/server/pm/UserManagerService;

.field public mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field public mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mZygotePreload:Ljava/util/concurrent/Future;


# direct methods
.method public static synthetic $r8$lambda$0ek3wX68xKbgZMUwZfiBRkUNTFs()V
    .registers 2

    .line 1757
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 1758
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1759
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 1760
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static synthetic $r8$lambda$2PdG6KuU0ZTvilD515PGrttj0sk(III)V
    .registers 13

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 658
    :catch_3
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    if-le v3, p0, :cond_13

    .line 661
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 662
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 663
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    :cond_13
    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 666
    const-string v6, "System"

    const/16 v7, 0x16c

    if-le v3, p0, :cond_2c

    if-nez v0, :cond_2c

    .line 667
    const-string v0, "fdtrack enable threshold reached, enabling"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-static {v7, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 672
    const-string v0, "fdtrack"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    move v0, v4

    goto :goto_51

    :cond_2c
    if-le v3, p1, :cond_3e

    .line 675
    const-string v4, "fdtrack abort threshold reached, dumping and aborting"

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    .line 676
    invoke-static {v7, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 680
    invoke-static {}, Lcom/android/server/SystemServer;->dumpHprof()V

    .line 681
    invoke-static {}, Lcom/android/server/SystemServer;->fdtrackAbort()V

    goto :goto_51

    .line 684
    :cond_3e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v6, v8, v1

    if-lez v6, :cond_51

    const-wide/32 v1, 0x36ee80

    add-long/2addr v8, v1

    if-eqz v0, :cond_4d

    move v4, v5

    .line 687
    :cond_4d
    invoke-static {v7, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    move-wide v1, v8

    :cond_51
    :goto_51
    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v3, v3

    .line 695
    :try_start_54
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_57} :catch_3

    goto :goto_3
.end method

.method public static synthetic $r8$lambda$CJLFlg8wnqihjN12r-2Qq_1qSd8()V
    .registers 2

    .line 1750
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 1751
    const-string v1, "StartISensorManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1752
    invoke-static {}, Lcom/android/server/SystemServer;->startISensorManagerService()V

    .line 1753
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static synthetic $r8$lambda$CKXj3ds6gqFm1f6gBL5oAqAHviY(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/SystemServer;->handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SEp7M2CWq7mEDzo8pfMdSQNkGv4()V
    .registers 5

    .line 1589
    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_4
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v2

    .line 1591
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1592
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 1593
    array-length v3, v0

    if-lez v3, :cond_26

    sget-object v3, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1594
    const-string v0, "Unable to preload default resources for secondary"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :catch_24
    move-exception v0

    goto :goto_2a

    .line 1596
    :cond_26
    :goto_26
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_24

    return-void

    .line 1598
    :goto_2a
    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$W9fBdZlq2B12i1BBxZIhG9kbSqM(Landroid/os/IBinder;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 3540
    const-string/jumbo v2, "tethering"

    invoke-static {v2, p0, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$YJe3jwfhMH0kZGfHy8OK7gif2ac(Lcom/android/server/SystemServer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->lambda$startOtherServices$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zs26TzwLVmpFF2G8LTrYh_8ptIk(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/pm/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 17

    .line 0
    invoke-virtual/range {p0 .. p16}, Lcom/android/server/SystemServer;->lambda$startOtherServices$6(Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/pm/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerService(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 602
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/heapdump/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 12

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 526
    iput-wide v0, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 544
    new-instance v0, Lcom/android/server/SystemServer$SystemServerDumper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer-IA;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 722
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 725
    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 726
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 727
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    move-wide v7, v3

    move-wide v9, v5

    .line 728
    invoke-static/range {v3 .. v10}, Landroid/os/Process;->setStartTimes(JJJJ)V

    if-le v0, v2, :cond_35

    move v1, v2

    .line 732
    :cond_35
    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    return-void
.end method

.method public static dumpHprof()V
    .registers 7

    .line 614
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 615
    sget-object v1, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_2b

    aget-object v4, v1, v3

    .line 616
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_18

    goto :goto_28

    .line 619
    :cond_18
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fdtrack-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_28

    .line 622
    :cond_25
    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 624
    :cond_2b
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "System"

    if-lt v1, v2, :cond_62

    .line 627
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 629
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3b
    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 630
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to clean up hprof "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 637
    :cond_62
    :try_start_62
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/heapdump/fdtrack-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".hprof"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_8c} :catch_8d

    return-void

    :catch_8d
    move-exception v0

    .line 641
    const-string v1, "Failed to dump fdtrack hprof"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static native fdtrackAbort()V
.end method

.method public static getMaxFd()I
    .registers 5

    const/4 v0, 0x0

    .line 582
    :try_start_1
    const-string v1, "/dev/null"

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    sget v3, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_11} :catch_1e
    .catchall {:try_start_1 .. :try_end_11} :catchall_1c

    .line 589
    :try_start_11
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_14} :catch_15

    return v1

    :catch_15
    move-exception v0

    .line 592
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_1c
    move-exception v1

    goto :goto_46

    :catch_1e
    move-exception v1

    .line 585
    :try_start_1f
    const-string v2, "System"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get maximum fd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_1c

    if-eqz v0, :cond_42

    .line 589
    :try_start_37
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3a
    .catch Landroid/system/ErrnoException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_42

    :catch_3b
    move-exception v0

    .line 592
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_42
    :goto_42
    const v0, 0x7fffffff

    return v0

    :goto_46
    if-eqz v0, :cond_53

    .line 589
    :try_start_48
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4b
    .catch Landroid/system/ErrnoException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_53

    :catch_4c
    move-exception v0

    .line 592
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 595
    :cond_53
    :goto_53
    throw v1
.end method

.method public static handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .registers 11

    .line 3804
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/16 p0, 0x3e8

    .line 3806
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string/jumbo v2, "system_server"

    const/4 v3, -0x1

    iget-object v5, p3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->exceptionMessage:Ljava/lang/String;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/EventLogTags;->writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 3809
    const-string/jumbo v3, "system_server"

    const/4 v5, 0x3

    const/16 v0, 0x50

    move v4, v1

    const/16 v1, 0x3e8

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3812
    const-class p0, Lcom/android/server/SystemServer;

    monitor-enter p0

    .line 3813
    :try_start_24
    sget-object p1, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-nez p1, :cond_33

    .line 3814
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    sput-object p1, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    goto :goto_33

    :catchall_30
    move-exception v0

    move-object p1, v0

    goto :goto_40

    .line 3816
    :cond_33
    :goto_33
    sget-object p1, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, v2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3817
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_24 .. :try_end_41} :catchall_30

    throw p1
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method public static main([Ljava/lang/String;)V
    .registers 1

    .line 717
    new-instance p0, Lcom/android/server/SystemServer;

    invoke-direct {p0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method public static spawnFdLeakCheckThread()V
    .registers 5

    .line 649
    const-string/jumbo v0, "persist.sys.debug.fdtrack_enable_threshold"

    const/16 v1, 0x640

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 650
    const-string/jumbo v1, "persist.sys.debug.fdtrack_abort_threshold"

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 651
    const-string/jumbo v2, "persist.sys.debug.fdtrack_interval"

    const/16 v3, 0x78

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 653
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;-><init>(III)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 700
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private static native startISensorManagerService()V
.end method

.method private static native startIStatsService()V
.end method

.method private static native startIncrementalService()J
.end method

.method private static native startMemtrackProxyService()V
.end method

.method public static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    .line 3788
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3789
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3790
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v0, 0x100

    .line 3791
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3793
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3794
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    return-void
.end method


# virtual methods
.method public final createSystemContext()V
    .registers 3

    .line 1167
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1168
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const p0, 0x1030426

    .line 1169
    invoke-virtual {v1, p0}, Landroid/content/Context;->setTheme(I)V

    .line 1171
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    .line 1172
    invoke-virtual {v0, p0}, Landroid/content/Context;->setTheme(I)V

    .line 1173
    invoke-static {}, Landroid/os/Trace;->registerWithPerfetto()V

    return-void
.end method

.method public final deviceHasConfigString(Landroid/content/Context;I)Z
    .registers 3

    .line 3692
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 3693
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 742
    iget-boolean p2, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Runtime restart: %b\n"

    invoke-virtual {p1, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 743
    iget p2, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Start count: %d\n"

    invoke-virtual {p1, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 744
    const-string p2, "Runtime start-up time: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 746
    const-string p2, "Runtime start-elapsed time: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 1

    .line 737
    const-class p0, Lcom/android/server/SystemServer;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isFirstBootOrUpgrade()Z
    .registers 2

    .line 1098
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$startOtherServices$4()V
    .registers 4

    .line 3402
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 3404
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3405
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3406
    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 3407
    iget-object p0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 3408
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final synthetic lambda$startOtherServices$6(Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/pm/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 27

    move-object/from16 v2, p7

    move-object/from16 v3, p9

    move-object/from16 v4, p11

    .line 3376
    const-string v0, "Making services ready"

    const-string v5, "SystemServer"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3378
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x226

    invoke-virtual {v0, p1, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3379
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3380
    const-string v0, "StartObservingNativeCrashes"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3382
    :try_start_21
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_27

    goto :goto_2e

    :catchall_27
    move-exception v0

    .line 3384
    const-string/jumbo v6, "observing native crashes"

    invoke-virtual {p0, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3386
    :goto_2e
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3388
    const-string v0, "RegisterAppOpsPolicy"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3390
    :try_start_36
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v6, Lcom/android/server/policy/AppOpsPolicy;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService;->setAppOpsPolicy(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_43

    goto :goto_4a

    :catchall_43
    move-exception v0

    .line 3392
    const-string/jumbo v6, "registering app ops policy"

    invoke-virtual {p0, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3394
    :goto_4a
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3400
    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    const-string v6, "WebViewFactoryPreparation"

    const/4 v7, 0x0

    if-eqz v0, :cond_5f

    .line 3401
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v8, v0

    goto :goto_60

    :cond_5f
    move-object v8, v7

    :goto_60
    if-eqz p2, :cond_87

    .line 3413
    const-string p2, "StartCarServiceHelperService"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3414
    iget-object p2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v0, "com.android.internal.car.CarServiceHelperService"

    .line 3415
    invoke-virtual {p2, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object p2

    .line 3416
    instance-of v0, p2, Landroid/util/Dumpable;

    if-eqz v0, :cond_7b

    .line 3417
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v9, p2

    check-cast v9, Landroid/util/Dumpable;

    invoke-static {v0, v9}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 3419
    :cond_7b
    instance-of v0, p2, Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v0, :cond_84

    .line 3420
    check-cast p2, Landroid/app/admin/DevicePolicySafetyChecker;

    invoke-virtual {p3, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V

    .line 3422
    :cond_84
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_87
    if-eqz p4, :cond_bc

    .line 3426
    const-string p2, "StartWearService"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const p2, 0x104031a

    .line 3428
    invoke-virtual {p5, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3430
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_b9

    .line 3431
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_b4

    .line 3435
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 3436
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 p2, 0x100

    .line 3437
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3438
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p5, p3, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_b9

    .line 3440
    :cond_b4
    const-string p2, "Null wear service component name."

    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    :cond_b9
    :goto_b9
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_bc
    if-eqz p6, :cond_d2

    .line 3452
    const-string p2, "EnableAirplaneModeInSafeMode"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 3454
    :try_start_c4
    invoke-virtual {v2, p2}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_c8

    goto :goto_cf

    :catchall_c8
    move-exception v0

    move-object p2, v0

    .line 3456
    const-string p3, "enabling Airplane Mode during Safe Mode bootup"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3458
    :goto_cf
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3460
    :cond_d2
    const-string p2, "MakeNetworkManagementServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p8, :cond_e5

    .line 3463
    :try_start_d9
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkManagementService;->systemReady()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_dd

    goto :goto_e5

    :catchall_dd
    move-exception v0

    move-object p2, v0

    .line 3466
    const-string/jumbo p3, "making Network Managment Service ready"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e5
    :goto_e5
    if-eqz v3, :cond_eb

    .line 3471
    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v7

    .line 3473
    :cond_eb
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3474
    const-string p2, "MakeConnectivityServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v2, :cond_101

    .line 3477
    :try_start_f5
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->systemReady()V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_f9

    goto :goto_101

    :catchall_f9
    move-exception v0

    move-object p2, v0

    .line 3480
    const-string/jumbo p3, "making Connectivity Service ready"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3482
    :cond_101
    :goto_101
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3483
    const-string p2, "MakeVpnManagerServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p10, :cond_117

    .line 3486
    :try_start_10b
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/VpnManagerService;->systemReady()V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_10f

    goto :goto_117

    :catchall_10f
    move-exception v0

    move-object p2, v0

    .line 3489
    const-string/jumbo p3, "making VpnManagerService ready"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3491
    :cond_117
    :goto_117
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3492
    const-string p2, "MakeNetworkPolicyServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v3, :cond_12d

    .line 3495
    :try_start_121
    invoke-virtual {v3, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_125

    goto :goto_12d

    :catchall_125
    move-exception v0

    move-object p2, v0

    .line 3498
    const-string/jumbo p3, "making Network Policy Service ready"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3500
    :cond_12d
    :goto_12d
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3503
    iget-object p2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 3507
    const-string p2, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v8, :cond_13f

    .line 3510
    invoke-static {v8, v6}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3512
    :cond_13f
    iget-object p2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 p3, 0x258

    invoke-virtual {p2, p1, p3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3513
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v4, :cond_156

    .line 3516
    const-string p2, "HsumBootUserInitializer.systemRunning"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3517
    invoke-virtual {v4, p1}, Lcom/android/server/pm/HsumBootUserInitializer;->systemRunning(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3518
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3521
    :cond_156
    const-string p2, "StartNetworkStack"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3528
    :try_start_15b
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/NetworkStackClient;->start()V
    :try_end_162
    .catchall {:try_start_15b .. :try_end_162} :catchall_163

    goto :goto_16b

    :catchall_163
    move-exception v0

    move-object p2, v0

    .line 3530
    const-string/jumbo p3, "starting Network Stack"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3532
    :goto_16b
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3534
    const-string p2, "StartTethering"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3537
    :try_start_173
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object p2

    const-string p3, "android.net.ITetheringConnector"

    const-string p4, "android.permission.MAINLINE_NETWORK_STACK"

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p2, p3, p4, v0}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_183
    .catchall {:try_start_173 .. :try_end_183} :catchall_184

    goto :goto_18c

    :catchall_184
    move-exception v0

    move-object p2, v0

    .line 3545
    const-string/jumbo p3, "starting Tethering"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3547
    :goto_18c
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3549
    const-string p2, "MakeCountryDetectionServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p12, :cond_1a1

    .line 3552
    :try_start_196
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_199
    .catchall {:try_start_196 .. :try_end_199} :catchall_19a

    goto :goto_1a1

    :catchall_19a
    move-exception v0

    move-object p2, v0

    .line 3555
    const-string p3, "Notifying CountryDetectorService running"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3557
    :cond_1a1
    :goto_1a1
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3558
    const-string p2, "MakeNetworkTimeUpdateReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p13, :cond_1b6

    .line 3561
    :try_start_1ab
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->systemRunning()V
    :try_end_1ae
    .catchall {:try_start_1ab .. :try_end_1ae} :catchall_1af

    goto :goto_1b6

    :catchall_1af
    move-exception v0

    move-object p2, v0

    .line 3564
    const-string p3, "Notifying NetworkTimeService running"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3566
    :cond_1b6
    :goto_1b6
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3567
    const-string p2, "MakeTelephonyRegistryReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p14, :cond_1cb

    .line 3570
    :try_start_1c0
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_1c3
    .catchall {:try_start_1c0 .. :try_end_1c3} :catchall_1c4

    goto :goto_1cb

    :catchall_1c4
    move-exception v0

    move-object p2, v0

    .line 3573
    const-string p3, "Notifying TelephonyRegistry running"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3575
    :cond_1cb
    :goto_1cb
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3576
    const-string p2, "MakeMediaRouterServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p15, :cond_1e0

    .line 3579
    :try_start_1d5
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_1d8
    .catchall {:try_start_1d5 .. :try_end_1d8} :catchall_1d9

    goto :goto_1e0

    :catchall_1d9
    move-exception v0

    move-object p2, v0

    .line 3582
    const-string p3, "Notifying MediaRouterService running"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3584
    :cond_1e0
    :goto_1e0
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3585
    iget-object p2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p3, "android.hardware.telephony"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_202

    .line 3586
    const-string p2, "MakeMmsServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p16, :cond_1ff

    .line 3588
    :try_start_1f4
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_1f7
    .catchall {:try_start_1f4 .. :try_end_1f7} :catchall_1f8

    goto :goto_1ff

    :catchall_1f8
    move-exception v0

    move-object p2, v0

    .line 3590
    const-string p3, "Notifying MmsService running"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3592
    :cond_1ff
    :goto_1ff
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3595
    :cond_202
    const-string p2, "IncidentDaemonReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3599
    :try_start_207
    const-string p2, "incident"

    .line 3600
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 3599
    invoke-static {p2}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object p2

    if-eqz p2, :cond_21e

    .line 3602
    invoke-interface {p2}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_216
    .catchall {:try_start_207 .. :try_end_216} :catchall_217

    goto :goto_21e

    :catchall_217
    move-exception v0

    move-object p2, v0

    .line 3605
    const-string p3, "Notifying incident daemon running"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3607
    :cond_21e
    :goto_21e
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3609
    iget-wide p2, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_236

    .line 3610
    const-string p2, "MakeIncrementalServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3611
    iget-wide p2, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {p2, p3}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 3612
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3615
    :cond_236
    const-string p2, "OdsignStatsLogger"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3617
    :try_start_23b
    invoke-static {}, Lcom/android/server/pm/dex/OdsignStatsLogger;->triggerStatsWrite()V
    :try_end_23e
    .catchall {:try_start_23b .. :try_end_23e} :catchall_23f

    goto :goto_246

    :catchall_23f
    move-exception v0

    move-object p2, v0

    .line 3619
    const-string p3, "Triggering OdsignStatsLogger"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3621
    :goto_246
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final performPendingShutdown()V
    .registers 9

    .line 1107
    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_88

    .line 1109
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_88

    const/4 v2, 0x0

    .line 1110
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1f

    move v3, v5

    goto :goto_20

    :cond_1f
    move v3, v2

    .line 1113
    :goto_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    if-le v4, v5, :cond_30

    .line 1114
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    :cond_30
    move-object v1, v6

    :goto_31
    if-eqz v1, :cond_71

    .line 1124
    const-string/jumbo v4, "recovery-update"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 1125
    new-instance v4, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_71

    .line 1129
    :try_start_49
    invoke-static {v4, v2, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_4e

    goto :goto_54

    :catch_4e
    move-exception v2

    .line 1131
    const-string v4, "Error reading uncrypt package file"

    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_54
    if-eqz v6, :cond_71

    .line 1134
    const-string v2, "/data"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 1135
    new-instance v2, Ljava/io/File;

    const-string v4, "/cache/recovery/block.map"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_71

    .line 1136
    const-string p0, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1143
    :cond_71
    new-instance v0, Lcom/android/server/SystemServer$3;

    invoke-direct {v0, p0, v3, v1}, Lcom/android/server/SystemServer$3;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 1151
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    .line 1152
    invoke-virtual {p0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1153
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_88
    return-void
.end method

.method public final reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 1102
    const-string p0, "***********************************************"

    const-string v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOOT FAILURE "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final run()V
    .registers 15

    .line 843
    const-string/jumbo v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    move-result v2

    const-string v3, "SystemServer"

    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    const-string v2, "debug.system_server.jdwp_wait"

    .line 844
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 845
    const-string v2, "System server is waiting for debugger before starting..."

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 849
    :cond_1e
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 852
    :try_start_23
    new-instance v5, Landroid/tracing/perfetto/InitArguments;

    const/4 v6, 0x2

    const/16 v7, 0x1000

    invoke-direct {v5, v6, v7}, Landroid/tracing/perfetto/InitArguments;-><init>(II)V

    invoke-static {v5}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 855
    const-string v5, "InitBeforeStartServices"

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 858
    const-string/jumbo v5, "sys.system_server.start_count"

    iget v6, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string/jumbo v5, "sys.system_server.start_elapsed"

    iget-wide v6, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string/jumbo v5, "sys.system_server.start_uptime"

    iget-wide v6, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget v5, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 863
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0xbc3

    .line 862
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 866
    invoke-static {}, Lcom/android/server/SystemTimeZone;->initializeTimeZoneSettingsIfRequired()V

    .line 876
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a1

    .line 877
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    .line 879
    const-string/jumbo v6, "persist.sys.locale"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string/jumbo v0, "persist.sys.country"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string/jumbo v0, "persist.sys.localevar"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    :catchall_9d
    move-exception v0

    move-object p0, v0

    goto/16 :goto_23c

    :cond_a1
    :goto_a1
    const/4 v0, 0x1

    .line 886
    invoke-static {v0}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 888
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 891
    const-string v1, "FULL"

    sput-object v1, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 894
    invoke-static {v1}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 897
    const-string v5, "Entered the Android system server!"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/16 v3, 0xbc2

    .line 899
    invoke-static {v3, v5, v6}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 900
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v7, 0xf0

    if-nez v3, :cond_c9

    const/16 v3, 0x13

    .line 901
    invoke-static {v7, v3, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 914
    :cond_c9
    const-string/jumbo v3, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 921
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 925
    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 929
    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 932
    invoke-static {v0}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 935
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/16 v3, 0x1f

    .line 938
    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    const/4 v3, -0x2

    .line 941
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 943
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 944
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const-wide/16 v5, 0x64

    const-wide/16 v8, 0xc8

    invoke-virtual {v3, v5, v6, v8, v9}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 947
    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 950
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->start()V

    .line 951
    iget-object v3, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->getInstance()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 956
    invoke-virtual {p0, v2}, Lcom/android/server/SystemServer;->startSystemConfigInit(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 959
    const-string v3, "android_servers"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 962
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 965
    sget-boolean v3, Landroid/os/Build;->IS_ENG:Z

    if-eqz v3, :cond_124

    .line 966
    invoke-static {}, Lcom/android/server/SystemServer;->spawnFdLeakCheckThread()V

    .line 971
    :cond_124
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 974
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 977
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 980
    const-string/jumbo v3, "system_server_dumper"

    iget-object v5, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 981
    iget-object v3, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v3, p0}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 984
    new-instance v8, Lcom/android/server/SystemServiceManager;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v8, v3}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 985
    iget-boolean v9, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v10, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v12, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 987
    iget-object v3, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v3, v5}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 989
    const-class v3, Lcom/android/server/SystemServiceManager;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v3, v5}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1000
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_15c
    .catchall {:try_start_23 .. :try_end_15c} :catchall_9d

    const-string v5, "System"

    if-eqz v3, :cond_19d

    .line 1002
    :try_start_160
    const-string/jumbo v3, "persist.sys.dalvik.jvmtiagent"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1003
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_19d

    const/16 v6, 0x3d

    .line 1004
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1005
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v6, v0

    .line 1007
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_180
    .catchall {:try_start_160 .. :try_end_180} :catchall_9d

    .line 1010
    :try_start_180
    invoke-static {v8, v6, v1}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_183} :catch_184
    .catchall {:try_start_180 .. :try_end_183} :catchall_9d

    goto :goto_19d

    .line 1012
    :catch_184
    :try_start_184
    const-string v6, "*************************************************"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "********** Failed to load jvmti plugin: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19d
    .catchall {:try_start_184 .. :try_end_19d} :catchall_9d

    .line 1018
    :cond_19d
    :goto_19d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1022
    new-instance v3, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    .line 1027
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->create()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v3

    .line 1028
    invoke-static {v3}, Lcom/android/internal/os/ApplicationSharedMemory;->setInstance(Lcom/android/internal/os/ApplicationSharedMemory;)V

    .line 1032
    :try_start_1af
    const-string v3, "StartServices"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1033
    const-string/jumbo v3, "sys.system_server_inherit_rt"

    .line 1034
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1c4

    .line 1035
    invoke-static {v0}, Landroid/os/Binder;->setGlobalInheritRt(Z)V

    goto :goto_1c4

    :catchall_1c1
    move-exception v0

    move-object p0, v0

    goto :goto_22b

    .line 1037
    :cond_1c4
    :goto_1c4
    invoke-virtual {p0, v2}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1038
    invoke-virtual {p0, v2}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1039
    invoke-virtual {p0, v2}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1040
    invoke-virtual {p0, v2}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1043
    invoke-virtual {p0, v2}, Lcom/android/server/SystemServer;->updateWatchdogTimeout(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1044
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/criticalevents/CriticalEventLog;->logSystemServerStarted()V
    :try_end_1da
    .catchall {:try_start_1af .. :try_end_1da} :catchall_1c1

    .line 1050
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1053
    invoke-static {v1}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 1055
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_210

    invoke-virtual {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_210

    .line 1056
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0x14

    .line 1057
    invoke-static {v7, v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-lez v2, :cond_210

    .line 1062
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemServerTiming"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_210
    new-instance v0, Lcom/android/server/SystemServer$1;

    invoke-direct {v0, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0}, Landroid/os/Binder;->setTransactionCallback(Landroid/os/IBinderCallback;)V

    .line 1079
    new-instance v0, Lcom/android/server/SystemServer$2;

    invoke-direct {v0, p0}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0}, Ldalvik/system/VMRuntime;->addPostCleanupCallback(Ljava/lang/Runnable;)V

    .line 1087
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1088
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Main thread loop unexpectedly exited"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1046
    :goto_22b
    :try_start_22b
    const-string v0, "******************************************"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const-string v0, "************ Failure starting system services"

    invoke-static {v5, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1048
    throw p0
    :try_end_236
    .catchall {:try_start_22b .. :try_end_236} :catchall_236

    :catchall_236
    move-exception v0

    move-object p0, v0

    .line 1050
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1051
    throw p0

    .line 1018
    :goto_23c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1019
    throw p0
.end method

.method public final startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 7

    .line 3658
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_14

    const-string v0, "debug.crash_system"

    const/4 v1, 0x0

    .line 3659
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_14

    .line 3660
    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 3663
    :cond_14
    :goto_14
    const-string/jumbo v0, "startApexServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3666
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getApexSystemServices()Ljava/util/List;

    move-result-object v0

    .line 3667
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 3668
    invoke-virtual {v1}, Lcom/android/server/pm/ApexSystemServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3669
    invoke-virtual {v1}, Lcom/android/server/pm/ApexSystemServiceInfo;->getJarPath()Ljava/lang/String;

    move-result-object v1

    .line 3670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3671
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 3672
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto :goto_60

    .line 3674
    :cond_5b
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3676
    :goto_60
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_26

    .line 3680
    :cond_64
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {p0}, Lcom/android/server/SystemServiceManager;->sealStartedServices()V

    .line 3682
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 3

    .line 3758
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 3759
    const-string p0, "SystemServer"

    const-string p1, "AttentionService is not configured on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3763
    :cond_e
    const-string p1, "StartAttentionManagerService"

    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3764
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class p1, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3765
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 11

    .line 1183
    const-string/jumbo v0, "packagemanagermain"

    const-string/jumbo v1, "startBootstrapServices"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1185
    const-string v1, "ArtModuleServiceInitializer"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1193
    new-instance v1, Landroid/os/ArtModuleServiceManager;

    invoke-direct {v1}, Landroid/os/ArtModuleServiceManager;-><init>()V

    invoke-static {v1}, Lcom/android/server/art/ArtModuleServiceInitializer;->setArtModuleServiceManager(Landroid/os/ArtModuleServiceManager;)V

    .line 1194
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1198
    const-string v1, "StartWatchdog"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1199
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    .line 1200
    invoke-virtual {v1}, Lcom/android/server/Watchdog;->start()V

    .line 1201
    iget-object v2, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v2, v1}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1202
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1205
    const-string v2, "StartProtoLogConfigurationService"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1206
    new-instance v2, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;

    invoke-direct {v2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;-><init>()V

    const-string/jumbo v3, "protolog_configuration"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1208
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1210
    const-string v2, "InitializeProtoLog"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1211
    invoke-static {}, Lcom/android/internal/protolog/WmProtoLogGroups;->values()[Lcom/android/internal/protolog/WmProtoLogGroups;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/protolog/ProtoLog;->init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 1212
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1216
    const-string v2, "PlatformCompat"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1217
    new-instance v2, Lcom/android/server/compat/PlatformCompat;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    .line 1218
    const-string/jumbo v3, "platform_compat"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1219
    new-instance v3, Lcom/android/server/compat/PlatformCompatNative;

    invoke-direct {v3, v2}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    const-string/jumbo v4, "platform_compat_native"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v3, 0x0

    .line 1221
    new-array v4, v3, [J

    new-array v5, v3, [J

    invoke-static {v4, v5, v3}, Landroid/app/AppCompatCallbacks;->install([J[JZ)V

    .line 1222
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1227
    const-string v4, "StartFileIntegrityService"

    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1228
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1229
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1234
    const-string v4, "StartInstaller"

    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1235
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/Installer;

    .line 1236
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1240
    const-string v5, "DeviceIdentifiersPolicyService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1241
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1242
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1246
    const-string v5, "StartFeatureFlagsService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1247
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/flags/FeatureFlagsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1248
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1251
    const-string v5, "UriGrantsManagerService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1252
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1253
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1255
    const-string v5, "StartPowerStatsService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1257
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1258
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1260
    const-string v5, "StartIStatsService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1261
    invoke-static {}, Lcom/android/server/SystemServer;->startIStatsService()V

    .line 1262
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1266
    const-string v5, "MemtrackProxyService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1267
    invoke-static {}, Lcom/android/server/SystemServer;->startMemtrackProxyService()V

    .line 1268
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1271
    const-string v5, "StartAccessCheckingService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1272
    new-instance v5, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    invoke-direct {v5}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;-><init>()V

    const-class v6, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    invoke-static {v6, v5}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1274
    new-instance v5, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    invoke-direct {v5}, Lcom/android/server/appop/AppOpMigrationHelperImpl;-><init>()V

    const-class v6, Lcom/android/server/appop/AppOpMigrationHelper;

    invoke-static {v6, v5}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1276
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1277
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1280
    const-string v5, "StartActivityManager"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1282
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 1283
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v5

    .line 1284
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v6, v5}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1286
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 1287
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 1288
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1289
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1292
    const-string v5, "StartDataLoaderManagerService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1293
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/DataLoaderManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

    .line 1295
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1298
    const-string v5, "StartIncrementalService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1299
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 1300
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1306
    const-string v5, "StartPowerManager"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1307
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 1308
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1310
    const-string v5, "StartThermalManager"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1311
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1312
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1316
    const-string v5, "InitPowerManagement"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1317
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 1318
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1321
    const-string v5, "StartRecoverySystemService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1322
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1323
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1332
    const-string v5, "StartLightsService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1333
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/lights/LightsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1334
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1336
    const-string v5, "StartDisplayOffloadService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1338
    const-string v5, "config.enable_display_offload"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1bf

    .line 1339
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.clockwork.displayoffload.DisplayOffloadService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1341
    :cond_1bf
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1345
    const-string v5, "StartDisplayManager"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1346
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1347
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1350
    const-string v5, "WaitForDisplay"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1351
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x64

    invoke-virtual {v5, p1, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1352
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1355
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v6, 0xf0

    if-nez v5, :cond_1f4

    const/16 v5, 0xe

    .line 1359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1356
    invoke-static {v6, v5, v7, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1362
    :cond_1f4
    const-string v5, "StartDomainVerificationService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1363
    new-instance v5, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1364
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v8

    invoke-direct {v5, v7, v8, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;-><init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V

    .line 1365
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v7, v5}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1366
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1368
    const-string v7, "StartPackageManagerService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1370
    :try_start_211
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1371
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v8, :cond_220

    const/4 v8, 0x1

    goto :goto_221

    :cond_220
    move v8, v3

    :goto_221
    invoke-static {v7, v4, v5, v8}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;Z)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_227
    .catchall {:try_start_211 .. :try_end_227} :catchall_332

    .line 1375
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1378
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 1379
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1380
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1382
    const-string v0, "DexUseManagerLocal"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1385
    const-class v0, Lcom/android/server/art/DexUseManagerLocal;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1386
    invoke-static {v4}, Lcom/android/server/art/DexUseManagerLocal;->createInstance(Landroid/content/Context;)Lcom/android/server/art/DexUseManagerLocal;

    move-result-object v4

    .line 1385
    invoke-static {v0, v4}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1387
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1389
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_267

    invoke-virtual {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_267

    const/16 v0, 0xf

    .line 1393
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1390
    invoke-static {v6, v0, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1396
    :cond_267
    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    if-eqz v0, :cond_27a

    .line 1397
    const-string v0, "StartArcSystemHealthService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.arc.health.ArcSystemHealthService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1399
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1402
    :cond_27a
    const-string v0, "StartUserManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1403
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pm/UserManagerService$LifeCycle;

    .line 1404
    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$LifeCycle;->getService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mUserManagerService:Lcom/android/server/pm/UserManagerService;

    .line 1405
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1408
    const-string v0, "InitAttributerCache"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 1410
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1413
    const-string v0, "SetSystemProcess"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 1415
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1418
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    .line 1422
    const-string v0, "InitWatchdog"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1423
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1424
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1428
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 1431
    const-string v0, "StartOverlayManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/om/OverlayManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1433
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1436
    const-string v0, "StartResourcesManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1437
    new-instance v0, Lcom/android/server/resources/ResourcesManagerService;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/resources/ResourcesManagerService;-><init>(Landroid/content/Context;)V

    .line 1438
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/resources/ResourcesManagerService;->setActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V

    .line 1439
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1440
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1442
    const-string v0, "StartSensorPrivacyService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1444
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1446
    const-string/jumbo v0, "persist.sys.displayinset.top"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_31f

    .line 1448
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 1449
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 1454
    :cond_31f
    const-string v0, "StartSensorService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1455
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/sensors/SensorService;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1456
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1457
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_332
    move-exception p0

    .line 1375
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1376
    throw p0
.end method

.method public final startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 6

    .line 3719
    const-string v0, "content_capture"

    const-string/jumbo v1, "service_explicitly_enabled"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3721
    const-string v1, "SystemServer"

    if-eqz v0, :cond_27

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 3722
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3724
    const-string v2, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 3726
    :cond_21
    const-string p0, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-nez v0, :cond_47

    const v0, 0x1040258

    .line 3733
    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_39

    .line 3734
    const-string p0, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    const v0, 0x1040259

    .line 3737
    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_47

    .line 3738
    const-string p1, "ContentProtectionService disabled because resource is not overlaid, ContentCaptureService still enabled"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    :cond_47
    const-string p1, "StartContentCaptureService"

    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3746
    iget-object p1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3748
    const-class p1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 3749
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz p1, :cond_64

    .line 3750
    iget-object p0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p0, :cond_64

    .line 3751
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 3754
    :cond_64
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4

    .line 1464
    const-string/jumbo v0, "startCoreServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1467
    const-string v0, "StartSystemConfigService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SystemConfigService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1469
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1471
    const-string v0, "StartBatteryService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1473
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1474
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1477
    const-string v0, "StartUsageService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1479
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1480
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1479
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 1481
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1484
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1485
    const-string v0, "StartWebViewUpdateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 1487
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1491
    :cond_5e
    const-string v0, "StartCachedDeviceStateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1493
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1496
    const-string v0, "StartBinderCallsStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1497
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1498
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1501
    const-string v0, "StartLooperStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1502
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1503
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1506
    const-string v0, "StartRollbackManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rollback/RollbackManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1508
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1511
    const-string v0, "StartNativeTombstoneManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1512
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/NativeTombstoneManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1513
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1516
    const-string v0, "StartBugreportManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1517
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1518
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1521
    const-string v0, "GpuService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1522
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1523
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1526
    const-string v0, "StartRemoteProvisioningService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1527
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1528
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1532
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_de

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_ed

    .line 1534
    :cond_de
    const-string v0, "CpuMonitorService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1535
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/cpu/CpuMonitorService;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1536
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1539
    :cond_ed
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 3

    .line 3644
    const-string/jumbo v0, "startOnDeviceIntelligenceManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3645
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v0, "com.android.server.ondeviceintelligence.OnDeviceIntelligenceManagerService"

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3646
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1546
    const-string/jumbo v0, "startOtherServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1547
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->updateOtherServicesStartIndex()V

    .line 1549
    iget-object v6, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1564
    const-string v0, "config.disable_systemtextclassifier"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1567
    const-string v0, "config.disable_networktime"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1569
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1574
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "org.chromium.arc"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    .line 1587
    :try_start_2f
    new-instance v8, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>()V

    const-string v9, "SecondaryZygotePreload"

    invoke-static {v8, v9}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1602
    const-string v8, "StartKeyAttestationApplicationIdProviderService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1603
    const-string/jumbo v8, "sec_key_att_app_id_provider"

    new-instance v9, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v9, v6}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1605
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1607
    const-string v8, "StartKeyChainSystemService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1608
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1609
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1611
    const-string v8, "StartBinaryTransparencyService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1612
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/BinaryTransparencyService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1613
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1615
    const-string v8, "StartSchedulingPolicyService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1616
    const-string/jumbo v8, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v8, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1617
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1622
    iget-object v8, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v9, "android.hardware.microphone"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9e

    iget-object v8, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v9, "android.software.telecom"

    .line 1623
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9e

    iget-object v8, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v9, "android.hardware.telephony"

    .line 1624
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 1625
    :cond_9e
    const-string v8, "StartTelecomLoaderService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1626
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1627
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1630
    :cond_ad
    const-string v8, "StartTelephonyRegistry"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1631
    new-instance v15, Lcom/android/server/TelephonyRegistry;

    new-instance v8, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-direct {v8}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v15, v6, v8}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V

    .line 1633
    const-string/jumbo v8, "telephony.registry"

    invoke-static {v8, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1634
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1636
    const-string v8, "StartEntropyMixer"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1637
    new-instance v8, Lcom/android/server/EntropyMixer;

    invoke-direct {v8, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 1638
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1640
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1643
    const-string v8, "StartAccountManagerService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1644
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/accounts/AccountManagerService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1645
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1647
    const-string v8, "StartContentService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1648
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/content/ContentService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1649
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1651
    const-string v8, "InstallSystemProviders"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1652
    iget-object v8, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getContentProviderHelper()Lcom/android/server/am/ContentProviderHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/ContentProviderHelper;->installSystemProviders()V

    .line 1654
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.deviceconfig.DeviceConfigInit$Lifecycle"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1656
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 1657
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1662
    const-string v8, "StartDropBoxManager"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1663
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1664
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1667
    const-string v8, "StartEnhancedConfirmationService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1668
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.ecm.EnhancedConfirmationService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1669
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1672
    const-string v8, "StartHintManager"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1673
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1674
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1677
    const-string v8, "StartRoleManagerService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1678
    const-class v8, Lcom/android/server/role/RoleServicePlatformHelper;

    new-instance v9, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;

    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v9}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1680
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.role.RoleService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1681
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1685
    const-string v8, "StartSupervisionService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1686
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/supervision/SupervisionService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1687
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1691
    const-string v8, "StartVibratorManagerService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1692
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1693
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1696
    const-string v8, "StartDynamicSystemService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1697
    new-instance v8, Lcom/android/server/DynamicSystemService;

    invoke-direct {v8, v6}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V

    .line 1698
    const-string v9, "dynamic_system"

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1699
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1701
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.consumerir"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a9

    .line 1702
    const-string v8, "StartConsumerIrService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1703
    new-instance v8, Lcom/android/server/ConsumerIrService;

    invoke-direct {v8, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    .line 1704
    const-string v9, "consumer_ir"

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1705
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1709
    :cond_1a9
    const-string v8, "StartAlarmManagerService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1710
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1711
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1713
    const-string v8, "StartInputManagerService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1714
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/input/InputManagerService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/input/InputManagerService$Lifecycle;

    .line 1715
    invoke-virtual {v8}, Lcom/android/server/input/InputManagerService$Lifecycle;->getService()Lcom/android/server/input/InputManagerService;

    move-result-object v8

    .line 1716
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1718
    const-string v9, "DeviceStateManagerService"

    invoke-virtual {v2, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1719
    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1720
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v0, :cond_1ee

    .line 1723
    const-string v0, "StartCameraServiceProxy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1724
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1725
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1728
    :cond_1ee
    const-string v0, "StartWindowManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1730
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0xc8

    invoke-virtual {v0, v2, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1731
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    const/4 v9, 0x1

    xor-int/2addr v0, v9

    new-instance v10, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v10}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    iget-object v11, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v6, v8, v0, v10, v11}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v10

    .line 1733
    const-string/jumbo v0, "window"

    const/16 v11, 0x13

    invoke-static {v0, v10, v3, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1736
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1738
    const-string v0, "SetWindowManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1739
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1740
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1742
    const-string v0, "WindowManagerServiceOnInitReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1744
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1749
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;-><init>()V

    const-string v11, "StartISensorManagerService"

    invoke-static {v0, v11}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1756
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;-><init>()V

    const-string v11, "StartHidlServices"

    invoke-static {v0, v11}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1763
    const-string v0, "StartInputManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1765
    invoke-virtual {v8}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1766
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1769
    const-string v0, "DisplayManagerWindowManagerAndInputReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1770
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1771
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1773
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-ne v0, v9, :cond_26d

    .line 1774
    const-string v0, "SystemServer"

    const-string v11, "No Bluetooth Service (factory test)"

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_292

    .line 1775
    :cond_26d
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v11, "android.hardware.bluetooth"

    .line 1776
    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_281

    .line 1777
    const-string v0, "SystemServer"

    const-string v11, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_292

    .line 1779
    :cond_281
    const-string v0, "StartBluetoothService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1780
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.bluetooth.BluetoothService"

    const-string v12, "/apex/com.android.bt/javalib/service-bluetooth.jar"

    invoke-virtual {v0, v11, v12}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1782
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1785
    :goto_292
    const-string v0, "IpConnectivityMetrics"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1786
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1787
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1789
    const-string v0, "NetworkWatchlistService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1790
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1791
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1793
    const-string v0, "PinnerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1794
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/pinner/PinnerService;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1795
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1797
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2d8

    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->enabled()Z

    move-result v0

    if-eqz v0, :cond_2d8

    .line 1798
    const-string v0, "ProfcollectForwardingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1799
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1800
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1803
    :cond_2d8
    const-string v0, "SignedConfigService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1804
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 1805
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1808
    const-string v0, "AppIntegrityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1809
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/integrity/AppIntegrityManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1810
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1813
    const-string v0, "StartLogcatManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1814
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1815
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1817
    const-string v0, "StartPowerOffAlarmService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1818
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/power/PowerOffAlarmService;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1819
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1821
    const-string v0, "StartSmart5gService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1822
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/Smart5gService;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1823
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1827
    const-string v0, "StartIntrusionDetectionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1828
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1829
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1832
    invoke-static {v6}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_345

    .line 1833
    const-string v0, "StartAppFunctionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1834
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/appfunctions/AppFunctionManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1835
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1846
    :cond_345
    const-string v0, "StartAdvancedProtectionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1847
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1848
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1852
    const-string v0, "StartTradeInModeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1853
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/TradeInModeService;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1854
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_363
    .catchall {:try_start_2f .. :try_end_363} :catchall_1489

    move v11, v7

    .line 1865
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v7

    if-eqz v7, :cond_374

    .line 1871
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "airplane_mode_on"

    invoke-static {v0, v12, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_38a

    .line 1873
    :cond_374
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x111003d

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_38a

    .line 1874
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "airplane_mode_on"

    invoke-static {v0, v12, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1885
    :cond_38a
    :goto_38a
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eq v0, v9, :cond_3f8

    .line 1886
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x104028a

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1889
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3ac

    .line 1890
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto :goto_3de

    .line 1893
    :cond_3ac
    :try_start_3ac
    const-string v0, "SystemServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Starting custom IMMS: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_3c7
    .catchall {:try_start_3ac .. :try_end_3c7} :catchall_3c8

    goto :goto_3de

    :catchall_3c8
    move-exception v0

    .line 1896
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "starting "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1899
    :goto_3de
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1901
    const-string v0, "StartAccessibilityManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1903
    :try_start_3e6
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_3ed
    .catchall {:try_start_3e6 .. :try_end_3ed} :catchall_3ee

    goto :goto_3f5

    :catchall_3ee
    move-exception v0

    .line 1905
    const-string/jumbo v12, "starting Accessibility Manager"

    invoke-virtual {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1907
    :goto_3f5
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1910
    :cond_3f8
    const-string v0, "MakeDisplayReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1912
    :try_start_3fd
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_400
    .catchall {:try_start_3fd .. :try_end_400} :catchall_401

    goto :goto_408

    :catchall_401
    move-exception v0

    .line 1914
    const-string/jumbo v12, "making display ready"

    invoke-virtual {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1916
    :goto_408
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1918
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eq v0, v9, :cond_456

    .line 1919
    const-string v0, "0"

    const-string/jumbo v12, "system_init.startmountservice"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_456

    .line 1920
    const-string v0, "StartStorageManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1926
    :try_start_423
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/StorageManagerService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1927
    const-string/jumbo v0, "mount"

    .line 1928
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1927
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    :try_end_434
    .catchall {:try_start_423 .. :try_end_434} :catchall_435

    goto :goto_43c

    :catchall_435
    move-exception v0

    .line 1930
    const-string/jumbo v12, "starting StorageManagerService"

    invoke-virtual {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1932
    :goto_43c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1934
    const-string v0, "StartStorageStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1936
    :try_start_444
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/usage/StorageStatsService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_44b
    .catchall {:try_start_444 .. :try_end_44b} :catchall_44c

    goto :goto_453

    :catchall_44c
    move-exception v0

    .line 1938
    const-string/jumbo v12, "starting StorageStatsService"

    invoke-virtual {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1940
    :goto_453
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1946
    :cond_456
    const-string v0, "StartUiModeManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1947
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1948
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1950
    const-string v0, "StartLocaleManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1952
    :try_start_46a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_471
    .catchall {:try_start_46a .. :try_end_471} :catchall_472

    goto :goto_479

    :catchall_472
    move-exception v0

    .line 1954
    const-string/jumbo v12, "starting LocaleManagerService service"

    invoke-virtual {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1956
    :goto_479
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1959
    const-string v0, "StartUAppWindowLayoutSettingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1961
    :try_start_481
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_488
    .catchall {:try_start_481 .. :try_end_488} :catchall_489

    goto :goto_490

    :catchall_489
    move-exception v0

    .line 1963
    const-string/jumbo v12, "starting AppWindowLayoutSettingsService service"

    invoke-virtual {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1965
    :goto_490
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1968
    const-string v0, "StartGrammarInflectionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1970
    :try_start_498
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_49f
    .catchall {:try_start_498 .. :try_end_49f} :catchall_4a0

    goto :goto_4a7

    :catchall_4a0
    move-exception v0

    .line 1972
    const-string/jumbo v12, "starting GrammarInflectionService service"

    invoke-virtual {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1974
    :goto_4a7
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1976
    const-string v0, "StartAppHibernationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1977
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1978
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1980
    const-string v0, "ArtManagerLocal"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1981
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v0}, Lcom/android/server/pm/DexOptHelper;->initializeArtManagerLocal(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 1982
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1984
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1986
    :try_start_4cb
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v12, "dexopt"

    invoke-virtual {v0, v12}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1987
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_4d9
    .catchall {:try_start_4cb .. :try_end_4d9} :catchall_4e3

    .line 1991
    :goto_4d9
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v12, "dexopt"

    invoke-virtual {v0, v12}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    goto :goto_4eb

    :catchall_4e3
    move-exception v0

    .line 1989
    :try_start_4e4
    const-string/jumbo v12, "update packages"

    invoke-virtual {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4ea
    .catchall {:try_start_4e4 .. :try_end_4ea} :catchall_147e

    goto :goto_4d9

    .line 1993
    :goto_4eb
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1995
    const-string v0, "UpdateMetricsIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1996
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updateMetricsIfNeeded()V

    .line 1997
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1999
    const-string v0, "PerformFstrimIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2001
    :try_start_500
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_505
    .catchall {:try_start_500 .. :try_end_505} :catchall_506

    goto :goto_50d

    :catchall_506
    move-exception v0

    .line 2003
    const-string/jumbo v12, "performing fstrim"

    invoke-virtual {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2005
    :goto_50d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2008
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-ne v0, v9, :cond_520

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_fb8

    .line 2011
    :cond_520
    const-string v0, "StartLockSettingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2013
    :try_start_525
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2014
    const-string/jumbo v0, "lock_settings"

    .line 2015
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2014
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_537
    .catchall {:try_start_525 .. :try_end_537} :catchall_539

    move-object v13, v0

    goto :goto_541

    :catchall_539
    move-exception v0

    .line 2017
    const-string/jumbo v13, "starting LockSettingsService service"

    invoke-virtual {v1, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v13, 0x0

    .line 2019
    :goto_541
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2021
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v14, ""

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_565

    .line 2023
    const-string v14, "StartPersistentDataBlock"

    invoke-virtual {v2, v14}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2024
    iget-object v14, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v16, 0x0

    const-class v12, Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v14, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2025
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_567

    :cond_565
    const/16 v16, 0x0

    .line 2028
    :goto_567
    sget-boolean v12, Landroid/os/Build;->IS_ARC:Z

    if-eqz v12, :cond_583

    const-string/jumbo v12, "ro.boot.dev_mode"

    invoke-static {v12, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v9, :cond_583

    .line 2029
    const-string v12, "StartArcPersistentDataBlock"

    invoke-virtual {v2, v12}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2030
    iget-object v12, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v14, "com.android.server.arc.persistent_data_block.ArcPersistentDataBlockService"

    invoke-virtual {v12, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2031
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2034
    :cond_583
    const-string v12, "StartTestHarnessMode"

    invoke-virtual {v2, v12}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2035
    iget-object v12, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v12, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2036
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v0, :cond_59a

    .line 2038
    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_5a9

    .line 2040
    :cond_59a
    const-string v0, "StartOemLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2041
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2042
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2045
    :cond_5a9
    const-string v0, "StartDeviceIdleController"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2046
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2047
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2051
    const-string v0, "StartDevicePolicyManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2052
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 2053
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2057
    const-string v0, "StartVoiceRecognitionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2058
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2059
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2062
    const-string v0, "StartStatusBarManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2064
    :try_start_5df
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V

    .line 2065
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->publishGlobalActionsProvider()V

    .line 2066
    const-string/jumbo v14, "statusbar"

    const/16 v9, 0x14

    invoke-static {v14, v0, v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_5ef
    .catchall {:try_start_5df .. :try_end_5ef} :catchall_5f0

    goto :goto_5f7

    :catchall_5f0
    move-exception v0

    .line 2069
    const-string/jumbo v9, "starting StatusBarManagerService"

    invoke-virtual {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2071
    :goto_5f7
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const v0, 0x1040266

    .line 2073
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_613

    .line 2075
    const-string v0, "StartMusicRecognitionManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2076
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2077
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_61a

    .line 2079
    :cond_613
    const-string v0, "SystemServer"

    const-string v9, "MusicRecognitionManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    :goto_61a
    invoke-virtual {v1, v6, v2}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2084
    invoke-virtual {v1, v6, v2}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2085
    invoke-virtual {v1, v6, v2}, Lcom/android/server/SystemServer;->startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2086
    invoke-virtual {v1, v6, v2}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2087
    invoke-virtual {v1, v6, v2}, Lcom/android/server/SystemServer;->startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2089
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2093
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    const v0, 0x1040250

    .line 2095
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_648

    .line 2097
    const-string v0, "StartAmbientContextService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2098
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2099
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_64f

    .line 2101
    :cond_648
    const-string v0, "SystemServer"

    const-string v9, "AmbientContextManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :goto_64f
    const-string v0, "StartSpeechRecognitionManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2106
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2107
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const v0, 0x1040251

    .line 2110
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_677

    .line 2111
    const-string v0, "StartAppPredictionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2112
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2113
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_67e

    .line 2115
    :cond_677
    const-string v0, "SystemServer"

    const-string v9, "AppPredictionService not defined by OEM"

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_67e
    const v0, 0x104025a

    .line 2119
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_697

    .line 2120
    const-string v0, "StartContentSuggestionsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2121
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2122
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_69e

    .line 2124
    :cond_697
    const-string v0, "SystemServer"

    const-string v9, "ContentSuggestionsService not defined by OEM"

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69e
    const v0, 0x1040272

    .line 2128
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6b6

    .line 2129
    const-string v0, "StartSearchUiService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2130
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/searchui/SearchUiManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2131
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_6b6
    const v0, 0x1040275

    .line 2135
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6cf

    .line 2136
    const-string v0, "StartSmartspaceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2137
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2138
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_6d6

    .line 2140
    :cond_6cf
    const-string v0, "SystemServer"

    const-string v9, "SmartspaceManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6d6
    const v0, 0x1040241

    .line 2144
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6ef

    .line 2146
    const-string v0, "StartContextualSearchService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2147
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2148
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_6f6

    .line 2150
    :cond_6ef
    const-string v0, "SystemServer"

    const-string v9, "ContextualSearchManagerService not defined or disabled by flag"

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :goto_6f6
    const-string v0, "InitConnectivityModuleConnector"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2155
    :try_start_6fb
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_702
    .catchall {:try_start_6fb .. :try_end_702} :catchall_703

    goto :goto_709

    :catchall_703
    move-exception v0

    .line 2157
    const-string v9, "initializing ConnectivityModuleConnector"

    invoke-virtual {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2159
    :goto_709
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2161
    const-string v0, "InitNetworkStackClient"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2163
    :try_start_711
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_718
    .catchall {:try_start_711 .. :try_end_718} :catchall_719

    goto :goto_71f

    :catchall_719
    move-exception v0

    .line 2165
    const-string v9, "initializing NetworkStackClient"

    invoke-virtual {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2167
    :goto_71f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2169
    const-string v0, "StartNetworkManagementService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2171
    :try_start_727
    invoke-static {v6}, Lcom/android/server/net/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/net/NetworkManagementService;

    move-result-object v9
    :try_end_72b
    .catchall {:try_start_727 .. :try_end_72b} :catchall_734

    .line 2172
    :try_start_72b
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_731
    .catchall {:try_start_72b .. :try_end_731} :catchall_732

    goto :goto_73d

    :catchall_732
    move-exception v0

    goto :goto_737

    :catchall_734
    move-exception v0

    move-object/from16 v9, v16

    .line 2174
    :goto_737
    const-string/jumbo v14, "starting NetworkManagement Service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2176
    :goto_73d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2178
    const-string v0, "StartFontManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2179
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v14, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-direct {v14, v6, v7}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 2180
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2183
    const-string v0, "StartTextServicesManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2184
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2185
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v4, :cond_772

    .line 2189
    const-string v0, "StartTextClassificationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2190
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 2191
    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2192
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2195
    :cond_772
    const-string v0, "StartNetworkScoreService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2196
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2197
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2199
    const-string v0, "StartNetworkStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2202
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.NetworkStatsServiceInitializer"

    const-string v14, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v4, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2204
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2206
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2208
    :try_start_797
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v6, v0, v9}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    :try_end_79e
    .catchall {:try_start_797 .. :try_end_79e} :catchall_7a7

    .line 2210
    :try_start_79e
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7a4
    .catchall {:try_start_79e .. :try_end_7a4} :catchall_7a5

    goto :goto_7b0

    :catchall_7a5
    move-exception v0

    goto :goto_7aa

    :catchall_7a7
    move-exception v0

    move-object/from16 v4, v16

    .line 2212
    :goto_7aa
    const-string/jumbo v14, "starting NetworkPolicy Service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2214
    :goto_7b0
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2216
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v14, "android.hardware.wifi"

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e1

    .line 2219
    const-string v0, "StartWifi"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2220
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v14, "com.android.server.wifi.WifiService"

    const-string v3, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v14, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2222
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2223
    const-string v0, "StartWifiScanning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2224
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.scanner.WifiScanningService"

    const-string v14, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2226
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2229
    :cond_7e1
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110145

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_7ff

    .line 2231
    const-string v0, "StartWifiUsd"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2232
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.usd.UsdService"

    const-string v14, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2234
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2237
    :cond_7ff
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81c

    .line 2239
    const-string v0, "StartRttService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2240
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.rtt.RttService"

    const-string v14, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2242
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2245
    :cond_81c
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.aware"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_839

    .line 2247
    const-string v0, "StartWifiAware"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2248
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.aware.WifiAwareService"

    const-string v14, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2250
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2253
    :cond_839
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.direct"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_856

    .line 2255
    const-string v0, "StartWifiP2P"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2256
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.p2p.WifiP2pService"

    const-string v14, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2258
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2261
    :cond_856
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.lowpan"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_871

    .line 2263
    const-string v0, "StartLowpan"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2264
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2265
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2268
    :cond_871
    const-string v0, "StartPacProxyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2270
    :try_start_876
    new-instance v0, Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {v0, v6}, Lcom/android/server/connectivity/PacProxyService;-><init>(Landroid/content/Context;)V

    .line 2271
    const-string/jumbo v3, "pac_proxy"

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_881
    .catchall {:try_start_876 .. :try_end_881} :catchall_882

    goto :goto_889

    :catchall_882
    move-exception v0

    .line 2273
    const-string/jumbo v3, "starting PacProxyService"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2275
    :goto_889
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2277
    const-string v0, "StartConnectivityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2281
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ConnectivityServiceInitializer"

    const-string v14, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v3, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2283
    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager()V

    .line 2284
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2286
    const-string v0, "StartSecurityStateManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2288
    :try_start_8a5
    const-string/jumbo v0, "security_state"

    new-instance v3, Lcom/android/server/SecurityStateManagerService;

    invoke-direct {v3, v6}, Lcom/android/server/SecurityStateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8b0
    .catchall {:try_start_8a5 .. :try_end_8b0} :catchall_8b1

    goto :goto_8b8

    :catchall_8b1
    move-exception v0

    .line 2291
    const-string/jumbo v3, "starting SecurityStateManagerService"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2293
    :goto_8b8
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2296
    const-string v0, "StartVpnManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2298
    :try_start_8c0
    invoke-static {v6}, Lcom/android/server/VpnManagerService;->create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;

    move-result-object v3
    :try_end_8c4
    .catchall {:try_start_8c0 .. :try_end_8c4} :catchall_8cd

    .line 2299
    :try_start_8c4
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8ca
    .catchall {:try_start_8c4 .. :try_end_8ca} :catchall_8cb

    goto :goto_8d6

    :catchall_8cb
    move-exception v0

    goto :goto_8d0

    :catchall_8cd
    move-exception v0

    move-object/from16 v3, v16

    .line 2301
    :goto_8d0
    const-string/jumbo v14, "starting VPN Manager Service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2303
    :goto_8d6
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2312
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastB()Z

    move-result v0

    if-nez v0, :cond_8ff

    .line 2313
    const-string v0, "StartVcnManagementService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2322
    :try_start_8e4
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v14, "com.android.server.ConnectivityServiceInitializerB"
    :try_end_8e8
    .catchall {:try_start_8e4 .. :try_end_8e8} :catchall_8f2

    move-object/from16 v18, v3

    :try_start_8ea
    const-string v3, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v14, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_8ef
    .catchall {:try_start_8ea .. :try_end_8ef} :catchall_8f0

    goto :goto_8fb

    :catchall_8f0
    move-exception v0

    goto :goto_8f5

    :catchall_8f2
    move-exception v0

    move-object/from16 v18, v3

    .line 2327
    :goto_8f5
    const-string/jumbo v3, "starting VCN Management Service"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2329
    :goto_8fb
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_901

    :cond_8ff
    move-object/from16 v18, v3

    .line 2332
    :goto_901
    const-string v0, "StartSystemUpdateManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2334
    :try_start_906
    const-string/jumbo v0, "system_update"

    new-instance v3, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v3, v6}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_911
    .catchall {:try_start_906 .. :try_end_911} :catchall_912

    goto :goto_919

    :catchall_912
    move-exception v0

    .line 2337
    const-string/jumbo v3, "starting SystemUpdateManagerService"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2339
    :goto_919
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2341
    const-string v0, "StartUpdateLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2343
    :try_start_921
    const-string/jumbo v0, "updatelock"

    new-instance v3, Lcom/android/server/UpdateLockService;

    invoke-direct {v3, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_92c
    .catchall {:try_start_921 .. :try_end_92c} :catchall_92d

    goto :goto_934

    :catchall_92d
    move-exception v0

    .line 2346
    const-string/jumbo v3, "starting UpdateLockService"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2348
    :goto_934
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2351
    const-string v0, "StartBitmapOffloadService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2352
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/bitmapoffload/BitmapOffloadService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2353
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2355
    const-string v0, "StartNotificationManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2356
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2357
    invoke-static {v6}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 2358
    invoke-static {v6}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 2359
    const-string/jumbo v0, "notification"

    .line 2360
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2359
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 2361
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2363
    const-string v0, "StartDeviceMonitor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2364
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2365
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2367
    const-string v0, "StartTimeDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2369
    :try_start_979
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_980
    .catchall {:try_start_979 .. :try_end_980} :catchall_981

    goto :goto_988

    :catchall_981
    move-exception v0

    .line 2371
    const-string/jumbo v3, "starting TimeDetectorService service"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2373
    :goto_988
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2375
    const-string v0, "StartLocationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2376
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/location/LocationManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2377
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2379
    const-string v0, "StartCountryDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2381
    :try_start_99f
    new-instance v3, Lcom/android/server/CountryDetectorService;

    invoke-direct {v3, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_9a4
    .catchall {:try_start_99f .. :try_end_9a4} :catchall_9ac

    .line 2382
    :try_start_9a4
    const-string v0, "country_detector"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9a9
    .catchall {:try_start_9a4 .. :try_end_9a9} :catchall_9aa

    goto :goto_9b5

    :catchall_9aa
    move-exception v0

    goto :goto_9af

    :catchall_9ac
    move-exception v0

    move-object/from16 v3, v16

    .line 2384
    :goto_9af
    const-string/jumbo v14, "starting Country Detector"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2386
    :goto_9b5
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2388
    const-string v0, "StartTimeZoneDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2390
    :try_start_9bd
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_9c4
    .catchall {:try_start_9bd .. :try_end_9c4} :catchall_9c5

    goto :goto_9cc

    :catchall_9c5
    move-exception v0

    .line 2392
    const-string/jumbo v14, "starting TimeZoneDetectorService service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2394
    :goto_9cc
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2396
    const-string v0, "StartAltitudeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2398
    :try_start_9d4
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/location/altitude/AltitudeService$Lifecycle;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_9db
    .catchall {:try_start_9d4 .. :try_end_9db} :catchall_9dc

    goto :goto_9e3

    :catchall_9dc
    move-exception v0

    .line 2400
    const-string/jumbo v14, "starting AltitudeService service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2402
    :goto_9e3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2404
    const-string v0, "StartLocationTimeZoneManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2406
    :try_start_9eb
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_9f2
    .catchall {:try_start_9eb .. :try_end_9f2} :catchall_9f3

    goto :goto_9fa

    :catchall_9f3
    move-exception v0

    .line 2408
    const-string/jumbo v14, "starting LocationTimeZoneManagerService service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2410
    :goto_9fa
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2412
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x1110190

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a21

    .line 2413
    const-string v0, "StartGnssTimeUpdateService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2415
    :try_start_a0f
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_a16
    .catchall {:try_start_a0f .. :try_end_a16} :catchall_a17

    goto :goto_a1e

    :catchall_a17
    move-exception v0

    .line 2417
    const-string/jumbo v14, "starting GnssTimeUpdateService service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2419
    :goto_a1e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2423
    :cond_a21
    const-string v0, "StartSearchManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2425
    :try_start_a26
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/search/SearchManagerService$Lifecycle;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_a2d
    .catchall {:try_start_a26 .. :try_end_a2d} :catchall_a2e

    goto :goto_a35

    :catchall_a2e
    move-exception v0

    .line 2427
    const-string/jumbo v14, "starting Search Service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2429
    :goto_a35
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2432
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x11101af

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a55

    .line 2433
    const-string v0, "StartWallpaperManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2434
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2435
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_a5c

    .line 2437
    :cond_a55
    const-string v0, "SystemServer"

    const-string v14, "Wallpaper service disabled by config"

    invoke-static {v0, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a5c
    const v0, 0x104027c

    .line 2447
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_a74

    .line 2449
    const-string v0, "StartWallpaperEffectsGenerationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2450
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2451
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2454
    :cond_a74
    const-string v0, "StartAudioService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-nez v11, :cond_a85

    .line 2456
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v19, v3

    goto :goto_ac3

    .line 2458
    :cond_a85
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x1040286

    .line 2459
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2461
    :try_start_a90
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a9a
    .catchall {:try_start_a90 .. :try_end_a9a} :catchall_aab

    move-object/from16 v19, v3

    :try_start_a9c
    const-string v3, "$Lifecycle"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_aa8
    .catchall {:try_start_a9c .. :try_end_aa8} :catchall_aa9

    goto :goto_ac3

    :catchall_aa9
    move-exception v0

    goto :goto_aae

    :catchall_aab
    move-exception v0

    move-object/from16 v19, v3

    .line 2463
    :goto_aae
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "starting "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2466
    :goto_ac3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2468
    const-string v0, "StartSoundTriggerMiddlewareService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2469
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2470
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2472
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.broadcastradio"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aee

    .line 2473
    const-string v0, "StartBroadcastRadioService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2474
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2475
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2479
    :cond_aee
    const-string v0, "StartDockObserver"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2480
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2481
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2491
    const-string v0, "StartWiredAccessoryManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2494
    :try_start_b02
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v6, v8}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v8, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_b0a
    .catchall {:try_start_b02 .. :try_end_b0a} :catchall_b0b

    goto :goto_b12

    :catchall_b0b
    move-exception v0

    .line 2497
    const-string/jumbo v3, "starting WiredAccessoryManager"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2499
    :goto_b12
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2502
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.midi"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2e

    .line 2504
    const-string v0, "StartMidiManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2505
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/midi/MidiService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2506
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2510
    :cond_b2e
    const-string v0, "StartAdbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2512
    :try_start_b33
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/adb/AdbService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_b3a
    .catchall {:try_start_b33 .. :try_end_b3a} :catchall_b3b

    goto :goto_b42

    .line 2514
    :catchall_b3b
    const-string v0, "SystemServer"

    const-string v3, "Failure starting AdbService"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :goto_b42
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2518
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.usb.host"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b5d

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.usb.accessory"

    .line 2519
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b5d

    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v0, :cond_b6c

    .line 2523
    :cond_b5d
    const-string v0, "StartUsbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2524
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/usb/UsbService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2525
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2534
    :cond_b6c
    const-string v0, "StartSerialService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2535
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/SerialService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2536
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2540
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2542
    :try_start_b80
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V

    .line 2543
    const-string v3, "hardware_properties"

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b8a
    .catchall {:try_start_b80 .. :try_end_b8a} :catchall_b8b

    goto :goto_b93

    :catchall_b8b
    move-exception v0

    .line 2546
    const-string v3, "SystemServer"

    const-string v8, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v3, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2548
    :goto_b93
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2551
    const-string v0, "StartTwilightService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2552
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2553
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2556
    const-string v0, "StartColorDisplay"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2557
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2558
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2561
    const-string v0, "StartJobScheduler"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2562
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2563
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2565
    const-string v0, "StartSoundTrigger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2566
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2567
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2569
    const-string v0, "StartTrustManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2570
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2571
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2573
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.backup"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bfa

    .line 2574
    const-string v0, "StartBackupManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2575
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/backup/BackupManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2576
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2579
    :cond_bfa
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.app_widgets"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c11

    .line 2580
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111017e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_c20

    .line 2581
    :cond_c11
    const-string v0, "StartAppWidgetService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2582
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/appwidget/AppWidgetService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2583
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2598
    :cond_c20
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_c39

    .line 2599
    const-string v0, "StartGestureLauncher"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2600
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2601
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2603
    :cond_c39
    const-string v0, "StartSensorNotification"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2604
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2605
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2607
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.context_hub"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c61

    .line 2608
    const-string v0, "StartContextHubSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2609
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2610
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2613
    :cond_c61
    const-string v0, "StartDiskStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2615
    :try_start_c66
    const-string v0, "diskstats"

    new-instance v3, Lcom/android/server/DiskStatsService;

    invoke-direct {v3, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c70
    .catchall {:try_start_c66 .. :try_end_c70} :catchall_c71

    goto :goto_c78

    :catchall_c71
    move-exception v0

    .line 2617
    const-string/jumbo v3, "starting DiskStats Service"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2619
    :goto_c78
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2621
    const-string v0, "RuntimeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2623
    :try_start_c80
    const-string/jumbo v0, "runtime"

    new-instance v3, Lcom/android/server/RuntimeService;

    invoke-direct {v3, v6}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c8b
    .catchall {:try_start_c80 .. :try_end_c8b} :catchall_c8c

    goto :goto_c93

    :catchall_c8c
    move-exception v0

    .line 2625
    const-string/jumbo v3, "starting RuntimeService"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2627
    :goto_c93
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v5, :cond_cb8

    .line 2629
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2631
    :try_start_c9d
    new-instance v3, Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-direct {v3, v6}, Lcom/android/server/timedetector/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_ca2
    .catchall {:try_start_c9d .. :try_end_ca2} :catchall_cab

    .line 2632
    :try_start_ca2
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ca8
    .catchall {:try_start_ca2 .. :try_end_ca8} :catchall_ca9

    goto :goto_cb4

    :catchall_ca9
    move-exception v0

    goto :goto_cae

    :catchall_cab
    move-exception v0

    move-object/from16 v3, v16

    .line 2634
    :goto_cae
    const-string/jumbo v5, "starting NetworkTimeUpdate service"

    invoke-virtual {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2636
    :goto_cb4
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_cba

    :cond_cb8
    move-object/from16 v3, v16

    .line 2639
    :goto_cba
    const-string v0, "CertBlocklister"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2641
    :try_start_cbf
    new-instance v0, Lcom/android/server/CertBlocklister;

    invoke-direct {v0, v6}, Lcom/android/server/CertBlocklister;-><init>(Landroid/content/Context;)V
    :try_end_cc4
    .catchall {:try_start_cbf .. :try_end_cc4} :catchall_cc5

    goto :goto_ccc

    :catchall_cc5
    move-exception v0

    .line 2643
    const-string/jumbo v5, "starting CertBlocklister"

    invoke-virtual {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2645
    :goto_ccc
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2649
    const-string v0, "StartEmergencyAffordanceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2650
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2651
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2654
    const-string/jumbo v0, "startBlobStoreManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2655
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2656
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2659
    const-string v0, "StartDreamManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2660
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2661
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2663
    const-string v0, "AddGraphicsStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2664
    const-string v0, "graphicsstats"

    new-instance v5, Landroid/graphics/GraphicsStatsService;

    invoke-direct {v5, v6}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2666
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2668
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_d25

    .line 2669
    const-string v0, "AddCoverageService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2670
    const-string v0, "coverage"

    new-instance v5, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v5}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2671
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2674
    :cond_d25
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3e

    .line 2675
    const-string v0, "StartPrintManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2676
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/print/PrintManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2677
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2680
    :cond_d3e
    const-string v0, "StartAttestationVerificationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2681
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2682
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2684
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.companion_device_setup"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d66

    .line 2685
    const-string v0, "StartCompanionDeviceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2686
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2687
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2702
    :cond_d66
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x11101ae

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_d82

    .line 2703
    const-string v0, "StartVirtualDeviceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2704
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2705
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2708
    :cond_d82
    const-string v0, "StartRestrictionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2709
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2710
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2712
    const-string v0, "StartMediaSessionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2713
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2714
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2716
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_db9

    .line 2717
    const-string v0, "StartHdmiControlService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2718
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2719
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2722
    :cond_db9
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_dc4

    goto :goto_dd3

    .line 2723
    :cond_dc4
    const-string v0, "StartTvInteractiveAppManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2724
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2725
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2728
    :goto_dd3
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_dde

    goto :goto_ded

    .line 2729
    :cond_dde
    const-string v0, "StartTvInputManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2730
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2731
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2734
    :goto_ded
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.tv.tuner"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e06

    .line 2735
    const-string v0, "StartTunerResourceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2736
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2737
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2746
    :cond_e06
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.picture_in_picture"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e1f

    .line 2747
    const-string v0, "StartMediaResourceMonitor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2748
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2749
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2758
    :cond_e1f
    const-string v0, "StartMediaRouterService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2760
    :try_start_e24
    new-instance v5, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v5, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_e29
    .catchall {:try_start_e24 .. :try_end_e29} :catchall_e32

    .line 2761
    :try_start_e29
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e2f
    .catchall {:try_start_e29 .. :try_end_e2f} :catchall_e30

    goto :goto_e3b

    :catchall_e30
    move-exception v0

    goto :goto_e35

    :catchall_e32
    move-exception v0

    move-object/from16 v5, v16

    .line 2763
    :goto_e35
    const-string/jumbo v8, "starting MediaRouterService"

    invoke-virtual {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2765
    :goto_e3b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2767
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.biometrics.face"

    .line 2768
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 2769
    iget-object v8, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.hardware.biometrics.iris"

    .line 2770
    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    .line 2771
    iget-object v11, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v14, "android.hardware.fingerprint"

    .line 2772
    invoke-virtual {v11, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v0, :cond_e6a

    .line 2775
    const-string v0, "StartFaceSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2776
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 2777
    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 2778
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_e6a
    if-eqz v8, :cond_e7b

    .line 2782
    const-string v0, "StartIrisSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2783
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2784
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_e7b
    if-eqz v11, :cond_e8f

    .line 2788
    const-string v0, "StartFingerprintSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2789
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2790
    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2791
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2795
    :cond_e8f
    const-string v0, "StartBiometricService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2796
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2797
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2799
    const-string v0, "StartAuthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2800
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2801
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2805
    const-string v0, "StartSecureLockDeviceService.Lifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2806
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2807
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2815
    const-string v0, "StartAuthenticationPolicyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2816
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2817
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2823
    const-string v0, "StartDynamicCodeLoggingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2825
    :try_start_ed0
    invoke-static {v6}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_ed3
    .catchall {:try_start_ed0 .. :try_end_ed3} :catchall_ed4

    goto :goto_edb

    :catchall_ed4
    move-exception v0

    .line 2827
    const-string/jumbo v8, "starting DynamicCodeLoggingService"

    invoke-virtual {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2829
    :goto_edb
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2833
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2835
    :try_start_ee3
    invoke-static {v6}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_ee6
    .catchall {:try_start_ee3 .. :try_end_ee6} :catchall_ee7

    goto :goto_eed

    :catchall_ee7
    move-exception v0

    .line 2837
    const-string v8, "StartPruneInstantAppsJobService"

    invoke-virtual {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2839
    :goto_eed
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2842
    const-string v0, "StartSelinuxAuditLogsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2844
    :try_start_ef5
    invoke-static {v6}, Lcom/android/server/selinux/SelinuxAuditLogsService;->schedule(Landroid/content/Context;)V
    :try_end_ef8
    .catchall {:try_start_ef5 .. :try_end_ef8} :catchall_ef9

    goto :goto_f00

    :catchall_ef9
    move-exception v0

    .line 2846
    const-string/jumbo v8, "starting SelinuxAuditLogsService"

    invoke-virtual {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2848
    :goto_f00
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2851
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2852
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2853
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2855
    const-string v0, "StartLauncherAppsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2856
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2857
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2859
    const-string v0, "StartCrossProfileAppsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2860
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2861
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2863
    const-string v0, "StartPeopleService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2864
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/people/PeopleService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2865
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2867
    const-string v0, "StartMediaMetricsManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2868
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2869
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2872
    const-string v0, "StartLineageHardwareService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2873
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lineage/LineageHardwareService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2874
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2877
    const-string v0, "StartLiveDisplayService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2878
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2879
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2882
    const-string v0, "StartCustomDeviceConfigService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2883
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/custom/CustomDeviceConfigService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2884
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2886
    const-string/jumbo v0, "ro.system_settings.service.backgound_install_control_enabled"

    const/4 v8, 0x1

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f94

    .line 2888
    const-string v0, "StartBackgroundInstallControlService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2889
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2890
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2893
    :cond_f94
    const-string v0, "StartHealthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2894
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lineage/health/HealthInterfaceService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2895
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2898
    const-string v0, "AttestationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2899
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/custom/AttestationService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2900
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    move-object v14, v3

    move-object v3, v13

    move-object/from16 v11, v18

    move-object/from16 v13, v19

    .line 2903
    :goto_fb8
    const-string v0, "StartMediaProjectionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2904
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2905
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2973
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.slices_disabled"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fe0

    .line 2974
    const-string v0, "StartSliceManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2975
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/slice/SliceManagerService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2976
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2986
    :cond_fe0
    const-string v0, "StartStatsCompanion"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2987
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.stats.StatsCompanion$Lifecycle"

    move-object/from16 v18, v3

    const-string v3, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    invoke-virtual {v0, v8, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2989
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2992
    const-string v0, "StartRebootReadinessManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2993
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

    const-string v8, "/apex/com.android.scheduling/javalib/service-scheduling.jar"

    invoke-virtual {v0, v3, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2995
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2998
    const-string v0, "StartStatsPullAtomService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2999
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3000
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3003
    const-string v0, "StatsBootstrapAtomService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3004
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3005
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3008
    const-string v0, "StartIncidentCompanionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3009
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3010
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3013
    const-string v0, "StarSdkSandboxManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3014
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3015
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3021
    const-string v0, "StartAdServicesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3023
    :try_start_1045
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_104c
    .catchall {:try_start_1045 .. :try_end_104c} :catchall_1479

    .line 3025
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3032
    const-string/jumbo v0, "ro.system_settings.service.odp_enabled"

    const/4 v8, 0x1

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1068

    .line 3033
    const-string v0, "StartOnDevicePersonalizationSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3034
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3035
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3039
    :cond_1068
    const-string v0, "StartProfilingCompanion"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3040
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "android.os.profiling.ProfilingService$Lifecycle"

    const-string v8, "/apex/com.android.profiling/javalib/service-profiling.jar"

    invoke-virtual {v0, v3, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3042
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3045
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/Flags;->anomalyDetectorCore()Z

    move-result v0

    if-eqz v0, :cond_10a5

    .line 3046
    const-string v0, "StartAnomalyDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3047
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.os.profiling.anomaly.AnomalyDetectorService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3048
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3050
    const-string v0, "StartSignalCollectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3052
    :try_start_1093
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.signalcollector"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_109a
    .catchall {:try_start_1093 .. :try_end_109a} :catchall_109b

    goto :goto_10a2

    :catchall_109b
    move-exception v0

    .line 3054
    const-string/jumbo v3, "starting SignalCollectorService"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3056
    :goto_10a2
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3072
    :cond_10a5
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_10b0

    .line 3073
    const-string v0, "SystemServer"

    const-string v3, "UprobeStatsService disabled by flag"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10b0
    if-eqz v7, :cond_10b7

    .line 3077
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 3080
    :cond_10b7
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10d7

    .line 3082
    const-string v0, "StartMmsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3083
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/MmsServiceBroker;

    .line 3084
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    move-object/from16 v17, v0

    :goto_10d5
    const/4 v8, 0x1

    goto :goto_10da

    :cond_10d7
    move-object/from16 v17, v16

    goto :goto_10d5

    .line 3087
    :goto_10da
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.autofill"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10f3

    .line 3088
    const-string v0, "StartAutoFillService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3089
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3090
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3093
    :cond_10f3
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.credentials"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_111e

    .line 3094
    const-string v0, "credential_manager"

    const-string v3, "enable_credential_manager"

    .line 3095
    invoke-static {v0, v3, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1117

    .line 3098
    const-string v0, "StartCredentialManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3099
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3100
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_111e

    .line 3102
    :cond_1117
    const-string v0, "SystemServer"

    const-string v3, "CredentialManager disabled."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_111e
    :goto_111e
    const v0, 0x1040279

    .line 3107
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1137

    .line 3108
    const-string v0, "StartTranslationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3109
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3110
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_113e

    .line 3112
    :cond_1137
    const-string v0, "SystemServer"

    const-string v3, "TranslationService not defined by OEM"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    :goto_113e
    const-string v0, "StartClipboardService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3117
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3118
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3122
    const-string v0, "StartSelectionToolbarManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3123
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3124
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3127
    const-string v0, "AppServiceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3128
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3129
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3132
    const-string/jumbo v0, "startTracingServiceProxy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3133
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/tracing/TracingServiceProxy;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3134
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3138
    const-string v0, "StartDynamicInstrumentationManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3139
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3140
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3145
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v18, :cond_119c

    .line 3148
    :try_start_1191
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_1194
    .catchall {:try_start_1191 .. :try_end_1194} :catchall_1195

    goto :goto_119c

    :catchall_1195
    move-exception v0

    .line 3150
    const-string/jumbo v3, "making Lock Settings Service ready"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3153
    :cond_119c
    :goto_119c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3156
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3157
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x1e0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3158
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3162
    iget-object v0, v1, Lcom/android/server/SystemServer;->mUserManagerService:Lcom/android/server/pm/UserManagerService;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v18, v4

    iget-object v4, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v5

    iget-object v5, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 3163
    invoke-static {v0, v3, v8, v4, v5}, Lcom/android/server/pm/HsumBootUserInitializer;->createInstance(Lcom/android/server/pm/UserManagerService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/android/server/pm/HsumBootUserInitializer;

    move-result-object v3

    if-eqz v3, :cond_11e0

    .line 3166
    const-string v0, "HsumBootUserInitializer.init"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3167
    invoke-virtual {v3, v2}, Lcom/android/server/pm/HsumBootUserInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3168
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3169
    invoke-static {}, Lcom/android/server/pm/HsumBootUserInitializer;->getDumpable()Landroid/util/Dumpable;

    move-result-object v0

    if-eqz v0, :cond_11d9

    .line 3171
    iget-object v4, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v4, v0}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    goto :goto_11e0

    .line 3174
    :cond_11d9
    const-string v0, "SystemServer"

    const-string v4, "HsumBootUserInitializer doesn\'t have a dumpable"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    :cond_11e0
    :goto_11e0
    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_11f9

    .line 3180
    const-string v0, "CommunalProfileInitializer.init"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3181
    new-instance v0, Lcom/android/server/CommunalProfileInitializer;

    iget-object v4, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v4}, Lcom/android/server/CommunalProfileInitializer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 3183
    invoke-virtual {v0, v2}, Lcom/android/server/CommunalProfileInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3184
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_1204

    .line 3186
    :cond_11f9
    const-string v0, "CommunalProfileInitializer.removeCommunalProfileIfPresent"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3187
    invoke-static {}, Lcom/android/server/CommunalProfileInitializer;->removeCommunalProfileIfPresent()V

    .line 3188
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3191
    :goto_1204
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3192
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3193
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3195
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3197
    :try_start_1218
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_121b
    .catchall {:try_start_1218 .. :try_end_121b} :catchall_121c

    goto :goto_1223

    :catchall_121c
    move-exception v0

    .line 3199
    const-string/jumbo v4, "making Window Manager Service ready"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3201
    :goto_1223
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3203
    const-string v0, "RegisterLogMteState"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3205
    :try_start_122b
    invoke-static {v6}, Lcom/android/server/LogMteState;->register(Landroid/content/Context;)V
    :try_end_122e
    .catchall {:try_start_122b .. :try_end_122e} :catchall_122f

    goto :goto_1235

    :catchall_122f
    move-exception v0

    .line 3207
    const-string v4, "RegisterLogMteState"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3209
    :goto_1235
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3212
    const-class v4, Lcom/android/server/SystemService;

    monitor-enter v4

    .line 3213
    :try_start_123b
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-eqz v0, :cond_124a

    .line 3214
    iget-object v5, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    .line 3215
    sput-object v16, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    goto :goto_124a

    :catchall_1247
    move-exception v0

    goto/16 :goto_1477

    .line 3217
    :cond_124a
    :goto_124a
    monitor-exit v4
    :try_end_124b
    .catchall {:try_start_123b .. :try_end_124b} :catchall_1247

    if-eqz v7, :cond_1252

    .line 3220
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_1252
    const/4 v4, 0x0

    .line 3226
    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3227
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3228
    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3229
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3232
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 3233
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_1277

    .line 3234
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 3238
    :cond_1277
    const-string v0, "StartPermissionPolicyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3239
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3240
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3242
    const-string v0, "MakePackageManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3243
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 3244
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3247
    const-string v0, "StartCrashRecoveryModule"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3248
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/crashrecovery/CrashRecoveryAdaptor;->initializeCrashrecoveryModuleService(Lcom/android/server/SystemServiceManager;)V

    .line 3249
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3258
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3261
    :try_start_12a5
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(Z)V
    :try_end_12aa
    .catchall {:try_start_12a5 .. :try_end_12aa} :catchall_12ab

    goto :goto_12b2

    :catchall_12ab
    move-exception v0

    .line 3263
    const-string/jumbo v4, "making Display Manager Service ready"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3265
    :goto_12b2
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3267
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 3270
    const-string v0, "StartDeviceSpecificServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3271
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1070053

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 3273
    array-length v5, v4

    const/4 v8, 0x0

    :goto_12ce
    if-ge v8, v5, :cond_1316

    move-object/from16 v16, v3

    aget-object v3, v4, v8

    .line 3274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v4

    const-string v4, "StartDeviceSpecificServices "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3276
    :try_start_12ea
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_12ef
    .catchall {:try_start_12ea .. :try_end_12ef} :catchall_12f2

    move/from16 v21, v5

    goto :goto_130a

    :catchall_12f2
    move-exception v0

    .line 3278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v5

    const-string/jumbo v5, "starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3280
    :goto_130a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v20

    move/from16 v5, v21

    goto :goto_12ce

    :cond_1316
    move-object/from16 v16, v3

    .line 3282
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3285
    const-string v0, "GameManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3286
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/app/GameManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3287
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3292
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.uwb"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1347

    .line 3293
    const-string v0, "UwbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3294
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.uwb.UwbService"

    const-string v4, "/apex/com.android.uwb/javalib/service-uwb.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3295
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3298
    :cond_1347
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->rangingStackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1388

    .line 3299
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.uwb"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1377

    .line 3300
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.aware"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1377

    .line 3302
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->rangingCsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1388

    .line 3303
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1388

    .line 3305
    :cond_1377
    const-string v0, "RangingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3306
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ranging.RangingService"

    const-string v4, "/apex/com.android.uwb/javalib/service-ranging.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3308
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3312
    :cond_1388
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3313
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x208

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3314
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3316
    const-string v0, "StartSafetyCenterService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3317
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.safetycenter.SafetyCenterService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3318
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3320
    const-string v0, "AppSearchModule"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3321
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.appsearch.AppSearchModule$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3322
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3324
    const-string/jumbo v0, "ro.config.isolated_compilation_enabled"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13ce

    .line 3325
    const-string v0, "IsolatedCompilationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3326
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.compos.IsolatedCompilationService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3327
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3330
    :cond_13ce
    const-string v0, "StartMediaCommunicationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3331
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.media.MediaCommunicationService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3332
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3334
    const-string v0, "AppCompatOverridesService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3335
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3336
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3338
    const-string v0, "HealthConnectManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3339
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.healthconnect.HealthConnectManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3340
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3342
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.device_lock"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1416

    .line 3343
    const-string v0, "DeviceLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3344
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.devicelock.DeviceLockService"

    const-string v4, "/apex/com.android.devicelock/javalib/service-devicelock.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3346
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3351
    :cond_1416
    const-string v0, "StartSensitiveContentProtectionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3352
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3353
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3367
    const-string v0, "connectivity"

    .line 3368
    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 3375
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;

    move-object v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v23, v4

    move-object/from16 v22, v10

    move-object v4, v12

    move-object/from16 v12, v16

    move-object/from16 v10, v18

    move-object/from16 v16, v19

    invoke-direct/range {v0 .. v17}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/pm/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v3, v23

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3624
    const-string v0, "LockSettingsThirdPartyAppsStarted"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3625
    const-class v0, Lcom/android/server/locksettings/LockSettingsInternal;

    .line 3626
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsInternal;

    if-eqz v0, :cond_145b

    .line 3628
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsInternal;->onThirdPartyAppsStarted()V

    .line 3630
    :cond_145b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3632
    const-string v0, "StartSystemUI"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v3, v22

    .line 3634
    :try_start_1465
    invoke-static {v6, v3}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1468
    .catchall {:try_start_1465 .. :try_end_1468} :catchall_1469

    goto :goto_1470

    :catchall_1469
    move-exception v0

    .line 3636
    const-string/jumbo v3, "starting System UI"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3638
    :goto_1470
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3640
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    .line 3217
    :goto_1477
    :try_start_1477
    monitor-exit v4
    :try_end_1478
    .catchall {:try_start_1477 .. :try_end_1478} :catchall_1247

    throw v0

    :catchall_1479
    move-exception v0

    .line 3025
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3026
    throw v0

    :catchall_147e
    move-exception v0

    .line 1991
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    const-string v2, "dexopt"

    invoke-virtual {v1, v2}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1992
    throw v0

    :catchall_1489
    move-exception v0

    .line 1858
    const-string v1, "System"

    const-string v2, "******************************************"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    const-string v1, "System"

    const-string v2, "************ Failure starting core service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    throw v0
.end method

.method public final startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 3

    .line 3770
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 3771
    const-string p0, "SystemServer"

    const-string p1, "RotationResolverService is not configured on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3775
    :cond_e
    const-string p1, "StartRotationResolverService"

    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3776
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class p1, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3777
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4

    const v0, 0x1040277

    .line 3698
    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_11

    .line 3699
    const-string p0, "SystemServer"

    const-string p1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3703
    :cond_11
    const-string p1, "StartSystemCaptionsManagerService"

    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3704
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class p1, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3705
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startSystemConfigInit(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 3

    .line 1159
    const-string p0, "SystemServer"

    const-string v0, "Reading configuration..."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const-string p0, "ReadingSystemConfig"

    invoke-virtual {p1, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1162
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1163
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 3

    .line 3710
    const-string p1, "StartTextToSpeechManagerService"

    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3711
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class p1, Lcom/android/server/texttospeech/TextToSpeechManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3712
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 3

    .line 3782
    const-string/jumbo v0, "startWearableSensingService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3783
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3784
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final updateWatchdogTimeout(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 3

    .line 3686
    const-string v0, "UpdateWatchdogTimeout"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3687
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->registerSettingsObserver(Landroid/content/Context;)V

    .line 3688
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method
