.class public Lcom/android/server/am/SettingsToPropertiesMapper;
.super Ljava/lang/Object;
.source "SettingsToPropertiesMapper.java"


# static fields
.field private static final GLOBAL_SETTINGS_CATEGORY:Ljava/lang/String; = "global_settings"

.field private static final RESET_PERFORMED_PROPERTY:Ljava/lang/String; = "device_config.reset_performed"

.field private static final RESET_RECORD_FILE_PATH:Ljava/lang/String; = "/data/server_configurable_flags/reset_flags"

.field private static final SYSTEM_PROPERTY_INVALID_SUBSTRING:Ljava/lang/String; = ".."

.field private static final SYSTEM_PROPERTY_MAX_LENGTH:I = 0x5c

.field private static final SYSTEM_PROPERTY_PREFIX:Ljava/lang/String; = "persist.device_config."

.field private static final SYSTEM_PROPERTY_VALID_CHARACTERS_REGEX:Ljava/lang/String; = "^[\\w\\.\\-@:]*$"

.field private static final TAG:Ljava/lang/String; = "SettingsToPropertiesMapper"

.field static final sDeviceConfigScopes:[Ljava/lang/String;

.field static final sGlobalSettings:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDeviceConfigScopes:[Ljava/lang/String;

.field private final mGlobalSettings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 71
    const-string/jumbo v0, "native_flags_health_check_enabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    .line 81
    const-string v1, "activity_manager_native_boot"

    const-string v2, "configuration"

    const-string v3, "connectivity"

    const-string/jumbo v4, "input_native_boot"

    const-string/jumbo v5, "intelligence_content_suggestions"

    const-string/jumbo v6, "lmkd_native"

    const-string/jumbo v7, "media_native"

    const-string/jumbo v8, "netd_native"

    const-string/jumbo v9, "nnapi_native"

    const-string/jumbo v10, "profcollect_native_boot"

    const-string/jumbo v11, "runtime_native"

    const-string/jumbo v12, "runtime_native_boot"

    const-string/jumbo v13, "statsd_native"

    const-string/jumbo v14, "statsd_native_boot"

    const-string/jumbo v15, "storage_native_boot"

    const-string/jumbo v16, "surface_flinger_native_boot"

    const-string/jumbo v17, "swcodec_native"

    const-string/jumbo v18, "tethering"

    const-string/jumbo v19, "vendor_system_native"

    const-string/jumbo v20, "virtualization_framework_native"

    const-string/jumbo v21, "window_manager_native_boot"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "globalSettings"    # [Ljava/lang/String;
    .param p3, "deviceConfigScopes"    # [Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 116
    iput-object p2, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    .line 118
    return-void
.end method

.method static getResetFlagsFileContent()Ljava/lang/String;
    .registers 4

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "content":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/server_configurable_flags/reset_flags"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v1, "reset_flag_file":Ljava/io/File;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 279
    .local v2, "br":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 281
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_1b

    .line 284
    .end local v1    # "reset_flag_file":Ljava/io/File;
    .end local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_21

    .line 282
    :catch_1b
    move-exception v1

    .line 283
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "failed to read file /data/server_configurable_flags/reset_flags"

    invoke-static {v2, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 285
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_21
    return-object v0
.end method

.method public static getResetNativeCategories()[Ljava/lang/String;
    .registers 10

    .line 191
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 192
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 195
    :cond_a
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getResetFlagsFileContent()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 197
    new-array v1, v1, [Ljava/lang/String;

    return-object v1

    .line 200
    :cond_17
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "property_names":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 202
    .local v3, "categories":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v4, v2

    move v5, v1

    :goto_24
    if-ge v5, v4, :cond_52

    aget-object v6, v2, v5

    .line 203
    .local v6, "property_name":Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, "segments":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x3

    if-ge v8, v9, :cond_49

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to extract category name from property "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 206
    goto :goto_4f

    .line 208
    :cond_49
    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v6    # "property_name":Ljava/lang/String;
    .end local v7    # "segments":[Ljava/lang/String;
    :goto_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 210
    :cond_52
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static isNativeFlagsResetPerformed()Z
    .registers 2

    .line 181
    const-string v0, "device_config.reset_performed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 266
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_a

    .line 267
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 269
    :cond_a
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_d
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 258
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_a

    .line 259
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 261
    :cond_a
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    :goto_d
    return-void
.end method

.method static makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "categoryName"    # Ljava/lang/String;
    .param p1, "flagName"    # Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.device_config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "propertyName":Ljava/lang/String;
    const-string v1, "^[\\w\\.\\-@:]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 226
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_30

    .line 230
    :cond_2f
    return-object v0

    .line 227
    :cond_30
    :goto_30
    const/4 v1, 0x0

    return-object v1
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 235
    if-nez p2, :cond_10

    .line 238
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 239
    return-void

    .line 241
    :cond_d
    const-string p2, ""

    goto :goto_2f

    .line 242
    :cond_10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5c

    if-le v0, v1, :cond_2f

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exceeds system property max length."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 244
    return-void

    .line 248
    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    .line 254
    goto :goto_5a

    .line 249
    :catch_33
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5a
    return-void
.end method

.method public static start(Landroid/content/ContentResolver;)Lcom/android/server/am/SettingsToPropertiesMapper;
    .registers 4
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .line 169
    new-instance v0, Lcom/android/server/am/SettingsToPropertiesMapper;

    sget-object v1, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;-><init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 171
    .local v0, "mapper":Lcom/android/server/am/SettingsToPropertiesMapper;
    invoke-virtual {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertiesFromSettings()V

    .line 172
    return-object v0
.end method


# virtual methods
.method synthetic lambda$updatePropertiesFromSettings$0$com-android-server-am-SettingsToPropertiesMapper(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 154
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "scope":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    .local v2, "key":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "propertyName":Ljava/lang/String;
    if-nez v3, :cond_40

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to construct system property for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 160
    return-void

    .line 162
    :cond_40
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "propertyName":Ljava/lang/String;
    goto :goto_c

    .line 164
    :cond_49
    return-void
.end method

.method updatePropertiesFromSettings()V
    .registers 10

    .line 122
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_5f

    aget-object v4, v0, v3

    .line 123
    .local v4, "globalSetting":Ljava/lang/String;
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 124
    .local v5, "settingUri":Landroid/net/Uri;
    const-string/jumbo v6, "global_settings"

    invoke-static {v6, v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "propName":Ljava/lang/String;
    if-nez v5, :cond_2e

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setting uri is null for globalSetting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 127
    goto :goto_5c

    .line 129
    :cond_2e
    if-nez v6, :cond_48

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid prop name for globalSetting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 131
    goto :goto_5c

    .line 134
    :cond_48
    new-instance v7, Lcom/android/server/am/SettingsToPropertiesMapper$1;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper$1;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v7, "co":Landroid/database/ContentObserver;
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v8

    if-nez v8, :cond_57

    .line 144
    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_57
    iget-object v8, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v5, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 122
    .end local v4    # "globalSetting":Ljava/lang/String;
    .end local v5    # "settingUri":Landroid/net/Uri;
    .end local v6    # "propName":Ljava/lang/String;
    .end local v7    # "co":Landroid/database/ContentObserver;
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 149
    :cond_5f
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    array-length v1, v0

    :goto_62
    if-ge v2, v1, :cond_73

    aget-object v3, v0, v2

    .line 150
    .local v3, "deviceConfigScope":Ljava/lang/String;
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;)V

    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 149
    .end local v3    # "deviceConfigScope":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 166
    :cond_73
    return-void
.end method

.method updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "settingValue":Ljava/lang/String;
    invoke-direct {p0, p2, v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method
