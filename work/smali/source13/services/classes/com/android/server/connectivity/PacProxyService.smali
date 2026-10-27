.class public Lcom/android/server/connectivity/PacProxyService;
.super Landroid/net/IPacProxyManager$Stub;
.source "PacProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PAC_REFRESH:Ljava/lang/String; = "android.net.proxy.PAC_REFRESH"

.field private static final DEFAULT_DELAYS:Ljava/lang/String; = "8 32 120 14400 43200"

.field private static final DELAY_1:I = 0x0

.field private static final DELAY_4:I = 0x3

.field private static final DELAY_LONG:I = 0x4

.field private static final MAX_PAC_SIZE:J = 0x1312d00L

.field private static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field private static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field private static final PAC_SERVICE_NAME:Ljava/lang/String; = "com.android.net.IProxyService"

.field private static final PROXY_PACKAGE:Ljava/lang/String; = "com.android.proxyhandler"

.field private static final PROXY_SERVICE:Ljava/lang/String; = "com.android.proxyhandler.ProxyService"

.field private static final TAG:Ljava/lang/String; = "PacProxyService"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastStateLock:Ljava/lang/Object;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/IPacProxyInstalledListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCurrentDelay:I

.field private mCurrentPac:Ljava/lang/String;

.field private volatile mHasDownloaded:Z

.field private volatile mHasSentBroadcast:Z

.field private mLastPort:I

.field private final mNetThreadHandler:Landroid/os/Handler;

.field private mPacDownloader:Ljava/lang/Runnable;

.field private mPacRefreshIntent:Landroid/app/PendingIntent;

.field private volatile mPacUrl:Landroid/net/Uri;

.field private mProxyConnection:Landroid/content/ServiceConnection;

.field private final mProxyLock:Ljava/lang/Object;

