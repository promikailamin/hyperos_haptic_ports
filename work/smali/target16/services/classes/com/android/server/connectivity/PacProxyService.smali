.class public Lcom/android/server/connectivity/PacProxyService;
.super Landroid/net/IPacProxyManager$Stub;
.source "PacProxyService.java"


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mBroadcastStateLock:Ljava/lang/Object;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public mConnection:Landroid/content/ServiceConnection;

.field public mContext:Landroid/content/Context;

.field public mCurrentDelay:I

.field public mCurrentPac:Ljava/lang/String;

.field public volatile mHasDownloaded:Z

.field public volatile mHasSentBroadcast:Z

.field public mLastPort:I

.field public final mNetThreadHandler:Landroid/os/Handler;

.field public mPacDownloader:Ljava/lang/Runnable;

.field public mPacRefreshIntent:Landroid/app/PendingIntent;

.field public volatile mPacUrl:Landroid/net/Uri;

.field public mProxyConnection:Landroid/content/ServiceConnection;

.field public final mProxyLock:Ljava/lang/Object;

.field public mProxyService:Lcom/android/net/IProxyService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurrentPac(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastPort(Lcom/android/server/connectivity/PacProxyService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetThreadHandler(Lcom/android/server/connectivity/PacProxyService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPacDownloader(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPacUrl(Lcom/android/server/connectivity/PacProxyService;)Landroid/net/Uri;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProxyLock(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProxyService(Lcom/android/server/connectivity/PacProxyService;)Lcom/android/net/IProxyService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmHasDownloaded(Lcom/android/server/connectivity/PacProxyService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHasSentBroadcast(Lcom/android/server/connectivity/PacProxyService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastPort(Lcom/android/server/connectivity/PacProxyService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProxyService(Lcom/android/server/connectivity/PacProxyService;Lcom/android/net/IProxyService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlongSchedule(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->longSchedule()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreschedule(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->reschedule()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendProxyIfNeeded(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->sendProxyIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCurrentProxyScript(Lcom/android/server/connectivity/PacProxyService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PacProxyService;->setCurrentProxyScript(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smget(Landroid/net/Uri;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/connectivity/PacProxyService;->get(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 161
    invoke-direct {p0}, Landroid/net/IPacProxyManager$Stub;-><init>()V

    .line 84
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    .line 101
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/android/server/connectivity/PacProxyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacProxyService$1;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Ljava/lang/Runnable;

    .line 162
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    .line 163
    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    .line 164
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "android.pacproxyservice"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 166
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 167
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    .line 171
    new-instance v0, Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static get(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7

    .line 237
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 241
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 244
    :try_start_13
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_19} :catch_8f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_13 .. :try_end_19} :catch_78

    .line 255
    :try_start_19
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_23} :catch_24

    goto :goto_26

    :catch_24
    const-wide/16 v0, -0x1

    :goto_26
    const-wide/32 v2, 0x1312d00

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5c

    .line 262
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 263
    new-array v1, v1, [B

    .line 265
    :goto_36
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_57

    const/4 v5, 0x0

    .line 266
    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 267
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_4f

    goto :goto_36

    .line 268
    :cond_4f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "PAC too big"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_57
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 260
    :cond_5c
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PAC too big: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :catch_78
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URL connection type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :catch_8f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect proxy type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_a6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addListener(Landroid/net/IPacProxyInstalledListener;)V
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 186
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final bind()V
    .registers 10

    .line 331
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 332
    const-string p0, "PacProxyService"

    const-string v0, "No context for binding"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 335
    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 336
    const-string v1, "com.android.pacprocessor"

    const-string v2, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_28

    .line 339
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 342
    :cond_28
    new-instance v1, Lcom/android/server/connectivity/PacProxyService$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacProxyService$2;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Landroid/content/ServiceConnection;

    .line 378
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v2, v0, v1, v3, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 382
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 383
    const-string v0, "com.android.proxyhandler"

    const-string v1, "com.android.proxyhandler.ProxyService"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    new-instance v5, Lcom/android/server/connectivity/PacProxyService$3;

    invoke-direct {v5, p0}, Lcom/android/server/connectivity/PacProxyService$3;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    iput-object v5, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 420
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const v6, 0x40000005    # 2.0000012f

    iget-object v7, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    return-void
.end method

.method public final getAlarmManager()Landroid/app/AlarmManager;
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 177
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 179
    :cond_10
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public final getDownloadDelay(I)J
    .registers 3

    .line 303
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->getPacChangeDelay()Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 304
    array-length v0, p0

    if-ge p1, v0, :cond_14

    .line 305
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_14
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getNextDelay(I)I
    .registers 2

    .line 0
    add-int/lit8 p1, p1, 0x1

    const/4 p0, 0x3

    if-le p1, p0, :cond_6

    return p0

    :cond_6
    return p1
.end method

.method public final getPacChangeDelay()Ljava/lang/String;
    .registers 3

    .line 292
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 295
    const-string v0, "conn.pac_change_delay"

    const-string v1, "8 32 120 14400 43200"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string/jumbo v1, "pac_change_delay"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_18

    return-object v0

    :cond_18
    return-object p0
.end method

.method public final longSchedule()V
    .registers 2

    const/4 v0, 0x0

    .line 282
    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    const/4 v0, 0x4

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PacProxyService;->setDownloadIn(I)V

    return-void
.end method

.method public removeListener(Landroid/net/IPacProxyInstalledListener;)V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 193
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final reschedule()V
    .registers 2

    .line 287
    iget v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PacProxyService;->getNextDelay(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PacProxyService;->setDownloadIn(I)V

    return-void
.end method

.method public final sendPacBroadcast(Landroid/net/ProxyInfo;)V
    .registers 6

    .line 439
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1a

    .line 441
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/IPacProxyInstalledListener;

    if-eqz v2, :cond_17

    const/4 v3, 0x0

    .line 444
    :try_start_14
    invoke-interface {v2, v3, p1}, Landroid/net/IPacProxyInstalledListener;->onPacProxyInstalled(Landroid/net/Network;Landroid/net/ProxyInfo;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 448
    :cond_1a
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final sendProxyIfNeeded()V
    .registers 4

    .line 453
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    if-eqz v1, :cond_24

    iget v1, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    goto :goto_24

    .line 457
    :cond_d
    iget-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    if-nez v1, :cond_22

    .line 458
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    invoke-static {v1, v2}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;I)Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/PacProxyService;->sendPacBroadcast(Landroid/net/ProxyInfo;)V

    const/4 v1, 0x1

    .line 459
    iput-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_26

    .line 461
    :cond_22
    :goto_22
    monitor-exit v0

    return-void

    .line 455
    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    .line 461
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_20

    throw p0
.end method

.method public final setCurrentProxyScript(Ljava/lang/String;)V
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    const-string v1, "PacProxyService"

    if-nez v0, :cond_d

    .line 319
    const-string/jumbo p0, "setCurrentProxyScript: no proxy service"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_d
    :try_start_d
    invoke-interface {v0, p1}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    .line 324
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 326
    const-string p1, "Unable to set PAC file"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)V
    .registers 5

    .line 206
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_4c

    .line 210
    :try_start_10
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 211
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    if-lez v1, :cond_32

    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    goto :goto_6e

    .line 212
    :cond_32
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 213
    iput p1, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    .line 214
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    .line 215
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    .line 216
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->bind()V

    goto :goto_6a

    .line 219
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 220
    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_58
    .catchall {:try_start_10 .. :try_end_58} :catchall_30

    .line 221
    :try_start_58
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 222
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    if-eqz v1, :cond_69

    .line 224
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->unbind()V

    goto :goto_69

    :catchall_67
    move-exception p0

    goto :goto_6c

    .line 226
    :cond_69
    :goto_69
    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_58 .. :try_end_6a} :catchall_67

    .line 228
    :goto_6a
    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_30

    return-void

    .line 226
    :goto_6c
    :try_start_6c
    monitor-exit p1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_67

    :try_start_6d
    throw p0

    .line 228
    :goto_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6d .. :try_end_6f} :catchall_30

    throw p0
.end method

.method public final setDownloadIn(I)V
    .registers 6

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PacProxyService;->getDownloadDelay(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 313
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public final unbind()V
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 427
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 428
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Landroid/content/ServiceConnection;

    .line 430
    :cond_c
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_17

    .line 431
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 432
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 434
    :cond_17
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    const/4 v0, -0x1

    .line 435
    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    return-void
.end method
