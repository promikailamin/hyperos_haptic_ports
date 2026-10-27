.class public Lcom/android/server/location/gnss/GnssConfiguration;
.super Ljava/lang/Object;
.source "GnssConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;,
        Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
    }
.end annotation


# static fields
.field private static final CONFIG_A_GLONASS_POS_PROTOCOL_SELECT:Ljava/lang/String; = "A_GLONASS_POS_PROTOCOL_SELECT"

.field private static final CONFIG_C2K_HOST:Ljava/lang/String; = "C2K_HOST"

.field private static final CONFIG_C2K_PORT:Ljava/lang/String; = "C2K_PORT"

.field private static final CONFIG_ENABLE_PSDS_PERIODIC_DOWNLOAD:Ljava/lang/String; = "ENABLE_PSDS_PERIODIC_DOWNLOAD"

.field private static final CONFIG_ES_EXTENSION_SEC:Ljava/lang/String; = "ES_EXTENSION_SEC"

.field private static final CONFIG_GPS_LOCK:Ljava/lang/String; = "GPS_LOCK"

.field static final CONFIG_LONGTERM_PSDS_SERVER_1:Ljava/lang/String; = "LONGTERM_PSDS_SERVER_1"

.field static final CONFIG_LONGTERM_PSDS_SERVER_2:Ljava/lang/String; = "LONGTERM_PSDS_SERVER_2"

.field static final CONFIG_LONGTERM_PSDS_SERVER_3:Ljava/lang/String; = "LONGTERM_PSDS_SERVER_3"

.field private static final CONFIG_LPP_PROFILE:Ljava/lang/String; = "LPP_PROFILE"

.field static final CONFIG_NFW_PROXY_APPS:Ljava/lang/String; = "NFW_PROXY_APPS"

.field static final CONFIG_NORMAL_PSDS_SERVER:Ljava/lang/String; = "NORMAL_PSDS_SERVER"

.field static final CONFIG_REALTIME_PSDS_SERVER:Ljava/lang/String; = "REALTIME_PSDS_SERVER"

.field private static final CONFIG_SUPL_ES:Ljava/lang/String; = "SUPL_ES"

.field private static final CONFIG_SUPL_HOST:Ljava/lang/String; = "SUPL_HOST"

.field private static final CONFIG_SUPL_MODE:Ljava/lang/String; = "SUPL_MODE"

.field private static final CONFIG_SUPL_PORT:Ljava/lang/String; = "SUPL_PORT"

.field private static final CONFIG_SUPL_VER:Ljava/lang/String; = "SUPL_VER"

.field private static final CONFIG_USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL:Ljava/lang/String; = "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

.field private static final DEBUG:Z

.field private static final DEBUG_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps_debug.conf"

.field static final LPP_PROFILE:Ljava/lang/String; = "persist.sys.gps.lpp"

.field private static final MAX_EMERGENCY_MODE_EXTENSION_SECONDS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "GnssConfiguration"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEsExtensionSec:I

.field private final mProperties:Ljava/util/Properties;


