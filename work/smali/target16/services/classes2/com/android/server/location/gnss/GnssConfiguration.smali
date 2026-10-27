.class public Lcom/android/server/location/gnss/GnssConfiguration;
.super Ljava/lang/Object;
.source "GnssConfiguration.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEsExtensionSec:I

.field public final mProperties:Ljava/util/Properties;


# direct methods
.method public static synthetic $r8$lambda$-vL-F9Cwyt2IAE587_5tF8_Vdkg(I)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_supl_es(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3fQhh0HIdjq4jMHxYVTiFqO2lhg(I)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_lpp_profile(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DSZqFaGVxIJ_RoOI0GZb0pMXBhg(I)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_gps_lock(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$F9k7STpxBfONZ7Aqgxh165D_nWw(I)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_gnss_pos_protocol_select(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZLy4bFu8qE3ZjEkSXCo-Pu4l7O0(I)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_supl_mode(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eXF9XL5ObtAcQauf3xSbZCBReug(I)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_supl_version(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vT_XZFD-4uMu_ePbNOLadVMKlCY(I)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_emergency_supl_pdn(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 56
    const-string v0, "GnssConfiguration"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    .line 119
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mContext:Landroid/content/Context;

    .line 120
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    return-void
.end method

.method public static isConfigEsExtensionSecSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 2

    .line 475
    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static isConfigGpsLockSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 2

    .line 487
    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v0, 0x2

    if-ge p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static isConfigSuplEsSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 2

    .line 481
    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v0, 0x2

    if-ge p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static isSimAbsent(Landroid/content/Context;)Z
    .registers 2

    .line 491
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 493
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    return v0

    :cond_11
    const/4 p0, 0x0

    return p0
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
.method public final getBooleanConfig(Ljava/lang/String;Z)Z
    .registers 3

    .line 465
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 466
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    return p2

    .line 469
    :cond_d
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getC2KHost()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "C2K_HOST"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getC2KPort(I)I
    .registers 3

    .line 167
    const-string v0, "C2K_PORT"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getEsExtensionSec()I
    .registers 1

    .line 135
    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    return p0
.end method

.method public getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
    .registers 1

    .line 253
    invoke-static {}, Lcom/android/server/location/gnss/GnssConfiguration;->native_get_gnss_configuration_version()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object p0

    return-object p0
.end method

.method public final getIntConfig(Ljava/lang/String;I)I
    .registers 5

    .line 451
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 452
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    return p2

    .line 456
    :cond_d
    :try_start_d
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_15} :catch_16

    return p0

    .line 458
    :catch_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse config parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Using default value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssConfiguration"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public getLppProfile()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "LPP_PROFILE"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProperties()Ljava/util/Properties;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    return-object p0
.end method

.method public getProxyApps()Ljava/util/List;
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "NFW_PROXY_APPS"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 201
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 204
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 205
    array-length v0, p0

    if-nez v0, :cond_21

    .line 206
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 209
    :cond_21
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRangeCheckedConfigEsExtensionSec()I
    .registers 5

    .line 437
    const-string v0, "ES_EXTENSION_SEC"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    .line 438
    const-string v0, "ES_EXTENSION_SEC: "

    const-string v2, "GnssConfiguration"

    const/16 v3, 0x12c

    if-le p0, v3, :cond_2a

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " too high, reset to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2a
    if-gez p0, :cond_44

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is negative, reset to zero."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_44
    return p0
.end method

.method public getSuplEs(I)I
    .registers 3

    .line 183
    const-string v0, "SUPL_ES"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSuplHost()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "SUPL_HOST"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSuplMode(I)I
    .registers 3

    .line 175
    const-string v0, "SUPL_MODE"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSuplPort(I)I
    .registers 3

    .line 151
    const-string v0, "SUPL_PORT"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isActiveSimEmergencySuplEnabled()Z
    .registers 3

    .line 224
    const-string v0, "ENABLE_ACTIVE_SIM_EMERGENCY_SUPL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isLongTermPsdsServerConfigured()Z
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "LONGTERM_PSDS_SERVER_1"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "LONGTERM_PSDS_SERVER_2"

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "LONGTERM_PSDS_SERVER_3"

    .line 242
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public isNiSuplMessageInjectionEnabled()Z
    .registers 3

    .line 232
    const-string v0, "ENABLE_NI_SUPL_MESSAGE_INJECTION_BOOL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPsdsPeriodicDownloadEnabled()Z
    .registers 3

    .line 216
    const-string v0, "ENABLE_PSDS_PERIODIC_DOWNLOAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public loadPropertiesFromCarrierConfig(ZI)V
    .registers 8

    .line 370
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 371
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_e

    goto/16 :goto_9d

    .line 376
    :cond_e
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    if-eqz p1, :cond_17

    if-ltz p2, :cond_17

    goto :goto_18

    :cond_17
    move p2, v1

    .line 380
    :goto_18
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 381
    invoke-virtual {v0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    goto :goto_27

    :cond_23
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    .line 382
    :goto_27
    const-string p2, "GnssConfiguration"

    if-nez p1, :cond_38

    .line 383
    sget-boolean p1, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    if-eqz p1, :cond_34

    const-string p1, "SIM not ready, use default carrier config."

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_34
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    .line 386
    :cond_38
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_40
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 387
    const-string v2, "gps."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x4

    .line 389
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 390
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 392
    sget-boolean v3, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    if-eqz v3, :cond_85

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gps config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_85
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_91

    .line 395
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_40

    :cond_91
    if-eqz v1, :cond_40

    .line 397
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_40

    :cond_9d
    :goto_9d
    return-void
.end method

.method public final loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 5

    .line 405
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_1a

    const/4 v0, 0x0

    .line 408
    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_15

    .line 409
    :try_start_b
    invoke-virtual {p1, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_12

    .line 411
    :try_start_e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_12
    move-exception p0

    move-object v0, v1

    goto :goto_16

    :catchall_15
    move-exception p0

    :goto_16
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 412
    throw p0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_1a

    .line 414
    :catch_1a
    sget-boolean p0, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    if-eqz p0, :cond_34

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not open GPS configuration file "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssConfiguration"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method public final loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 10

    .line 420
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x107008f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 422
    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, p1, :cond_69

    aget-object v2, p0, v1

    .line 423
    sget-boolean v3, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    const-string v4, "GnssConfiguration"

    if-eqz v3, :cond_2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GnssParamsResource: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_2c
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_52

    add-int/lit8 v5, v3, 0x1

    .line 426
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_52

    .line 427
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_66

    .line 431
    :cond_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "malformed contents: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_69
    return-void
.end method

.method public final logConfigurations()V
    .registers 16

    .line 351
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplHost()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplPort(I)I

    move-result v2

    .line 353
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KHost()Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KPort(I)I

    move-result v4

    const-string v5, "SUPL_VER"

    .line 355
    invoke-virtual {p0, v5, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v5

    .line 356
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplMode(I)I

    move-result v6

    .line 357
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplEs(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_24

    move v7, v8

    goto :goto_25

    :cond_24
    move v7, v0

    :goto_25
    const-string v9, "LPP_PROFILE"

    .line 358
    invoke-virtual {p0, v9, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "A_GLONASS_POS_PROTOCOL_SELECT"

    .line 359
    invoke-virtual {p0, v10, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    .line 360
    invoke-virtual {p0, v11, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v8, :cond_3a

    goto :goto_3b

    :cond_3a
    move v8, v0

    :goto_3b
    const-string v11, "GPS_LOCK"

    .line 361
    invoke-virtual {p0, v11, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v11

    .line 362
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSec()I

    move-result v12

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "NFW_PROXY_APPS"

    .line 363
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v0, 0x84

    move v14, v10

    move v10, v8

    move v8, v9

    move v9, v14

    .line 350
    invoke-static/range {v0 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;ILjava/lang/String;IIIZIIZIILjava/lang/String;)V

    return-void
.end method

.method public reloadGpsProperties()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 265
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties(ZI)V

    return-void
.end method

.method public reloadGpsProperties(ZI)V
    .registers 7

    .line 273
    sget-boolean v0, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    const-string v1, "GnssConfiguration"

    if-eqz v0, :cond_30

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset GPS properties, previous size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 275
    invoke-virtual {v3}, Ljava/util/Properties;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", inEmergency:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", activeSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_30
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromCarrierConfig(ZI)V

    .line 281
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 283
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssConfiguration;->isSimAbsent(Landroid/content/Context;)Z

    move-result p1

    const-string p2, "LPP_PROFILE"

    if-eqz p1, :cond_56

    .line 285
    const-string/jumbo p1, "persist.sys.gps.lpp"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 288
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v2, p2, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    :cond_56
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v2, "/vendor/etc/gps_debug.conf"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v2, "/etc/gps_debug.conf"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getRangeCheckedConfigEsExtensionSec()I

    move-result p1

    iput p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    .line 299
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->logConfigurations()V

    .line 301
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object p1

    if-eqz p1, :cond_14c

    .line 304
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssConfiguration;->isConfigEsExtensionSecSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result v0

    if-eqz v0, :cond_97

    iget v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    .line 305
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_es_extension_sec(I)Z

    move-result v0

    if-nez v0, :cond_97

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set ES_EXTENSION_SEC: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 311
    new-instance v2, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda0;-><init>()V

    const-string v3, "SUPL_VER"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v2, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "SUPL_MODE"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssConfiguration;->isConfigSuplEsSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 315
    new-instance v2, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda2;-><init>()V

    const-string v3, "SUPL_ES"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_c0
    new-instance v2, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance p2, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "A_GLONASS_POS_PROTOCOL_SELECT"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance p2, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssConfiguration;->isConfigGpsLockSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p1

    if-eqz p1, :cond_ec

    .line 325
    new-instance p1, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda6;-><init>()V

    const-string p2, "GPS_LOCK"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_ec
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f4
    :goto_f4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_153

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 329
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f4

    .line 333
    :try_start_10e
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 334
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;

    invoke-interface {p2, v3}, Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;->set(I)Z

    move-result p2

    if-nez p2, :cond_f4

    .line 336
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catch Ljava/lang/NumberFormatException; {:try_start_10e .. :try_end_136} :catch_137

    goto :goto_f4

    .line 339
    :catch_137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to parse propertyName: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    :cond_14c
    if-eqz v0, :cond_153

    .line 344
    const-string p0, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_153
    return-void
.end method

.method public setSatelliteBlocklist([I[I)V
    .registers 3

    .line 249
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_satellite_blocklist([I[I)Z

    return-void
.end method
