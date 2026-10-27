.class public Lmiui/mqsas/sdk/BootEventManager;
.super Ljava/lang/Object;
.source "BootEventManager.java"


# static fields
.field private static final blacklist DELAY_TIME:I = 0x2710

.field private static final blacklist PROP_SYSTEM_SERVER_REBOOT_COUNT:Ljava/lang/String; = "sys.system_server.start_count"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sInstance:Lmiui/mqsas/sdk/BootEventManager;


# instance fields
.field private blacklist bootType:I

.field private blacklist dexoptSysAppCnt:I

.field private blacklist dexoptThirdAppCnt:I

.field private blacklist persistAppCount:I

.field private blacklist phaseAmsReady:J

.field private blacklist phaseBootComplete:J

.field private blacklist phaseBootDexopt:J

.field private blacklist phaseCoreAppDexopt:J

.field private blacklist phasePmsScanEnd:J

.field private blacklist phasePmsScanStart:J

.field private blacklist phaseSystemRun:J

.field private blacklist phaseUIReady:J

.field private blacklist phaseZygotePreload:J

.field private blacklist prebootAppCount:I

.field private blacklist systemAppCount:I

.field private blacklist thirdAppCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lmiui/mqsas/sdk/BootEventManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->bootType:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseSystemRun:J

    .line 45
    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseZygotePreload:J

    .line 47
    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanStart:J

    .line 48
    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanEnd:J

    .line 50
    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootDexopt:J

    .line 52
    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseCoreAppDexopt:J

    .line 54
    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseAmsReady:J

    .line 56
    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseUIReady:J

    .line 58
    iput-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootComplete:J

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->systemAppCount:I

    .line 61
    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->thirdAppCount:I

    .line 62
    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->prebootAppCount:I

    .line 63
    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->persistAppCount:I

    .line 64
    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptSysAppCnt:I

    .line 65
    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptThirdAppCnt:I

    .line 75
    return-void
.end method

.method private static blacklist createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;
    .registers 8
    .param p0, "obj"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 140
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_9

    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_9
    move-object p0, v0

    .line 142
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_20} :catch_21

    .line 145
    goto :goto_44

    .line 143
    :catch_21
    move-exception v0

    .line 144
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create jason object exception for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_44
    return-object p0
.end method

