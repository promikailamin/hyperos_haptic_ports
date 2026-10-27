.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerProfile$CpuClusterKey;,
        Lcom/android/internal/os/PowerProfile$Subsystem;,
        Lcom/android/internal/os/PowerProfile$PowerGroup;
    }
.end annotation


# static fields
.field private static final greylist-max-o ATTR_NAME:Ljava/lang/String; = "name"

.field private static final greylist-max-o CPU_CLUSTER_POWER_COUNT:Ljava/lang/String; = "cpu.cluster_power.cluster"

.field private static final greylist-max-o CPU_CORE_POWER_PREFIX:Ljava/lang/String; = "cpu.core_power.cluster"

.field private static final greylist-max-o CPU_CORE_SPEED_PREFIX:Ljava/lang/String; = "cpu.core_speeds.cluster"

.field private static final greylist-max-o CPU_PER_CLUSTER_CORE_COUNT:Ljava/lang/String; = "cpu.clusters.cores"

.field public static final greylist-max-o POWER_AMBIENT_DISPLAY:Ljava/lang/String; = "ambient.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o POWER_AUDIO:Ljava/lang/String; = "audio"

.field public static final greylist-max-o POWER_BATTERY_CAPACITY:Ljava/lang/String; = "battery.capacity"

.field public static final greylist-max-o POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_IDLE:Ljava/lang/String; = "bluetooth.controller.idle"

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "bluetooth.controller.voltage"

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_RX:Ljava/lang/String; = "bluetooth.controller.rx"

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_TX:Ljava/lang/String; = "bluetooth.controller.tx"

.field public static final greylist POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o POWER_CAMERA:Ljava/lang/String; = "camera.avg"

.field public static final greylist POWER_CPU_ACTIVE:Ljava/lang/String; = "cpu.active"

.field public static final greylist POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final greylist-max-o POWER_CPU_SUSPEND:Ljava/lang/String; = "cpu.suspend"

.field public static final greylist POWER_DY_SCREEN_FULL:Ljava/lang/String; = "dy.screen.full"

.field public static final greylist POWER_DY_SCREEN_HBM:Ljava/lang/String; = "dy.screen.hbm"

.field public static final greylist POWER_DY_SCREEN_LOW:Ljava/lang/String; = "dy.screen.low"

.field public static final greylist-max-o POWER_FLASHLIGHT:Ljava/lang/String; = "camera.flashlight"

.field public static final greylist POWER_GPS_ON:Ljava/lang/String; = "gps.on"

.field public static final greylist-max-o POWER_GPS_OPERATING_VOLTAGE:Ljava/lang/String; = "gps.voltage"

.field public static final greylist-max-o POWER_GPS_SIGNAL_QUALITY_BASED:Ljava/lang/String; = "gps.signalqualitybased"

.field public static final blacklist POWER_GROUP_DISPLAY_AMBIENT:Ljava/lang/String; = "ambient.on.display"

.field public static final blacklist POWER_GROUP_DISPLAY_SCREEN_FULL:Ljava/lang/String; = "screen.full.display"

.field public static final blacklist POWER_GROUP_DISPLAY_SCREEN_ON:Ljava/lang/String; = "screen.on.display"

.field public static final greylist-max-o POWER_MEMORY:Ljava/lang/String; = "memory.bandwidths"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_IDLE:Ljava/lang/String; = "modem.controller.idle"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "modem.controller.voltage"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_RX:Ljava/lang/String; = "modem.controller.rx"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_SLEEP:Ljava/lang/String; = "modem.controller.sleep"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_TX:Ljava/lang/String; = "modem.controller.tx"

.field public static final greylist POWER_RADIO_ACTIVE:Ljava/lang/String; = "radio.active"

.field public static final greylist POWER_RADIO_ON:Ljava/lang/String; = "radio.on"

.field public static final greylist POWER_RADIO_SCANNING:Ljava/lang/String; = "radio.scanning"

.field public static final greylist POWER_SCREEN_FULL:Ljava/lang/String; = "screen.full"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist POWER_SCREEN_ON:Ljava/lang/String; = "screen.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o POWER_VIDEO:Ljava/lang/String; = "video"

.field public static final greylist POWER_WIFI_ACTIVE:Ljava/lang/String; = "wifi.active"

