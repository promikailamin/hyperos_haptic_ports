.class public Lcom/android/internal/os/RuntimeInitImpl;
.super Lcom/android/internal/os/RuntimeInitStub;
.source "RuntimeInitImpl.java"


# static fields
.field private static final blacklist OOR_LEAKED_LAYERS:Ljava/lang/String; = "OOR leaked layers in"

.field private static final blacklist TAG:Ljava/lang/String; = "RuntimeInitImpl"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInitStub;-><init>()V

    return-void
.end method

.method private blacklist isSystem_Server(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkn"    # Ljava/lang/String;

    .line 44
    const-string v0, "system_server"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x3e8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 45
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_12
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist getDefaultUserAgent()Ljava/lang/String;
    .registers 5

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 53
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "Dalvik/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, " (Linux; U; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 58
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_24

    move-object v2, v1

    goto :goto_26

    :cond_24
    const-string v2, "1.0"

    :goto_26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v3, "REL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 62
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 63
    .local v2, "model":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_43

    .line 64
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .end local v2    # "model":Ljava/lang/String;
    :cond_43
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 69
    .local v2, "inc_ver":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_53

    .line 70
    const-string v3, " MIUI/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_53
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public blacklist onJE(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .registers 24
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pknName"    # Ljava/lang/String;
    .param p4, "threadName"    # Ljava/lang/String;
    .param p5, "e"    # Ljava/lang/Throwable;
    .param p6, "prefix"    # Ljava/lang/String;
    .param p7, "isSystem"    # Z

    .line 80
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v4, p7

    new-instance v0, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v0, v3}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    move-object v5, v0

    .line 82
    .local v5, "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 83
    .local v6, "now":J
    new-instance v0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;-><init>()V

    move-object v8, v0

    .line 84
    .local v8, "event":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    move/from16 v9, p1

    invoke-virtual {v8, v9}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setPid(I)V

    .line 85
    move-object/from16 v10, p2

    invoke-virtual {v8, v10}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setProcessName(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v8, v2}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setPackageName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v8, v6, v7}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setTimeStamp(J)V

    .line 88
    move-object/from16 v11, p4

    invoke-virtual {v8, v11}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setThreadName(Ljava/lang/String;)V

    .line 89
    move-object/from16 v12, p6

    invoke-virtual {v8, v12}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setPrefix(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v8, v4}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setSystem(Z)V

    .line 91
    iget-object v0, v5, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setStackTrace(Ljava/lang/String;)V

    .line 92
    iget-object v0, v5, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setExceptionClassName(Ljava/lang/String;)V

    .line 93
    iget-object v0, v5, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setExceptionMessage(Ljava/lang/String;)V

    .line 94
    const-string v0, "persist.sys.zygote.start_pid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setZygotePid(Ljava/lang/String;)V

    .line 95
    sget-wide v13, Landroid/os/perfdebug/PerfDebugMonitorImpl;->LAUNCH_TIME_STAMP:J

    sub-long v13, v6, v13

    invoke-virtual {v8, v13, v14}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setAppLifetime(J)V

    .line 96
    invoke-static {}, Lmiui/mqsas/sdk/ApplicationInfoStorage;->getInstance()Lmiui/mqsas/sdk/ApplicationInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/mqsas/sdk/ApplicationInfoStorage;->getIsSystem()Z

    move-result v0

    invoke-virtual {v8, v0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setSystemApp(Z)V

    .line 98
    invoke-static {v8}, Lmiui/mqsas/oom/OOMEventManager;->checkEventAndDumpIfNeeded(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V

    .line 99
    invoke-static {v8}, Lmiui/mqsas/scout/ScoutUtils;->CheckBinderFailException(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V

    .line 102
    if-eqz v4, :cond_ad

    instance-of v0, v3, Landroid/view/Surface$OutOfResourcesException;

    if-eqz v0, :cond_ad

    .line 103
    invoke-static {}, Landroid/view/SurfaceControl;->getLeakedLayers()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "leakedInfo":Ljava/lang/String;
    if-eqz v0, :cond_ad

    .line 105
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OOR leaked layers in--"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 106
    .local v13, "summary":Ljava/lang/String;
    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isLibraryTest()Z

    move-result v14

    if-eqz v14, :cond_aa

    .line 107
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Leaked layers summary ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "RuntimeInitImpl"

    invoke-static {v15, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Landroid/view/SurfaceControlStub;->getInstance()Landroid/view/SurfaceControlStub;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/SurfaceControlStub;->reportOORException(Z)V

    .line 110
    :cond_aa
    invoke-virtual {v8, v13}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setSummary(Ljava/lang/String;)V

    .line 114
    .end local v0    # "leakedInfo":Ljava/lang/String;
    .end local v13    # "summary":Ljava/lang/String;
    :cond_ad
    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isLibraryTest()Z

    move-result v0

    if-nez v0, :cond_f7

    invoke-direct {v1, v2}, Lcom/android/internal/os/RuntimeInitImpl;->isSystem_Server(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 115
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    .line 116
    .local v13, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v14, Lcom/android/internal/os/RuntimeInitImpl$1;

    invoke-direct {v14, v1, v8}, Lcom/android/internal/os/RuntimeInitImpl$1;-><init>(Lcom/android/internal/os/RuntimeInitImpl;Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V

    invoke-direct {v0, v14}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v14, v0

    .line 125
    .local v14, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-interface {v13, v14}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 127
    const-wide/16 v3, 0x4e20

    :try_start_cd
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v3, v4, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d2} :catch_e0
    .catchall {:try_start_cd .. :try_end_d2} :catchall_dd

    .line 133
    :try_start_d2
    invoke-interface {v13}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d5} :catch_d6

    .line 136
    :goto_d5
    goto :goto_eb

    .line 134
    :catch_d6
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 135
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    .end local v0    # "exception":Ljava/lang/Exception;
    goto :goto_eb

    .line 132
    :catchall_dd
    move-exception v0

    move-object v3, v0

    goto :goto_ec

    .line 128
    :catch_e0
    move-exception v0

    .line 129
    .restart local v0    # "exception":Ljava/lang/Exception;
    :try_start_e1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    invoke-static {v8}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->writeEvent(Lmiui/mqsas/sdk/event/ExceptionEvent;)V
    :try_end_e7
    .catchall {:try_start_e1 .. :try_end_e7} :catchall_dd

    .line 133
    .end local v0    # "exception":Ljava/lang/Exception;
    :try_start_e7
    invoke-interface {v13}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ea} :catch_d6

    goto :goto_d5

    .line 138
    .end local v13    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v14    # "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    :goto_eb
    goto :goto_10a

    .line 133
    .restart local v13    # "executor":Ljava/util/concurrent/ExecutorService;
    .restart local v14    # "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    :goto_ec
    :try_start_ec
    invoke-interface {v13}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ef} :catch_f0

    .line 136
    goto :goto_f6

    .line 134
    :catch_f0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 135
    .restart local v0    # "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_f6
    throw v3

    .line 139
    .end local v13    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v14    # "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    :cond_f7
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    invoke-virtual {v0, v8}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z

    move-result v0

    .line 140
    .local v0, "success":Z
    if-nez v0, :cond_10a

    invoke-direct {v1, v2}, Lcom/android/internal/os/RuntimeInitImpl;->isSystem_Server(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 141
    invoke-static {v8}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->writeEvent(Lmiui/mqsas/sdk/event/ExceptionEvent;)V

    .line 144
    .end local v0    # "success":Z
    :cond_10a
    :goto_10a
    return-void
.end method