.field private mProxyService:Lcom/android/net/IProxyService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentPac(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastPort(Lcom/android/server/connectivity/PacProxyService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetThreadHandler(Lcom/android/server/connectivity/PacProxyService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPacDownloader(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPacUrl(Lcom/android/server/connectivity/PacProxyService;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxyLock(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxyService(Lcom/android/server/connectivity/PacProxyService;)Lcom/android/net/IProxyService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHasDownloaded(Lcom/android/server/connectivity/PacProxyService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasSentBroadcast(Lcom/android/server/connectivity/PacProxyService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastPort(Lcom/android/server/connectivity/PacProxyService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProxyService(Lcom/android/server/connectivity/PacProxyService;Lcom/android/net/IProxyService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mlongSchedule(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/PacProxyService;->longSchedule()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreschedule(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/PacProxyService;->reschedule()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendProxyIfNeeded(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/PacProxyService;->sendProxyIfNeeded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCurrentProxyScript(Lcom/android/server/connectivity/PacProxyService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacProxyService;->setCurrentProxyScript(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smget(Landroid/net/Uri;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/connectivity/PacProxyService;->get(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    invoke-direct {p0}, Landroid/net/IPacProxyManager$Stub;-><init>()V

    .line 83
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    .line 100
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/android/server/connectivity/PacProxyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacProxyService$1;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Ljava/lang/Runnable;

    .line 161
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    .line 163
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "android.pacproxyservice"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 165
    .local v0, "netThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 166
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    .line 168
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x4000000

    invoke-static {p1, v2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    .line 170
    new-instance v1, Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    return-void
.end method

.method private bind()V
    .registers 9

    .line 330
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 331
    const-string v0, "PacProxyService"

    const-string v1, "No context for binding"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void

    .line 334
    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.pacprocessor"

    const-string v2, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_28

    .line 338
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void

    .line 341
    :cond_28
    new-instance v1, Lcom/android/server/connectivity/PacProxyService$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacProxyService$2;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Landroid/content/ServiceConnection;

    .line 375
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 379
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    .line 380
    const-string v1, "com.android.proxyhandler"

    const-string v2, "com.android.proxyhandler.ProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    new-instance v4, Lcom/android/server/connectivity/PacProxyService$3;

    invoke-direct {v4, p0}, Lcom/android/server/connectivity/PacProxyService$3;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    iput-object v4, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 417
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const v5, 0x40000005    # 2.0000012f

    iget-object v6, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    .line 420
    return-void
.end method

.method private static get(Landroid/net/Uri;)Ljava/lang/String;
    .registers 13
    .param p0, "pacUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 240
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "url":Ljava/net/URL;
    :try_start_13
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_19} :catch_99
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_13 .. :try_end_19} :catch_7f

    .line 250
    .local v1, "urlConnection":Ljava/net/URLConnection;
    nop

    .line 252
    const-wide/16 v2, -0x1

    .line 254
    .local v2, "contentLength":J
    :try_start_1c
    const-string v4, "Content-Length"

    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_26} :catch_28

    move-wide v2, v4

    .line 257
    goto :goto_29

    .line 255
    :catch_28
    move-exception v4

    .line 258
    :goto_29
    const-wide/32 v4, 0x1312d00

    cmp-long v6, v2, v4

    if-gtz v6, :cond_60

    .line 261
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 262
    .local v6, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 264
    .local v7, "buffer":[B
    :goto_39
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "count":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_5b

    .line 265
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 266
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    int-to-long v10, v8

    cmp-long v8, v10, v4

    if-gtz v8, :cond_53

    goto :goto_39

    .line 267
    :cond_53
    new-instance v4, Ljava/io/IOException;

    const-string v5, "PAC too big"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 270
    :cond_5b
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 259
    .end local v6    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "buffer":[B
    .end local v9    # "count":I
    :cond_60
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PAC too big: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 248
    .end local v1    # "urlConnection":Ljava/net/URLConnection;
    .end local v2    # "contentLength":J
    :catch_7f
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported URL connection type for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_99
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect proxy type for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 178
    :cond_10
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private getDownloadDelay(I)J
    .registers 5
    .param p1, "delayIndex"    # I

    .line 302
    invoke-direct {p0}, Lcom/android/server/connectivity/PacProxyService;->getPacChangeDelay()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "list":[Ljava/lang/String;
    array-length v1, v0

    if-ge p1, v1, :cond_14

    .line 304
    aget-object v1, v0, p1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 306
    :cond_14
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private getNextDelay(I)I
    .registers 3
    .param p1, "currentDelay"    # I

    .line 274
    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x3

    if-le p1, v0, :cond_6

    .line 275
    return v0

    .line 277
    :cond_6
    return p1
.end method

.method private getPacChangeDelay()Ljava/lang/String;
    .registers 5

    .line 291
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 294
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "conn.pac_change_delay"

    const-string v2, "8 32 120 14400 43200"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "defaultDelay":Ljava/lang/String;
    const-string/jumbo v2, "pac_change_delay"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "val":Ljava/lang/String;
    if-nez v2, :cond_19

    move-object v3, v1

    goto :goto_1a

    :cond_19
    move-object v3, v2

    :goto_1a
    return-object v3
.end method

.method private longSchedule()V
    .registers 2

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    .line 282
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacProxyService;->setDownloadIn(I)V

    .line 283
    return-void
.end method

.method private reschedule()V
    .registers 2

    .line 286
    iget v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacProxyService;->getNextDelay(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    .line 287
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacProxyService;->setDownloadIn(I)V

    .line 288
    return-void
.end method

.method private sendPacBroadcast(Landroid/net/ProxyInfo;)V
    .registers 6
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 436
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 437
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 438
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/IPacProxyInstalledListener;

    .line 439
    .local v2, "listener":Landroid/net/IPacProxyInstalledListener;
    if-eqz v2, :cond_1a

    .line 441
    const/4 v3, 0x0

    :try_start_14
    invoke-interface {v2, v3, p1}, Landroid/net/IPacProxyInstalledListener;->onPacProxyInstalled(Landroid/net/Network;Landroid/net/ProxyInfo;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 442
    :goto_17
    goto :goto_1a

    :catch_18
    move-exception v3

    goto :goto_17

    .line 437
    .end local v2    # "listener":Landroid/net/IPacProxyInstalledListener;
    :cond_1a
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 445
    .end local v1    # "i":I
    :cond_1d
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 446
    return-void
.end method

.method private sendProxyIfNeeded()V
    .registers 4

    .line 450
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    goto :goto_21

    .line 454
    :cond_d
    iget-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    if-nez v1, :cond_1f

    .line 455
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    invoke-static {v1, v2}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;I)Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/PacProxyService;->sendPacBroadcast(Landroid/net/ProxyInfo;)V

    .line 456
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    .line 458
    :cond_1f
    monitor-exit v0

    .line 459
    return-void

    .line 452
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    .line 458
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private setCurrentProxyScript(Ljava/lang/String;)V
    .registers 5
    .param p1, "script"    # Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    const-string v1, "PacProxyService"

    if-nez v0, :cond_d

    .line 318
    const-string/jumbo v0, "setCurrentProxyScript: no proxy service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 322
    :cond_d
    :try_start_d
    invoke-interface {v0, p1}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    .line 323
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 326
    goto :goto_19

    .line 324
    :catch_13
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to set PAC file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method private setDownloadIn(I)V
    .registers 9
    .param p1, "delayIndex"    # I

    .line 310
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacProxyService;->getDownloadDelay(I)J

    move-result-wide v0

    .line 311
    .local v0, "delay":J
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 312
    .local v2, "timeTillTrigger":J
    invoke-direct {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x3

    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 313
    return-void
.end method

.method private unbind()V
    .registers 4

    .line 423
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 424
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 425
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Landroid/content/ServiceConnection;

    .line 427
    :cond_c
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_17

    .line 428
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 429
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 431
    :cond_17
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    .line 432
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    .line 433
    return-void
.end method


# virtual methods
.method public addListener(Landroid/net/IPacProxyInstalledListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/IPacProxyInstalledListener;

    .line 183
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 186
    return-void
.end method

.method public removeListener(Landroid/net/IPacProxyInstalledListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/IPacProxyInstalledListener;

    .line 190
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 193
    return-void
.end method

.method public setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)V
    .registers 5
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 205
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    if-eqz p1, :cond_4a

    :try_start_10
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 210
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    if-lez v1, :cond_30

    monitor-exit v0

    return-void

    .line 211
    :cond_30
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    .line 212
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    .line 213
    iput-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    .line 214
    iput-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    .line 215
    invoke-direct {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 216
    invoke-direct {p0}, Lcom/android/server/connectivity/PacProxyService;->bind()V

    goto :goto_65

    .line 218
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 219
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_56
    .catchall {:try_start_10 .. :try_end_56} :catchall_6a

    .line 220
    :try_start_56
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    .line 221
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;

    .line 222
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    if-eqz v2, :cond_64

    .line 223
    invoke-direct {p0}, Lcom/android/server/connectivity/PacProxyService;->unbind()V

    .line 225
    :cond_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_56 .. :try_end_65} :catchall_67

    .line 227
    :goto_65
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_6a

    .line 228
    return-void

    .line 225
    :catchall_67
    move-exception v2

    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    .end local p0    # "this":Lcom/android/server/connectivity/PacProxyService;
    .end local p1    # "proxy":Landroid/net/ProxyInfo;
    :try_start_69
    throw v2

    .line 227
    .restart local p0    # "this":Lcom/android/server/connectivity/PacProxyService;
    .restart local p1    # "proxy":Landroid/net/ProxyInfo;
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6a

    throw v1
.end method
