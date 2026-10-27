.class public final Lcom/android/server/pm/InstantAppResolverConnection;
.super Ljava/lang/Object;
.source "InstantAppResolverConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final BIND_SERVICE_TIMEOUT_MS:J

.field public static final CALL_SERVICE_TIMEOUT_MS:J

.field public static final DEBUG_INSTANT:Z


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public mBindState:I

.field public final mContext:Landroid/content/Context;

.field public final mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

.field public final mIntent:Landroid/content/Intent;

.field public final mLock:Ljava/lang/Object;

.field public mRemoteInstance:Landroid/app/IInstantAppResolver;

.field public final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public static synthetic $r8$lambda$66W2s2mMKe4pk_xXCScH9RCqav8(Lcom/android/server/pm/InstantAppResolverConnection;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->lambda$optimisticBind$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBindState(Lcom/android/server/pm/InstantAppResolverConnection;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBindState(Lcom/android/server/pm/InstantAppResolverConnection;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRemoteInstance(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/app/IInstantAppResolver;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBinderDiedLocked(Lcom/android/server/pm/InstantAppResolverConnection;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->handleBinderDiedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetCALL_SERVICE_TIMEOUT_MS()J
    .registers 2

    .line 0
    sget-wide v0, Lcom/android/server/pm/InstantAppResolverConnection;->CALL_SERVICE_TIMEOUT_MS:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG_INSTANT()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 59
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_7

    const-wide/16 v1, 0x1f4

    goto :goto_9

    :cond_7
    const-wide/16 v1, 0x12c

    :goto_9
    sput-wide v1, Lcom/android/server/pm/InstantAppResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    if-eqz v0, :cond_10

    const-wide/16 v0, 0xc8

    goto :goto_12

    :cond_10
    const-wide/16 v0, 0x64

    .line 61
    :goto_12
    sput-wide v0, Lcom/android/server/pm/InstantAppResolverConnection;->CALL_SERVICE_TIMEOUT_MS:J

    .line 62
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    invoke-direct {v0}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    .line 67
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;Lcom/android/server/pm/InstantAppResolverConnection-IA;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 84
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    .line 85
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    .line 86
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBgHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .registers 11

    .line 170
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v1, :cond_c

    .line 172
    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception p0

    goto/16 :goto_150

    .line 175
    :cond_c
    iget v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3d

    .line 177
    sget-boolean v1, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_32

    .line 178
    const-string v1, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Previous bind timed out; waiting for connection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_9

    .line 181
    :cond_32
    :try_start_32
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_37
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_32 .. :try_end_37} :catch_3b
    .catchall {:try_start_32 .. :try_end_37} :catchall_9

    if-eqz v1, :cond_3d

    .line 183
    :try_start_39
    monitor-exit v0

    return-object v1

    :catch_3b
    move v1, v3

    goto :goto_3e

    :cond_3d
    move v1, v4

    .line 191
    :goto_3e
    iget v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    if-ne v5, v3, :cond_70

    .line 194
    sget-boolean v1, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_61

    .line 195
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Another thread is binding; waiting for connection"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_61
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz p0, :cond_6a

    .line 200
    monitor-exit v0

    return-object p0

    .line 202
    :cond_6a
    new-instance p0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    invoke-direct {p0, v3}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p0

    .line 204
    :cond_70
    iput v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 205
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_39 .. :try_end_73} :catchall_9

    const/4 v0, 0x0

    if-eqz v1, :cond_be

    .line 212
    :try_start_76
    sget-boolean v1, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_9a

    .line 213
    const-string v1, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Previous connection never established; rebinding"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_76 .. :try_end_95} :catchall_96

    goto :goto_9a

    :catchall_96
    move-exception p1

    move v1, v4

    goto/16 :goto_139

    .line 216
    :cond_9a
    :goto_9a
    :try_start_9a
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a1} :catch_a2
    .catchall {:try_start_9a .. :try_end_a1} :catchall_96

    goto :goto_be

    :catch_a2
    move-exception v1

    .line 218
    :try_start_a3
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] Service already unbound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    :cond_be
    :goto_be
    sget-boolean v1, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_dd

    .line 223
    const-string v1, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Binding to instant app resolver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_dd
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v8, 0x4000001

    .line 227
    invoke-virtual {v1, v5, v6, v8, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1
    :try_end_ec
    .catchall {:try_start_a3 .. :try_end_ec} :catchall_96

    if-eqz v1, :cond_113

    .line 229
    :try_start_ee
    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_111

    .line 230
    :try_start_f1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    .line 232
    monitor-exit v3
    :try_end_f7
    .catchall {:try_start_f1 .. :try_end_f7} :catchall_10e

    .line 239
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz v1, :cond_103

    if-nez v0, :cond_103

    .line 241
    :try_start_fe
    iput v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    goto :goto_105

    :catchall_101
    move-exception p0

    goto :goto_10c

    .line 243
    :cond_103
    iput v4, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 245
    :goto_105
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 246
    monitor-exit p1

    return-object v0

    :goto_10c
    monitor-exit p1
    :try_end_10d
    .catchall {:try_start_fe .. :try_end_10d} :catchall_101

    throw p0

    :catchall_10e
    move-exception p1

    .line 233
    :try_start_10f
    monitor-exit v3
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    :try_start_110
    throw p1

    :catchall_111
    move-exception p1

    goto :goto_139

    .line 235
    :cond_113
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Failed to bind to: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    invoke-direct {p1, v3}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1
    :try_end_139
    .catchall {:try_start_110 .. :try_end_139} :catchall_111

    .line 239
    :goto_139
    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v1, :cond_145

    if-nez v0, :cond_145

    .line 241
    :try_start_140
    iput v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    goto :goto_147

    :catchall_143
    move-exception p0

    goto :goto_14e

    .line 243
    :cond_145
    iput v4, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    .line 245
    :goto_147
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 246
    monitor-exit v3
    :try_end_14d
    .catchall {:try_start_140 .. :try_end_14d} :catchall_143

    .line 247
    throw p1

    .line 246
    :goto_14e
    :try_start_14e
    monitor-exit v3
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_143

    throw p0

    .line 205
    :goto_150
    :try_start_150
    monitor-exit v0
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_9

    throw p0
.end method

.method public binderDied()V
    .registers 3

    .line 271
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_b

    .line 272
    const-string v0, "PackageManager"

    const-string v1, "Binder to instant app resolver died"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->handleBinderDiedLocked()V

    .line 276
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_16

    .line 277
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->optimisticBind()V

    return-void

    :catchall_16
    move-exception p0

    .line 276
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getInstantAppIntentFilterList(Landroid/content/pm/InstantAppRequestInfo;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
    .registers 12

    .line 119
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$1;

    move-object v1, p0

    move-object v3, p2

    move-object v2, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/InstantAppResolverConnection$1;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/os/Handler;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;J)V

    .line 129
    :try_start_9
    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/pm/InstantAppResolverConnection;->getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object p0

    .line 130
    invoke-interface {p0, p1, v0}, Landroid/app/IInstantAppResolver;->getInstantAppIntentFilterList(Landroid/content/pm/InstantAppRequestInfo;Landroid/os/IRemoteCallback;)V
    :try_end_14
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_14} :catch_1c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_14} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    return-void

    .line 134
    :catch_15
    new-instance p0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p0

    .line 132
    :catch_1c
    new-instance p0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p0
