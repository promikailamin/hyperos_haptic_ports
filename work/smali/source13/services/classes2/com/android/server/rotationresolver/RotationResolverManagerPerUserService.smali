.class final Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "RotationResolverManagerPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;",
        "Lcom/android/server/rotationresolver/RotationResolverManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONNECTION_TTL_MILLIS:J = 0xea60L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

.field private mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLatencyTracker(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)Lcom/android/internal/util/LatencyTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;Ljava/lang/Object;I)V
    .registers 5
    .param p1, "main"    # Lcom/android/server/rotationresolver/RotationResolverManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "userId"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 76
    return-void
.end method

.method private cancelLocked()V
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-nez v0, :cond_5

    .line 215
    return-void

    .line 217
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 219
    return-void
.end method

.method private ensureRemoteServiceInitiated()V
    .registers 8

    .line 163
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    if-nez v0, :cond_19

    .line 164
    new-instance v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 165
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->getUserId()I

    move-result v4

    const-wide/32 v5, 0xea60

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IJ)V

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    .line 167
    :cond_19
    return-void
.end method


# virtual methods
.method destroyLocked()V
    .registers 3

    .line 80
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 81
    sget-object v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "destroyLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_d
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-nez v0, :cond_12

    .line 85
    return-void

    .line 87
    :cond_12
    sget-object v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Trying to cancel the remote request. Reason: Service destroyed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->cancelLocked()V

    .line 90
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    if-eqz v0, :cond_26

    .line 91
    invoke-virtual {v0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->unbind()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    .line 94
    :cond_26
    return-void
.end method

.method dumpInternal(Landroid/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 229
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_3
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    if-eqz v1, :cond_c

    .line 231
    const-string v2, ""

    invoke-virtual {v1, v2, p1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 233
    :cond_c
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-eqz v1, :cond_13

    .line 234
    invoke-virtual {v1, p1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 236
    :cond_13
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 224
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 225
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->dumpInternal(Landroid/util/IndentingPrintWriter;)V

    .line 226
    return-void
.end method

.method getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method isServiceAvailableLocked()Z
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_a

    .line 183
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 185
    :cond_a
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method synthetic lambda$resolveRotationLocked$0$com-android-server-rotationresolver-RotationResolverManagerPerUserService()V
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-eqz v1, :cond_17

    iget-boolean v1, v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-nez v1, :cond_17

    .line 150
    sget-object v1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Trying to cancel the remote request. Reason: Client cancelled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    invoke-virtual {v1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    .line 153
    :cond_17
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 10
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 193
    const-string v0, "android.permission.BIND_ROTATION_RESOLVER_SERVICE"

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x80

    iget v4, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mUserId:I

    invoke-interface {v1, p1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 195
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_37

    .line 196
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 197
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_37

    .line 198
    :cond_19
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Service %s requires %s permission. Found %s permission"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 200
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    iget-object v6, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    aput-object v6, v5, v0

    .line 198
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    .end local p1    # "serviceComponent":Landroid/content/ComponentName;
    throw v3
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_37} :catch_39

    .line 208
    .end local v2    # "permission":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
    .restart local p1    # "serviceComponent":Landroid/content/ComponentName;
    :cond_37
    :goto_37
    nop

    .line 209
    return-object v1

    .line 205
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_39
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V
    .registers 7
    .param p1, "callbackInternal"    # Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;
    .param p2, "request"    # Landroid/service/rotationresolver/RotationResolutionRequest;
    .param p3, "cancellationSignalInternal"    # Landroid/os/CancellationSignal;

    .line 103
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->isServiceAvailableLocked()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 104
    sget-object v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Service is not available at this moment."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    .line 106
    invoke-virtual {p2}, Landroid/service/rotationresolver/RotationResolutionRequest;->getProposedRotation()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/rotationresolver/RotationResolutionRequest;->getCurrentRotation()I

    move-result v1

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->logRotationStats(III)V

    .line 108
    return-void

    .line 111
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 114
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    if-eqz v0, :cond_2c

    iget-boolean v0, v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-nez v0, :cond_2c

    .line 115
    invoke-direct {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->cancelLocked()V

    .line 118
    :cond_2c
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 120
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_5a

    .line 123
    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;)V

    .line 144
    .local v0, "wrapper":Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;
    new-instance v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    iget-object v2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;-><init>(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 147
    new-instance v1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)V

    invoke-virtual {p3, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 157
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    iget-object v2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    invoke-virtual {v1, v2}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->resolveRotation(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V

    .line 158
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsDispatched:Z

    .line 159
    return-void

    .line 120
    .end local v0    # "wrapper":Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method
