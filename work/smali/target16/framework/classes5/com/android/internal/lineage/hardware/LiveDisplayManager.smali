.class public Lcom/android/internal/lineage/hardware/LiveDisplayManager;
.super Ljava/lang/Object;
.source "LiveDisplayManager.java"


# static fields
.field public static final blacklist ADJUSTMENT_CONTRAST:I = 0x3

.field public static final blacklist ADJUSTMENT_HUE:I = 0x0

.field public static final blacklist ADJUSTMENT_INTENSITY:I = 0x2

.field public static final blacklist ADJUSTMENT_SATURATION:I = 0x1

.field public static final blacklist FEATURE_ANTI_FLICKER:I = 0x13

.field public static final blacklist FEATURE_AUTO_CONTRAST:I = 0xb

.field public static final blacklist FEATURE_CABC:I = 0xa

.field public static final blacklist FEATURE_COLOR_ADJUSTMENT:I = 0xd

.field public static final blacklist FEATURE_COLOR_BALANCE:I = 0x10

.field public static final blacklist FEATURE_COLOR_ENHANCEMENT:I = 0xc

.field public static final blacklist FEATURE_DISPLAY_MODES:I = 0xf

.field public static final blacklist FEATURE_FIRST:I = 0xa

.field public static final blacklist FEATURE_LAST:I = 0x13

.field public static final blacklist FEATURE_MANAGED_OUTDOOR_MODE:I = 0xe

.field public static final blacklist FEATURE_PICTURE_ADJUSTMENT:I = 0x11

.field public static final blacklist FEATURE_READING_ENHANCEMENT:I = 0x12

.field public static final blacklist MODE_AUTO:I = 0x2

.field public static final blacklist MODE_DAY:I = 0x4

.field public static final blacklist MODE_FIRST:I = 0x0

.field public static final blacklist MODE_LAST:I = 0x4

.field public static final blacklist MODE_NIGHT:I = 0x1

.field public static final blacklist MODE_OFF:I = 0x0

.field public static final blacklist MODE_OUTDOOR:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "LiveDisplay"

.field private static blacklist sInstance:Lcom/android/internal/lineage/hardware/LiveDisplayManager;

.field private static blacklist sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;


# instance fields
.field private blacklist mConfig:Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_c

    .line 158
    iput-object v0, p0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->mContext:Landroid/content/Context;

    goto :goto_e

    .line 160
    :cond_c
    iput-object p1, p0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->mContext:Landroid/content/Context;

    .line 162
    :goto_e
    invoke-static {}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->getService()Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    move-result-object p1

    sput-object p1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    .line 164
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result p1

    if-nez p1, :cond_21

    .line 165
    const-string p1, "LiveDisplay"

    const-string v0, "Unable to get LiveDisplayService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_21
    return-void
.end method

