.class public Lcom/android/internal/lineage/health/HealthInterface;
.super Ljava/lang/Object;
.source "HealthInterface.java"


# static fields
.field public static final blacklist MODE_AUTO:I = 0x1

.field public static final blacklist MODE_LIMIT:I = 0x3

.field public static final blacklist MODE_MANUAL:I = 0x2

.field public static final blacklist MODE_NONE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "HealthInterface"

.field private static blacklist sInstance:Lcom/android/internal/lineage/health/HealthInterface;

.field private static blacklist sService:Lcom/android/internal/lineage/health/IHealthInterface;


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    if-nez v0, :cond_a

    goto :goto_b

    :cond_a
    move-object p1, v0

    :goto_b
    iput-object p1, p0, Lcom/android/internal/lineage/health/HealthInterface;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {}, Lcom/android/internal/lineage/health/HealthInterface;->getService()Lcom/android/internal/lineage/health/IHealthInterface;

    move-result-object p1

    sput-object p1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    .line 45
    return-void
.end method

.method private blacklist checkService()Z
    .registers 3

    .line 76
    sget-object v0, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    if-nez v0, :cond_d

    .line 77
    const-string v0, "HealthInterface"

    const-string v1, "not connected to LineageHardwareManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/lineage/health/HealthInterface;
    .registers 3

    const-class v0, Lcom/android/internal/lineage/health/HealthInterface;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sInstance:Lcom/android/internal/lineage/health/HealthInterface;

    if-nez v1, :cond_e

    .line 54
    new-instance v1, Lcom/android/internal/lineage/health/HealthInterface;

    invoke-direct {v1, p0}, Lcom/android/internal/lineage/health/HealthInterface;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sInstance:Lcom/android/internal/lineage/health/HealthInterface;

    .line 56
    :cond_e
    sget-object p0, Lcom/android/internal/lineage/health/HealthInterface;->sInstance:Lcom/android/internal/lineage/health/HealthInterface;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 52
    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public static blacklist getService()Lcom/android/internal/lineage/health/IHealthInterface;
    .registers 2

    .line 60
    sget-object v0, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    if-eqz v0, :cond_7

    .line 61
    sget-object v0, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    return-object v0

    .line 63
    :cond_7
    const-string v0, "lineagehealth"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/android/internal/lineage/health/IHealthInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/lineage/health/IHealthInterface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    .line 65
    sget-object v0, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    if-nez v0, :cond_20

    .line 66
    const-string v0, "HealthInterface"

    const-string v1, "null health service, SAD!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_20
    sget-object v0, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    return-object v0
.end method

.method public static blacklist isChargingControlSupported(Landroid/content/Context;)Z
    .registers 3

    .line 105
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/lineage/health/HealthInterface;->getInstance(Landroid/content/Context;)Lcom/android/internal/lineage/health/HealthInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/lineage/health/HealthInterface;->isChargingControlSupported()Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    .line 106
    :catch_9
    move-exception p0

    .line 107
    const-string v0, "HealthInterface"

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist allowFineGrainedSettings()Z
    .registers 3

    .line 267
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1}, Lcom/android/internal/lineage/health/IHealthInterface;->allowFineGrainedSettings()Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 268
    :catch_11
    move-exception v1

    .line 269
    return v0
.end method

.method public blacklist getEnabled()Z
    .registers 3

    .line 119
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1}, Lcom/android/internal/lineage/health/IHealthInterface;->getChargingControlEnabled()Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 120
    :catch_11
    move-exception v1

    .line 121
    return v0
.end method

.method public blacklist getFastChargeMode()I
    .registers 5

    .line 310
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1}, Lcom/android/internal/lineage/health/IHealthInterface;->getFastChargeMode()I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    :cond_d
    return v0

    .line 311
    :catch_e
    move-exception v1

    .line 312
    const-string v2, "HealthInterface"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    return v0
.end method

