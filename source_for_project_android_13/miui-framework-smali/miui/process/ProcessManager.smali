.class public Lmiui/process/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# static fields
.field public static final blacklist AI_MAX_ADJ:I

.field public static final blacklist AI_MAX_PROCESS_STATE:I = 0xd

.field public static final blacklist ALL_ACTIVE:I = 0x3

.field public static final blacklist AUDIO_ACTIVE:I = 0x1

.field public static blacklist BLE_TYPE_SOCKET:I = 0x0

.field public static final whitelist DEBUG:Z = true

.field public static final blacklist DEFAULT_MAX_ADJ:I

.field public static final blacklist DEFAULT_PROCESS_STATE:I = 0x14

.field public static final blacklist FLAG_START_PROCESS_AI:I = 0x1

.field public static final blacklist FLAG_START_PROCESS_FAST_RESTART:I = 0x2

.field public static final blacklist GPS_ACTIVE:I = 0x2

.field public static final blacklist LOCKED_MAX_ADJ:I

.field public static final blacklist LOCKED_MAX_PROCESS_STATE:I

.field public static final blacklist MIUI_AI_MODE_STACK_ID:I = 0x7

.field public static final blacklist PROTECT_MAX_ADJ:I

.field public static final blacklist PROTECT_MAX_PROCESS_STATE:I = 0xd

.field public static final blacklist SEC_PROTECT_MAX_ADJ:I

.field public static final blacklist SEC_PROTECT_MAX_PROCESS_STATE:I

.field public static final whitelist SERVICE_NAME:Ljava/lang/String; = "ProcessManager"

.field private static final blacklist SINGLE_COUNT:I = 0x1