# direct methods
.method static bridge synthetic -$$Nest$smisConfigGpsLockSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->isConfigGpsLockSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisConfigSuplEsSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->isConfigSuplEsSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_set_emergency_supl_pdn(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_emergency_supl_pdn(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_set_gnss_pos_protocol_select(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_gnss_pos_protocol_select(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_set_gps_lock(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_gps_lock(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_set_lpp_profile(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_lpp_profile(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_set_supl_es(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_supl_es(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_set_supl_mode(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_supl_mode(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_set_supl_version(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_supl_version(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 57
    const-string v0, "GnssConfiguration"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    .line 112
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 114
    return-void
.end method

.method private getBooleanConfig(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "configParameter"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 429
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "valueString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 431
    return p2

    .line 433
    :cond_d
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private getIntConfig(Ljava/lang/String;I)I
    .registers 7
    .param p1, "configParameter"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 415
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "valueString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 417
    return p2

    .line 420
    :cond_d
    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_15} :catch_16

    return v1

    .line 421
    :catch_16
    move-exception v1

    .line 422
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse config parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Using default value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GnssConfiguration"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return p2
.end method

.method private getRangeCheckedConfigEsExtensionSec()I
    .registers 6

    .line 401
    const-string v0, "ES_EXTENSION_SEC"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v0

    .line 402
    .local v0, "emergencyExtensionSeconds":I
    const-string v1, "ES_EXTENSION_SEC: "

    const-string v2, "GnssConfiguration"

    const/16 v3, 0x12c

    if-le v0, v3, :cond_30

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " too high, reset to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/16 v0, 0x12c

    goto :goto_4d

    .line 406
    :cond_30
    if-gez v0, :cond_4d

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is negative, reset to zero."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x0

    .line 411
    :cond_4d
    :goto_4d
    return v0
.end method

.method private static isConfigEsExtensionSecSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 3
    .param p0, "gnssConfiguartionIfaceVersion"    # Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    .line 439
    iget v0, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static isConfigGpsLockSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 3
    .param p0, "gnssConfiguartionIfaceVersion"    # Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    .line 451
    iget v0, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static isConfigSuplEsSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 3
    .param p0, "gnssConfiguartionIfaceVersion"    # Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    .line 445
    iget v0, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;)V
    .registers 5
    .param p1, "properties"    # Ljava/util/Properties;

    .line 387
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/gps_debug.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_1c

    .line 388
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 390
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_8
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 391
    invoke-virtual {p1, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_16

    .line 393
    :try_start_11
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 394
    nop

    .line 397
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_28

    .line 393
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_16
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 394
    nop

    .end local p0    # "this":Lcom/android/server/location/gnss/GnssConfiguration;
    .end local p1    # "properties":Ljava/util/Properties;
    throw v2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_1c

    .line 395
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/location/gnss/GnssConfiguration;
    .restart local p1    # "properties":Ljava/util/Properties;
    :catch_1c
    move-exception v0

    .line 396
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    if-eqz v1, :cond_28

    const-string v1, "GnssConfiguration"

    const-string v2, "Could not open GPS configuration file /etc/gps_debug.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v0    # "e":Ljava/io/IOException;
    :cond_28
    :goto_28
    return-void
.end method

.method private logConfigurations()V
    .registers 16

    .line 317
    nop

    .line 318
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplHost()Ljava/lang/String;

    move-result-object v1

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplPort(I)I

    move-result v2

    .line 320
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KHost()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KPort(I)I

    move-result v4

    .line 322
    const-string v5, "SUPL_VER"

    invoke-direct {p0, v5, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v5

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplMode(I)I

    move-result v6

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplEs(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_25

    move v7, v8

    goto :goto_26

    :cond_25
    move v7, v0

    .line 325
    :goto_26
    const-string v9, "LPP_PROFILE"

    invoke-direct {p0, v9, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v9

    .line 326
    const-string v10, "A_GLONASS_POS_PROTOCOL_SELECT"

    invoke-direct {p0, v10, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v10

    .line 327
    const-string v11, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    invoke-direct {p0, v11, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v8, :cond_3c

    move v11, v8

    goto :goto_3d

    :cond_3c
    move v11, v0

    .line 328
    :goto_3d
    const-string v8, "GPS_LOCK"

    invoke-direct {p0, v8, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v12

    .line 329
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSec()I

    move-result v13

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 330
    const-string v8, "NFW_PROXY_APPS"

    invoke-virtual {v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 317
    const/16 v0, 0x84

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    invoke-static/range {v0 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;ILjava/lang/String;IIIZIIZIILjava/lang/String;)V

    .line 331
    return-void
.end method

.method private static native native_get_gnss_configuration_version()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
.end method

.method private static native native_set_emergency_supl_pdn(I)Z
.end method

.method private static native native_set_es_extension_sec(I)Z
.end method

.method private static native native_set_gnss_pos_protocol_select(I)Z
.end method

.method private static native native_set_gps_lock(I)Z
.end method

.method private static native native_set_lpp_profile(I)Z
.end method

.method private static native native_set_satellite_blocklist([I[I)Z
.end method

.method private static native native_set_supl_es(I)Z
.end method

.method private static native native_set_supl_mode(I)Z
.end method

.method private static native native_set_supl_version(I)Z
.end method


# virtual methods
.method getC2KHost()Ljava/lang/String;
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "C2K_HOST"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getC2KPort(I)I
    .registers 3
    .param p1, "defaultPort"    # I

    .line 160
    const-string v0, "C2K_PORT"

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEsExtensionSec()I
    .registers 2

    .line 128
    iget v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    return v0
.end method

.method getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
    .registers 2

    .line 237
    invoke-static {}, Lcom/android/server/location/gnss/GnssConfiguration;->native_get_gnss_configuration_version()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object v0

    return-object v0
.end method

.method getLppProfile()Ljava/lang/String;
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "LPP_PROFILE"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProperties()Ljava/util/Properties;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method getProxyApps()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "NFW_PROXY_APPS"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "proxyAppsStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 205
    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "proxyAppsArray":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_25

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 210
    :cond_25
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getSuplEs(I)I
    .registers 3
    .param p1, "defaultSuplEs"    # I

    .line 184
    const-string v0, "SUPL_ES"

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getSuplHost()Ljava/lang/String;
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "SUPL_HOST"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSuplMode(I)I
    .registers 3
    .param p1, "defaultMode"    # I

    .line 168
    const-string v0, "SUPL_MODE"

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getSuplPort(I)I
    .registers 3
    .param p1, "defaultPort"    # I

    .line 144
    const-string v0, "SUPL_PORT"

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method isLongTermPsdsServerConfigured()Z
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "LONGTERM_PSDS_SERVER_1"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 225
    const-string v1, "LONGTERM_PSDS_SERVER_2"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 226
    const-string v1, "LONGTERM_PSDS_SERVER_3"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 224
    :goto_22
    return v0
.end method

.method isPsdsPeriodicDownloadEnabled()Z
    .registers 3

    .line 217
    const-string v0, "ENABLE_PSDS_PERIODIC_DOWNLOAD"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method loadPropertiesFromCarrierConfig()V
    .registers 11

    .line 337
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mContext:Landroid/content/Context;

    .line 338
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 339
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_d

    .line 340
    return-void

    .line 343
    :cond_d
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 344
    .local v1, "ddSubId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 345
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 346
    .local v2, "configs":Landroid/os/PersistableBundle;
    :goto_20
    const-string v3, "GnssConfiguration"

    if-nez v2, :cond_31

    .line 347
    sget-boolean v4, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    if-eqz v4, :cond_2d

    const-string v4, "SIM not ready, use default carrier config."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_2d
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 350
    :cond_31
    invoke-virtual {v2}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 351
    .local v5, "configKey":Ljava/lang/String;
    const-string/jumbo v6, "gps."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 352
    nop

    .line 353
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 354
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 356
    .local v7, "value":Ljava/lang/Object;
    sget-boolean v8, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    if-eqz v8, :cond_83

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Gps config: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_83
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_90

    .line 359
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v6, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_9b

    .line 360
    :cond_90
    if-eqz v7, :cond_9b

    .line 361
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    .end local v5    # "configKey":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_9b
    :goto_9b
    goto :goto_39

    .line 367
    :cond_9c
    invoke-static {}, Lcom/android/server/location/gnss/GnssCollectDataStub;->getInstance()Lcom/android/server/location/gnss/GnssCollectDataStub;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/location/gnss/GnssCollectDataStub;->isCnSimInserted()Z

    move-result v3

    if-eqz v3, :cond_de

    .line 369
    invoke-static {}, Lcom/android/server/location/gnss/GnssCollectDataStub;->getInstance()Lcom/android/server/location/gnss/GnssCollectDataStub;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/location/gnss/GnssCollectDataStub;->getSuplState()Z

    move-result v3

    .line 370
    .local v3, "CaictState":Z
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v4

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caictstate is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 372
    const-string v4, "SUPL_HOST"

    if-nez v3, :cond_d6

    .line 374
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string/jumbo v6, "supl.qxwz.com"

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_de

    .line 377
    :cond_d6
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string/jumbo v6, "supl.bd-caict.com"

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 381
    .end local v3    # "CaictState":Z
    :cond_de
    :goto_de
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v5, "NFW_PROXY_APPS"

    invoke-interface {v3, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->setNfwProxyAppConfig(Ljava/util/Properties;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method reloadGpsProperties()V
    .registers 13

    .line 249
    sget-boolean v0, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    const-string v1, "GnssConfiguration"

    if-eqz v0, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset GPS properties, previous size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromCarrierConfig()V

    .line 252
    const-string/jumbo v2, "persist.sys.gps.lpp"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "lpp_prof":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 255
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v4, "LPP_PROFILE"

    invoke-virtual {v3, v4, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    :cond_39
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v3}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;)V

    .line 262
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getRangeCheckedConfigEsExtensionSec()I

    move-result v3

    iput v3, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    .line 264
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->logConfigurations()V

    .line 266
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object v3

    .line 267
    .local v3, "gnssConfigurationIfaceVersion":Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
    if-eqz v3, :cond_de

    .line 269
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssConfiguration;->isConfigEsExtensionSecSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    .line 270
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_es_extension_sec(I)Z

    move-result v0

    if-nez v0, :cond_73

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to set ES_EXTENSION_SEC: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_73
    new-instance v0, Lcom/android/server/location/gnss/GnssConfiguration$1;

    invoke-direct {v0, p0, v3}, Lcom/android/server/location/gnss/GnssConfiguration$1;-><init>(Lcom/android/server/location/gnss/GnssConfiguration;Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)V

    .line 295
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_80
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_dd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 296
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 297
    .local v6, "propertyName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, "propertyValueString":Ljava/lang/String;
    if-eqz v7, :cond_dc

    .line 300
    :try_start_9a
    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 301
    .local v8, "propertyValueInt":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;

    invoke-interface {v9, v8}, Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;->set(I)Z

    move-result v9

    .line 302
    .local v9, "result":Z
    if-nez v9, :cond_c4

    .line 303
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to set "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catch Ljava/lang/NumberFormatException; {:try_start_9a .. :try_end_c4} :catch_c5

    .line 307
    .end local v8    # "propertyValueInt":I
    .end local v9    # "result":Z
    :cond_c4
    goto :goto_dc

    .line 305
    :catch_c5
    move-exception v8

    .line 306
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to parse propertyName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;>;"
    .end local v6    # "propertyName":Ljava/lang/String;
    .end local v7    # "propertyValueString":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_dc
    :goto_dc
    goto :goto_80

    .line 295
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;>;"
    :cond_dd
    goto :goto_e6

    .line 310
    :cond_de
    if-eqz v0, :cond_e6

    .line 311
    const-string v0, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    .line 310
    :cond_e6
    :goto_e6
    nop

    .line 314
    :goto_e7
    return-void
.end method

.method setSatelliteBlocklist([I[I)V
    .registers 3
    .param p1, "constellations"    # [I
    .param p2, "svids"    # [I

    .line 233
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_satellite_blocklist([I[I)Z

    .line 234
    return-void
.end method

.method public setSuplMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 176
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_supl_mode(I)Z

    .line 177
    return-void
.end method
