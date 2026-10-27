.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;
.super Lcom/android/server/SystemService;
.source "OnDeviceIntelligenceManagerService.java"


# static fields
.field public static final DEFAULT_SERVICE_ENABLED:Z = true

.field public static final KEY_SERVICE_ENABLED:Ljava/lang/String; = "service_enabled"

.field public static final MAX_AGE_MS:J

.field public static final MSG_RESET_BROADCAST_KEYS:I = 0x1

.field public static final MSG_RESET_CONFIG_NAMESPACE:I = 0x2

.field public static final MSG_RESET_TEMPORARY_SERVICE:I = 0x0

.field public static final NAMESPACE_ON_DEVICE_INTELLIGENCE:Ljava/lang/String; = "ondeviceintelligence"

.field public static final SYSTEM_PACKAGE:Ljava/lang/String; = "android"

.field public static final TAG:Ljava/lang/String; = "OnDeviceIntelligenceManagerService"

.field public static sInstance:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# instance fields
.field public final broadcastExecutor:Ljava/util/concurrent/Executor;

.field public final callbackExecutor:Ljava/util/concurrent/Executor;

.field public mBroadcastPackageName:Ljava/lang/String;

.field public final mConfigExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public final mInferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

.field public volatile mIsServiceEnabled:Z

.field public final mLifecycleExecutor:Ljava/util/concurrent/Executor;

.field public final mLifecycleListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/ondeviceintelligence/ILifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

.field public mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

.field public final mSystemLifecycleListener:Landroid/app/ondeviceintelligence/ILifecycleListener;

