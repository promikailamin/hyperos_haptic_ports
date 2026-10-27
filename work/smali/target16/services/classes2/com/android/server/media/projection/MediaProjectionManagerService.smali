.class public final Lcom/android/server/media/projection/MediaProjectionManagerService;
.super Lcom/android/server/SystemService;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field static final MEDIA_PROJECTION_PREVENTS_REUSING_CONSENT:J = 0xfddea07L


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

.field public final mClock:Lcom/android/server/media/projection/MediaProjectionManagerService$Clock;

.field public final mContext:Landroid/content/Context;

.field public final mDeathEaters:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

.field public final mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

.field public mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

.field public final mMediaRouter:Landroid/media/MediaRouter;

.field public final mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

.field public mProjectionToken:Landroid/os/IBinder;

.field public final mWmInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$VZMDiw60tHV95Fyz9QDE__iDpMs(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/MediaProjectionEvent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->lambda$maybeStopMediaProjection$0(Landroid/media/projection/MediaProjectionEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jk_Lw_5XLA0KRD4zZfV2F6Mj4cc(Lcom/android/server/media/projection/MediaProjectionManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->maybeStopMediaProjection(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOps(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbackDelegate(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$Clock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mClock:Lcom/android/server/media/projection/MediaProjectionManagerService$Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mInjector:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaProjectionStopController(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionStopController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaRouteInfo(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/MediaRouter$RouteInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmMediaRouteInfo(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/media/projection/MediaProjectionManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/media/projection/MediaProjectionManagerService;III)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->handleForegroundServicesChanged(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveCallback(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->startProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->stopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smtypeToString(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->typeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smvalidateCallingPackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->validateCallingPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 156
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;-><init>(Landroid/content/Context;Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;)V
    .registers 5

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 163
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mInjector:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mHandler:Landroid/os/Handler;

    .line 167
    invoke-virtual {p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;->createClock()Lcom/android/server/media/projection/MediaProjectionManagerService$Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mClock:Lcom/android/server/media/projection/MediaProjectionManagerService$Clock;

    .line 168
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    .line 169
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;->createCallbackLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    .line 170
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 171
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 173
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 174
    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    .line 175
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    .line 176
    invoke-virtual {p2, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;->mediaProjectionMetricsLogger(Landroid/content/Context;)Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    .line 177
    new-instance p2, Lcom/android/server/media/projection/MediaProjectionStopController;

    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    invoke-direct {p2, p1, v0}, Lcom/android/server/media/projection/MediaProjectionStopController;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    .line 179
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 1834
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1832
    :cond_d
    const-string p0, "TYPE_PRESENTATION"

    return-object p0

    .line 1830
    :cond_10
    const-string p0, "TYPE_MIRRORING"

    return-object p0

    .line 1828
    :cond_13
    const-string p0, "TYPE_SCREEN_CAPTURE"

    return-object p0
.end method

.method public static validateCallingPackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    .line 757
    const-string/jumbo v0, "validatePackageName: App with package name "

    const-string v1, "MediaProjectionManagerService"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 758
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 760
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 761
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_44

    .line 763
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but caller is "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_3e} :catch_49
    .catchall {:try_start_e .. :try_end_3e} :catchall_42

    .line 772
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_42
    move-exception p0

    goto :goto_64

    :cond_44
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    .line 768
    :catch_49
    :try_start_49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_49 .. :try_end_60} :catchall_42

    .line 772
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :goto_64
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 773
    throw p0
.end method


# virtual methods
.method public addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)Landroid/media/projection/MediaProjectionInfo;
    .registers 5

    .line 374
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$2;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 380
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_8
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {v2, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->add(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 382
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->linkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/os/IBinder$DeathRecipient;)V

    .line 383
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0

    goto :goto_1c

    :catchall_19
    move-exception p0

    goto :goto_1e

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    monitor-exit v1

    return-object p0

    .line 384
    :goto_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_19

    throw p0
.end method

.method public final buildReviewGrantedConsentIntentLocked()Landroid/content/Intent;
    .registers 4

    .line 536
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 541
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_media_projection_user_consent_required"

    const/4 v2, 0x1

    .line 542
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 543
    const-string v1, "extra_media_projection_package_reusing_consent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x10800000

    .line 544
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public createProjectionInternal(ILjava/lang/String;IZI)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .registers 16

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    .line 683
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 682
    invoke-virtual {v0, p2, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_3e

    .line 687
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 689
    :try_start_14
    new-instance v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 695
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v6

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v7, p5

    move-object v0, v2

    move v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;IZI)V

    if-eqz p4, :cond_36

    .line 698
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v3, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x2e

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_34

    goto :goto_36

    :catchall_34
    move-exception v0

    goto :goto_3a

    .line 702
    :cond_36
    :goto_36
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_3a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 703
    throw v0

    .line 685
    :catch_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package matching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dispatchEvent(Landroid/media/projection/MediaProjectionEvent;)V
    .registers 6

    .line 438
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v1

    goto :goto_10

    :catchall_d
    move-exception p0

    goto :goto_1f

    :cond_f
    move-object v1, v2

    .line 440
    :goto_10
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v3, :cond_18

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmSession(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Landroid/view/ContentRecordingSession;

    move-result-object v2

    .line 441
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_d

    .line 442
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->-$$Nest$mdispatchEvent(Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    return-void

    .line 441
    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_d

    throw p0
.end method

.method public final dispatchSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 3

    .line 424
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchSession(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    return-void
.end method

.method public final dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 2

    .line 414
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public final dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 2

    .line 418
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 778
    const-string v0, "MEDIA PROJECTION MANAGER (dumpsys media_projection)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_8
    const-string v1, "Media Projection: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p0, :cond_17

    .line 782
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->dump(Ljava/io/PrintWriter;)V

    goto :goto_1d

    :catchall_15
    move-exception p0

    goto :goto_1f

    .line 784
    :cond_17
    const-string/jumbo p0, "null"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    :goto_1d
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_15

    throw p0
.end method

.method public getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .registers 2

    .line 740
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    .line 742
    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    goto :goto_12

    .line 744
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 745
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_a

    throw p0
.end method

.method public getProjectionInternal(ILjava/lang/String;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .registers 9

    .line 710
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 712
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_57

    .line 716
    :try_start_7
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmSession(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Landroid/view/ContentRecordingSession;

    move-result-object v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmSession(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Landroid/view/ContentRecordingSession;

    move-result-object v3

    .line 717
    invoke-virtual {v3}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_49

    .line 723
    :cond_1f
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v5, v3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    if-ne v5, p1, :cond_3d

    iget-object p1, v3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 724
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 725
    const-string p1, "MediaProjectionManagerService"

    const-string p2, "Reusing token: getProjection can reuse the current projection"

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_3b

    .line 734
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_3b
    move-exception p0

    goto :goto_55

    .line 728
    :cond_3d
    :try_start_3d
    const-string p0, "MediaProjectionManagerService"

    const-string p1, "Reusing token: Not possible to reuse the current projection instance due to package details mismatching"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_3b

    .line 734
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 718
    :cond_49
    :goto_49
    :try_start_49
    const-string p0, "MediaProjectionManagerService"

    const-string p1, "Reusing token: Not possible to reuse the current projection instance"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_3b

    .line 734
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 732
    :goto_55
    :try_start_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_3b

    :try_start_56
    throw p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p0

    .line 734
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 735
    throw p0
.end method

.method public final handleForegroundServicesChanged(III)V
    .registers 5

    .line 308
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 309
    :try_start_3
    iget-object p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p3, :cond_3b

    iget v0, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    if-eq v0, p2, :cond_c

    goto :goto_3b

    .line 313
    :cond_c
    invoke-virtual {p3}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->requiresForegroundService()Z

    move-result p3

    if-nez p3, :cond_16

    .line 314
    monitor-exit p1

    return-void

    :catchall_14
    move-exception p0

    goto :goto_3d

    .line 316
    :cond_16
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_14

    .line 319
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const/16 p3, 0x20

    invoke-virtual {p1, p2, p3}, Landroid/app/ActivityManagerInternal;->hasRunningForegroundService(II)Z

    move-result p1

    if-eqz p1, :cond_22

    return-void

    .line 326
    :cond_22
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 327
    :try_start_25
    const-string p1, "MediaProjectionManagerService"

    const-string p3, "Content Recording: Stopped MediaProjection due to foreground service change"

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p0, :cond_37

    const/4 p1, 0x7

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    goto :goto_37

    :catchall_35
    move-exception p0

    goto :goto_39

    .line 332
    :cond_37
    :goto_37
    monitor-exit p2

    return-void

    :goto_39
    monitor-exit p2
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_35

    throw p0

    .line 310
    :cond_3b
    :goto_3b
    :try_start_3b
    monitor-exit p1

    return-void

    .line 316
    :goto_3d
    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_14

    throw p0
.end method

.method public isCurrentProjection(Landroid/os/IBinder;)Z
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    if-eqz p0, :cond_f

    .line 492
    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    .line 494
    monitor-exit v0

    return p0

    .line 495
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public final synthetic lambda$maybeStopMediaProjection$0(Landroid/media/projection/MediaProjectionEvent;)V
    .registers 2

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchEvent(Landroid/media/projection/MediaProjectionEvent;)V

    return-void
.end method

.method public final linkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/os/IBinder$DeathRecipient;)V
    .registers 4

    .line 397
    :try_start_0
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    .line 398
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 399
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 401
    const-string p1, "MediaProjectionManagerService"

    const-string p2, "Unable to link to death for media projection monitoring callback"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final maybeStopMediaProjection(I)V
    .registers 7

    .line 183
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_10

    .line 185
    :try_start_6
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    .line 186
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_82

    .line 188
    :cond_10
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/media/projection/MediaProjectionStopController;->isExemptFromStopping(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 189
    monitor-exit v0

    return-void

    .line 192
    :cond_1c
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    .line 193
    invoke-virtual {v2, p1}, Lcom/android/server/media/projection/MediaProjectionStopController;->isStopReasonCallEnd(I)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 194
    new-instance v1, Landroid/media/projection/MediaProjectionEvent;

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/media/projection/MediaProjectionEvent;-><init>(IJ)V

    .line 199
    const-string v2, "MediaProjectionManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1}, Landroid/media/projection/MediaProjectionEvent;->getEventType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionStopController;->stopReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/MediaProjectionEvent;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_80

    .line 209
    :cond_61
    const-string v2, "MediaProjectionManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping MediaProjection due to reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionStopController;->stopReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    .line 215
    :goto_80
    monitor-exit v0

    return-void

    :goto_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_6 .. :try_end_83} :catchall_e

    throw p0
.end method

.method public monitor()V
    .registers 2

    .line 299
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public notifyAppSelectorDisplayed(I)V
    .registers 2

    .line 564
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logAppSelectorDisplayed(I)V

    return-void
.end method

.method public notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V
    .registers 6

    .line 581
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez v1, :cond_11

    .line 583
    const-string p0, "MediaProjectionManagerService"

    const-string p1, "Cannot log MediaProjectionTargetChanged atom due to null projection"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :catchall_f
    move-exception p0

    goto :goto_1a

    .line 585
    :cond_11
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logChangedCaptureBounds(IIILandroid/graphics/Rect;)V

    .line 588
    :goto_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_f

    throw p0
.end method

.method public notifyPermissionRequestCancelled(I)V
    .registers 2

    .line 559
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logProjectionPermissionRequestCancelled(I)V

    return-void
.end method

.method public notifyPermissionRequestDisplayed(I)V
    .registers 2

    .line 554
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logPermissionRequestDisplayed(I)V

    return-void
.end method

.method public notifyPermissionRequestInitiated(II)V
    .registers 3

    .line 549
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logInitiated(II)V

    return-void
.end method

.method public notifyWindowingModeChanged(III)V
    .registers 6

    .line 569
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez v1, :cond_11

    .line 571
    const-string p0, "MediaProjectionManagerService"

    const-string p1, "Cannot log MediaProjectionTargetChanged atom due to null projection"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :catchall_f
    move-exception p0

    goto :goto_1a

    .line 573
    :cond_11
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logChangedWindowingMode(IIII)V

    .line 576
    :goto_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_f

    throw p0
.end method

.method public onStart()V
    .registers 5

    .line 256
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/content/Context;)V

    const/4 v1, 0x0

    const-string/jumbo v2, "media_projection"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 258
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    const/16 v2, 0x8

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 261
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/server/media/projection/MediaProjectionStopController;->startTrackingStopReasons(Landroid/content/Context;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 288
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->rebindAsUser(I)V

    .line 289
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 290
    :try_start_c
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p2, :cond_20

    .line 291
    const-string p2, "MediaProjectionManagerService"

    const-string v0, "Content Recording: Stopped MediaProjection due to user switching"

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/4 p2, 0x6

    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_22

    .line 294
    :cond_20
    :goto_20
    monitor-exit p1

    return-void

    :goto_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_1e

    throw p0
.end method

.method public final removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->unlinkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 390
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->remove(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 391
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public requestConsentForInvalidProjection()V
    .registers 5

    .line 514
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->buildReviewGrantedConsentIntentLocked()Landroid/content/Intent;

    move-result-object v1

    .line 516
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 517
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1d

    .line 521
    const-string v0, "MediaProjectionManagerService"

    const-string v3, "Reusing token: Reshow dialog for due to invalid projection."

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 525
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 524
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_1d
    move-exception p0

    .line 517
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z
    .registers 6

    .line 453
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z

    move-result v0

    .line 454
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_4e

    .line 457
    :try_start_b
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_4b

    if-eqz p1, :cond_1c

    .line 460
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result p1

    .line 459
    invoke-static {p1}, Landroid/view/ContentRecordingSession;->recordContentToString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    :catchall_1a
    move-exception p0

    goto :goto_70

    .line 460
    :cond_1c
    const-string/jumbo p1, "none"

    .line 461
    :goto_1f
    const-string v0, "MediaProjectionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content Recording: Stopped MediaProjection due to failing to set ContentRecordingSession - id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 463
    invoke-virtual {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getVirtualDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    :cond_4b
    const/4 p0, 0x0

    .line 467
    monitor-exit v1

    return p0

    .line 469
    :cond_4e
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_6d

    .line 471
    invoke-static {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fputmSession(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;Landroid/view/ContentRecordingSession;)V

    if-eqz p1, :cond_64

    .line 475
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 476
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    move-result v3

    .line 475
    invoke-virtual {v0, v2, v3}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logInProgress(II)V

    .line 478
    :cond_64
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    :cond_6d
    const/4 p0, 0x1

    .line 480
    monitor-exit v1

    return p0

    .line 481
    :goto_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_b .. :try_end_71} :catchall_1a

    throw p0
.end method

.method public final setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V
    .registers 4

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    .line 660
    invoke-virtual {p1, v0}, Landroid/view/ContentRecordingSession;->setWaitingForConsent(Z)Landroid/view/ContentRecordingSession;

    .line 661
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmVirtualDisplayId(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ContentRecordingSession;->setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;

    .line 664
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reusing token: Processed consent so set the session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaProjectionManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z

    move-result p0

    if-nez p0, :cond_30

    .line 666
    const-string p0, "Reusing token: Failed to set session for reused consent, so stop"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void
.end method

.method public setUserReviewGrantedConsentResult(ILandroid/media/projection/IMediaProjection;)V
    .registers 9

    .line 600
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_a

    if-ne p1, v1, :cond_38

    :cond_a
    if-nez p2, :cond_e

    move-object p2, v2

    goto :goto_12

    .line 604
    :cond_e
    :try_start_e
    invoke-interface {p2}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 603
    :goto_12
    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->isCurrentProjection(Landroid/os/IBinder;)Z

    move-result p2

    if-nez p2, :cond_38

    .line 605
    const-string p0, "MediaProjectionManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reusing token: Ignore consent result of "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for a token that isn\'t current"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    goto/16 :goto_ea

    .line 609
    :cond_38
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez p2, :cond_45

    .line 610
    const-string p0, "MediaProjectionManagerService"

    const-string p1, "Reusing token: Can\'t review consent with no ongoing projection."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    monitor-exit v0

    return-void

    .line 613
    :cond_45
    invoke-static {p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmSession(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Landroid/view/ContentRecordingSession;

    move-result-object p2

    if-eqz p2, :cond_cd

    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-static {p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmSession(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Landroid/view/ContentRecordingSession;

    move-result-object p2

    .line 614
    invoke-virtual {p2}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    move-result p2

    if-nez p2, :cond_59

    goto/16 :goto_cd

    .line 619
    :cond_59
    const-string p2, "MediaProjectionManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reusing token: Handling user consent result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_a1

    if-eqz p1, :cond_a1

    if-eq p1, v3, :cond_98

    if-eq p1, v1, :cond_79

    goto :goto_cb

    .line 643
    :cond_79
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object p1

    if-nez p1, :cond_82

    goto :goto_8a

    .line 644
    :cond_82
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object p1

    iget-object v2, p1, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 645
    :goto_8a
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmTaskId(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)I

    move-result p1

    .line 646
    invoke-static {v2, p1}, Landroid/view/ContentRecordingSession;->createTaskSession(Landroid/os/IBinder;I)Landroid/view/ContentRecordingSession;

    move-result-object p1

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    goto :goto_cb

    :cond_98
    const/4 p1, 0x0

    .line 638
    invoke-static {p1}, Landroid/view/ContentRecordingSession;->createDisplaySession(I)Landroid/view/ContentRecordingSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    goto :goto_cb

    .line 624
    :cond_a1
    invoke-virtual {p0, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    .line 626
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p1, :cond_cb

    .line 628
    const-string p1, "MediaProjectionManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content Recording: Stopped MediaProjection due to user consent result of CANCEL - id= "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 630
    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getVirtualDisplayId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 628
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    .line 650
    :cond_cb
    :goto_cb
    monitor-exit v0

    return-void

    .line 615
    :cond_cd
    :goto_cd
    const-string p0, "MediaProjectionManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reusing token: Ignore consent result "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " if not waiting for the result."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    monitor-exit v0

    return-void

    .line 650
    :goto_ea
    monitor-exit v0
    :try_end_eb
    .catchall {:try_start_e .. :try_end_eb} :catchall_35

    throw p0
.end method

.method public final startProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_12

    .line 337
    const-string v0, "MediaProjectionManagerService"

    const-string v1, "Content Recording: Stopped MediaProjection to start new incoming projection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    .line 341
    :cond_12
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_1f

    .line 342
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getFallbackRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 344
    :cond_1f
    invoke-virtual {p1}, Landroid/media/projection/IMediaProjection$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    .line 345
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 347
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmDisplayId(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/projection/MediaProjectionStopController;->setRecordedDisplay(I)V

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public final stopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;I)V
    .registers 6

    .line 356
    const-string v0, "MediaProjectionManagerService"

    const-string v1, "Content Recording: Stopped active MediaProjection and dispatching stop to callbacks"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmSession(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Landroid/view/ContentRecordingSession;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 361
    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, -0x2

    .line 363
    :goto_13
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget v2, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logStopped(III)V

    .line 365
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-virtual {p2}, Lcom/android/server/media/projection/MediaProjectionStopController;->clearRecordedDisplay()V

    const/4 p2, 0x0

    .line 367
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    .line 368
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public final unlinkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 3

    .line 406
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 407
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder$DeathRecipient;

    if-eqz p0, :cond_12

    const/4 v0, 0x0

    .line 409
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_12
    return-void
.end method
