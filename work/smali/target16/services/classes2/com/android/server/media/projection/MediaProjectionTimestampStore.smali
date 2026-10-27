.class public Lcom/android/server/media/projection/MediaProjectionTimestampStore;
.super Ljava/lang/Object;
.source "MediaProjectionTimestampStore.java"


# static fields
.field public static sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

.field public static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public final mInstantSource:Ljava/time/InstantSource;

.field public final mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mTimestampLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/time/InstantSource;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mTimestampLock:Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 53
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mInstantSource:Ljava/time/InstantSource;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/media/projection/MediaProjectionTimestampStore;
    .registers 5

    .line 58
    sget-object v0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_3
    sget-object v1, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    if-nez v1, :cond_2a

    .line 60
    new-instance v1, Ljava/io/File;

    .line 61
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "media_projection_timestamp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 67
    new-instance v1, Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    invoke-static {}, Ljava/time/InstantSource;->system()Ljava/time/InstantSource;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/projection/MediaProjectionTimestampStore;-><init>(Landroid/content/SharedPreferences;Ljava/time/InstantSource;)V

    sput-object v1, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2e

    .line 69
    :cond_2a
    :goto_2a
    sget-object p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    monitor-exit v0

    return-object p0

    .line 70
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_28

    throw p0
.end method


# virtual methods
.method public final getLastActiveSessionTimestamp()Ljava/time/Instant;
    .registers 6

    .line 100
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 101
    const-string/jumbo v0, "media_projection_timestamp_key"

    const-wide/16 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-nez p0, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_11
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public registerActiveSessionEnded()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mTimestampLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mInstantSource:Ljava/time/InstantSource;

    invoke-interface {v1}, Ljava/time/InstantSource;->instant()Ljava/time/Instant;

    move-result-object v1

    .line 93
    invoke-virtual {p0, v1}, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->setLastActiveSessionTimestamp(Ljava/time/Instant;)V

    .line 94
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final setLastActiveSessionTimestamp(Ljava/time/Instant;)V
    .registers 5

    .line 110
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "media_projection_timestamp_key"

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public timeSinceLastActiveSession()Ljava/time/Duration;
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mTimestampLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->getLastActiveSessionTimestamp()Ljava/time/Instant;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    .line 82
    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    goto :goto_1a

    .line 84
    :cond_e
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mInstantSource:Ljava/time/InstantSource;

    invoke-interface {p0}, Ljava/time/InstantSource;->instant()Ljava/time/Instant;

    move-result-object p0

    .line 85
    invoke-static {v1, p0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 86
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_c

    throw p0
.end method