.field public mTemporaryBroadcastKeys:[Ljava/lang/String;

.field public mTemporaryConfigNamespace:Ljava/lang/String;

.field public mTemporaryHandler:Landroid/os/Handler;

.field public mTemporaryServiceNames:[Ljava/lang/String;

.field public remoteInferenceServiceUid:I

.field public final resourceClosingExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$6RgQtova1oM-pdDse_Dchtzeom4(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getRemoteInferenceServiceUid()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6wc0b2dRHvCvc_Q7LS3fkphKfWU(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->sendUpdatedConfig(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CVpU1Iscv014NdPqlULFXTZ7FhY(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->lambda$sendUpdatedConfig$4(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GCXxYBSyAJOBdDB0qY42GUMdb6M(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->lambda$getRemoteStorageService$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$GP_UhRQRKx4aI7Awg2dFDMNJQf8(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;Landroid/os/IBinder;Ljava/lang/Throwable;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->lambda$wrapCancellationFuture$6(Lcom/android/internal/infra/AndroidFuture;Landroid/os/IBinder;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PE_qiFplzgtWislVFSbivlQBElI(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;Landroid/os/IBinder;Ljava/lang/Throwable;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->lambda$wrapProcessingFuture$7(Lcom/android/internal/infra/AndroidFuture;Landroid/os/IBinder;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VnT13-9vyTopULGpqotlXejwqqE(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->lambda$ensureRemoteIntelligenceServiceInitialized$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZTsq8VTWIOofLLcB50gvdpY7j-o(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->lambda$onBootPhase$1(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hftLfjf3PdGcGzPINdwwnArtHhc(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->lambda$ensureRemoteInferenceServiceInitialized$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wgXQJhhmw9Rk0axzKBGzFfFmj1M(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 145
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "odi-lifecycle-broadcast"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$fgetbroadcastExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->broadcastExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetcallbackExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastPackageName(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mBroadcastPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mConfigExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInferenceInfoStore(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/InferenceInfoStore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mInferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLifecycleExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLifecycleListeners(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLifecycleListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteInferenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteOnDeviceIntelligenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemLifecycleListener(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/app/ondeviceintelligence/ILifecycleListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mSystemLifecycleListener:Landroid/app/ondeviceintelligence/ILifecycleListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBroadcastPackageName(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mBroadcastPackageName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTemporaryBroadcastKeys(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;[Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryBroadcastKeys:[Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTemporaryConfigNamespace(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryConfigNamespace:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J
    .registers 3

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getIdleTimeoutMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mgetLatestInferenceInfo(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;J)Ljava/util/List;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getLatestInferenceInfo(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRemoteProcessingService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/service/ondeviceintelligence/IRemoteProcessingService$Stub;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getRemoteProcessingService()Landroid/service/ondeviceintelligence/IRemoteProcessingService$Stub;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRemoteStorageService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/service/ondeviceintelligence/IRemoteStorageService$Stub;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getRemoteStorageService()Landroid/service/ondeviceintelligence/IRemoteStorageService$Stub;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mregisterDeviceConfigChangeListener(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->registerDeviceConfigChangeListener()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterModelLoadingBroadcasts(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->registerModelLoadingBroadcasts(Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRemoteInferenceServiceUid(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->setRemoteInferenceServiceUid(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwrapCancellationFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->wrapCancellationFuture(Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mwrapProcessingFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->wrapProcessingFuture(Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 137
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->MAX_AGE_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 210
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 140
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 141
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->broadcastExecutor:Ljava/util/concurrent/Executor;

    .line 142
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mConfigExecutor:Ljava/util/concurrent/Executor;

    .line 144
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    .line 149
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 156
    iput v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->remoteInferenceServiceUid:I

    .line 163
    const-string v1, "android"

    iput-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mBroadcastPackageName:Ljava/lang/String;

    .line 168
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    iput-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 171
    new-instance v1, Landroid/os/RemoteCallbackList$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/RemoteCallbackList$Builder;-><init>(I)V

    .line 174
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList$Builder;->setExecutor(Ljava/util/concurrent/Executor;)Landroid/os/RemoteCallbackList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList$Builder;->build()Landroid/os/RemoteCallbackList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLifecycleListeners:Landroid/os/RemoteCallbackList;

    .line 175
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mSystemLifecycleListener:Landroid/app/ondeviceintelligence/ILifecycleListener;

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mMainHandler:Landroid/os/Handler;

    .line 211
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 212
    sput-object p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->sInstance:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    const/4 p1, 0x0

    .line 213
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryServiceNames:[Ljava/lang/String;

    .line 214
    new-instance p1, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    sget-wide v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->MAX_AGE_MS:J

    invoke-direct {p1, v0, v1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;-><init>(J)V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mInferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    return-void
.end method

.method public static checkServiceRequiresPermission(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V
    .registers 4

    .line 1121
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 1122
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1123
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    .line 1125
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1123
    const-string p1, "Service %s requires %s permission. Found %s permission"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enforceShellOnly(ILjava/lang/String;)V
    .registers 3

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_1e

    if-nez p0, :cond_7

    goto :goto_1e

    .line 1257
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Only shell user can call it"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static getInstance()Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;
    .registers 2

    .line 205
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->sInstance:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    const-string v1, "OnDeviceIntelligenceManagerService is not available."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->sInstance:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    return-object v0
.end method

.method public static isIsolatedService(Landroid/content/pm/ServiceInfo;)Z
    .registers 2

    .line 1131
    iget p0, p0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_c

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private onDeviceConfigChange(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 238
    const-string/jumbo v0, "service_enabled"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 239
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->isServiceEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    :cond_f
    return-void
.end method


# virtual methods
.method public ensureRemoteInferenceServiceInitialized(Z)Z
    .registers 8

    .line 887
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 888
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 889
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return v2

    :catchall_a
    move-exception p0

    goto :goto_45

    .line 892
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getServiceNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    .line 893
    new-instance v3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 895
    new-instance v3, Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    iget-object v4, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 897
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 898
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-direct {v3, v4, v1, v5}, Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    .line 899
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    invoke-virtual {v3, v1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->setServiceLifecycleCallbacks(Lcom/android/server/ondeviceintelligence/ServiceConnector$ServiceLifecycleCallbacks;)V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_35} :catch_37
    .catchall {:try_start_c .. :try_end_35} :catchall_a

    .line 958
    :try_start_35
    monitor-exit v0

    return v2

    :catch_37
    move-exception p0

    if-nez p1, :cond_44

    .line 955
    sget-object p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to initialize remote inference service"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 953
    :cond_44
    throw p0

    .line 958
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_a

    throw p0
.end method

.method public ensureRemoteIntelligenceServiceInitialized(Z)Z
    .registers 9

    .line 793
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 795
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return v2

    :catchall_a
    move-exception p0

    goto :goto_45

    :cond_c
    const/4 v1, 0x0

    .line 798
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getServiceNames()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    .line 799
    new-instance v4, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 801
    new-instance v4, Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    iget-object v5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 803
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 804
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-direct {v4, v5, v3, v6}, Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-object v4, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 805
    new-instance v3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    invoke-virtual {v4, v3}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->setServiceLifecycleCallbacks(Lcom/android/server/ondeviceintelligence/ServiceConnector$ServiceLifecycleCallbacks;)V
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_36} :catch_38
    .catchall {:try_start_d .. :try_end_36} :catchall_a

    .line 826
    :try_start_36
    monitor-exit v0

    return v2

    :catch_38
    move-exception p0

    if-nez p1, :cond_44

    .line 823
    sget-object p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to initialize remote intelligence service"

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    monitor-exit v0

    return v1

    .line 821
    :cond_44
    throw p0

    .line 826
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_a

    throw p0
.end method

.method public getBroadcastKeys()[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1167
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1168
    :try_start_3
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryBroadcastKeys:[Ljava/lang/String;

    if-eqz p0, :cond_f

    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    .line 1169
    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_19

    .line 1171
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_d

    .line 1172
    const-string p0, "android.service.ondeviceintelligence.MODEL_LOADED"

    const-string v0, "android.service.ondeviceintelligence.MODEL_UNLOADED"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1171
    :goto_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_d

    throw p0
.end method

.method public final getConfigNamespace()Ljava/lang/String;
    .registers 3

    .line 1028
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1029
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryConfigNamespace:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1030
    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception p0

    goto :goto_19

    .line 1032
    :cond_b
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/internal/R$string;->config_defaultOnDeviceIntelligenceDeviceConfigNamespace:I

    .line 1033
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1035
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_9

    throw p0
.end method

.method public final getIdleTimeoutMs()J
    .registers 5

    .line 1328
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 1329
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 1331
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 1332
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    .line 1328
    const-string/jumbo v3, "on_device_intelligence_idle_timeout_ms"

    invoke-static {v0, v3, v1, v2, p0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLatestInferenceInfo(J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/app/ondeviceintelligence/InferenceInfo;",
            ">;"
        }
    .end annotation

    .line 1135
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mInferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->getLatestInferenceInfo(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getOnDeviceIntelligenceManagerService()Landroid/os/IBinder;
    .registers 2

    .line 250
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    return-object v0
.end method

.method public getRemoteConfiguredPackageName()Ljava/lang/String;
    .registers 3

    .line 1140
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getServiceNames()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 1141
    aget-object p0, p0, v0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 1143
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 1146
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Could not find resource"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRemoteInferenceService()Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;
    .registers 1

    .line 1349
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    return-object p0
.end method

.method public final getRemoteInferenceServiceUid()I
    .registers 2

    .line 1336
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1337
    :try_start_3
    iget p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->remoteInferenceServiceUid:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1338
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getRemoteOnDeviceIntelligenceService()Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;
    .registers 1

    .line 1354
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    return-object p0
.end method

.method public final getRemoteProcessingService()Landroid/service/ondeviceintelligence/IRemoteProcessingService$Stub;
    .registers 2

    .line 832
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    return-object v0
.end method

.method public final getRemoteStorageService()Landroid/service/ondeviceintelligence/IRemoteStorageService$Stub;
    .registers 5

    .line 1075
    new-instance v0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    iget-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/ondeviceintelligence/RemoteStorageService;-><init>(Ljava/lang/Runnable;Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public getServiceNames()[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1152
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1153
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryServiceNames:[Ljava/lang/String;

    if-eqz v1, :cond_f

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 1154
    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception p0

    goto :goto_2d

    .line 1156
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_d

    .line 1157
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 1158
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/internal/R$string;->config_defaultOnDeviceIntelligenceService:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 1160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/internal/R$string;->config_defaultOnDeviceSandboxedInferenceService:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1156
    :goto_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_d

    throw p0
.end method

.method public final declared-synchronized getTemporaryHandler()Landroid/os/Handler;
    .registers 5

    monitor-enter p0

    .line 1305
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryHandler:Landroid/os/Handler;

    if-nez v0, :cond_15

    .line 1306
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryHandler:Landroid/os/Handler;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_19

    .line 1324
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryHandler:Landroid/os/Handler;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_13

    monitor-exit p0

    return-object v0

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_13

    throw v0
.end method

.method public isServiceEnabled()Z
    .registers 3

    .line 244
    const-string/jumbo p0, "service_enabled"

    const/4 v0, 0x1

    const-string/jumbo v1, "ondeviceintelligence"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$ensureRemoteInferenceServiceInitialized$3(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 894
    invoke-virtual {p0, p1, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->validateServiceElevated(Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic lambda$ensureRemoteIntelligenceServiceInitialized$2(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 800
    invoke-virtual {p0, p1, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->validateServiceElevated(Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic lambda$getRemoteStorageService$5()V
    .registers 2

    const/4 v0, 0x0

    .line 1076
    invoke-virtual {p0, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteIntelligenceServiceInitialized(Z)Z

    return-void
.end method

.method public final synthetic lambda$onBootPhase$1(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 232
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method public final synthetic lambda$sendUpdatedConfig$4(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1057
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    invoke-interface {p2, p1, v0}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V

    return-void
.end method

.method public final synthetic lambda$wrapCancellationFuture$6(Lcom/android/internal/infra/AndroidFuture;Landroid/os/IBinder;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p3, :cond_d

    .line 1268
    sget-object p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string p2, "Error forwarding ICancellationSignal to manager layer"

    invoke-static {p0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1270
    invoke-virtual {p1, p3}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    .line 1272
    :cond_d
    new-instance p3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$8;

    invoke-direct {p3, p0, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$8;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Landroid/os/IBinder;)V

    invoke-virtual {p1, p3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic lambda$wrapProcessingFuture$7(Lcom/android/internal/infra/AndroidFuture;Landroid/os/IBinder;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p3, :cond_6

    .line 1291
    invoke-virtual {p1, p3}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    .line 1293
    :cond_6
    new-instance p3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$9;

    invoke-direct {p3, p0, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$9;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Landroid/os/IBinder;)V

    invoke-virtual {p1, p3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_19

    .line 231
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 229
    const-string/jumbo v1, "ondeviceintelligence"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->isServiceEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    :cond_19
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 221
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getOnDeviceIntelligenceManagerService()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    .line 219
    const-string/jumbo v2, "on_device_intelligence"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 222
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    const-class p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerLocal;

    invoke-static {p0, v0}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final registerDeviceConfigChangeListener()V
    .registers 4

    .line 1015
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerDeviceConfigChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getConfigNamespace()Ljava/lang/String;

    move-result-object v1

    .line 1017
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1018
    const-string p0, "config_defaultOnDeviceIntelligenceDeviceConfigNamespace is empty"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1021
    :cond_18
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mConfigExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public final registerModelLoadingBroadcasts(Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V
    .registers 6

    .line 965
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getBroadcastKeys()[Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_4} :catch_22

    .line 970
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 971
    const-string/jumbo v2, "register_model_update_callback"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 973
    :try_start_10
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$6;

    invoke-direct {v2, p0, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$6;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;[Ljava/lang/String;)V

    invoke-interface {p1, v1, v2}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 1009
    sget-object p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Failed to register model loading callback with status code"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 967
    :catch_22
    sget-object p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Skipping model broadcasts as broadcast intents configured."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetTemporaryServices()V
    .registers 5

    .line 1236
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1237
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    .line 1238
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1239
    iput-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryHandler:Landroid/os/Handler;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_1b

    .line 1241
    :cond_11
    :goto_11
    iput-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    .line 1242
    iput-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 1243
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryServiceNames:[Ljava/lang/String;

    .line 1244
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_f

    throw p0
.end method

.method public final sendUpdatedConfig(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6

    .line 1040
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendUpdatedConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 1042
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1043
    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 1045
    :cond_2b
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1046
    const-string v1, "android.service.ondeviceintelligence.KEY_DEVICE_CONFIG_UPDATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1049
    const-string v1, "device_config_update"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 1052
    invoke-virtual {p0, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteInferenceServiceInitialized(Z)Z

    move-result v0

    if-nez v0, :cond_49

    .line 1053
    sget-object p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Remote inference service not available for sendUpdatedConfig"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1057
    :cond_49
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->run(Lcom/android/server/ondeviceintelligence/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public setModelBroadcastKeys([Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 1201
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "setModelBroadcastKeys"

    invoke-static {v0, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->enforceShellOnly(ILjava/lang/String;)V

    .line 1203
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    sget-object v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1206
    :try_start_19
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryBroadcastKeys:[Ljava/lang/String;

    .line 1207
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mBroadcastPackageName:Ljava/lang/String;

    const/4 p1, -0x1

    if-eq p3, p1, :cond_2c

    .line 1209
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getTemporaryHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2c

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 1212
    :cond_2c
    :goto_2c
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_2a

    throw p0
.end method

.method public final setRemoteInferenceServiceUid(I)V
    .registers 3

    .line 1342
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1343
    :try_start_3
    iput p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->remoteInferenceServiceUid:I

    .line 1344
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setTemporaryDeviceConfigNamespace(Ljava/lang/String;I)V
    .registers 6

    .line 1218
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "setTemporaryDeviceConfigNamespace"

    invoke-static {v0, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->enforceShellOnly(ILjava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    sget-object v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1223
    :try_start_19
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryConfigNamespace:Ljava/lang/String;

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2a

    .line 1225
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getTemporaryHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x2

    int-to-long v1, p2

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 1228
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_28

    throw p0
.end method

.method public setTemporaryServices([Ljava/lang/String;I)V
    .registers 6

    .line 1177
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "setTemporaryServices"

    invoke-static {v0, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->enforceShellOnly(ILjava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    sget-object v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1182
    :try_start_19
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryServiceNames:[Ljava/lang/String;

    .line 1183
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    const/4 v1, 0x0

    if-eqz p1, :cond_28

    .line 1184
    invoke-virtual {p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->unbind()V

    .line 1185
    iput-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_3f

    .line 1187
    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    if-eqz p1, :cond_31

    .line 1188
    invoke-virtual {p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->unbind()V

    .line 1189
    iput-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    :cond_31
    const/4 p1, -0x1

    if-eq p2, p1, :cond_3d

    .line 1192
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getTemporaryHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    int-to-long v1, p2

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1195
    :cond_3d
    monitor-exit v0

    return-void

    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_19 .. :try_end_40} :catchall_26

    throw p0
.end method

.method public final validateServiceElevated(Ljava/lang/String;Z)V
    .registers 7

    .line 1084
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_55

    .line 1088
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    .line 1091
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1095
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-wide/32 v2, 0xc0000

    .line 1091
    invoke-interface {v0, p0, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_4d

    if-nez p2, :cond_25

    .line 1101
    const-string p1, "android.permission.BIND_ON_DEVICE_INTELLIGENCE_SERVICE"

    invoke-static {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->checkServiceRequiresPermission(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    return-void

    .line 1106
    :cond_25
    const-string p2, "android.permission.BIND_ON_DEVICE_SANDBOXED_INFERENCE_SERVICE"

    invoke-static {p0, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->checkServiceRequiresPermission(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    .line 1109
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->isIsolatedService(Landroid/content/pm/ServiceInfo;)Z

    move-result p0

    if-eqz p0, :cond_31

    return-void

    .line 1110
    :cond_31
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call required an isolated service, but the configured service: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", is not isolated"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1097
    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Remote service is not configured to complete the request."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1085
    :cond_55
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Remote service is not configured to complete the request"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5d} :catch_5d

    :catch_5d
    move-exception p0

    .line 1115
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not fetch service info for remote services"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final wrapCancellationFuture(Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1265
    :cond_4
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 1266
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method public final wrapProcessingFuture(Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1288
    :cond_4
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 1289
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method
