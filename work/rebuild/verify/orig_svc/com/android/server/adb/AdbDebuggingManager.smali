.class public Lcom/android/server/adb/AdbDebuggingManager;
.super Ljava/lang/Object;
.source "AdbDebuggingManager.java"


# static fields
.field public static final ADBD_STATE_CHANGE_TIMEOUT:J

.field public static final SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

.field public static final TAG:Ljava/lang/String; = "AdbDebuggingManager"


# instance fields
.field public final mAdbConnectionInfo:Lcom/android/server/adb/AdbConnectionInfo;

.field public mAdbPairingThread:Lcom/android/server/adb/AdbPairingThread;

.field public mAdbUsbEnabled:Z

.field public mAdbWifiEnabled:Z

.field public final mConfirmComponent:Ljava/lang/String;

.field public final mConnectedKeys:Ljava/util/Map;

.field public mConnectionPortPoller:Lcom/android/server/adb/AdbConnectionPortPoller;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mFingerprints:Ljava/lang/String;

.field final mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

.field public final mTempKeysFile:Ljava/io/File;

.field public final mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

.field public final mUserKeyFile:Ljava/io/File;

.field public final mWifiConnectedKeys:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$2g0Xti2RgQf4mkjMPyIqKew3NFI(Lcom/android/server/adb/AdbDebuggingManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->lambda$startTLSPortPoller$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$I3NlJTMol-2JFN3dPyCB7gKkrsk()J
    .registers 2

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbConnectionInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbConnectionInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdbPairingThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbPairingThread;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbPairingThread:Lcom/android/server/adb/AdbPairingThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFingerprints(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempKeysFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserKeyFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAdbPairingThread(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbPairingThread;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbPairingThread:Lcom/android/server/adb/AdbPairingThread;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPairedDevicesForKeys(Lcom/android/server/adb/AdbDebuggingManager;Ljava/util/Set;)Ljava/util/Map;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->getPairedDevicesForKeys(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->sendPersistKeyStoreMessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartConfirmationForKey(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartConfirmationForNetwork(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationForNetwork(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartTLSPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->startTLSPortPoller()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopTLSPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->stopTLSPortPoller()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetADBD_STATE_CHANGE_TIMEOUT()J
    .registers 2

    .line 0
    sget-wide v0, Lcom/android/server/adb/AdbDebuggingManager;->ADBD_STATE_CHANGE_TIMEOUT:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smwifiLifeCycleOverAdbdauthSupported()Z
    .registers 1

    .line 0
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->wifiLifeCycleOverAdbdauthSupported()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 110
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 128
    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/adb/AdbDebuggingManager;->ADBD_STATE_CHANGE_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 153
    const-string v0, "adb_keys"

    .line 156
    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v0, "adb_temp_keys.xml"

    .line 157
    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 153
    invoke-direct/range {v1 .. v7}, Lcom/android/server/adb/AdbDebuggingManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;Lcom/android/server/adb/AdbDebuggingManager$Ticker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;Lcom/android/server/adb/AdbDebuggingManager$Ticker;)V
    .registers 8

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbPairingThread:Lcom/android/server/adb/AdbPairingThread;

    .line 142
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    .line 145
    new-instance v0, Lcom/android/server/adb/AdbConnectionInfo;

    invoke-direct {v0}, Lcom/android/server/adb/AdbConnectionInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbConnectionInfo;

    .line 174
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 176
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConfirmComponent:Ljava/lang/String;

    .line 177
    iput-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    .line 178
    iput-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 179
    iput-object p6, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 180
    new-instance p1, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2, p5}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)V

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    return-void
.end method

.method public static getAdbFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1350
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1351
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "misc/adb"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1354
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v0, "ADB data directory does not exist"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1358
    :cond_1b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1213
    const-string v1, ""

    if-nez p0, :cond_a

    return-object v1

    .line 1218
    :cond_a
    :try_start_a
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_5d

    .line 1224
    const-string v3, "\\s+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 1227
    :try_start_1d
    invoke-static {p0, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_25} :catch_54

    .line 1232
    :goto_25
    array-length v1, p0

    if-ge v3, v1, :cond_4f

    .line 1233
    aget-byte v1, p0, v3

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    const-string v2, "0123456789ABCDEF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    aget-byte v1, p0, v3

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1235
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_4c

    .line 1236
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1239
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_54
    move-exception p0

    .line 1229
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v2, "error doing base64 decoding"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_5d
    move-exception p0

    .line 1220
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting digester"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    .line 185
    const-string v0, "android.permission.MANAGE_DEBUGGING"

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public static wifiLifeCycleOverAdbdauthSupported()Z
    .registers 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public allowDebugging(ZLjava/lang/String;)V
    .registers 5

    .line 1402
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1403
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1404
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1405
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public allowWirelessDebugging(ZLjava/lang/String;)V
    .registers 5

    .line 1426
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1427
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1428
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1429
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public clearDebuggingKeys()V
    .registers 2

    .line 1418
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;
    .registers 4

    .line 1340
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 1341
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1343
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_14

    :cond_30
    return-object p0
.end method

.method public denyDebugging()V
    .registers 2

    .line 1410
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public denyWirelessDebugging()V
    .registers 2

    .line 1434
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public disablePairing()V
    .registers 2

    .line 1487
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 10

    .line 1508
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 1510
    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-static {p4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object p4

    .line 1513
    invoke-virtual {p4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->isConnected()Z

    move-result p4

    .line 1510
    const-string v0, "connected_to_adb"

    const-wide v1, 0x10800000001L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v0, 0x10900000002L

    .line 1514
    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    const-string/jumbo v2, "last_key_received"

    invoke-static {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 1521
    :try_start_27
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/adb/adb_keys"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1523
    const-string/jumbo v2, "user_keys"

    .line 1526
    invoke-static {v1, v0, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide v3, 0x10900000003L

    .line 1523
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_55

    :catch_44
    move-exception v1

    goto :goto_4e

    .line 1528
    :cond_46
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v2, "No user keys on this device"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_4d} :catch_44

    goto :goto_55

    .line 1531
    :goto_4e
    sget-object v2, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v3, "Cannot read user keys"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1535
    :goto_55
    :try_start_55
    const-string/jumbo v1, "system_keys"

    new-instance v2, Ljava/io/File;

    const-string v3, "/adb_keys"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1538
    invoke-static {v2, v0, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000004L

    .line 1535
    invoke-virtual {p1, v1, v3, v4, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_6b} :catch_6c

    goto :goto_74

    :catch_6c
    move-exception v1

    .line 1540
    sget-object v2, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v3, "Cannot read system keys"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1544
    :goto_74
    :try_start_74
    const-string/jumbo v1, "keystore"

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 1547
    invoke-static {p0, v0, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide v2, 0x10900000005L

    .line 1544
    invoke-virtual {p1, v1, v2, v3, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_85} :catch_86

    goto :goto_8e

    :catch_86
    move-exception p0

    .line 1549
    sget-object p4, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v0, "Cannot read keystore: "

    invoke-static {p4, v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1552
    :goto_8e
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public enablePairingByPairingCode()V
    .registers 2

    .line 1473
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1478
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1479
    const-string/jumbo v1, "serviceName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    const-string/jumbo p1, "password"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 p2, 0x10

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1482
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getAdbTempKeysFile()Ljava/io/File;
    .registers 1

    .line 1362
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    return-object p0
.end method

.method public getAdbWirelessPort()I
    .registers 1

    .line 1439
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbConnectionInfo;

    invoke-virtual {p0}, Lcom/android/server/adb/AdbConnectionInfo;->getPort()I

    move-result p0

    return p0
.end method

.method public getPairedDevices()Ljava/util/Map;
    .registers 2

    .line 1444
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbKeyStore;->getKeys()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager;->getPairedDevicesForKeys(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getPairedDevicesForKeys(Ljava/util/Set;)Ljava/util/Map;
    .registers 8

    .line 1448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1449
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1450
    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1452
    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1453
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_26

    .line 1454
    aget-object v3, v3, v5

    goto :goto_29

    .line 1453
    :cond_26
    const-string/jumbo v3, "nouser@nohostname"

    .line 1456
    :goto_29
    new-instance v4, Landroid/debug/PairDevice;

    invoke-direct {v4}, Landroid/debug/PairDevice;-><init>()V

    .line 1457
    iput-object v3, v4, Landroid/debug/PairDevice;->name:Ljava/lang/String;

    .line 1458
    iput-object v2, v4, Landroid/debug/PairDevice;->guid:Ljava/lang/String;

    .line 1459
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v4, Landroid/debug/PairDevice;->connected:Z

    .line 1460
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_3e
    return-object v0
.end method

.method public getUserKeyFile()Ljava/io/File;
    .registers 1

    .line 1366
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    return-object p0
.end method

.method public final synthetic lambda$startTLSPortPoller$1(I)V
    .registers 5

    .line 199
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received tls port from poller ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    if-lez p1, :cond_1d

    const/16 v1, 0x18

    goto :goto_1f

    :cond_1d
    const/16 v1, 0x19

    .line 201
    :goto_1f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyKeyFilesUpdated()V
    .registers 2

    .line 1497
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final sendPersistKeyStoreMessage()V
    .registers 3

    .line 1502
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1503
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAdbEnabled(ZB)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_35

    if-eq p2, v1, :cond_28

    if-eq p2, v0, :cond_20

    .line 1391
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAdbEnabled called with unimplemented transport type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1388
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AdbTransportType.VSOCK is not yet supported here"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1383
    :cond_28
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    if-eqz p1, :cond_2f

    const/16 p1, 0xb

    goto :goto_31

    :cond_2f
    const/16 p1, 0xc

    :goto_31
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 1378
    :cond_35
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    if-eqz p1, :cond_3a

    move v0, v1

    :cond_3a
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z
    .registers 6

    .line 1306
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1307
    invoke-virtual {p0, p1, p3}, Lcom/android/server/adb/AdbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p3

    const/high16 v1, 0x10000000

    .line 1308
    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 1309
    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1311
    :try_start_17
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_1c} :catch_1e

    const/4 p0, 0x1

    return p0

    :catch_1e
    move-exception p0

    .line 1314
    sget-object p2, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to start adb whitelist activity: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method public final startConfirmationForKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "key"

    invoke-direct {v1, v2, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    new-instance p1, Ljava/util/AbstractMap$SimpleEntry;

    const-string v1, "fingerprints"

    invoke-direct {p1, v1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 1268
    iget-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1270
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 1272
    iget-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConfirmComponent:Ljava/lang/String;

    if-eqz p2, :cond_33

    goto :goto_4a

    .line 1274
    :cond_33
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1040243

    .line 1275
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_4a

    .line 1282
    :cond_3f
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1040244

    .line 1283
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1287
    :goto_4a
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1288
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 1289
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_63

    goto :goto_7f

    .line 1292
    :cond_63
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to start customAdbPublicKeyConfirmation[SecondaryUser]Component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " as an Activity or a Service"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    :goto_7f
    return-void
.end method

.method public final startConfirmationForNetwork(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "ssid"

    invoke-direct {v1, v2, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    new-instance p1, Ljava/util/AbstractMap$SimpleEntry;

    const-string v1, "bssid"

    invoke-direct {p1, v1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 1248
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1040245

    .line 1249
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1250
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1251
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1252
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 1253
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_4c

    goto :goto_67

    .line 1256
    :cond_4c
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to start customAdbWifiNetworkConfirmation[SecondaryUser]Component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " as an Activity or a Service"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    :goto_67
    return-void
.end method

.method public final startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z
    .registers 5

    .line 1327
    invoke-virtual {p0, p1, p3}, Lcom/android/server/adb/AdbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p3

    .line 1329
    :try_start_4
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_a} :catch_e

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :catch_e
    move-exception p0

    .line 1333
    sget-object p2, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to start adb whitelist service: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public final startTLSPortPoller()V
    .registers 3

    .line 190
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->wifiLifeCycleOverAdbdauthSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 191
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v0, "Expecting tls port from adbdauth"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 195
    :cond_e
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v1, "Expecting tls port from ADB Wifi connection poller"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Lcom/android/server/adb/AdbConnectionPortPoller;

    new-instance v1, Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    invoke-direct {v0, v1}, Lcom/android/server/adb/AdbConnectionPortPoller;-><init>(Lcom/android/server/adb/AdbConnectionPortPoller$PortChangedCallback;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbConnectionPortPoller;

    .line 208
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final stopTLSPortPoller()V
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbConnectionPortPoller;

    if-nez v0, :cond_5

    return-void

    .line 216
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/adb/AdbConnectionPortPoller;->cancelAndWait()V

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbConnectionPortPoller;

    return-void
.end method

.method public unpairDevice(Ljava/lang/String;)V
    .registers 4

    .line 1467
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v1, 0x11

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1468
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