.field public static final greylist-max-o POWER_WIFI_BATCHED_SCAN:Ljava/lang/String; = "wifi.batchedscan"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_IDLE:Ljava/lang/String; = "wifi.controller.idle"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "wifi.controller.voltage"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_RX:Ljava/lang/String; = "wifi.controller.rx"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_TX:Ljava/lang/String; = "wifi.controller.tx"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_TX_LEVELS:Ljava/lang/String; = "wifi.controller.tx_levels"

.field public static final greylist POWER_WIFI_ON:Ljava/lang/String; = "wifi.on"

.field public static final greylist POWER_WIFI_SCAN:Ljava/lang/String; = "wifi.scan"

.field private static final blacklist SUBSYSTEM_FIELDS_MASK:J = -0x1L

.field private static final blacklist SUBSYSTEM_MASK:J = 0xf00000000L

.field public static final blacklist SUBSYSTEM_MODEM:J = 0x100000000L

.field public static final blacklist SUBSYSTEM_NONE:J = 0x0L

.field public static final blacklist TAG:Ljava/lang/String; = "PowerProfile"

.field private static final greylist-max-o TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final greylist-max-o TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final greylist-max-o TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final greylist-max-o TAG_ITEM:Ljava/lang/String; = "item"

.field private static final blacklist TAG_MODEM:Ljava/lang/String; = "modem"

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field static final blacklist sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

.field static final greylist-max-o sPowerArrayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o sPowerItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

.field private blacklist mNumDisplays:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    .line 315
    new-instance v0, Lcom/android/internal/power/ModemPowerProfile;

    invoke-direct {v0}, Lcom/android/internal/power/ModemPowerProfile;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    .line 325
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;Z)V

    .line 331
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forTest"    # Z

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    if-eqz p2, :cond_c

    const v1, 0x1170013

    goto :goto_f

    .line 341
    :cond_c
    const v1, 0x1170012

    :goto_f
    nop

    .line 342
    .local v1, "xmlId":I
    :try_start_10
    invoke-direct {p0, p1, v1}, Lcom/android/internal/os/PowerProfile;->initLocked(Landroid/content/Context;I)V

    .line 343
    .end local v1    # "xmlId":I
    monitor-exit v0

    .line 344
    return-void

    .line 343
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private static blacklist getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "ordinal"    # I

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist handleDeprecatedModemConstant(ILjava/lang/String;I)V
    .registers 10
    .param p1, "key"    # I
    .param p2, "deprecatedKey"    # Ljava/lang/String;
    .param p3, "level"    # I

    .line 615
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v0, p1}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainMa(I)D

    move-result-wide v1

    .line 616
    .local v1, "drain":D
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_d

    return-void

    .line 618
    :cond_d
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    .line 619
    .local v3, "deprecatedDrain":D
    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 620
    return-void
.end method

.method private greylist-max-o initCpuClusters()V
    .registers 12

    .line 464
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    const-string v1, "cpu.clusters.cores"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 465
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    .line 466
    .local v0, "data":[Ljava/lang/Double;
    array-length v1, v0

    new-array v1, v1, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v1, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 467
    const/4 v1, 0x0

    .local v1, "cluster":I
    :goto_16
    array-length v2, v0

    if-ge v1, v2, :cond_6c

    .line 468
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 469
    .local v2, "numCpusInCluster":I
    iget-object v3, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v10, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpu.core_speeds.cluster"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpu.cluster_power.cluster"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cpu.core_power.cluster"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v4, v10

    move v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey-IA;)V

    aput-object v10, v3, v1

    .line 467
    .end local v2    # "numCpusInCluster":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 473
    .end local v0    # "data":[Ljava/lang/Double;
    .end local v1    # "cluster":I
    :cond_6c
    goto :goto_9d

    .line 475
    :cond_6d
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 476
    const/4 v0, 0x1

    .line 477
    .local v0, "numCpus":I
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 478
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 480
    :cond_8a
    iget-object v7, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const/4 v6, 0x0

    const-string v2, "cpu.core_speeds.cluster0"

    const-string v3, "cpu.cluster_power.cluster0"

    const-string v4, "cpu.core_power.cluster0"

    move-object v1, v9

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey-IA;)V

    aput-object v9, v7, v8

    .line 483
    .end local v0    # "numCpus":I
    :goto_9d
    return-void
