.class public Lcom/android/server/wearable/WearableSensingManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "WearableSensingManagerService.java"


# static fields
.field public static final RATE_LIMITER_TAG:Ljava/lang/String; = "WearableSensingManagerService"

.field public static final TAG:Ljava/lang/String; = "WearableSensingManagerService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataRequestObserverContexts:Ljava/util/Set;

.field public volatile mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

.field public volatile mIsServiceEnabled:Z

.field public final mNextDataRequestObserverId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic $r8$lambda$J08FE5kNsft-VdA0ASZk1__BW-g(Lcom/android/server/wearable/WearableSensingManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerService;->lambda$onBootPhase$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nHVXgRQeoOfy3XNoZ7_sTh6Q-tc(Lcom/android/server/wearable/WearableSensingManagerService;ILandroid/app/PendingIntent;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->lambda$createDataRequestRemoteCallback$1(ILandroid/app/PendingIntent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataRequestObserverContexts(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextDataRequestObserverId(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mNextDataRequestObserverId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->callPerUserServiceIfExist(Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateDataRequestRemoteCallback(Lcom/android/server/wearable/WearableSensingManagerService;Landroid/app/PendingIntent;I)Landroid/os/RemoteCallback;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->createDataRequestRemoteCallback(Landroid/app/PendingIntent;I)Landroid/os/RemoteCallback;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDataRequestObserverContext(Lcom/android/server/wearable/WearableSensingManagerService;IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->getDataRequestObserverContext(IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 115
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x104027e

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x44

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mNextDataRequestObserverId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    .line 122
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    invoke-direct {v0, p1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimit()I

    move-result p1

    .line 127
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimitWindowSize()Ljava/time/Duration;

    move-result-object v1

    .line 125
    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimit(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->build()Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    return-void
.end method

.method public static synthetic access$200(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/lang/Object;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/server/wearable/WearableSensingManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onBootPhase$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 143
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerService;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method private onDeviceConfigChange(Ljava/util/Set;)V
    .registers 4

    .line 154
    const-string v0, "service_enabled"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 155
    const-string p1, "wearable_sensing"

    const/4 v1, 0x1

    .line 156
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    :cond_11
    return-void
.end method


# virtual methods
.method public final callPerUserServiceIfExist(Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V
    .registers 6

    .line 397
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 398
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-nez p0, :cond_30

    .line 401
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service not available for userId "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2e

    const/4 p0, 0x3

    .line 403
    invoke-static {p2, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    goto :goto_2e

    :catchall_2c
    move-exception p0

    goto :goto_35

    .line 406
    :cond_2e
    :goto_2e
    monitor-exit v1

    return-void

    .line 408
    :cond_30
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 409
    monitor-exit v1

    return-void

    :goto_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_2c

    throw p0
.end method

.method public final createDataRequestRemoteCallback(Landroid/app/PendingIntent;I)Landroid/os/RemoteCallback;
    .registers 5

    .line 322
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;ILandroid/app/PendingIntent;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method public enforceCallingPermissionForManagement()V
    .registers 3

    .line 188
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    .line 189
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getComponentName(I)Landroid/content/ComponentName;
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-eqz p0, :cond_13

    .line 205
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    goto :goto_16

    .line 207
    :cond_13
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_11

    throw p0
.end method

.method public final getDataRequestObserverContext(IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
    .registers 7

    .line 306
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    monitor-enter v0

    .line 307
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    .line 308
    iget v2, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataType:I

    if-ne v2, p1, :cond_9

    iget v2, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mUserId:I

    if-ne v2, p2, :cond_9

    iget-object v2, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestPendingIntent:Landroid/app/PendingIntent;

    .line 310
    invoke-virtual {v2, p3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 312
    monitor-exit v0

    return-object v1

    :catchall_27
    move-exception p0

    goto :goto_2c

    .line 315
    :cond_29
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_27

    throw p0
.end method

.method public getMaximumTemporaryServiceDurationMs()I
    .registers 1

    .line 194
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7fffffff

    return p0

    :cond_a
    const/16 p0, 0x7530

    return p0
.end method

.method public final synthetic lambda$createDataRequestRemoteCallback$1(ILandroid/app/PendingIntent;Landroid/os/Bundle;)V
    .registers 16

    .line 324
    const-string v0, "android.app.wearable.WearableSensingDataRequestBundleKey"

    const-class v1, Landroid/app/wearable/WearableSensingDataRequest;

    .line 325
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/wearable/WearableSensingDataRequest;

    if-nez v0, :cond_14

    .line 329
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Received data request callback without a request."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 332
    :cond_14
    const-string v1, "android.app.wearable.WearableSensingDataRequestStatusCallbackBundleKey"

    const-class v2, Landroid/os/RemoteCallback;

    .line 333
    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/RemoteCallback;

    if-nez p3, :cond_28

    .line 337
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Received data request callback without a status callback."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 340
    :cond_28
    invoke-virtual {v0}, Landroid/app/wearable/WearableSensingDataRequest;->getDataSize()I

    move-result v1

    .line 341
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getMaxRequestSize()I

    move-result v2

    if-le v1, v2, :cond_4e

    .line 342
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    .line 347
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getMaxRequestSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 344
    const-string p2, "WearableSensingDataRequest size exceeds the maximum allowed size of %s bytes. Dropping the request."

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 348
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 353
    :cond_4e
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    sget-object v2, Lcom/android/server/wearable/WearableSensingManagerService;->RATE_LIMITER_TAG:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/utils/quota/MultiRateLimiter;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 355
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Data request exceeded rate limit. Dropping the request."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    .line 356
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 361
    :cond_66
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 362
    const-string v1, "android.app.wearable.extra.WEARABLE_SENSING_DATA_REQUEST"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 365
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    const/4 v9, 0x2

    .line 366
    invoke-virtual {v1, v9}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 368
    iget-object v5, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    invoke-virtual {v5, p1, v3, v2}, Lcom/android/server/utils/quota/MultiRateLimiter;->noteEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 373
    :try_start_81
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8
    :try_end_89
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_81 .. :try_end_89} :catch_b3
    .catchall {:try_start_81 .. :try_end_89} :catchall_b0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    .line 372
    :try_start_8e
    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    .line 374
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 377
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Sending data request to %s: %s"

    .line 381
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p2

    .line 382
    invoke-virtual {v0}, Landroid/app/wearable/WearableSensingDataRequest;->toExpandedString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    .line 379
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_8e .. :try_end_ac} :catch_b4
    .catchall {:try_start_8e .. :try_end_ac} :catchall_b0

    .line 389
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_b0
    move-exception v0

    move-object p0, v0

    goto :goto_d1

    :catch_b3
    move-object v1, p2

    .line 384
    :catch_b4
    :try_start_b4
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not deliver pendingIntent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {p3, v9}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V
    :try_end_cd
    .catchall {:try_start_b4 .. :try_end_cd} :catchall_b0

    .line 389
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_d1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    throw p0
.end method

.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 3

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->newServiceLocked(IZ)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    return-object p0
.end method

.method public newServiceLocked(IZ)Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    .registers 4

    .line 166
    new-instance p2, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1f

    .line 142
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

    .line 140
    const-string v1, "wearable_sensing"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 145
    const-string p1, "service_enabled"

    const/4 v0, 0x1

    .line 146
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    :cond_1f
    return-void
.end method

.method public onServicePackageRestartedLocked(I)V
    .registers 2

    .line 178
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "onServicePackageRestartedLocked."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServicePackageUpdatedLocked(I)V
    .registers 2

    .line 183
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "onServicePackageUpdatedLocked."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3

    .line 72
    check-cast p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->onServiceRemoved(Lcom/android/server/wearable/WearableSensingManagerPerUserService;I)V

    return-void
.end method

.method public onServiceRemoved(Lcom/android/server/wearable/WearableSensingManagerPerUserService;I)V
    .registers 3

    .line 172
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p2, "onServiceRemoved"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->destroyLocked()V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 133
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;Lcom/android/server/wearable/WearableSensingManagerService-IA;)V

    const-string v1, "wearable_sensing"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public provideData(ILandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .registers 6

    .line 243
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-eqz p0, :cond_11

    .line 246
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    goto :goto_18

    :catchall_f
    move-exception p0

    goto :goto_1a

    .line 248
    :cond_11
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_f

    throw p0
.end method

.method public provideDataStream(ILandroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 221
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-eqz p0, :cond_12

    const/4 p1, 0x0

    .line 224
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    goto :goto_19

    :catchall_10
    move-exception p0

    goto :goto_1b

    .line 227
    :cond_12
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_10

    throw p0
.end method

.method public resetDataRequestRateLimitWindowSize()V
    .registers 4

    .line 292
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Resetting the data request rate limit window size back to the default value. This also resets the current limit and should only be callable from a test."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimit()I

    move-result v1

    .line 300
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimitWindowSize()Ljava/time/Duration;

    move-result-object v2

    .line 298
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimit(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->build()Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    return-void
.end method

.method public setDataRequestRateLimitWindowSize(Ljava/time/Duration;)V
    .registers 5

    .line 270
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Setting the data request rate limit window size to %s. This also resets the current limit and should only be callable from a test."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 272
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimit()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimit(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->build()Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    return-void
.end method