.end method

.method public getInstantAppResolveInfoList(Landroid/content/pm/InstantAppRequestInfo;)Ljava/util/List;
    .registers 4

    .line 91
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->throwIfCalledOnMainThread()V

    .line 95
    :try_start_3
    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstantAppResolverConnection;->getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v0
    :try_end_b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_b} :catch_3c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_b} :catch_35
    .catchall {:try_start_3 .. :try_end_b} :catchall_1e

    .line 102
    :try_start_b
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    .line 103
    invoke-virtual {v1, v0, p1}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->getInstantAppResolveInfoList(Landroid/app/IInstantAppResolver;Landroid/content/pm/InstantAppRequestInfo;)Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_11} :catch_2e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_20
    .catchall {:try_start_b .. :try_end_11} :catchall_1e

    .line 109
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_14
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v0

    return-object p1

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p0

    :catchall_1e
    move-exception p1

    goto :goto_43

    .line 109
    :catch_20
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 110
    :try_start_23
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit p1

    const/4 p0, 0x0

    return-object p0

    :catchall_2b
    move-exception p0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2b

    throw p0

    .line 105
    :catch_2e
    :try_start_2e
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1

    .line 99
    :catch_35
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1

    .line 97
    :catch_3c
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_1e

    .line 109
    :goto_43
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_46
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4d

    .line 112
    throw p1

    :catchall_4d
    move-exception p0

    .line 111
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public final getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .registers 4

    .line 142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 144
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    throw p0
.end method

.method public final handleBinderDiedLocked()V
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v0, :cond_c

    .line 284
    :try_start_4
    invoke-interface {v0}, Landroid/app/IInstantAppResolver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_c
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    .line 290
    :try_start_f
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method

.method public final synthetic lambda$optimisticBind$0()V
    .registers 3

    .line 260
    const-string v0, "PackageManager"

    :try_start_2
    const-string v1, "Optimistic Bind"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object p0

    if-eqz p0, :cond_16

    sget-boolean p0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz p0, :cond_16

    .line 261
    const-string p0, "Optimistic bind succeeded."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_2 .. :try_end_13} :catch_14
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_13} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    goto :goto_17

    :cond_16
    return-void

    .line 264
    :goto_17
    const-string v1, "Optimistic bind failed."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public optimisticBind()V
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstantAppResolverConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/InstantAppResolverConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final throwIfCalledOnMainThread()V
    .registers 2

    .line 251
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-eq v0, p0, :cond_11

    return-void

    .line 252
    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot invoke on the main thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final waitForBindLocked(Ljava/lang/String;)V
    .registers 8

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 153
    :goto_4
    iget v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    if-eqz v2, :cond_3d

    .line 154
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v2, :cond_d

    goto :goto_3d

    .line 157
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 158
    sget-wide v4, Lcom/android/server/pm/InstantAppResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_21

    .line 162
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_4

    .line 160
    :cond_21
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Didn\'t bind to resolver in time!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    :goto_3d
    return-void
.end method