.method private blacklist checkService()Z
    .registers 3

    .line 200
    sget-object v0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    if-nez v0, :cond_d

    .line 201
    const-string v0, "LiveDisplay"

    const-string v1, "not connected to LineageHardwareManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x0

    return v0

    .line 204
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/lineage/hardware/LiveDisplayManager;
    .registers 3

    const-class v0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;

    monitor-enter v0

    .line 177
    :try_start_3
    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sInstance:Lcom/android/internal/lineage/hardware/LiveDisplayManager;

    if-nez v1, :cond_e

    .line 178
    new-instance v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;

    invoke-direct {v1, p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sInstance:Lcom/android/internal/lineage/hardware/LiveDisplayManager;

    .line 180
    :cond_e
    sget-object p0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sInstance:Lcom/android/internal/lineage/hardware/LiveDisplayManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 176
    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public static blacklist getService()Lcom/android/internal/lineage/hardware/ILiveDisplayService;
    .registers 1

    .line 185
    sget-object v0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    if-eqz v0, :cond_7

    .line 186
    sget-object v0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    return-object v0

    .line 188
    :cond_7
    const-string v0, "lineagelivedisplay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_18

    .line 190
    invoke-static {v0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    move-result-object v0

    sput-object v0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    .line 191
    sget-object v0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    return-object v0

    .line 193
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getColorAdjustment()[F
    .registers 2

    .line 423
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 424
    sget-object v0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->getColorAdjustment()[F

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return-object v0

    .line 427
    :cond_d
    goto :goto_f

    .line 426
    :catch_e
    move-exception v0

    .line 428
    :goto_f
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_16

    return-object v0

    :array_16
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public blacklist getConfig()Lcom/android/internal/lineage/hardware/LiveDisplayConfig;
    .registers 3

    .line 214
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->mConfig:Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    if-nez v1, :cond_15

    .line 215
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->getConfig()Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    move-result-object v1

    goto :goto_13

    :cond_12
    move-object v1, v0

    :goto_13
    iput-object v1, p0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->mConfig:Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    .line 217
    :cond_15
    iget-object v0, p0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->mConfig:Lcom/android/internal/lineage/hardware/LiveDisplayConfig;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_18

    return-object v0

    .line 218
    :catch_18
    move-exception v1

    .line 219
    return-object v0
.end method

.method public blacklist getDayColorTemperature()I
    .registers 3

    .line 338
    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->getDayColorTemperature()I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    :cond_d
    return v0

    .line 339
    :catch_e
    move-exception v1

    .line 340
    return v0
.end method

.method public blacklist getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;
    .registers 2

    .line 486
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 487
    sget-object v0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return-object v0

    .line 490
    :cond_d
    goto :goto_f

    .line 489
    :catch_e
    move-exception v0

    .line 491
    :goto_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMode()I
    .registers 3

    .line 230
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->getMode()I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    :cond_d
    return v0

    .line 231
    :catch_e
    move-exception v1

    .line 232
    return v0
.end method

.method public blacklist getNightColorTemperature()I
    .registers 3

    .line 365
    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->getNightColorTemperature()I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    :cond_d
    return v0

    .line 366
    :catch_e
    move-exception v1

    .line 367
    return v0
.end method

.method public blacklist getPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;
    .registers 2

    .line 457
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 458
    sget-object v0, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->getPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return-object v0

    .line 461
    :cond_d
    goto :goto_f

    .line 460
    :catch_e
    move-exception v0

    .line 462
    :goto_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isAntiFlickerEnabled()Z
    .registers 3

    .line 516
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->isAntiFlickerEnabled()Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 517
    :catch_11
    move-exception v1

    .line 518
    return v0
.end method

.method public blacklist isAutoContrastEnabled()Z
    .registers 3

    .line 257
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->isAutoContrastEnabled()Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 258
    :catch_11
    move-exception v1

    .line 259
    return v0
.end method

.method public blacklist isAutomaticOutdoorModeEnabled()Z
    .registers 3

    .line 393
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->isAutomaticOutdoorModeEnabled()Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 394
    :catch_11
    move-exception v1

    .line 395
    return v0
.end method

.method public blacklist isCABCEnabled()Z
    .registers 3

    .line 284
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->isCABCEnabled()Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 285
    :catch_11
    move-exception v1

    .line 286
    return v0
.end method

.method public blacklist isColorEnhancementEnabled()Z
    .registers 3

    .line 311
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->isColorEnhancementEnabled()Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 312
    :catch_11
    move-exception v1

    .line 313
    return v0
.end method

.method public blacklist isNightModeEnabled()Z
    .registers 4

    .line 501
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->isNight()Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_12

    if-eqz v1, :cond_11

    :cond_10
    move v0, v2

    :cond_11
    return v0

    .line 504
    :catch_12
    move-exception v1

    goto :goto_1d

    .line 502
    :catch_14
    move-exception v1

    .line 503
    const-string v1, "LiveDisplay"

    const-string v2, "Can\'t check whether night mode is enabled because the service isn\'t ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    nop

    .line 506
    :goto_1d
    return v0
.end method

.method public blacklist setAntiFlickerEnabled(Z)Z
    .registers 4

    .line 530
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->setAntiFlickerEnabled(Z)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 531
    :catch_11
    move-exception p1

    .line 532
    return v0
.end method

.method public blacklist setAutoContrastEnabled(Z)Z
    .registers 4

    .line 271
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->setAutoContrastEnabled(Z)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 272
    :catch_11
    move-exception p1

    .line 273
    return v0
.end method

.method public blacklist setAutomaticOutdoorModeEnabled(Z)Z
    .registers 4

    .line 408
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->setAutomaticOutdoorModeEnabled(Z)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 409
    :catch_11
    move-exception p1

    .line 410
    return v0
.end method

.method public blacklist setCABCEnabled(Z)Z
    .registers 4

    .line 298
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->setCABCEnabled(Z)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 299
    :catch_11
    move-exception p1

    .line 300
    return v0
.end method

.method public blacklist setColorAdjustment([F)Z
    .registers 4

    .line 444
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->setColorAdjustment([F)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 445
    :catch_11
    move-exception p1

    .line 446
    return v0
.end method

.method public blacklist setColorEnhancementEnabled(Z)Z
    .registers 4

    .line 325
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->setColorEnhancementEnabled(Z)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 326
    :catch_11
    move-exception p1

    .line 327
    return v0
.end method

.method public blacklist setDayColorTemperature(I)Z
    .registers 4

    .line 352
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->setDayColorTemperature(I)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 353
    :catch_11
    move-exception p1

    .line 354
    return v0
.end method

.method public blacklist setMode(I)Z
    .registers 4

    .line 244
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->setMode(I)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 245
    :catch_11
    move-exception p1

    .line 246
    return v0
.end method

.method public blacklist setNightColorTemperature(I)Z
    .registers 4

    .line 379
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->setNightColorTemperature(I)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 380
    :catch_11
    move-exception p1

    .line 381
    return v0
.end method

.method public blacklist setPictureAdjustment(Lcom/android/internal/lineage/hardware/HSIC;)Z
    .registers 4

    .line 473
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/lineage/hardware/LiveDisplayManager;->sService:Lcom/android/internal/lineage/hardware/ILiveDisplayService;

    invoke-interface {v1, p1}, Lcom/android/internal/lineage/hardware/ILiveDisplayService;->setPictureAdjustment(Lcom/android/internal/lineage/hardware/HSIC;)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 474
    :catch_11
    move-exception p1

    .line 476
    return v0
.end method