.method public blacklist getLimit()I
    .registers 2

    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v0}, Lcom/android/internal/lineage/health/IHealthInterface;->getChargingControlLimit()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_10

    goto :goto_f

    :cond_d
    const/16 v0, 0x64

    :goto_f
    return v0

    .line 228
    :catch_10
    move-exception v0

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMode()I
    .registers 3

    .line 146
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1}, Lcom/android/internal/lineage/health/IHealthInterface;->getChargingControlMode()I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    :cond_d
    return v0

    .line 147
    :catch_e
    move-exception v1

    .line 148
    return v0
.end method

.method public blacklist getStartTime()I
    .registers 3

    .line 173
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1}, Lcom/android/internal/lineage/health/IHealthInterface;->getChargingControlStartTime()I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    :cond_d
    return v0

    .line 174
    :catch_e
    move-exception v1

    .line 175
    return v0
.end method

.method public blacklist getSupportedFastChargeModes()[I
    .registers 5

    .line 295
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1}, Lcom/android/internal/lineage/health/IHealthInterface;->getSupportedFastChargeModes()[I

    move-result-object v0

    goto :goto_10

    :cond_e
    new-array v0, v0, [I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    .line 296
    :catch_11
    move-exception v1

    .line 297
    const-string v2, "HealthInterface"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    new-array v0, v0, [I

    return-object v0
.end method

.method public blacklist getTargetTime()I
    .registers 3

    .line 200
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1}, Lcom/android/internal/lineage/health/IHealthInterface;->getChargingControlTargetTime()I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    :cond_d
    return v0

    .line 201
    :catch_e
    move-exception v1

    .line 202
    return v0
.end method

.method public blacklist isChargingControlSupported()Z
    .registers 5

    .line 90
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1}, Lcom/android/internal/lineage/health/IHealthInterface;->isChargingControlSupported()Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 91
    :catch_11
    move-exception v1

    .line 92
    const-string v2, "HealthInterface"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    return v0
.end method

.method public blacklist isFastChargeSupported()Z
    .registers 5

    .line 280
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1}, Lcom/android/internal/lineage/health/IHealthInterface;->isFastChargeSupported()Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 281
    :catch_11
    move-exception v1

    .line 282
    const-string v2, "HealthInterface"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    return v0
.end method

.method public blacklist reset()Z
    .registers 3

    .line 254
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1}, Lcom/android/internal/lineage/health/IHealthInterface;->resetChargingControl()Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 255
    :catch_11
    move-exception v1

    .line 256
    return v0
.end method

.method public blacklist setEnabled(Z)Z
    .registers 4

    .line 133
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/health/IHealthInterface;->setChargingControlEnabled(Z)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 134
    :catch_11
    move-exception p1

    .line 135
    return v0
.end method

.method public blacklist setFastChargeMode(I)Z
    .registers 5

    .line 326
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/health/IHealthInterface;->setFastChargeMode(I)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 327
    :catch_11
    move-exception p1

    .line 328
    const-string v1, "HealthInterface"

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    return v0
.end method

.method public blacklist setLimit(I)Z
    .registers 4

    .line 241
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/health/IHealthInterface;->setChargingControlLimit(I)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 242
    :catch_11
    move-exception p1

    .line 243
    return v0
.end method

.method public blacklist setMode(I)Z
    .registers 4

    .line 160
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/health/IHealthInterface;->setChargingControlMode(I)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 161
    :catch_11
    move-exception p1

    .line 162
    return v0
.end method

.method public blacklist setStartTime(I)Z
    .registers 4

    .line 187
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/health/IHealthInterface;->setChargingControlStartTime(I)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 188
    :catch_11
    move-exception p1

    .line 189
    return v0
.end method

.method public blacklist setTargetTime(I)Z
    .registers 4

    .line 214
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/health/HealthInterface;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/health/HealthInterface;->sService:Lcom/android/internal/lineage/health/IHealthInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/health/IHealthInterface;->setChargingControlTargetTime(I)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 215
    :catch_11
    move-exception p1

    .line 216
    return v0
.end method