.end method

.method private blacklist initDisplays()V
    .registers 13

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 542
    :goto_3
    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 543
    const-string v2, "ambient.on.display"

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v5

    .line 542
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_d4

    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 545
    const-string/jumbo v6, "screen.on.display"

    invoke-virtual {p0, v6, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v7

    .line 544
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_d4

    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 547
    const-string/jumbo v7, "screen.full.display"

    invoke-virtual {p0, v7, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v3

    .line 546
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_34

    goto/16 :goto_d4

    .line 553
    :cond_34
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    const-string v3, "ambient.on"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 554
    .local v3, "deprecatedAmbientDisplay":Ljava/lang/Double;
    const/4 v4, 0x0

    .line 555
    .local v4, "legacy":Z
    const-string v8, " instead."

    const-string v9, "PowerProfile"

    if-eqz v3, :cond_6b

    iget v10, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v10, :cond_6b

    .line 556
    invoke-static {v2, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, "key":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ambient.on is deprecated! Use "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const/4 v4, 0x1

    .line 562
    .end local v2    # "key":Ljava/lang/String;
    :cond_6b
    const-string/jumbo v2, "screen.on"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 563
    .local v2, "deprecatedScreenOn":Ljava/lang/Double;
    if-eqz v2, :cond_9d

    iget v10, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v10, :cond_9d

    .line 564
    invoke-static {v6, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 565
    .local v6, "key":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "screen.on is deprecated! Use "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const/4 v4, 0x1

    .line 570
    .end local v6    # "key":Ljava/lang/String;
    :cond_9d
    const-string/jumbo v6, "screen.full"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    .line 571
    .local v6, "deprecatedScreenFull":Ljava/lang/Double;
    if-eqz v6, :cond_cf

    iget v10, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v10, :cond_cf

    .line 572
    invoke-static {v7, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "key":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "screen.full is deprecated! Use "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const/4 v4, 0x1

    .line 577
    .end local v0    # "key":Ljava/lang/String;
    :cond_cf
    if-eqz v4, :cond_d3

    .line 578
    iput v5, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    .line 580
    :cond_d3
    return-void

    .line 549
    .end local v2    # "deprecatedScreenOn":Ljava/lang/Double;
    .end local v3    # "deprecatedAmbientDisplay":Ljava/lang/Double;
    .end local v4    # "legacy":Z
    .end local v6    # "deprecatedScreenFull":Ljava/lang/Double;
    :cond_d4
    :goto_d4
    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    goto/16 :goto_3
.end method

.method private blacklist initLocked(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlId"    # I

    .line 363
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 364
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Landroid/content/Context;I)V

    .line 366
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initCpuClusters()V

    .line 367
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initDisplays()V

    .line 368
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initModem()V

    .line 369
    return-void
.end method

.method private blacklist initModem()V
    .registers 4

    .line 590
    const/4 v0, 0x0

    const-string/jumbo v1, "modem.controller.sleep"

    invoke-direct {p0, v0, v1, v0}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 592
    const/high16 v1, 0x10000000

    const-string/jumbo v2, "modem.controller.idle"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 594
    const/high16 v1, 0x20000000

    const-string/jumbo v2, "modem.controller.rx"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 597
    const/high16 v1, 0x30000000

    const-string/jumbo v2, "modem.controller.tx"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 600
    const/high16 v0, 0x31000000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 603
    const/high16 v0, 0x32000000

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 606
    const/high16 v0, 0x33000000

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 609
    const/high16 v0, 0x34000000

    const/4 v1, 0x4

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    .line 612
    return-void
.end method

.method static synthetic blacklist lambda$dump$0(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Double;)V
    .registers 3
    .param p0, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .line 934
    invoke-virtual {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 935
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 936
    return-void
.end method

.method static synthetic blacklist lambda$dump$1(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/Double;)V
    .registers 4
    .param p0, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/Double;

    .line 938
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 939
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 940
    return-void
.end method

.method private blacklist readPowerValuesFromXml(Landroid/content/Context;I)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlId"    # I

    .line 372
    const-string v1, "item"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 373
    .local v2, "resources":Landroid/content/res/Resources;
    move/from16 v3, p2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 374
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x0

    .line 375
    .local v5, "parsingArray":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 376
    .local v6, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v7, 0x0

    .line 379
    .local v7, "arrayName":Ljava/lang/String;
    :try_start_14
    const-string v0, "device"

    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 382
    :goto_19
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 384
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 385
    .local v8, "element":Ljava/lang/String;
    const/4 v0, 0x4

    if-nez v8, :cond_7f

    .line 416
    .end local v8    # "element":Ljava/lang/String;
    if-eqz v5, :cond_37

    .line 417
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/Double;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Double;

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_37} :catch_113
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_37} :catch_10c
    .catchall {:try_start_14 .. :try_end_37} :catchall_10a

    .line 424
    :cond_37
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 425
    nop

    .line 428
    new-array v0, v0, [I

    fill-array-data v0, :array_11e

    .line 435
    .local v0, "configResIds":[I
    const-string v1, "bluetooth.controller.idle"

    const-string v8, "bluetooth.controller.rx"

    const-string v9, "bluetooth.controller.tx"

    const-string v10, "bluetooth.controller.voltage"

    filled-new-array {v1, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "configResIdKeys":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4d
    array-length v9, v0

    if-ge v8, v9, :cond_7e

    .line 443
    aget-object v9, v1, v8

    .line 446
    .local v9, "key":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6b

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_6b

    .line 447
    goto :goto_7b

    .line 449
    :cond_6b
    aget v11, v0, v8

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 450
    .local v11, "value":I
    if-lez v11, :cond_7b

    .line 451
    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "value":I
    :cond_7b
    :goto_7b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    .line 454
    .end local v8    # "i":I
    :cond_7e
    return-void

    .line 387
    .end local v0    # "configResIds":[I
    .end local v1    # "configResIdKeys":[Ljava/lang/String;
    .local v8, "element":Ljava/lang/String;
    :cond_7f
    const-string/jumbo v9, "value"

    if-eqz v5, :cond_9c

    :try_start_84
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9c

    .line 389
    sget-object v10, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/Double;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Double;

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const/4 v5, 0x0

    .line 392
    :cond_9c
    const-string v10, "array"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_84 .. :try_end_a2} :catch_113
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_a2} :catch_10c
    .catchall {:try_start_84 .. :try_end_a2} :catchall_10a

    const-string/jumbo v11, "name"

    const/4 v12, 0x0

    if-eqz v10, :cond_b2

    .line 393
    const/4 v5, 0x1

    .line 394
    :try_start_a9
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 395
    invoke-interface {v4, v12, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .end local v7    # "arrayName":Ljava/lang/String;
    .local v0, "arrayName":Ljava/lang/String;
    goto :goto_108

    .line 396
    .end local v0    # "arrayName":Ljava/lang/String;
    .restart local v7    # "arrayName":Ljava/lang/String;
    :cond_b2
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ce

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bf

    goto :goto_ce

    .line 412
    :cond_bf
    const-string/jumbo v0, "modem"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 413
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v0, v4}, Lcom/android/internal/power/ModemPowerProfile;->parseFromXml(Landroid/content/res/XmlResourceParser;)V

    goto :goto_108

    .line 397
    :cond_ce
    :goto_ce
    const/4 v9, 0x0

    .line 398
    .local v9, "name":Ljava/lang/String;
    if-nez v5, :cond_d6

    invoke-interface {v4, v12, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 399
    :cond_d6
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    if-ne v10, v0, :cond_107

    .line 400
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_e0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a9 .. :try_end_e0} :catch_113
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_e0} :catch_10c
    .catchall {:try_start_a9 .. :try_end_e0} :catchall_10a

    move-object v10, v0

    .line 401
    .local v10, "power":Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 403
    .local v11, "value":D
    :try_start_e3
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13
    :try_end_eb
    .catch Ljava/lang/NumberFormatException; {:try_start_e3 .. :try_end_eb} :catch_ed
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e3 .. :try_end_eb} :catch_113
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_eb} :catch_10c
    .catchall {:try_start_e3 .. :try_end_eb} :catchall_10a

    move-wide v11, v13

    .line 405
    goto :goto_ee

    .line 404
    :catch_ed
    move-exception v0

    .line 406
    :goto_ee
    :try_start_ee
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 407
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v0, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_107

    .line 408
    :cond_fe
    if-eqz v5, :cond_107

    .line 409
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_107
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ee .. :try_end_107} :catch_113
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_107} :catch_10c
    .catchall {:try_start_ee .. :try_end_107} :catchall_10a

    .line 412
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "power":Ljava/lang/String;
    .end local v11    # "value":D
    :cond_107
    :goto_107
    nop

    .line 415
    .end local v8    # "element":Ljava/lang/String;
    :goto_108
    goto/16 :goto_19

    .line 424
    :catchall_10a
    move-exception v0

    goto :goto_11a

    .line 421
    :catch_10c
    move-exception v0

    .line 422
    .local v0, "e":Ljava/io/IOException;
    :try_start_10d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "parsingArray":Z
    .end local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v7    # "arrayName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/internal/os/PowerProfile;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "xmlId":I
    throw v1

    .line 419
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "resources":Landroid/content/res/Resources;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parsingArray":Z
    .restart local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v7    # "arrayName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/internal/os/PowerProfile;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "xmlId":I
    :catch_113
    move-exception v0

    .line 420
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "parsingArray":Z
    .end local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v7    # "arrayName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/internal/os/PowerProfile;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "xmlId":I
    throw v1
    :try_end_11a
    .catchall {:try_start_10d .. :try_end_11a} :catchall_10a

    .line 424
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "resources":Landroid/content/res/Resources;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parsingArray":Z
    .restart local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v7    # "arrayName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/internal/os/PowerProfile;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "xmlId":I
    :goto_11a
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 425
    throw v0

    :array_11e
    .array-data 4
        0x10e0029
        0x10e002b
        0x10e002c
        0x10e002a
    .end array-data
