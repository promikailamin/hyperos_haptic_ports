.class public Landroid/media/MediaScannerConnection;
.super Ljava/lang/Object;
.source "MediaScannerConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;,
        Landroid/media/MediaScannerConnection$OnScanCompletedListener;,
        Landroid/media/MediaScannerConnection$ClientProxy;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaScannerConnection"


# instance fields
.field private final greylist-max-o mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

.field private greylist-max-o mConnected:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mListener:Landroid/media/IMediaScannerListener$Stub;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mProvider:Landroid/content/ContentProviderClient;

.field private greylist-max-o mService:Landroid/media/IMediaScannerService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$w66mCCA6iDXxwU3nLLXaQWYc5aw(Landroid/media/MediaScannerConnection;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaScannerConnection;->lambda$scanFile$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V
    .registers 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/media/MediaScannerConnection$1;

    invoke-direct {v0, p0}, Landroid/media/MediaScannerConnection$1;-><init>(Landroid/media/MediaScannerConnection;)V

    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mListener:Landroid/media/IMediaScannerListener$Stub;

    .line 102
    iput-object p1, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .line 104
    return-void
.end method

.method private synthetic blacklist lambda$scanFile$0(Ljava/lang/String;)V
    .registers 5

    .line 158
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/media/MediaScannerConnection;->scanFileQuietly(Landroid/content/ContentProviderClient;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 159
    iget-object v1, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    invoke-static {v1, v2, p1, v0}, Landroid/media/MediaScannerConnection;->runCallBack(Landroid/content/Context;Landroid/media/MediaScannerConnection$OnScanCompletedListener;Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    return-void
.end method

.method static synthetic blacklist lambda$scanFile$1(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .registers 8

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 186
    :try_start_a
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1f

    aget-object v3, p1, v2

    .line 187
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Landroid/media/MediaScannerConnection;->scanFileQuietly(Landroid/content/ContentProviderClient;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 188
    invoke-static {p0, p2, v3, v4}, Landroid/media/MediaScannerConnection;->runCallBack(Landroid/content/Context;Landroid/media/MediaScannerConnection$OnScanCompletedListener;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_25

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 190
    :cond_1f
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 191
    :cond_24
    return-void

    .line 184
    :catchall_25
    move-exception p0

    if-eqz v0, :cond_30

    :try_start_28
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw p0
.end method

.method private static blacklist runCallBack(Landroid/content/Context;Landroid/media/MediaScannerConnection$OnScanCompletedListener;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    .line 207
    if-eqz p1, :cond_1a

    .line 211
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/media/MediaScannerConnection$OnScanCompletedListener;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    .line 218
    goto :goto_1a

    .line 212
    :catchall_6
    move-exception p1

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x1e

    if-ge p0, p2, :cond_19

    .line 216
    const-string p0, "MediaScannerConnection"

    const-string p2, "Ignoring exception from callback for backward compatibility"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 214
    :cond_19
    throw p1

    .line 220
    :cond_1a
    :goto_1a
    return-void
.end method

.method public static whitelist scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .registers 5

    .line 183
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3}, Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method private static blacklist scanFileQuietly(Landroid/content/ContentProviderClient;Ljava/io/File;)Landroid/net/Uri;
    .registers 6

    .line 195
    const-string v0, "MediaScannerConnection"

    .line 197
    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0}, Landroid/content/ContentResolver;->wrap(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 198
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanned "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " to "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_30

    .line 201
    goto :goto_51

    .line 199
    :catch_30
    move-exception p0

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to scan "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_51
    return-object v1
.end method


# virtual methods
.method public whitelist connect()V
    .registers 3

    .line 112
    monitor-enter p0

    .line 113
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_1c

    .line 114
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;

    .line 116
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    if-eqz v0, :cond_1c

    .line 117
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    invoke-interface {v0}, Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;->onMediaScannerConnected()V

    .line 120
    :cond_1c
    monitor-exit p0

    .line 121
    return-void

    .line 120
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public whitelist disconnect()V
    .registers 2

    .line 127
    monitor-enter p0

    .line 128
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_d

    .line 129
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;

    .line 132
    :cond_d
    monitor-exit p0

    .line 133
    return-void

    .line 132
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public declared-synchronized whitelist isConnected()Z
    .registers 2

    monitor-enter p0

    .line 140
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 140
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 261
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 269
    return-void
.end method

.method public whitelist scanFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 153
    monitor-enter p0

    .line 154
    :try_start_1
    iget-object p2, p0, Landroid/media/MediaScannerConnection;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz p2, :cond_13

    .line 157
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaScannerConnection;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 161
    monitor-exit p0

    .line 162
    return-void

    .line 155
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not connected to MediaScannerService"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw p1
.end method
