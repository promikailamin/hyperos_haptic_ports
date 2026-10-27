.class public Landroid/os/updater/CheckerUtils;
.super Ljava/lang/Object;
.source "CheckerUtils.java"


# static fields
.field private static final blacklist DEBUG_CONFIG_PATH:Ljava/lang/String;

.field private static final blacklist EMPTY_STRING:Ljava/lang/String; = ""

.field private static final blacklist GET_MEMORY_LOCK:Ljava/lang/Object;

.field public static final whitelist INSTALL_CORRUPT:I = 0x6

.field public static final whitelist INSTALL_ERROR:I = 0x5

.field public static final whitelist INSTALL_NONE:I = 0x8

.field public static final whitelist INSTALL_NO_FILE:I = 0x3

.field public static final whitelist INSTALL_NO_STATUS:I = 0x9

.field public static final whitelist INSTALL_SUCCESS:I = 0x0

.field public static final whitelist INSTALL_UNKNOWN:I = 0x7

.field public static final whitelist INSTALL_VERIFY_FAILURE:I = 0x4

.field private static final blacklist IS_XIAOMI:Ljava/lang/String; = "is_xiaomi"

.field private static final blacklist ROM_DIR:Ljava/lang/String; = "downloaded_rom"

.field private static final blacklist ROM_ZONE_CHINA:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final whitelist UPDATE_STABLE_VERSION_ONLY:Ljava/lang/String; = "update_stable_version_only"

.field public static final whitelist UPDATE_STABLE_VERSION_ONLY_DEFAULT:I

.field private static blacklist sRecoveryResultStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 37
    const-class v0, Landroid/os/updater/CheckerUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/updater/CheckerUtils;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "downloaded_rom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/updater_config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/updater/CheckerUtils;->DEBUG_CONFIG_PATH:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/updater/CheckerUtils;->sRecoveryResultStrings:Ljava/util/HashMap;

    .line 60
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INSTALL_SUCCESS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Landroid/os/updater/CheckerUtils;->sRecoveryResultStrings:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INSTALL_NONE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Landroid/os/updater/CheckerUtils;->sRecoveryResultStrings:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INSTALL_NO_FILE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Landroid/os/updater/CheckerUtils;->sRecoveryResultStrings:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INSTALL_VERIFY_FAILURE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Landroid/os/updater/CheckerUtils;->sRecoveryResultStrings:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INSTALL_ERROR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Landroid/os/updater/CheckerUtils;->sRecoveryResultStrings:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INSTALL_CORRUPT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/updater/CheckerUtils;->GET_MEMORY_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getAndroidId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "salt"    # Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "androidId":Ljava/lang/String;
    const-string v1, ""

    .line 219
    .local v1, "encryptAndroidId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 221
    :try_start_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MD5"

    invoke-static {v2, v3}, Landroid/os/updater/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Landroid/os/updater/DigestUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v2
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_33} :catch_35

    move-object v1, v2

    .line 225
    goto :goto_39

    .line 223
    :catch_35
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_39
    :goto_39
    return-object v1
.end method

.method public static whitelist getBranchCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 173
    invoke-static {}, Landroid/os/updater/CheckerUtils;->isFinalUserBuild()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "F"

    goto :goto_1a

    .line 174
    :cond_9
    invoke-static {}, Landroid/os/updater/CheckerUtils;->isXiaomi()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p0}, Landroid/os/updater/CheckerUtils;->isUpdateStableVersionOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "S"

    goto :goto_1a

    :cond_18
    const-string v0, "X"

    .line 173
    :goto_1a
    return-object v0
.end method

.method public static whitelist getCarrier()Ljava/lang/String;
    .registers 2

    .line 192
    const-string v0, "ro.carrier.name"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getCodebase()Ljava/lang/String;
    .registers 1

    .line 126
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getCodebaseSimplify()Ljava/lang/String;
    .registers 4

    .line 135
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 137
    .local v1, "result":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2a

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    .line 140
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    :goto_3d
    return-object v1
.end method

.method public static whitelist getDeviceName()Ljava/lang/String;
    .registers 2

    .line 151
    const-string v0, "ro.product.mod_device"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "modDevice":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    move-object v0, v1

    .line 153
    return-object v0
.end method

.method public static whitelist getIncrementalVersion()Ljava/lang/String;
    .registers 1

    .line 117
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getLanguage()Ljava/lang/String;
    .registers 4

    .line 92
    const-string v0, ""

    .line 93
    .local v0, "lang":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 95
    .local v1, "am":Landroid/app/IActivityManager;
    :try_start_6
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 96
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    move-object v0, v3

    .line 99
    .end local v2    # "config":Landroid/content/res/Configuration;
    goto :goto_13

    .line 97
    :catch_12
    move-exception v2

    .line 101
    :goto_13
    return-object v0
.end method

.method public static whitelist getMIUIVersion()Ljava/lang/String;
    .registers 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/updater/CheckerUtils;->getIncrementalVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getModel()Ljava/lang/String;
    .registers 1

    .line 208
    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getRegion()Ljava/lang/String;
    .registers 2

    .line 183
    const-string v0, "ro.miui.region"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getRomZone()I
    .registers 2

    .line 196
    const-string v0, "ro.rom.zone"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getSerialNum()Ljava/lang/String;
    .registers 3

    .line 83
    invoke-static {}, Landroid/os/updater/CheckerUtils;->getSerialNumFromProp()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "serialNum":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 85
    return-object v0

    .line 87
    :cond_b
    sget-object v1, Landroid/os/updater/CheckerUtils;->TAG:Ljava/lang/String;

    const-string v2, "getSerialNum: is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v0
.end method

.method private static blacklist getSerialNumFromProp()Ljava/lang/String;
    .registers 2

    .line 79
    const-string v0, "ro.boot.cpuid"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isDebug()Z
    .registers 2

    .line 231
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/updater/CheckerUtils;->DEBUG_CONFIG_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static whitelist isFinalUserBuild()Z
    .registers 1

    .line 157
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    return v0
.end method

.method public static whitelist isInternationalBuild()Z
    .registers 1

    .line 213
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v0
.end method

.method public static whitelist isUpdateStableVersionOnly(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_stable_version_only"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "followStable":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method public static whitelist isXiaomi()Z
    .registers 3

    .line 200
    sget-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    .line 201
    .local v0, "isXiaomi":Z
    const-string v1, "is_xiaomi"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->hasFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 202
    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 204
    :cond_10
    return v0
.end method