.method private blacklist getBootEvent()Lmiui/mqsas/sdk/event/BootEvent;
    .registers 7

    .line 107
    new-instance v0, Lmiui/mqsas/sdk/event/BootEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/BootEvent;-><init>()V

    .line 108
    .local v0, "event":Lmiui/mqsas/sdk/event/BootEvent;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setType(I)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/BootEvent;->setTimeStamp(J)V

    .line 110
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootType()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setBootType(I)V

    .line 111
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getSystemRun()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodSystemRun(J)V

    .line 112
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanStart()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 113
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 112
    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodPmsScan(J)V

    .line 114
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodDexopt(J)V

    .line 115
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 116
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 115
    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodAmsReady(J)V

    .line 117
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getUIReady()J

    move-result-wide v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodUIReady(J)V

    .line 118
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootComplete()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodBootComplete(J)V

    .line 120
    nop

    .line 121
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getZygotePreload()J

    move-result-wide v1

    const/4 v3, 0x0

    const-string v4, "zygotePreload"

    invoke-static {v3, v4, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailSystemRun(Ljava/lang/String;)V

    .line 122
    nop

    .line 124
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getSystemAppCount()I

    move-result v1

    int-to-long v1, v1

    const-string v4, "sysAppCnt"

    invoke-static {v3, v4, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 126
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getThirdAppCount()I

    move-result v2

    int-to-long v4, v2

    .line 123
    const-string v2, "thirdAppCnt"

    invoke-static {v1, v2, v4, v5}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailPmsScan(Ljava/lang/String;)V

    .line 127
    nop

    .line 129
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getDexoptSystemAppCount()I

    move-result v1

    int-to-long v1, v1

    const-string v4, "optSysAppCnt"

    invoke-static {v3, v4, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getDexoptThirdAppCount()I

    move-result v2

    int-to-long v4, v2

    .line 128
    const-string v2, "optThirdAppCnt"

    invoke-static {v1, v2, v4, v5}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailDexopt(Ljava/lang/String;)V

    .line 132
    nop

    .line 133
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPrebootAppCount()I

    move-result v1

    int-to-long v1, v1

    const-string v4, "prebootAppCnt"

    invoke-static {v3, v4, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailAmsReady(Ljava/lang/String;)V

    .line 134
    nop

    .line 135
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPersistAppCount()I

    move-result v1

    int-to-long v1, v1

    const-string v4, "persistAppCnt"

    invoke-static {v3, v4, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailUIReady(Ljava/lang/String;)V

    .line 136
    return-object v0
.end method

.method public static declared-synchronized blacklist getInstance()Lmiui/mqsas/sdk/BootEventManager;
    .registers 2

    const-class v0, Lmiui/mqsas/sdk/BootEventManager;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;

    if-nez v1, :cond_e

    .line 69
    new-instance v1, Lmiui/mqsas/sdk/BootEventManager;

    invoke-direct {v1}, Lmiui/mqsas/sdk/BootEventManager;-><init>()V

    sput-object v1, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;

    .line 71
    :cond_e
    sget-object v1, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 67
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic blacklist lambda$reportBootEvent$0(Lmiui/mqsas/sdk/event/BootEvent;)V
    .registers 3
    .param p0, "event"    # Lmiui/mqsas/sdk/event/BootEvent;

    .line 101
    sget-object v0, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    const-string v1, "Begin to report boot event"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V

    .line 103
    return-void
.end method

.method public static blacklist reportBootEvent()V
    .registers 7

    .line 78
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    .line 79
    .local v0, "manager":Lmiui/mqsas/sdk/BootEventManager;
    sget-object v1, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "systemRun:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getSystemRun()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",zygotePreload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getZygotePreload()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",pmsScan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 81
    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v3

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanStart()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 82
    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",bootDexopt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 83
    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",coreAppDexopt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 84
    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",amsReady:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 85
    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v3

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 86
    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",UIReady:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getUIReady()J

    move-result-wide v3

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",bootComplete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getBootComplete()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {v0}, Lmiui/mqsas/sdk/BootEventManager;->getBootEvent()Lmiui/mqsas/sdk/event/BootEvent;

    move-result-object v2

    .line 90
    .local v2, "event":Lmiui/mqsas/sdk/event/BootEvent;
    invoke-virtual {v2}, Lmiui/mqsas/sdk/event/BootEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v3, "sys.system_server.start_count"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 94
    .local v3, "runtimeRebootCount":I
    if-le v3, v4, :cond_bb

    invoke-virtual {v2}, Lmiui/mqsas/sdk/event/BootEvent;->getBootType()I

    move-result v5

    if-ne v5, v4, :cond_bb

    .line 95
    const-string v4, "Abnormal boot event, filter it"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 99
    :cond_bb
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    .local v1, "handler":Landroid/os/Handler;
    new-instance v4, Lmiui/mqsas/sdk/BootEventManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lmiui/mqsas/sdk/BootEventManager$$ExternalSyntheticLambda0;-><init>(Lmiui/mqsas/sdk/event/BootEvent;)V

    const-wide/16 v5, 0x2710

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    return-void
.end method


# virtual methods
.method public blacklist getAmsReady()J
    .registers 3

    .line 199
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseAmsReady:J

    return-wide v0
.end method

.method public blacklist getBootComplete()J
    .registers 3

    .line 215
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootComplete:J

    return-wide v0
.end method

.method public blacklist getBootDexopt()J
    .registers 3

    .line 191
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootDexopt:J

    return-wide v0
.end method

.method public blacklist getBootType()I
    .registers 2

    .line 151
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->bootType:I

    return v0
.end method

.method public blacklist getCoreAppDexopt()J
    .registers 3

    .line 255
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseCoreAppDexopt:J

    return-wide v0
.end method

.method public blacklist getDexoptSystemAppCount()I
    .registers 2

    .line 267
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptSysAppCnt:I

    return v0
.end method

.method public blacklist getDexoptThirdAppCount()I
    .registers 2

    .line 275
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptThirdAppCnt:I

    return v0
.end method

.method public blacklist getPersistAppCount()I
    .registers 2

    .line 247
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->persistAppCount:I

    return v0
.end method

.method public blacklist getPmsScanEnd()J
    .registers 3

    .line 183
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanEnd:J

    return-wide v0
.end method

.method public blacklist getPmsScanStart()J
    .registers 3

    .line 175
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanStart:J

    return-wide v0
.end method

.method public blacklist getPrebootAppCount()I
    .registers 2

    .line 239
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->prebootAppCount:I

    return v0
.end method

.method public blacklist getSystemAppCount()I
    .registers 2

    .line 223
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->systemAppCount:I

    return v0
.end method

.method public blacklist getSystemRun()J
    .registers 3

    .line 159
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseSystemRun:J

    return-wide v0
.end method

.method public blacklist getThirdAppCount()I
    .registers 2

    .line 231
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->thirdAppCount:I

    return v0
.end method

.method public blacklist getUIReady()J
    .registers 3

    .line 207
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseUIReady:J

    return-wide v0
.end method

.method public blacklist getZygotePreload()J
    .registers 3

    .line 167
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseZygotePreload:J

    return-wide v0
.end method

.method public blacklist setAmsReady(J)V
    .registers 3
    .param p1, "phaseAmsReady"    # J

    .line 203
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseAmsReady:J

    .line 204
    return-void
.end method

.method public blacklist setBootComplete(J)V
    .registers 3
    .param p1, "phaseBootComplete"    # J

    .line 219
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootComplete:J

    .line 220
    return-void
.end method

.method public blacklist setBootDexopt(J)V
    .registers 3
    .param p1, "phaseBootDexopt"    # J

    .line 195
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootDexopt:J

    .line 196
    return-void
.end method

.method public blacklist setBootType(I)V
    .registers 2
    .param p1, "bootType"    # I

    .line 155
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->bootType:I

    .line 156
    return-void
.end method

.method public blacklist setCoreAppDexopt(J)V
    .registers 3
    .param p1, "phaseCoreAppDexopt"    # J

    .line 259
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseCoreAppDexopt:J

    .line 260
    return-void
.end method

.method public blacklist setDexoptSystemAppCount(I)V
    .registers 2
    .param p1, "dexoptSysAppCnt"    # I

    .line 263
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptSysAppCnt:I

    .line 264
    return-void
.end method

.method public blacklist setDexoptThirdAppCount(I)V
    .registers 2
    .param p1, "dexoptThirdAppCnt"    # I

    .line 271
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptThirdAppCnt:I

    .line 272
    return-void
.end method

.method public blacklist setPersistAppCount(I)V
    .registers 2
    .param p1, "persistAppCount"    # I

    .line 251
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->persistAppCount:I

    .line 252
    return-void
.end method

.method public blacklist setPmsScanEnd(J)V
    .registers 3
    .param p1, "phasePmsScanEnd"    # J

    .line 187
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanEnd:J

    .line 188
    return-void
.end method

.method public blacklist setPmsScanStart(J)V
    .registers 3
    .param p1, "phasePmsScanStart"    # J

    .line 179
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanStart:J

    .line 180
    return-void
.end method

.method public blacklist setPrebootAppCount(I)V
    .registers 2
    .param p1, "prebootAppCount"    # I

    .line 243
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->prebootAppCount:I

    .line 244
    return-void
.end method

.method public blacklist setSystemAppCount(I)V
    .registers 2
    .param p1, "systemAppCount"    # I

    .line 227
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->systemAppCount:I

    .line 228
    return-void
.end method

.method public blacklist setSystemRun(J)V
    .registers 3
    .param p1, "phaseSystemRun"    # J

    .line 163
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseSystemRun:J

    .line 164
    return-void
.end method

.method public blacklist setThirdAppCount(I)V
    .registers 2
    .param p1, "thirdAppCount"    # I

    .line 235
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->thirdAppCount:I

    .line 236
    return-void
.end method

.method public blacklist setUIReady(J)V
    .registers 3
    .param p1, "phaseUIReady"    # J

    .line 211
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseUIReady:J

    .line 212
    return-void
.end method

.method public blacklist setZygotePreload(J)V
    .registers 3
    .param p1, "phaseZygotePreload"    # J

    .line 171
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseZygotePreload:J

    .line 172
    return-void
.end method