.field public static final whitelist TAG:Ljava/lang/String; = "ProcessManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 45
    sget-boolean v0, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_ENABLED:Z

    const/16 v1, 0x190

    if-eqz v0, :cond_9

    .line 46
    const/16 v0, 0x2bd

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    sput v0, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    .line 49
    sget-boolean v0, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_ENABLED:Z

    const/16 v2, 0xd

    if-eqz v0, :cond_15

    .line 50
    const/16 v0, 0xa

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    sput v0, Lmiui/process/ProcessManager;->LOCKED_MAX_PROCESS_STATE:I

    .line 56
    sget-boolean v0, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_ENABLED:Z

    if-eqz v0, :cond_1f

    .line 57
    const/16 v0, 0x258

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    sput v0, Lmiui/process/ProcessManager;->SEC_PROTECT_MAX_ADJ:I

    .line 60
    sget-boolean v0, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_ENABLED:Z

    if-eqz v0, :cond_29

    .line 61
    const/16 v2, 0xe

    goto :goto_2a

    :cond_29
    nop

    :goto_2a
    sput v2, Lmiui/process/ProcessManager;->SEC_PROTECT_MAX_PROCESS_STATE:I

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    const/16 v3, 0x17

    if-le v0, v3, :cond_35

    move v0, v1

    goto :goto_36

    :cond_35
    move v0, v2

    :goto_36
    sput v0, Lmiui/process/ProcessManager;->AI_MAX_ADJ:I

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v2

    :goto_3e
    sput v1, Lmiui/process/ProcessManager;->PROTECT_MAX_ADJ:I

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_47

    const/16 v0, 0x3e9

    goto :goto_49

    :cond_47
    const/16 v0, 0x10

    :goto_49
    sput v0, Lmiui/process/ProcessManager;->DEFAULT_MAX_ADJ:I

    .line 102
    const/4 v0, 0x6

    sput v0, Lmiui/process/ProcessManager;->BLE_TYPE_SOCKET:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;)V
    .registers 3
    .param p0, "applicationThread"    # Lmiui/process/IMiuiApplicationThread;

    .line 339
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 340
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_d

    .line 341
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lmiui/process/IProcessManager;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 345
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_d
    goto :goto_12

    .line 343
    :catch_e
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 346
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public static blacklist adjBoost(Ljava/lang/String;IJI)V
    .registers 12
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "targetAdj"    # I
    .param p2, "timeout"    # J
    .param p4, "userId"    # I

    .line 255
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 256
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_e

    .line 257
    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lmiui/process/IProcessManager;->adjBoost(Ljava/lang/String;IJI)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 261
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_e
    goto :goto_13

    .line 259
    :catch_f
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public static blacklist beginSchedThreads([IJ)V
    .registers 5
    .param p0, "tids"    # [I
    .param p1, "duration"    # J

    .line 509
    const/4 v0, -0x1

    const/4 v1, 0x1

    :try_start_2
    invoke-static {p0, p1, p2, v0, v1}, Lmiui/process/ProcessManager;->beginSchedThreads([IJII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 512
    goto :goto_a

    .line 510
    :catch_6
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 513
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method public static blacklist beginSchedThreads([IJI)V
    .registers 5
    .param p0, "tids"    # [I
    .param p1, "duration"    # J
    .param p3, "mode"    # I

    .line 517
    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0, p1, p2, v0, p3}, Lmiui/process/ProcessManager;->beginSchedThreads([IJII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    .line 520
    goto :goto_9

    .line 518
    :catch_5
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-void
.end method

.method private static blacklist beginSchedThreads([IJII)V
    .registers 11
    .param p0, "tids"    # [I
    .param p1, "duration"    # J
    .param p3, "pid"    # I
    .param p4, "mode"    # I

    .line 525
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lmiui/process/IProcessManager;->beginSchedThreads([IJII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 528
    goto :goto_10

    .line 526
    :catch_c
    move-exception v0

    .line 527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 529
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public static blacklist boostCameraByThreshold(J)V
    .registers 5
    .param p0, "memThreshold"    # J

    .line 474
    :try_start_0
    const-string v0, "ProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boostCameraByThreshold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/process/IProcessManager;->boostCameraByThreshold(J)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 478
    goto :goto_24

    .line 476
    :catch_20
    move-exception v0

    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 479
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public static blacklist enableHomeSchedBoost(Z)V
    .registers 2
    .param p0, "enable"    # Z

    .line 501
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->enableHomeSchedBoost(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 504
    goto :goto_c

    .line 502
    :catch_8
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public static blacklist getActiveUidInfo(I)Ljava/util/List;
    .registers 3
    .param p0, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/process/ActiveUidInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 466
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_b

    .line 467
    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->getActiveUidInfo(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 469
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;
    .registers 3

    .line 349
    const/4 v0, 0x0

    .line 351
    .local v0, "applicationThread":Lmiui/process/IMiuiApplicationThread;
    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    .line 352
    .local v1, "pm":Lmiui/process/IProcessManager;
    if-eqz v1, :cond_c

    .line 353
    invoke-interface {v1}, Lmiui/process/IProcessManager;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v2

    .line 357
    .end local v1    # "pm":Lmiui/process/IProcessManager;
    :cond_c
    goto :goto_11

    .line 355
    :catch_d
    move-exception v1

    .line 356
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 358
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_11
    return-object v0
.end method

.method public static blacklist getForegroundInfo()Lmiui/process/ForegroundInfo;
    .registers 3

    .line 325
    const/4 v0, 0x0

    .line 327
    .local v0, "foregroundInfo":Lmiui/process/ForegroundInfo;
    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    .line 328
    .local v1, "pm":Lmiui/process/IProcessManager;
    if-eqz v1, :cond_c

    .line 329
    invoke-interface {v1}, Lmiui/process/IProcessManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v2

    .line 333
    .end local v1    # "pm":Lmiui/process/IProcessManager;
    :cond_c
    goto :goto_11

    .line 331
    :catch_d
    move-exception v1

    .line 332
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 334
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_11
    return-object v0
.end method

.method public static blacklist getLockedApplication(I)Ljava/util/List;
    .registers 3
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 132
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_b

    .line 133
    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->getLockedApplication(I)Ljava/util/List;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 137
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_b
    goto :goto_10

    .line 135
    :catch_c
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 138
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getRenderThreadTidByPid(I)I
    .registers 4
    .param p0, "tid"    # I

    .line 559
    const/4 v0, 0x0

    .line 561
    .local v0, "renderThreadTid":I
    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    .line 562
    .local v1, "pm":Lmiui/process/IProcessManager;
    if-eqz v1, :cond_c

    .line 563
    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->getRenderThreadTidByPid(I)I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 567
    .end local v1    # "pm":Lmiui/process/IProcessManager;
    :cond_c
    goto :goto_11

    .line 565
    :catch_d
    move-exception v1

    .line 566
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 568
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_11
    return v0
.end method

.method public static blacklist getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 12
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v6

    .line 427
    .local v6, "pm":Lmiui/process/IProcessManager;
    if-eqz v6, :cond_11

    .line 428
    move-object v0, v6

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lmiui/process/IProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 430
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getRunningProcessInfoByPackageName(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v0, p0, v1, v0}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRunningProcessInfoByPid(I)Lmiui/process/RunningProcessInfo;
    .registers 4
    .param p0, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v0}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 387
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/RunningProcessInfo;>;"
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 388
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/process/RunningProcessInfo;

    return-object v1

    .line 390
    :cond_16
    return-object v1
.end method

.method public static blacklist getRunningProcessInfoByProcessName(Ljava/lang/String;)Lmiui/process/RunningProcessInfo;
    .registers 4
    .param p0, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v0, v1, p0, v0}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 406
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/RunningProcessInfo;>;"
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 407
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/process/RunningProcessInfo;

    return-object v1

    .line 409
    :cond_16
    return-object v1
.end method

.method public static blacklist getRunningProcessInfoByUid(I)Ljava/util/List;
    .registers 3
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1, v0}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isLockedApplication(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 143
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 144
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_b

    .line 145
    invoke-interface {v0, p0, p1}, Lmiui/process/IProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 149
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_b
    goto :goto_10

    .line 147
    :catch_c
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist kill(Lmiui/process/ProcessConfig;)Z
    .registers 4
    .param p0, "config"    # Lmiui/process/ProcessConfig;

    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "success":Z
    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    .line 108
    .local v1, "pm":Lmiui/process/IProcessManager;
    if-eqz v1, :cond_c

    .line 109
    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 113
    .end local v1    # "pm":Lmiui/process/IProcessManager;
    :cond_c
    goto :goto_11

    .line 111
    :catch_d
    move-exception v1

    .line 112
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 114
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_11
    return v0
.end method

.method public static blacklist notifyBluetoothEvent(ZIIILjava/lang/String;I)V
    .registers 14
    .param p0, "isConnect"    # Z
    .param p1, "bleType"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "bleData"    # I

    .line 548
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 549
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_15

    .line 550
    if-nez p4, :cond_b

    const-string v1, ""

    move-object p4, v1

    .line 551
    :cond_b
    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lmiui/process/IProcessManager;->notifyBluetoothEvent(ZIIILjava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 555
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_15
    goto :goto_1a

    .line 553
    :catch_16
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 556
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method public static blacklist notifyCameraForegroundState(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4
    .param p0, "cameraId"    # Ljava/lang/String;
    .param p1, "isForeground"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .line 436
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 437
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_9

    .line 438
    invoke-interface {v0, p0, p1, p2}, Lmiui/process/IProcessManager;->notifyCameraForegroundState(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 442
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_9
    goto :goto_e

    .line 440
    :catch_a
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public static blacklist notifyCameraPostProcessState()V
    .registers 1

    .line 448
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 449
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_9

    .line 450
    invoke-interface {v0}, Lmiui/process/IProcessManager;->notifyCameraPostProcessState()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 454
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_9
    goto :goto_e

    .line 452
    :catch_a
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 455
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public static blacklist protectCurrentProcess(Z)Z
    .registers 4
    .param p0, "isProtected"    # Z

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "success":Z
    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lmiui/process/IProcessManager;->protectCurrentProcess(ZI)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move v0, v1

    .line 236
    goto :goto_10

    .line 234
    :catch_c
    move-exception v1

    .line 235
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 237
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_10
    return v0
.end method

.method public static blacklist protectCurrentProcess(ZI)Z
    .registers 5
    .param p0, "isProtected"    # Z
    .param p1, "timeout"    # I

    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, "success":Z
    :try_start_1
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    .line 244
    .local v1, "pm":Lmiui/process/IProcessManager;
    if-eqz v1, :cond_c

    .line 245
    invoke-interface {v1, p0, p1}, Lmiui/process/IProcessManager;->protectCurrentProcess(ZI)Z

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 249
    .end local v1    # "pm":Lmiui/process/IProcessManager;
    :cond_c
    goto :goto_11

    .line 247
    :catch_d
    move-exception v1

    .line 248
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 250
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_11
    return v0
.end method

.method public static blacklist reclaimMemoryForCamera(J)V
    .registers 5
    .param p0, "modeValue"    # J

    .line 492
    :try_start_0
    const-string v0, "ProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reclaimMemoryForCamera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    long-to-int v1, p0

    invoke-interface {v0, v1}, Lmiui/process/IProcessManager;->reclaimMemoryForCamera(I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_21

    .line 496
    goto :goto_25

    .line 494
    :catch_21
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 497
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method public static whitelist registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    .registers 4
    .param p2, "listener"    # Lmiui/process/IActivityChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/process/IActivityChangeListener;",
            ")V"
        }
    .end annotation

    .line 364
    .local p0, "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "targetActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 365
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_9

    .line 366
    invoke-interface {v0, p0, p1, p2}, Lmiui/process/IProcessManager;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 370
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_9
    goto :goto_e

    .line 368
    :catch_a
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 371
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public static whitelist registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 2
    .param p0, "listener"    # Lmiui/process/IForegroundInfoListener;

    .line 281
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 282
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_9

    .line 283
    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 287
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_9
    goto :goto_e

    .line 285
    :catch_a
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 288
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public static blacklist registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    .registers 2
    .param p0, "listener"    # Lmiui/process/IForegroundWindowListener;

    .line 303
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 304
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_9

    .line 305
    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 309
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_9
    goto :goto_e

    .line 307
    :catch_a
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 310
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public static blacklist reportGameScene(Landroid/os/Bundle;)V
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 533
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 534
    .local v0, "pm":Lmiui/process/IProcessManager;
    const-string v1, "packageName"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "gameScene"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 536
    .local v2, "gameScene":I
    const-string v3, "appState"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 537
    .local v3, "appState":I
    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    .line 538
    invoke-interface {v0, v1, v2, v3}, Lmiui/process/IProcessManager;->reportGameScene(Ljava/lang/String;II)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 542
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "gameScene":I
    .end local v3    # "appState":I
    :cond_1d
    goto :goto_22

    .line 540
    :catch_1e
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 543
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_22
    return-void
.end method

.method public static blacklist startPreloadProcesses(Ljava/util/List;IZII)I
    .registers 12
    .param p1, "startProcessCount"    # I
    .param p2, "ignoreMemory"    # Z
    .param p3, "userId"    # I
    .param p4, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/process/PreloadProcessData;",
            ">;IZII)I"
        }
    .end annotation

    .line 212
    .local p0, "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    const/4 v0, 0x0

    const-string v1, "ProcessManager"

    if-eqz p0, :cond_30

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_30

    .line 216
    :cond_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, p1, :cond_2a

    if-gtz p1, :cond_15

    goto :goto_2a

    .line 220
    :cond_15
    const/4 v0, 0x0

    .line 222
    .local v0, "result":I
    :try_start_16
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lmiui/process/IProcessManager;->startProcesses(Ljava/util/List;IZII)I

    move-result v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_25

    move v0, v1

    .line 226
    goto :goto_29

    .line 224
    :catch_25
    move-exception v1

    .line 225
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 227
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_29
    return v0

    .line 217
    .end local v0    # "result":I
    :cond_2a
    :goto_2a
    const-string v2, "illegal start number!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v0

    .line 213
    :cond_30
    :goto_30
    const-string v2, "dataList cannot be null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v0
.end method

.method public static blacklist startProcess(Ljava/lang/String;ZII)Z
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "ignoreMemory"    # Z
    .param p2, "userId"    # I
    .param p3, "flag"    # I

    .line 170
    new-instance v0, Lmiui/process/PreloadProcessData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lmiui/process/PreloadProcessData;-><init>(Ljava/lang/String;ZLandroid/content/Intent;)V

    .line 171
    .local v0, "data":Lmiui/process/PreloadProcessData;
    invoke-static {v0, p1, p2, p3}, Lmiui/process/ProcessManager;->startProcess(Lmiui/process/PreloadProcessData;ZII)Z

    move-result v1

    return v1
.end method

.method public static blacklist startProcess(Lmiui/process/PreloadProcessData;II)Z
    .registers 4
    .param p0, "data"    # Lmiui/process/PreloadProcessData;
    .param p1, "userId"    # I
    .param p2, "flag"    # I

    .line 165
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lmiui/process/ProcessManager;->startProcess(Lmiui/process/PreloadProcessData;ZII)Z

    move-result v0

    return v0
.end method

.method public static blacklist startProcess(Lmiui/process/PreloadProcessData;ZII)Z
    .registers 8
    .param p0, "data"    # Lmiui/process/PreloadProcessData;
    .param p1, "ignoreMemory"    # Z
    .param p2, "userId"    # I
    .param p3, "flag"    # I

    .line 176
    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_1f

    .line 180
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-static {v1, v2, p1, p2, p3}, Lmiui/process/ProcessManager;->startPreloadProcesses(Ljava/util/List;IZII)I

    move-result v3

    .line 183
    .local v3, "startCount":I
    if-ne v3, v2, :cond_1e

    move v0, v2

    :cond_1e
    return v0

    .line 177
    .end local v1    # "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    .end local v3    # "startCount":I
    :cond_1f
    :goto_1f
    const-string v1, "ProcessManager"

    const-string v2, "preload data and packageName cannot be null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v0
.end method

.method public static blacklist startProcesses(Ljava/util/List;IZII)I
    .registers 11
    .param p1, "startProcessCount"    # I
    .param p2, "ignoreMemory"    # Z
    .param p3, "userId"    # I
    .param p4, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZII)I"
        }
    .end annotation

    .line 188
    .local p0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_33

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_33

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 192
    new-instance v4, Lmiui/process/PreloadProcessData;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v0, v5}, Lmiui/process/PreloadProcessData;-><init>(Ljava/lang/String;ZLandroid/content/Intent;)V

    .line 193
    .local v4, "data":Lmiui/process/PreloadProcessData;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "data":Lmiui/process/PreloadProcessData;
    :cond_2d
    goto :goto_12

    .line 196
    :cond_2e
    invoke-static {v1, p1, p2, p3, p4}, Lmiui/process/ProcessManager;->startPreloadProcesses(Ljava/util/List;IZII)I

    move-result v0

    return v0

    .line 198
    .end local v1    # "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    :cond_33
    return v0
.end method

.method public static whitelist unregisterActivityChanageListener(Lmiui/process/IActivityChangeListener;)V
    .registers 2
    .param p0, "listener"    # Lmiui/process/IActivityChangeListener;

    .line 375
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 376
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_9

    .line 377
    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 381
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_9
    goto :goto_e

    .line 379
    :catch_a
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 382
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public static whitelist unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 2
    .param p0, "listener"    # Lmiui/process/IForegroundInfoListener;

    .line 292
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 293
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_9

    .line 294
    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 298
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_9
    goto :goto_e

    .line 296
    :catch_a
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 299
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public static blacklist unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    .registers 2
    .param p0, "listener"    # Lmiui/process/IForegroundWindowListener;

    .line 314
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 315
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_9

    .line 316
    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 320
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_9
    goto :goto_e

    .line 318
    :catch_a
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 321
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public static blacklist updateApplicationLockedState(Ljava/lang/String;IZ)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "isLocked"    # Z

    .line 120
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 121
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_9

    .line 122
    invoke-interface {v0, p0, p1, p2}, Lmiui/process/IProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 126
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_9
    goto :goto_e

    .line 124
    :catch_a
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public static blacklist updateCameraBoosterCloudData(DLjava/lang/String;)V
    .registers 6
    .param p0, "version"    # D
    .param p2, "jsonStr"    # Ljava/lang/String;

    .line 483
    :try_start_0
    const-string v0, "ProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCameraBoosterCloudData: camera booster version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lmiui/process/IProcessManager;->updateCameraBoosterCloudData(DLjava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 487
    goto :goto_24

    .line 485
    :catch_20
    move-exception v0

    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 488
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public static blacklist updateCloudData(Lmiui/process/ProcessCloudData;)V
    .registers 3
    .param p0, "cloudData"    # Lmiui/process/ProcessCloudData;

    .line 266
    if-eqz p0, :cond_c

    .line 267
    :try_start_2
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 268
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_b

    .line 269
    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->updateCloudData(Lmiui/process/ProcessCloudData;)V

    .line 271
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_b
    goto :goto_13

    .line 272
    :cond_c
    const-string v0, "ProcessManager"

    const-string v1, "cloudData is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    .line 276
    :goto_13
    goto :goto_18

    .line 274
    :catch_14
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method public static blacklist updateConfig(Lmiui/process/ProcessConfig;)V
    .registers 2
    .param p0, "config"    # Lmiui/process/ProcessConfig;

    .line 155
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    .line 156
    .local v0, "pm":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_9

    .line 157
    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->updateConfig(Lmiui/process/ProcessConfig;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 161
    .end local v0    # "pm":Lmiui/process/IProcessManager;
    :cond_9
    goto :goto_e

    .line 159
    :catch_a
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 162
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
