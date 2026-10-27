.class public final Lcom/android/server/profcollect/ProfcollectForwardingService;
.super Lcom/android/server/SystemService;
.source "ProfcollectForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;,
        Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService;,
        Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;,
        Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;
    }
.end annotation


# static fields
.field private static final BG_PROCESS_PERIOD:J

.field private static final DEBUG:Z

.field public static final LOG_TAG:Ljava/lang/String; = "ProfcollectForwardingService"

.field private static sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;


# instance fields
.field private final mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

.field private mProviderStatusCallback:Lcom/android/server/profcollect/IProviderStatusCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/profcollect/ProfcollectForwardingService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIProfcollect(Lcom/android/server/profcollect/ProfcollectForwardingService;)Lcom/android/server/profcollect/IProfCollectd;
    .registers 1

    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIProfcollect(Lcom/android/server/profcollect/ProfcollectForwardingService;Lcom/android/server/profcollect/IProfCollectd;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    return-void
.end method

.method static bridge synthetic -$$Nest$mconnectNativeService(Lcom/android/server/profcollect/ProfcollectForwardingService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->connectNativeService()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpackProfileReport(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->packProfileReport()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterObservers(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->registerObservers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtraceOnAppStart(Lcom/android/server/profcollect/ProfcollectForwardingService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/profcollect/ProfcollectForwardingService;->traceOnAppStart(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryConnectNativeService(Lcom/android/server/profcollect/ProfcollectForwardingService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->tryConnectNativeService()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetBG_PROCESS_PERIOD()J
    .registers 2

    sget-wide v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->BG_PROCESS_PERIOD:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsSelfService()Lcom/android/server/profcollect/ProfcollectForwardingService;
    .registers 1

    sget-object v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 55
    const-string v0, "ProfcollectForwardingService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->DEBUG:Z

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->BG_PROCESS_PERIOD:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/android/server/profcollect/ProfcollectForwardingService$1;

    invoke-direct {v0, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$1;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    iput-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mProviderStatusCallback:Lcom/android/server/profcollect/IProviderStatusCallback;

    .line 245
    new-instance v0, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver-IA;)V

    iput-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    .line 72
    sget-object v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    if-nez v0, :cond_28

    .line 75
    sput-object p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 76
    return-void

    .line 73
    :cond_28
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "only one service instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private connectNativeService()Z
    .registers 6

    .line 142
    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "profcollectd"

    .line 144
    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 143
    invoke-static {v1}, Lcom/android/server/profcollect/IProfCollectd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/profcollect/IProfCollectd;

    move-result-object v1

    .line 145
    .local v1, "profcollectd":Lcom/android/server/profcollect/IProfCollectd;
    invoke-interface {v1}, Lcom/android/server/profcollect/IProfCollectd;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient-IA;)V

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 146
    iput-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;
    :try_end_1b
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1b} :catch_1d

    .line 147
    const/4 v0, 0x1

    return v0

    .line 148
    .end local v1    # "profcollectd":Lcom/android/server/profcollect/IProfCollectd;
    :catch_1d
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ProfcollectForwardingService"

    const-string v3, "Failed to connect profcollectd binder service."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v0
.end method

.method public static enabled()Z
    .registers 3

    .line 82
    const-string/jumbo v0, "profcollect_native_boot"

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_15

    .line 83
    const-string/jumbo v0, "persist.profcollectd.enabled_override"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    const/4 v2, 0x1

    .line 82
    :cond_16
    return v2
.end method

.method private packProfileReport()V
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    if-nez v0, :cond_5

    .line 308
    return-void

    .line 311
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 312
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    return-void
.end method

.method private registerAppLaunchObserver()V
    .registers 4

    .line 247
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 248
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 249
    .local v0, "atmInternal":Lcom/android/server/wm/ActivityTaskManagerInternal;
    nop

    .line 250
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object v1

    .line 251
    .local v1, "launchObserverRegistry":Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    iget-object v2, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    invoke-interface {v1, v2}, Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;->registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    .line 252
    return-void
.end method

.method private registerOTAObserver()V
    .registers 3

    .line 285
    new-instance v0, Landroid/os/UpdateEngine;

    invoke-direct {v0}, Landroid/os/UpdateEngine;-><init>()V

    .line 286
    .local v0, "updateEngine":Landroid/os/UpdateEngine;
    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$2;

    invoke-direct {v1, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$2;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    invoke-virtual {v0, v1}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;)Z

    .line 304
    return-void
.end method

.method private registerObservers()V
    .registers 3

    .line 238
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method

.method private registerProviderStatusCallback()V
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    if-nez v0, :cond_5

    .line 110
    return-void

    .line 113
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mProviderStatusCallback:Lcom/android/server/profcollect/IProviderStatusCallback;

    invoke-interface {v0, v1}, Lcom/android/server/profcollect/IProfCollectd;->registerProviderStatusCallback(Lcom/android/server/profcollect/IProviderStatusCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 116
    goto :goto_28

    .line 114
    :catch_b
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register provider status callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProfcollectForwardingService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method private serviceHasSupportedTraceProvider()Z
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 121
    return v1

    .line 124
    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/android/server/profcollect/IProfCollectd;->get_supported_provider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_11

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 125
    :catch_11
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get supported provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProfcollectForwardingService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v1
.end method

.method private traceOnAppStart(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    if-nez v0, :cond_5

    .line 256
    return-void

    .line 260
    :cond_5
    const/4 v0, 0x2

    const-string/jumbo v1, "profcollect_native_boot"

    const-string v2, "applaunch_trace_freq"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 262
    .local v0, "traceFrequency":I
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v1

    .line 263
    .local v1, "randomNum":I
    if-ge v1, v0, :cond_47

    .line 264
    sget-boolean v2, Lcom/android/server/profcollect/ProfcollectForwardingService;->DEBUG:Z

    if-eqz v2, :cond_37

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracing on app launch event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProfcollectForwardingService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_37
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    :cond_47
    return-void
.end method

.method private tryConnectNativeService()Z
    .registers 5

    .line 132
    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->connectNativeService()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_8
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    return v3
.end method


# virtual methods
.method synthetic lambda$onBootPhase$0$com-android-server-profcollect-ProfcollectForwardingService()V
    .registers 2

    .line 101
    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->serviceHasSupportedTraceProvider()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 102
    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->registerProviderStatusCallback()V

    .line 104
    :cond_9
    return-void
.end method

.method synthetic lambda$packProfileReport$3$com-android-server-profcollect-ProfcollectForwardingService(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 315
    const-string v0, "ProfcollectForwardingService"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    invoke-interface {v2}, Lcom/android/server/profcollect/IProfCollectd;->report()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "reportName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110194

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 319
    const-string v2, "Upload is not enabled."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 324
    :cond_2e
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.shell"

    .line 325
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.shell.action.PROFCOLLECT_UPLOAD"

    .line 326
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "filename"

    .line 327
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 328
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_48} :catch_49

    .line 331
    .end local v1    # "reportName":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_64

    .line 329
    :catch_49
    move-exception v1

    .line 330
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to upload report: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_64
    return-void
.end method

.method synthetic lambda$registerObservers$1$com-android-server-profcollect-ProfcollectForwardingService()V
    .registers 1

    .line 240
    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->registerAppLaunchObserver()V

    .line 241
    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->registerOTAObserver()V

    .line 242
    return-void
.end method

.method synthetic lambda$traceOnAppStart$2$com-android-server-profcollect-ProfcollectForwardingService()V
    .registers 4

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    const-string v1, "applaunch"

    invoke-interface {v0, v1}, Lcom/android/server/profcollect/IProfCollectd;->trace_once(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 272
    goto :goto_25

    .line 270
    :catch_8
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initiate trace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProfcollectForwardingService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 96
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_19

    .line 97
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    if-nez v0, :cond_9

    .line 98
    return-void

    .line 100
    :cond_9
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    :cond_19
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 88
    sget-boolean v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 89
    const-string v0, "ProfcollectForwardingService"

    const-string v1, "Profcollect forwarding service start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_b
    invoke-direct {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->connectNativeService()Z

    .line 92
    return-void
.end method