.end method

.method private blacklist writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fieldId"    # J

    .line 956
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 957
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 958
    .local v3, "d":Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, p3, p4, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 957
    .end local v3    # "d":Ljava/lang/Double;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 961
    :cond_1e
    return-void
.end method

.method private blacklist writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fieldId"    # J

    .line 949
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 950
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 952
    :cond_15
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 932
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 933
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 937
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda1;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 941
    const-string v1, "Modem values:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 943
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v1, v0}, Lcom/android/internal/power/ModemPowerProfile;->dump(Ljava/io/PrintWriter;)V

    .line 944
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 945
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 772
    const-string v0, "cpu.suspend"

    const-wide v1, 0x10100000001L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 775
    const-string v0, "cpu.idle"

    const-wide v1, 0x10100000002L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 778
    const-string v0, "cpu.active"

    const-wide v3, 0x10100000003L

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 784
    const/4 v0, 0x0

    .local v0, "cluster":I
    :goto_1f
    iget-object v3, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v3, v3

    if-ge v0, v3, :cond_ad

    .line 785
    const-wide v3, 0x20b00000028L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 786
    .local v3, "token":J
    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 787
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    invoke-static {v6}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetclusterPowerKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v6

    .line 788
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 787
    invoke-virtual {p1, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 789
    const-wide v5, 0x10500000003L

    iget-object v7, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v7, v7, v0

    invoke-static {v7}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetnumCpus(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)I

    move-result v7

    invoke-virtual {p1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 790
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    invoke-static {v6}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetfreqKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Double;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_6f
    if-ge v8, v6, :cond_82

    aget-object v9, v5, v8

    .line 791
    .local v9, "speed":Ljava/lang/Double;
    const-wide v10, 0x20300000004L

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 790
    .end local v9    # "speed":Ljava/lang/Double;
    add-int/lit8 v8, v8, 0x1

    goto :goto_6f

    .line 793
    :cond_82
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    invoke-static {v6}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetcorePowerKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Double;

    array-length v6, v5

    :goto_93
    if-ge v7, v6, :cond_a6

    aget-object v8, v5, v7

    .line 794
    .local v8, "corePower":Ljava/lang/Double;
    const-wide v9, 0x20100000005L

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 793
    .end local v8    # "corePower":Ljava/lang/Double;
    add-int/lit8 v7, v7, 0x1

    goto :goto_93

    .line 796
    :cond_a6
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 784
    .end local v3    # "token":J
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1f

    .line 800
    .end local v0    # "cluster":I
    :cond_ad
    const-wide v0, 0x10100000004L

    const-string/jumbo v2, "wifi.scan"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 803
    const-wide v0, 0x10100000005L

    const-string/jumbo v2, "wifi.on"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 806
    const-wide v0, 0x10100000006L

    const-string/jumbo v2, "wifi.active"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 809
    const-wide v0, 0x10100000007L

    const-string/jumbo v2, "wifi.controller.idle"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 813
    const-wide v0, 0x10100000008L

    const-string/jumbo v2, "wifi.controller.rx"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 817
    const-wide v0, 0x10100000009L

    const-string/jumbo v2, "wifi.controller.tx"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 821
    const-wide v0, 0x2010000000aL

    const-string/jumbo v2, "wifi.controller.tx_levels"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 825
    const-wide v0, 0x1010000000bL

    const-string/jumbo v2, "wifi.controller.voltage"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 829
    const-wide v0, 0x1010000000cL

    const-string v2, "bluetooth.controller.idle"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 833
    const-wide v0, 0x1010000000dL

    const-string v2, "bluetooth.controller.rx"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 837
    const-wide v0, 0x1010000000eL

    const-string v2, "bluetooth.controller.tx"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 841
    const-wide v0, 0x1010000000fL

    const-string v2, "bluetooth.controller.voltage"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 845
    const-wide v0, 0x10100000010L

    const-string/jumbo v2, "modem.controller.sleep"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 849
    const-wide v0, 0x10100000011L

    const-string/jumbo v2, "modem.controller.idle"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 853
    const-wide v0, 0x10100000012L

    const-string/jumbo v2, "modem.controller.rx"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 857
    const-wide v0, 0x20100000013L

    const-string/jumbo v2, "modem.controller.tx"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 861
    const-wide v0, 0x10100000014L

    const-string/jumbo v2, "modem.controller.voltage"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 865
    const-wide v0, 0x10100000015L

    const-string v2, "gps.on"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 868
    const-wide v0, 0x20100000016L

    const-string v2, "gps.signalqualitybased"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 872
    const-wide v0, 0x10100000017L

    const-string v2, "gps.voltage"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 876
    const-wide v0, 0x10100000018L

    const-string v2, "bluetooth.on"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 879
    const-wide v0, 0x10100000019L

    const-string v2, "bluetooth.active"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 883
    const-wide v0, 0x1010000001aL

    const-string v2, "bluetooth.at"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 887
    const-wide v0, 0x1010000001bL

    const-string v2, "ambient.on"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 890
    const-wide v0, 0x1010000001cL

    const-string/jumbo v2, "screen.on"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 893
    const-wide v0, 0x1010000001dL

    const-string/jumbo v2, "radio.on"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 896
    const-wide v0, 0x1010000001eL

    const-string/jumbo v2, "radio.scanning"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 899
    const-wide v0, 0x1010000001fL

    const-string/jumbo v2, "radio.active"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 902
    const-wide v0, 0x10100000020L

    const-string/jumbo v2, "screen.full"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 905
    const-wide v0, 0x10100000021L

    const-string v2, "audio"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 908
    const-wide v0, 0x10100000022L

    const-string/jumbo v2, "video"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 911
    const-wide v0, 0x10100000023L

    const-string v2, "camera.flashlight"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 914
    const-wide v0, 0x10100000024L

    const-string/jumbo v2, "memory.bandwidths"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 917
    const-wide v0, 0x10100000025L

    const-string v2, "camera.avg"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 920
    const-wide v0, 0x10100000026L

    const-string/jumbo v2, "wifi.batchedscan"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 924
    const-wide v0, 0x10100000027L

    const-string v2, "battery.capacity"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    .line 926
    return-void
.end method

.method public blacklist forceInitForTesting(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlId"    # I

    .line 352
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_3
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 354
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 355
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v1}, Lcom/android/internal/power/ModemPowerProfile;->clear()V

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/PowerProfile;->initLocked(Landroid/content/Context;I)V

    .line 357
    monitor-exit v0

    .line 359
    return-void

    .line 357
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist getAverageBatteryDrainMa(J)D
    .registers 5
    .param p1, "key"    # J

    .line 700
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAverageBatteryDrainOrDefaultMa(JD)D
    .registers 11
    .param p1, "key"    # J
    .param p3, "defaultValue"    # D

    .line 677
    const-wide v0, 0xf00000000L

    and-long/2addr v0, p1

    .line 678
    .local v0, "subsystemType":J
    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    .line 681
    .local v2, "subsystemFields":I
    const-wide v3, 0x100000000L

    cmp-long v3, v0, v3

    if-nez v3, :cond_1a

    .line 682
    sget-object v3, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v3, v2}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainMa(I)D

    move-result-wide v3

    .local v3, "value":D
    goto :goto_1c

    .line 684
    .end local v3    # "value":D
    :cond_1a
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 687
    .restart local v3    # "value":D
    :goto_1c
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_23

    return-wide p3

    .line 688
    :cond_23
    return-wide v3
.end method

.method public greylist getAveragePower(Ljava/lang/String;)D
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .line 663
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getAveragePower(Ljava/lang/String;I)D
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 714
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 715
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 716
    :cond_13
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_40

    .line 717
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    .line 718
    .local v0, "values":[Ljava/lang/Double;
    array-length v1, v0

    if-le v1, p2, :cond_2f

    if-ltz p2, :cond_2f

    .line 719
    aget-object v1, v0, p2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 720
    :cond_2f
    if-ltz p2, :cond_3f

    array-length v1, v0

    if-nez v1, :cond_35

    goto :goto_3f

    .line 723
    :cond_35
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 721
    :cond_3f
    :goto_3f
    return-wide v2

    .line 726
    .end local v0    # "values":[Ljava/lang/Double;
    :cond_40
    return-wide v2
.end method

.method public greylist-max-o getAveragePowerForCpuCluster(I)D
    .registers 4
    .param p1, "cluster"    # I

    .line 524
    if-ltz p1, :cond_12

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v1, v0

    if-ge p1, v1, :cond_12

    .line 525
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetclusterPowerKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 527
    :cond_12
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist-max-o getAveragePowerForCpuCore(II)D
    .registers 5
    .param p1, "cluster"    # I
    .param p2, "step"    # I

    .line 531
    if-ltz p1, :cond_12

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v1, v0

    if-ge p1, v1, :cond_12

    .line 532
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetcorePowerKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0

    .line 534
    :cond_12
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getAveragePowerForOrdinal(Ljava/lang/String;I)D
    .registers 5
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .line 753
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAveragePowerForOrdinal(Ljava/lang/String;ID)D
    .registers 8
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "ordinal"    # I
    .param p3, "defaultValue"    # D

    .line 741
    invoke-static {p1, p2}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    return-wide v1
.end method

.method public greylist-max-o getAveragePowerOrDefault(Ljava/lang/String;D)D
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 646
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 647
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 648
    :cond_13
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 649
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 651
    :cond_29
    return-wide p2
.end method

.method public greylist getBatteryCapacity()D
    .registers 3

    .line 764
    const-string v0, "battery.capacity"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getNumCoresInCpuCluster(I)I
    .registers 4
    .param p1, "cluster"    # I

    .line 506
    if-ltz p1, :cond_f

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_f

    .line 509
    :cond_8
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetnumCpus(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)I

    move-result v0

    return v0

    .line 507
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getNumCpuClusters()I
    .registers 2

    .line 502
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    return v0
.end method

.method public blacklist getNumDisplays()I
    .registers 2

    .line 586
    iget v0, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    return v0
.end method

.method public greylist-max-o getNumElements(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 629
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 630
    const/4 v0, 0x1

    return v0

    .line 631
    :cond_a
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 632
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v0, v0

    return v0

    .line 634
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getNumSpeedStepsInCpuCluster(I)I
    .registers 4
    .param p1, "cluster"    # I

    .line 514
    if-ltz p1, :cond_28

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_28

    .line 517
    :cond_8
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetfreqKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 518
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-$$Nest$fgetfreqKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v0, v0

    return v0

    .line 520
    :cond_26
    const/4 v0, 0x1

    return v0

    .line 515
    :cond_28
    :goto_28
    const/4 v0, 0x0

    return v0
.end method
