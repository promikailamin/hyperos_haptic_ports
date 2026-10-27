.class public Lcom/android/server/am/SettingsToPropertiesMapper;
.super Ljava/lang/Object;
.source "SettingsToPropertiesMapper.java"


# static fields
.field static final sDeviceConfigScopes:[Ljava/lang/String;

.field static final sGlobalSettings:[Ljava/lang/String;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDeviceConfigScopes:[Ljava/lang/String;

.field public final mGlobalSettings:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$EgBV8Dz39zCT3L1Nko75WeB64pU(Lcom/android/server/am/SettingsToPropertiesMapper;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->lambda$updatePropertiesFromSettings$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U8GR0ipUE8X3hDRtGmnQloaxLkU(Landroid/provider/DeviceConfig$Properties;)V
    .registers 1

    .line 227
    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->setLocalOverridesInNewStorage(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xaooDt4T3agG1Hk5_pT9j0XnxEM(Landroid/provider/DeviceConfig$Properties;)V
    .registers 1

    .line 216
    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->stageFlagsInNewStorage(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 31

    .line 91
    const-string/jumbo v0, "native_flags_health_check_enabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    .line 108
    const-string v29, "hdmi_control"

    const-string/jumbo v30, "tethering_u_or_later_native"

    const-string v1, "activity_manager_native_boot"

    const-string v2, "camera_native"

    const-string v3, "configuration"

    const-string v4, "connectivity"

    const-string v5, "edgetpu_native"

    const-string v6, "input_native_boot"

    const-string v7, "intelligence_content_suggestions"

    const-string/jumbo v8, "lmkd_native"

    const-string/jumbo v9, "media_native"

    const-string/jumbo v10, "mglru_native"

    const-string/jumbo v11, "mmd_native"

    const-string/jumbo v12, "netd_native"

    const-string/jumbo v13, "nnapi_native"

    const-string/jumbo v14, "profcollect_native_boot"

    const-string/jumbo v15, "remote_key_provisioning_native"

    const-string/jumbo v16, "runtime_native"

    const-string/jumbo v17, "runtime_native_boot"

    const-string/jumbo v18, "statsd_native"

    const-string/jumbo v19, "statsd_native_boot"

    const-string/jumbo v20, "storage_native_boot"

    const-string/jumbo v21, "surface_flinger_native_boot"

    const-string/jumbo v22, "swcodec_native"

    const-string/jumbo v23, "vendor_system_native"

    const-string/jumbo v24, "vendor_system_native_boot"

    const-string/jumbo v25, "virtualization_framework_native"

    const-string/jumbo v26, "window_manager_native_boot"

    const-string/jumbo v27, "memory_safety_native_boot"

    const-string/jumbo v28, "memory_safety_native"

    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 157
    iput-object p2, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    return-void
.end method

.method public static getDeviceConfigScopes()[Ljava/lang/String;
    .registers 1

    .line 624
    sget-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    return-object v0
.end method

.method public static getResetFlagsFileContent()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 605
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/server_configurable_flags/reset_flags"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 607
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception v1

    .line 611
    const-string v2, "failed to read file /data/server_configurable_flags/reset_flags"

    invoke-static {v2, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static isNativeFlagsResetPerformed()Z
    .registers 2

    .line 466
    const-string v0, "device_config.reset_performed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static logErr(Ljava/lang/String;)V
    .registers 3

    .line 594
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_a

    .line 595
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 597
    :cond_a
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logErr(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 586
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_a

    .line 587
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 589
    :cond_a
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.device_config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 510
    const-string p1, "^[\\w\\.\\-@:]*$"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    const-string p1, ".."

    .line 511
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    return-object p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseAndLogAconfigdReturn(Landroid/util/proto/ProtoInputStream;)V
    .registers 7

    .line 364
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_63

    const/4 v2, 0x1

    if-eq v0, v2, :cond_10

    .line 388
    const-string v0, "invalid message type, expect storage return message"

    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_0

    :cond_10
    const-wide v2, 0x20b00000001L

    .line 366
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 367
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    if-eq v0, v1, :cond_5f

    const/4 v1, 0x2

    const-string v4, "SettingsToPropertiesMapper"

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2e

    .line 380
    const-string v0, "invalid message type, expecting only flag override return or error message"

    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_5f

    :cond_2e
    const-wide v0, 0x10900000008L

    .line 374
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "override request failed: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 369
    :cond_4d
    const-string/jumbo v0, "successfully handled override requests"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v0, 0x10b00000002L

    .line 370
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 371
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 383
    :cond_5f
    :goto_5f
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_0

    :cond_63
    return-void
.end method

.method public static sendAconfigdRequests(Ljava/lang/String;Landroid/util/proto/ProtoOutputStream;)Landroid/util/proto/ProtoInputStream;
    .registers 8

    .line 268
    const-string v0, " socket"

    const-string v1, "SettingsToPropertiesMapper"

    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    const/4 v3, 0x0

    .line 270
    :try_start_a
    new-instance v4, Landroid/net/LocalSocketAddress;

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, p0, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2b} :catch_b8

    .line 281
    :try_start_2b
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 282
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3d} :catch_b1

    .line 290
    :try_start_3d
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p1

    .line 291
    array-length v2, p1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 292
    array-length v2, p1

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag override requests sent to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_5e} :catch_9b

    .line 301
    :try_start_5e
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 302
    new-instance v2, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v2, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes back from "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_84} :catch_85

    return-object v2

    :catch_85
    move-exception p1

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to read requests return from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v3

    :catch_9b
    move-exception p1

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to send requests to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v3

    :catch_b1
    move-exception p0

    .line 284
    const-string p1, "failed to get local socket iostreams"

    invoke-static {p1, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v3

    :catch_b8
    move-exception p1

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v3
.end method

.method public static sendAconfigdRequests(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3

    .line 239
    const-string v0, "aconfigd_system"

    invoke-static {v0, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->sendAconfigdRequests(Ljava/lang/String;Landroid/util/proto/ProtoOutputStream;)Landroid/util/proto/ProtoInputStream;

    move-result-object v0

    .line 240
    const-string v1, "failed to parse aconfigd return"

    if-eqz v0, :cond_12

    .line 242
    :try_start_a
    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->parseAndLogAconfigdReturn(Landroid/util/proto/ProtoInputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 244
    invoke-static {v1, v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 249
    :cond_12
    :goto_12
    const-string v0, "aconfigd_mainline"

    invoke-static {v0, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->sendAconfigdRequests(Ljava/lang/String;Landroid/util/proto/ProtoOutputStream;)Landroid/util/proto/ProtoInputStream;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 252
    :try_start_1a
    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->parseAndLogAconfigdReturn(Landroid/util/proto/ProtoInputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p0

    .line 254
    invoke-static {v1, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public static setLocalOverridesInNewStorage(Landroid/provider/DeviceConfig$Properties;)V
    .registers 11

    .line 401
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 402
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    .line 403
    invoke-virtual {p0, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_23

    goto :goto_f

    .line 415
    :cond_23
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_73

    .line 416
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-eq v6, v8, :cond_73

    if-nez v6, :cond_37

    goto :goto_73

    .line 420
    :cond_37
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    .line 421
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 422
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_5d

    .line 424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid flag name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_f

    .line 427
    :cond_5d
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 428
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-nez v5, :cond_6d

    .line 432
    invoke-static {v0, v7, v4, v9}, Lcom/android/server/am/SettingsToPropertiesMapper;->writeFlagOverrideRemovalRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_70

    .line 437
    :cond_6d
    invoke-static {v0, v7, v4, v5, v9}, Lcom/android/server/am/SettingsToPropertiesMapper;->writeFlagOverrideRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 417
    :cond_73
    :goto_73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid local flag override: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_f

    :cond_88
    if-nez v3, :cond_8b

    return-void

    .line 448
    :cond_8b
    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->sendAconfigdRequests(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public static stageFlagsInNewStorage(Landroid/provider/DeviceConfig$Properties;)V
    .registers 10

    .line 527
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 528
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    .line 529
    invoke-virtual {p0, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_f

    if-nez v5, :cond_25

    goto :goto_f

    .line 534
    :cond_25
    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6f

    .line 535
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v6, v8, :cond_6f

    if-nez v6, :cond_39

    goto :goto_6f

    .line 539
    :cond_39
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    .line 540
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 542
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_5f

    .line 544
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid flag name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_f

    .line 547
    :cond_5f
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 548
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 549
    invoke-static {v0, v7, v4, v5, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->writeFlagOverrideRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 536
    :cond_6f
    :goto_6f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid local flag override: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_f

    :cond_84
    if-nez v3, :cond_87

    return-void

    .line 558
    :cond_87
    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->sendAconfigdRequests(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public static start(Landroid/content/ContentResolver;)Lcom/android/server/am/SettingsToPropertiesMapper;
    .registers 4

    .line 452
    new-instance v0, Lcom/android/server/am/SettingsToPropertiesMapper;

    sget-object v1, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    .line 455
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getDeviceConfigScopes()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;-><init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertiesFromSettings()V

    return-object v0
.end method

.method public static writeFlagOverrideRemovalRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    const-wide v0, 0x20b00000001L

    .line 345
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000005L

    .line 346
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10900000002L

    .line 347
    invoke-virtual {p0, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10900000003L

    .line 348
    invoke-virtual {p0, v4, v5, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide p1, 0x10800000001L

    const/4 v4, 0x0

    .line 349
    invoke-virtual {p0, p1, p2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    if-eqz p3, :cond_2f

    const/4 p1, 0x1

    goto :goto_30

    :cond_2f
    const/4 p1, 0x2

    :goto_30
    const-wide p2, 0x10e00000004L

    .line 350
    invoke-virtual {p0, p2, p3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 354
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 355
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeFlagOverrideRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    const-wide v0, 0x20b00000001L

    .line 322
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000002L

    .line 323
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10900000001L

    .line 324
    invoke-virtual {p0, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10900000002L

    .line 325
    invoke-virtual {p0, v4, v5, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide p1, 0x10900000003L

    .line 326
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    if-eqz p4, :cond_2e

    const/4 p1, 0x2

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x3

    :goto_2f
    const-wide p2, 0x10e00000004L

    .line 327
    invoke-virtual {p0, p2, p3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 330
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 331
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$updatePropertiesFromSettings$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7

    .line 195
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 197
    invoke-static {v0, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3c

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "unable to construct system property for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    return-void

    :cond_3c
    const/4 v4, 0x0

    .line 203
    invoke-virtual {p1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_45
    return-void
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p2, :cond_10

    .line 566
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    return-void

    .line 569
    :cond_d
    const-string p2, ""

    goto :goto_3b

    .line 570
    :cond_10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x5c

    if-le p0, v0, :cond_3b

    .line 571
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "key="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exceeds system property max length."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    return-void

    .line 576
    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception p0

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to set property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public updatePropertiesFromSettings()V
    .registers 10

    .line 163
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_59

    aget-object v4, v0, v3

    .line 164
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 165
    const-string v6, "global_settings"

    invoke-static {v6, v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_2b

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting uri is null for globalSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_56

    :cond_2b
    if-nez v6, :cond_42

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid prop name for globalSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_56

    .line 175
    :cond_42
    new-instance v7, Lcom/android/server/am/SettingsToPropertiesMapper$1;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper$1;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v8

    if-nez v8, :cond_51

    .line 185
    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_51
    iget-object v4, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v5, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 190
    :cond_59
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    array-length v1, v0

    :goto_5c
    if-ge v2, v1, :cond_6d

    aget-object v3, v0, v2

    .line 191
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;)V

    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 211
    :cond_6d
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    new-instance v0, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda1;-><init>()V

    .line 209
    const-string/jumbo v1, "staged"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 222
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "device_config_overrides"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 618
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 619
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
